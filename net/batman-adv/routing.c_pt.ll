; ModuleID = '/llk/IR_all_yes/net/batman-adv/routing.c_pt.bc'
source_filename = "../net/batman-adv/routing.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.batadv_orig_ifinfo = type { %struct.hlist_node, ptr, ptr, i32, i8, i32, i32, %struct.batadv_orig_ifinfo_bat_iv, %struct.kref, %struct.callback_head }
%struct.batadv_orig_ifinfo_bat_iv = type { [2 x i32], i8 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.batadv_icmp_header = type { i8, i8, i8, i8, [6 x i8], [6 x i8], i8, [3 x i8] }
%struct.batadv_icmp_packet_rr = type { i8, i8, i8, i8, [6 x i8], [6 x i8], i8, i8, i16, [16 x [6 x i8]] }
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
%struct.batadv_icmp_packet = type { i8, i8, i8, i8, [6 x i8], [6 x i8], i8, i8, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.batadv_unicast_packet = type { i8, i8, i8, i8, [6 x i8] }
%struct.batadv_unicast_4addr_packet = type { %struct.batadv_unicast_packet, [6 x i8], i8, i8 }
%struct.batadv_unicast_tvlv_packet = type { i8, i8, i8, i8, [6 x i8], [6 x i8], i16, i16 }
%struct.batadv_frag_packet = type { i8, i8, i8, i8, [6 x i8], [6 x i8], i16, i16 }
%struct.batadv_bcast_packet = type <{ i8, i8, i8, i8, i32, [6 x i8] }>

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"old packet received, start protection\0A\00", [57 x i8] zeroinitializer }, align 32
@batadv_find_router.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/batman-adv/routing.c\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@batadv_find_router.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@batadv_find_router.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s(): Dropped unicast pkt received from another backbone gw %pM.\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.batadv_recv_unicast_packet = private unnamed_addr constant [27 x i8] c"batadv_recv_unicast_packet\00", align 1
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Deleting route towards: %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Deleted route towards originator\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adding route towards: %pM (via %pM)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Changing route towards: %pM (now via %pM - was via %pM)\0A\00", [39 x i8] zeroinitializer }, align 32
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@batadv_recv_icmp_ttl_exceeded.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.1, ptr @.str.14, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"batman_adv\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"batadv_recv_icmp_ttl_exceeded\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Warning - can't forward icmp packet from %pM to %pM: ttl exceeded\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"batman_adv: Warning - can't forward icmp packet from %pM to %pM: ttl exceeded\0A\00", [49 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@batadv_route_unicast_packet.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.19, ptr @.str.1, ptr @.str.20, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"batadv_route_unicast_packet\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Warning - can't forward unicast packet from %pM to %pM: ttl exceeded\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"batman_adv: Warning - can't forward unicast packet from %pM to %pM: ttl exceeded\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Rerouting unicast packet to %pM (dst=%pM): Local Roaming\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Rerouting unicast packet to %pM (dst=%pM): TTVN mismatch old_ttvn=%u new_ttvn=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 15]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 66]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 162, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 561, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 563, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 985, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 85, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 88, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 92, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 97, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 110, i32 15 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 290, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 695, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 723, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 670, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 821, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [28 x i8] c"../net/batman-adv/routing.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 867, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_update_route(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %recv_if, ptr noundef %neigh_node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %orig_node, null
  br i1 %tobool.not, label %entry.batadv_neigh_node_put.exit_crit_edge, label %if.end

entry.batadv_neigh_node_put.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_neigh_node_put.exit

if.end:                                           ; preds = %entry
  %call = tail call ptr @batadv_orig_router_get(ptr noundef nonnull %orig_node, ptr noundef %recv_if) #7
  %cmp.not = icmp eq ptr %call, %neigh_node
  br i1 %cmp.not, label %if.end.out_crit_edge, label %if.then1

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then1:                                         ; preds = %if.end
  %call.i = tail call ptr @batadv_orig_ifinfo_get(ptr noundef nonnull %orig_node, ptr noundef %recv_if) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then1.out_crit_edge, label %if.end.i

if.then1.out_crit_edge:                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %if.then1
  %neigh_list_lock.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock.i) #7
  %tobool1.not.i = icmp eq ptr %neigh_node, null
  br i1 %tobool1.not.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then2.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then2.i:                                       ; preds = %if.end.i
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !60

if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then2.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end.i.i_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then2.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end.i.i_crit_edge, %if.end.i.if.end.i.i_crit_edge
  %router.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %router.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %4 = ptrtoint ptr %router.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %neigh_node, ptr %router.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock.i) #7
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_ifinfo_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %batadv_orig_ifinfo_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i.i) #7, !callees !66
  br label %batadv_orig_ifinfo_put.exit.i

batadv_orig_ifinfo_put.exit.i:                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i_crit_edge
  %tobool43.not.i = icmp eq ptr %3, null
  %tobool1.not.not.i = xor i1 %tobool1.not.i, true
  %brmerge.i = or i1 %tobool43.not.i, %tobool1.not.not.i
  br i1 %brmerge.i, label %if.else55.i, label %do.body47.i

do.body47.i:                                      ; preds = %batadv_orig_ifinfo_put.exit.i
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #7
  %6 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool49.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool49.not.i, label %do.body47.i.if.end52.i_crit_edge, label %if.then50.i

do.body47.i.if.end52.i_crit_edge:                 ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then50.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #9
  %call51.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.7, ptr noundef nonnull %orig_node) #7
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %do.body47.i.if.end52.i_crit_edge
  tail call void @batadv_tt_global_del_orig(ptr noundef %bat_priv, ptr noundef nonnull %orig_node, i32 noundef -1, ptr noundef nonnull @.str.8) #7
  br label %if.end98.i

if.else55.i:                                      ; preds = %batadv_orig_ifinfo_put.exit.i
  %tobool43.not.not.i = xor i1 %tobool43.not.i, true
  %brmerge126.i = or i1 %tobool1.not.i, %tobool43.not.not.i
  br i1 %brmerge126.i, label %if.else74.i, label %do.body60.i

do.body60.i:                                      ; preds = %if.else55.i
  %log_level62.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i128.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level62.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %log_level62.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %log_level62.i, align 4
  %and64.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %do.body60.i.if.end98.i_crit_edge, label %if.then66.i

do.body60.i.if.end98.i_crit_edge:                 ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i

if.then66.i:                                      ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 2
  %call70.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.9, ptr noundef nonnull %orig_node, ptr noundef %addr.i) #7
  br label %if.end98.i

if.else74.i:                                      ; preds = %if.else55.i
  %brmerge127.i = select i1 %tobool1.not.i, i1 true, i1 %tobool43.not.i
  br i1 %brmerge127.i, label %if.else74.i.if.end98.i_crit_edge, label %do.body79.i

if.else74.i.if.end98.i_crit_edge:                 ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i

do.body79.i:                                      ; preds = %if.else74.i
  %log_level81.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i129.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level81.i, i32 noundef 4) #7
  %10 = ptrtoint ptr %log_level81.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %log_level81.i, align 4
  %and83.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %do.body79.i.if.end98.i_crit_edge, label %if.then85.i

do.body79.i.if.end98.i_crit_edge:                 ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i

if.then85.i:                                      ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr88.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 2
  %addr90.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %3, i32 0, i32 2
  %call92.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.10, ptr noundef nonnull %orig_node, ptr noundef %addr88.i, ptr noundef %addr90.i) #7
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then85.i, %do.body79.i.if.end98.i_crit_edge, %if.else74.i.if.end98.i_crit_edge, %if.then66.i, %do.body60.i.if.end98.i_crit_edge, %if.end52.i
  br i1 %tobool43.not.i, label %if.end98.i.out_crit_edge, label %if.end.i135.i

if.end98.i.out_crit_edge:                         ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i135.i:                                    ; preds = %if.end98.i
  %refcount.i131.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %3, i32 0, i32 8
  %call.i.i.i.i.i.i.i132.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i131.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i131.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i131.i, ptr %refcount.i131.i, i32 1, ptr elementtype(i32) %refcount.i131.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i133.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i133.i)
  %cmp.i.i.i.i.i134.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i133.i, 1
  br i1 %cmp.i.i.i.i.i134.i, label %if.then.i.i139.i, label %if.end5.i.i.i.i.i137.i

if.end5.i.i.i.i.i137.i:                           ; preds = %if.end.i135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i133.i)
  %.not.i.i.i.i.i136.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i133.i, 0
  br i1 %.not.i.i.i.i.i136.i, label %if.end5.i.i.i.i.i137.i.out_crit_edge, label %if.then10.i.i.i.i.i138.i, !prof !61

if.end5.i.i.i.i.i137.i.out_crit_edge:             ; preds = %if.end5.i.i.i.i.i137.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then10.i.i.i.i.i138.i:                         ; preds = %if.end5.i.i.i.i.i137.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i131.i, i32 noundef 3) #7
  br label %out

if.then.i.i139.i:                                 ; preds = %if.end.i135.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i131.i) #7, !callees !66
  br label %out

out:                                              ; preds = %if.then.i.i139.i, %if.then10.i.i.i.i.i138.i, %if.end5.i.i.i.i.i137.i.out_crit_edge, %if.end98.i.out_crit_edge, %if.then1.out_crit_edge, %if.end.out_crit_edge
  %tobool.not.i8 = icmp eq ptr %call, null
  br i1 %tobool.not.i8, label %out.batadv_neigh_node_put.exit_crit_edge, label %if.end.i11

out.batadv_neigh_node_put.exit_crit_edge:         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_neigh_node_put.exit

if.end.i11:                                       ; preds = %out
  %refcount.i9 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call, i32 0, i32 8
  %call.i.i.i.i.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i9, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i9, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i9, ptr %refcount.i9, i32 1, ptr elementtype(i32) %refcount.i9) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i12 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i12, label %if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i9, i32 noundef 3) #7
  br label %batadv_neigh_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i9) #7, !callees !66
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge, %out.batadv_neigh_node_put.exit_crit_edge, %entry.batadv_neigh_node_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_router_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_window_protected(ptr noundef %bat_priv, i32 noundef %seq_num_diff, i32 noundef %seq_old_max_diff, ptr nocapture noundef %last_reset, ptr noundef writeonly %protection_started) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %seq_old_max_diff
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %seq_num_diff)
  %cmp.not = icmp sge i32 %sub, %seq_num_diff
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %seq_num_diff)
  %cmp1 = icmp sgt i32 %seq_num_diff, 65535
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %last_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_reset, align 4
  %add.i = add i32 %1, 3000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = ptrtoint ptr %last_reset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_reset, align 4
  %tobool.not = icmp eq ptr %protection_started, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then3

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %protection_started to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %protection_started, align 1
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.end.do.body_crit_edge
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #7
  %6 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.return_crit_edge, label %if.then7

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str) #7
  br label %return

return:                                           ; preds = %if.then7, %do.body.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then.return_crit_edge ], [ false, %do.body.return_crit_edge ], [ false, %if.then7 ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_check_management_packet(ptr noundef %skb, ptr nocapture noundef readnone %hard_iface, i32 noundef %header_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %header_len)
  %cmp.not.i = icmp ult i32 %sub.i.i, %header_len
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !60

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %header_len)
  %cmp3.i = icmp ult i32 %1, %header_len
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !60

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %header_len, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !60

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %11, %9
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %12 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %h_source, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end6
  %add.ptr.i.i22 = getelementptr i8, ptr %h_source, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i22 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i22, align 2
  %conv.i.i23 = zext i16 %18 to i32
  %or.i.i = or i32 %15, %conv.i.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end10

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %is_valid_ether_addr.exit
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %19 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end10.if.end13_crit_edge, label %skb_cloned.exit.i

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

skb_cloned.exit.i:                                ; preds = %if.end10
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %20 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #7
  %22 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end13_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end13_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp = icmp slt i32 %call4.i.i, 0
  br i1 %cmp, label %skb_cow.exit.cleanup_crit_edge, label %skb_cow.exit.if.end13_crit_edge

skb_cow.exit.if.end13_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

skb_cow.exit.cleanup_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %skb_cow.exit.if.end13_crit_edge, %skb_cloned.exit.i.if.end13_crit_edge, %if.end10.if.end13_crit_edge
  %24 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i25 = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i25, label %if.end13.skb_linearize.exit.thread_crit_edge, label %cond.true.i

if.end13.skb_linearize.exit.thread_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_linearize.exit.thread

cond.true.i:                                      ; preds = %if.end13
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %25) #7
  %tobool.not.i.i26 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i26, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.skb_linearize.exit.thread_crit_edge

cond.true.i.skb_linearize.exit.thread_crit_edge:  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_linearize.exit.thread

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_linearize.exit.thread:                        ; preds = %cond.true.i.skb_linearize.exit.thread_crit_edge, %if.end13.skb_linearize.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %skb_linearize.exit.thread, %cond.true.i.cleanup_crit_edge, %skb_cow.exit.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %pskb_may_pull.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ false, %skb_cow.exit.cleanup_crit_edge ], [ true, %skb_linearize.exit.thread ], [ false, %cond.true.i.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_cow(ptr noundef %skb, i32 noundef %headroom) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.skb_cloned.exit_crit_edge, label %land.rhs.i

entry.skb_cloned.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cloned.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #7
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br label %skb_cloned.exit

skb_cloned.exit:                                  ; preds = %land.rhs.i, %entry.skb_cloned.exit_crit_edge
  %5 = phi i1 [ true, %entry.skb_cloned.exit_crit_edge ], [ %cmp.i.not, %land.rhs.i ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %headroom)
  %tobool.not.i3 = icmp uge i32 %sub.ptr.sub.i.i, %headroom
  %or.cond.i = and i1 %5, %tobool.not.i3
  br i1 %or.cond.i, label %skb_cloned.exit.__skb_cow.exit_crit_edge, label %if.then3.i

skb_cloned.exit.__skb_cow.exit_crit_edge:         ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_cow.exit

if.then3.i:                                       ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.usub.sat.i32(i32 %headroom, i32 %sub.ptr.sub.i.i) #7
  %add.i = add i32 %10, 127
  %and.i4 = and i32 %add.i, -128
  %call4.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4, i32 noundef 0, i32 noundef 2592) #7
  br label %__skb_cow.exit

__skb_cow.exit:                                   ; preds = %if.then3.i, %skb_cloned.exit.__skb_cow.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.then3.i ], [ 0, %skb_cloned.exit.__skb_cow.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_recv_icmp_packet(ptr noundef %skb, ptr noundef %recv_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !60

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %3)
  %cmp3.i = icmp ult i32 %3, 20
  br i1 %cmp3.i, label %if.end.i.free_skb_crit_edge, label %pskb_may_pull.exit, !prof !60

if.end.i.free_skb_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.free_skb_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !60

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pskb_may_pull.exit.free_skb_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.free_skb_crit_edge

if.end.free_skb_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i116 = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i116 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i116, align 2
  %conv.i.i117 = zext i16 %14 to i32
  %or.i.i = or i32 %11, %conv.i.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.free_skb_crit_edge, label %if.end7

is_valid_ether_addr.exit.free_skb_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end7:                                          ; preds = %is_valid_ether_addr.exit
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_source, align 4
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %if.end11, label %if.end7.free_skb_crit_edge

if.end7.free_skb_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end11:                                         ; preds = %if.end7
  %call14 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i.i) #7
  br i1 %call14, label %if.end16, label %if.end11.free_skb_crit_edge

if.end11.free_skb_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end16:                                         ; preds = %if.end11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %msg_type = getelementptr inbounds %struct.batadv_icmp_header, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %msg_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %msg_type, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %if.end16.if.end47_crit_edge [
    i8 0, label %if.end16.land.lhs.true_crit_edge
    i8 8, label %if.end16.land.lhs.true_crit_edge136
  ]

if.end16.land.lhs.true_crit_edge136:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end16.land.lhs.true_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end16.if.end47_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end16.land.lhs.true_crit_edge, %if.end16.land.lhs.true_crit_edge136
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 115, i32 %24)
  %cmp22 = icmp ugt i32 %24, 115
  br i1 %cmp22, label %if.then24, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then24:                                        ; preds = %land.lhs.true
  %25 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i119 = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i119, label %if.then24.if.end29_crit_edge, label %cond.true.i

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

cond.true.i:                                      ; preds = %if.then24
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %26) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.free_skb_crit_edge, label %cond.true.i.if.end29_crit_edge

cond.true.i.if.end29_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

cond.true.i.free_skb_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end29:                                         ; preds = %cond.true.i.if.end29_crit_edge, %if.then24.if.end29_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %27 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i120 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i120, label %if.end29.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end29.skb_cloned.exit.i_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #7
  %30 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %31, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end29.skb_cloned.exit.i_crit_edge
  %32 = phi i1 [ true, %if.end29.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.ptr.sub.i.i.i)
  %tobool.not.i3.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 13
  %or.cond.i.i = and i1 %32, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end34_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end34_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %37 = tail call i32 @llvm.usub.sat.i32(i32 14, i32 %sub.ptr.sub.i.i.i) #7
  %add.i.i = add nuw nsw i32 %37, 127
  %and.i4.i = and i32 %add.i.i, 128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp31 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp31, label %skb_cow.exit.free_skb_crit_edge, label %skb_cow.exit.if.end34_crit_edge

skb_cow.exit.if.end34_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

skb_cow.exit.free_skb_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end34:                                         ; preds = %skb_cow.exit.if.end34_crit_edge, %skb_cloned.exit.i.if.end34_crit_edge
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %rr_cur = getelementptr inbounds %struct.batadv_icmp_packet_rr, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %rr_cur to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rr_cur, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %41)
  %cmp38 = icmp ugt i8 %41, 15
  br i1 %cmp38, label %if.end34.free_skb_crit_edge, label %if.end41

if.end34.free_skb_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %44 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i123 = zext i16 %45 to i32
  %add.ptr.i.i124 = getelementptr i8, ptr %43, i32 %conv.i.i123
  %conv37 = zext i8 %41 to i32
  %arrayidx = getelementptr %struct.batadv_icmp_packet_rr, ptr %39, i32 0, i32 9, i32 %conv37
  %46 = ptrtoint ptr %add.ptr.i.i124 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i124, align 4
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx, align 4
  %add.ptr.i125 = getelementptr i8, ptr %add.ptr.i.i124, i32 4
  %49 = ptrtoint ptr %add.ptr.i125 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i125, align 2
  %add.ptr1.i = getelementptr i8, ptr %arrayidx, i32 4
  %51 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %add.ptr1.i, align 2
  %inc = add nuw nsw i8 %41, 1
  %52 = ptrtoint ptr %rr_cur to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %inc, ptr %rr_cur, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.end41, %land.lhs.true.if.end47_crit_edge, %if.end16.if.end47_crit_edge
  %icmph.0 = phi ptr [ %39, %if.end41 ], [ %19, %land.lhs.true.if.end47_crit_edge ], [ %19, %if.end16.if.end47_crit_edge ]
  %dst = getelementptr inbounds %struct.batadv_icmp_header, ptr %icmph.0, i32 0, i32 4
  %call49 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %dst) #7
  br i1 %call49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %msg_type.i = getelementptr inbounds %struct.batadv_icmp_header, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %msg_type.i, align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %56, label %if.then50.batadv_recv_my_icmp_packet.exit_crit_edge [
    i8 8, label %sw.bb.i
    i8 15, label %sw.bb21.i
  ]

if.then50.batadv_recv_my_icmp_packet.exit_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_recv_my_icmp_packet.exit

sw.bb.i:                                          ; preds = %if.then50
  %call.i = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.i.batadv_recv_my_icmp_packet.exit_crit_edge, label %if.end.i126

sw.bb.i.batadv_recv_my_icmp_packet.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_recv_my_icmp_packet.exit

if.end.i126:                                      ; preds = %sw.bb.i
  %orig.i = getelementptr inbounds %struct.batadv_icmp_header, ptr %54, i32 0, i32 5
  %call1.i = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i, ptr noundef %orig.i) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i126.if.end.i45.i_crit_edge, label %if.end4.i

if.end.i126.if.end.i45.i_crit_edge:               ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i45.i

if.end4.i:                                        ; preds = %if.end.i126
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %58 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end4.i.skb_cloned.exit.i.i_crit_edge, label %land.rhs.i.i.i

if.end4.i.skb_cloned.exit.i.i_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cloned.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %59 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #7
  %61 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %62, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br label %skb_cloned.exit.i.i

skb_cloned.exit.i.i:                              ; preds = %land.rhs.i.i.i, %if.end4.i.skb_cloned.exit.i.i_crit_edge
  %63 = phi i1 [ true, %if.end4.i.skb_cloned.exit.i.i_crit_edge ], [ %cmp.i.not.i.i, %land.rhs.i.i.i ]
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %66 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.ptr.sub.i.i.i.i)
  %tobool.not.i3.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i.i, 13
  %or.cond.i.i.i = and i1 %63, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_cloned.exit.i.i.if.end8.i_crit_edge, label %skb_cow.exit.i

skb_cloned.exit.i.i.if.end8.i_crit_edge:          ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

skb_cow.exit.i:                                   ; preds = %skb_cloned.exit.i.i
  %68 = tail call i32 @llvm.usub.sat.i32(i32 14, i32 %sub.ptr.sub.i.i.i.i) #7
  %add.i.i.i = add nuw nsw i32 %68, 127
  %and.i4.i.i = and i32 %add.i.i.i, 128
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i, label %skb_cow.exit.i.if.end.i45.i_crit_edge, label %skb_cow.exit.i.if.end8.i_crit_edge

skb_cow.exit.i.if.end8.i_crit_edge:               ; preds = %skb_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

skb_cow.exit.i.if.end.i45.i_crit_edge:            ; preds = %skb_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i45.i

if.end8.i:                                        ; preds = %skb_cow.exit.i.if.end8.i_crit_edge, %skb_cloned.exit.i.i.if.end8.i_crit_edge
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %dst.i = getelementptr inbounds %struct.batadv_icmp_header, ptr %70, i32 0, i32 4
  %orig11.i = getelementptr inbounds %struct.batadv_icmp_header, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %orig11.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %orig11.i, align 4
  %73 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %dst.i, align 4
  %add.ptr.i.i127 = getelementptr %struct.batadv_icmp_header, ptr %70, i32 0, i32 5, i32 4
  %74 = ptrtoint ptr %add.ptr.i.i127 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i.i127, align 2
  %add.ptr1.i.i = getelementptr %struct.batadv_icmp_header, ptr %70, i32 0, i32 4, i32 4
  %76 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %add.ptr1.i.i, align 2
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call.i, i32 0, i32 4
  %77 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 86
  %79 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_addr.i, align 64
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  store i32 %82, ptr %orig11.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %80, i32 4
  %83 = ptrtoint ptr %add.ptr.i43.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr.i43.i, align 2
  store i16 %84, ptr %add.ptr.i.i127, align 2
  %msg_type15.i = getelementptr inbounds %struct.batadv_icmp_header, ptr %70, i32 0, i32 3
  %85 = ptrtoint ptr %msg_type15.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %msg_type15.i, align 1
  %ttl.i = getelementptr inbounds %struct.batadv_icmp_header, ptr %70, i32 0, i32 2
  %86 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 50, ptr %ttl.i, align 1
  %call16.i = tail call i32 @batadv_send_skb_to_orig(ptr noundef %skb, ptr noundef nonnull %call1.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp ne i32 %call16.i, 0
  %spec.select.i = zext i1 %cmp17.i to i32
  br label %if.end.i45.i

sw.bb21.i:                                        ; preds = %if.then50
  %87 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i.i, align 4
  %89 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i = sub i32 %88, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 28
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb21.i.if.end24.i_crit_edge, !prof !60

sw.bb21.i.if.end24.i_crit_edge:                   ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.end.i.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %88)
  %cmp3.i.i = icmp ult i32 %88, 28
  br i1 %cmp3.i.i, label %if.end.i.i.batadv_recv_my_icmp_packet.exit_crit_edge, label %pskb_may_pull.exit.i, !prof !60

if.end.i.i.batadv_recv_my_icmp_packet.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_recv_my_icmp_packet.exit

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i128 = sub nuw nsw i32 28, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i128) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge, label %pskb_may_pull.exit.i.if.end24.i_crit_edge

pskb_may_pull.exit.i.if.end24.i_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

pskb_may_pull.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_recv_my_icmp_packet.exit

if.end24.i:                                       ; preds = %pskb_may_pull.exit.i.if.end24.i_crit_edge, %sw.bb21.i.if.end24.i_crit_edge
  tail call void @batadv_tp_meter_recv(ptr noundef %add.ptr.i, ptr noundef %skb) #7
  br label %batadv_recv_my_icmp_packet.exit

if.end.i45.i:                                     ; preds = %if.end8.i, %skb_cow.exit.i.if.end.i45.i_crit_edge, %if.end.i126.if.end.i45.i_crit_edge
  %skb.addr.0.i = phi ptr [ %skb, %skb_cow.exit.i.if.end.i45.i_crit_edge ], [ null, %if.end8.i ], [ %skb, %if.end.i126.if.end.i45.i_crit_edge ]
  %ret.1.i = phi i32 [ 1, %skb_cow.exit.i.if.end.i45.i_crit_edge ], [ %spec.select.i, %if.end8.i ], [ 1, %if.end.i126.if.end.i45.i_crit_edge ]
  %refcount.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_hardif_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.batadv_hardif_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_hardif_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %batadv_hardif_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_hardif_release(ptr noundef %refcount.i.i) #7, !callees !66
  br label %batadv_hardif_put.exit.i

batadv_hardif_put.exit.i:                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_hardif_put.exit.i_crit_edge
  br i1 %tobool2.not.i, label %batadv_hardif_put.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge, label %if.end.i51.i

batadv_hardif_put.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge: ; preds = %batadv_hardif_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_recv_my_icmp_packet.exit

if.end.i51.i:                                     ; preds = %batadv_hardif_put.exit.i
  %refcount.i47.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call1.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i47.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i47.i, i32 1, i32 3, i32 1) #7
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i47.i, ptr %refcount.i47.i, i32 1, ptr elementtype(i32) %refcount.i47.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i49.i = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i49.i)
  %cmp.i.i.i.i.i50.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i49.i, 1
  br i1 %cmp.i.i.i.i.i50.i, label %if.then.i.i55.i, label %if.end5.i.i.i.i.i53.i

if.end5.i.i.i.i.i53.i:                            ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i49.i)
  %.not.i.i.i.i.i52.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i49.i, 0
  br i1 %.not.i.i.i.i.i52.i, label %if.end5.i.i.i.i.i53.i.batadv_recv_my_icmp_packet.exit_crit_edge, label %if.then10.i.i.i.i.i54.i, !prof !61

if.end5.i.i.i.i.i53.i.batadv_recv_my_icmp_packet.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_recv_my_icmp_packet.exit

if.then10.i.i.i.i.i54.i:                          ; preds = %if.end5.i.i.i.i.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i47.i, i32 noundef 3) #7
  br label %batadv_recv_my_icmp_packet.exit

if.then.i.i55.i:                                  ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i47.i) #7, !callees !66
  br label %batadv_recv_my_icmp_packet.exit

batadv_recv_my_icmp_packet.exit:                  ; preds = %if.then.i.i55.i, %if.then10.i.i.i.i.i54.i, %if.end5.i.i.i.i.i53.i.batadv_recv_my_icmp_packet.exit_crit_edge, %batadv_hardif_put.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge, %if.end24.i, %pskb_may_pull.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge, %if.end.i.i.batadv_recv_my_icmp_packet.exit_crit_edge, %sw.bb.i.batadv_recv_my_icmp_packet.exit_crit_edge, %if.then50.batadv_recv_my_icmp_packet.exit_crit_edge
  %skb.addr.06674.i = phi ptr [ %skb.addr.0.i, %batadv_hardif_put.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge ], [ %skb.addr.0.i, %if.end5.i.i.i.i.i53.i.batadv_recv_my_icmp_packet.exit_crit_edge ], [ %skb.addr.0.i, %if.then10.i.i.i.i.i54.i ], [ %skb.addr.0.i, %if.then.i.i55.i ], [ %skb, %sw.bb.i.batadv_recv_my_icmp_packet.exit_crit_edge ], [ %skb, %pskb_may_pull.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge ], [ null, %if.end24.i ], [ %skb, %if.then50.batadv_recv_my_icmp_packet.exit_crit_edge ], [ %skb, %if.end.i.i.batadv_recv_my_icmp_packet.exit_crit_edge ]
  %ret.16873.i = phi i32 [ %ret.1.i, %batadv_hardif_put.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge ], [ %ret.1.i, %if.end5.i.i.i.i.i53.i.batadv_recv_my_icmp_packet.exit_crit_edge ], [ %ret.1.i, %if.then10.i.i.i.i.i54.i ], [ %ret.1.i, %if.then.i.i55.i ], [ 1, %sw.bb.i.batadv_recv_my_icmp_packet.exit_crit_edge ], [ 1, %pskb_may_pull.exit.i.batadv_recv_my_icmp_packet.exit_crit_edge ], [ 0, %if.end24.i ], [ 1, %if.then50.batadv_recv_my_icmp_packet.exit_crit_edge ], [ 1, %if.end.i.i.batadv_recv_my_icmp_packet.exit_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.06674.i, i32 noundef 0) #7
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %ttl = getelementptr inbounds %struct.batadv_icmp_header, ptr %icmph.0, i32 0, i32 2
  %93 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ttl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp54 = icmp ult i8 %94, 2
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call fastcc i32 @batadv_recv_icmp_ttl_exceeded(ptr noundef %add.ptr.i, ptr noundef %skb)
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  %call61 = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i, ptr noundef %dst) #7
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end58.free_skb_crit_edge, label %if.end64

if.end58.free_skb_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end64:                                         ; preds = %if.end58
  %call65 = tail call fastcc i32 @skb_cow(ptr noundef %skb, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.end64.put_orig_node_crit_edge, label %if.end69

if.end64.put_orig_node_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_orig_node

if.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data, align 4
  %ttl71 = getelementptr inbounds %struct.batadv_icmp_header, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %ttl71 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ttl71, align 1
  %dec = add i8 %98, -1
  store i8 %dec, ptr %ttl71, align 1
  %call72 = tail call i32 @batadv_send_skb_to_orig(ptr noundef %skb, ptr noundef nonnull %call61, ptr noundef %recv_if) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp ne i32 %call72, 0
  %spec.select = zext i1 %cmp73 to i32
  br label %put_orig_node

put_orig_node:                                    ; preds = %if.end69, %if.end64.put_orig_node_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %if.end64.put_orig_node_crit_edge ], [ null, %if.end69 ]
  %ret.1 = phi i32 [ 1, %if.end64.put_orig_node_crit_edge ], [ %spec.select, %if.end69 ]
  tail call fastcc void @batadv_orig_node_put(ptr noundef nonnull %call61)
  br label %free_skb

free_skb:                                         ; preds = %put_orig_node, %if.end58.free_skb_crit_edge, %if.end34.free_skb_crit_edge, %skb_cow.exit.free_skb_crit_edge, %cond.true.i.free_skb_crit_edge, %if.end11.free_skb_crit_edge, %if.end7.free_skb_crit_edge, %is_valid_ether_addr.exit.free_skb_crit_edge, %if.end.free_skb_crit_edge, %pskb_may_pull.exit.free_skb_crit_edge, %if.end.i.free_skb_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %pskb_may_pull.exit.free_skb_crit_edge ], [ %skb, %if.end7.free_skb_crit_edge ], [ %skb, %skb_cow.exit.free_skb_crit_edge ], [ %skb, %if.end34.free_skb_crit_edge ], [ %skb.addr.0, %put_orig_node ], [ %skb, %if.end58.free_skb_crit_edge ], [ %skb, %if.end11.free_skb_crit_edge ], [ %skb, %is_valid_ether_addr.exit.free_skb_crit_edge ], [ %skb, %cond.true.i.free_skb_crit_edge ], [ %skb, %if.end.i.free_skb_crit_edge ], [ %skb, %if.end.free_skb_crit_edge ]
  %ret.2 = phi i32 [ 1, %pskb_may_pull.exit.free_skb_crit_edge ], [ 1, %if.end7.free_skb_crit_edge ], [ 1, %skb_cow.exit.free_skb_crit_edge ], [ 1, %if.end34.free_skb_crit_edge ], [ %ret.1, %put_orig_node ], [ 1, %if.end58.free_skb_crit_edge ], [ 1, %if.end11.free_skb_crit_edge ], [ 1, %is_valid_ether_addr.exit.free_skb_crit_edge ], [ 1, %cond.true.i.free_skb_crit_edge ], [ 1, %if.end.i.free_skb_crit_edge ], [ 1, %if.end.free_skb_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.then56, %batadv_recv_my_icmp_packet.exit
  %retval.0 = phi i32 [ %ret.2, %free_skb ], [ %ret.16873.i, %batadv_recv_my_icmp_packet.exit ], [ %call57, %if.then56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_my_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_recv_icmp_ttl_exceeded(ptr noundef %bat_priv, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %msg_type = getelementptr inbounds %struct.batadv_icmp_packet, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %msg_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.not = icmp eq i8 %3, 8
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @batadv_recv_icmp_ttl_exceeded.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@batadv_recv_icmp_ttl_exceeded, %if.then4)) #7
          to label %batadv_hardif_put.exit [label %if.then4], !srcloc !67

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %orig = getelementptr inbounds %struct.batadv_icmp_packet, ptr %1, i32 0, i32 5
  %dst = getelementptr inbounds %struct.batadv_icmp_packet, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @batadv_recv_icmp_ttl_exceeded.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.15, ptr noundef %orig, ptr noundef %dst) #7
  br label %batadv_orig_node_put.exit

if.end6:                                          ; preds = %entry
  %call7 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.batadv_orig_node_put.exit_crit_edge, label %if.end10

if.end6.batadv_orig_node_put.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.end10:                                         ; preds = %if.end6
  %orig11 = getelementptr inbounds %struct.batadv_icmp_packet, ptr %1, i32 0, i32 5
  %call13 = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %orig11) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end10.if.end.i_crit_edge, label %if.end16

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end16:                                         ; preds = %if.end10
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %4 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end16.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end16.skb_cloned.exit.i_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #7
  %7 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end16.skb_cloned.exit.i_crit_edge
  %9 = phi i1 [ true, %if.end16.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.ptr.sub.i.i.i)
  %tobool.not.i3.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 13
  %or.cond.i.i = and i1 %9, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end21_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end21_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %14 = tail call i32 @llvm.usub.sat.i32(i32 14, i32 %sub.ptr.sub.i.i.i) #7
  %add.i.i = add nuw nsw i32 %14, 127
  %and.i4.i = and i32 %add.i.i, 128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp18 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp18, label %skb_cow.exit.if.end.i_crit_edge, label %skb_cow.exit.if.end21_crit_edge

skb_cow.exit.if.end21_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

skb_cow.exit.if.end.i_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end21:                                         ; preds = %skb_cow.exit.if.end21_crit_edge, %skb_cloned.exit.i.if.end21_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %dst23 = getelementptr inbounds %struct.batadv_icmp_packet, ptr %16, i32 0, i32 4
  %orig25 = getelementptr inbounds %struct.batadv_icmp_packet, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %orig25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig25, align 4
  %19 = ptrtoint ptr %dst23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dst23, align 4
  %add.ptr.i = getelementptr %struct.batadv_icmp_packet, ptr %16, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.batadv_icmp_packet, ptr %16, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i, align 2
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7, i32 0, i32 4
  %23 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  store i32 %28, ptr %orig25, align 4
  %add.ptr.i52 = getelementptr i8, ptr %26, i32 4
  %29 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i52, align 2
  store i16 %30, ptr %add.ptr.i, align 2
  %msg_type29 = getelementptr inbounds %struct.batadv_icmp_packet, ptr %16, i32 0, i32 3
  %31 = ptrtoint ptr %msg_type29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 11, ptr %msg_type29, align 1
  %ttl = getelementptr inbounds %struct.batadv_icmp_packet, ptr %16, i32 0, i32 2
  %32 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 50, ptr %ttl, align 2
  %call30 = tail call i32 @batadv_send_skb_to_orig(ptr noundef %skb, ptr noundef nonnull %call13, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp ne i32 %call30, 0
  %spec.select = zext i1 %cmp31 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.end21, %skb_cow.exit.if.end.i_crit_edge, %if.end10.if.end.i_crit_edge
  %ret.1.ph = phi i32 [ 1, %if.end10.if.end.i_crit_edge ], [ %spec.select, %if.end21 ], [ 1, %skb_cow.exit.if.end.i_crit_edge ]
  %skb.addr.0.ph = phi ptr [ %skb, %if.end10.if.end.i_crit_edge ], [ null, %if.end21 ], [ %skb, %skb_cow.exit.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #7, !callees !66
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %do.body
  %skb.addr.078 = phi ptr [ %skb.addr.0.ph, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %skb.addr.0.ph, %if.then10.i.i.i.i.i ], [ %skb.addr.0.ph, %if.then.i.i ], [ %skb, %do.body ]
  %ret.175 = phi i32 [ %ret.1.ph, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %ret.1.ph, %if.then10.i.i.i.i.i ], [ %ret.1.ph, %if.then.i.i ], [ 1, %do.body ]
  %orig_node.073 = phi ptr [ %call13, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %call13, %if.then10.i.i.i.i.i ], [ %call13, %if.then.i.i ], [ null, %do.body ]
  %tobool.not.i54 = icmp eq ptr %orig_node.073, null
  br i1 %tobool.not.i54, label %batadv_hardif_put.exit.batadv_orig_node_put.exit_crit_edge, label %if.end.i59

batadv_hardif_put.exit.batadv_orig_node_put.exit_crit_edge: ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.end.i59:                                       ; preds = %batadv_hardif_put.exit
  %refcount.i55 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.073, i32 0, i32 27
  %call.i.i.i.i.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i55, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i55, i32 1, i32 3, i32 1) #7
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i55, ptr %refcount.i55, i32 1, ptr elementtype(i32) %refcount.i55) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i57 = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i57)
  %cmp.i.i.i.i.i58 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i57, 1
  br i1 %cmp.i.i.i.i.i58, label %if.then.i.i63, label %if.end5.i.i.i.i.i61

if.end5.i.i.i.i.i61:                              ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i57)
  %.not.i.i.i.i.i60 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i57, 0
  br i1 %.not.i.i.i.i.i60, label %if.end5.i.i.i.i.i61.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i62, !prof !61

if.end5.i.i.i.i.i61.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i62:                            ; preds = %if.end5.i.i.i.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i55, i32 noundef 3) #7
  br label %batadv_orig_node_put.exit

if.then.i.i63:                                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i55) #7, !callees !66
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i63, %if.then10.i.i.i.i.i62, %if.end5.i.i.i.i.i61.batadv_orig_node_put.exit_crit_edge, %batadv_hardif_put.exit.batadv_orig_node_put.exit_crit_edge, %if.end6.batadv_orig_node_put.exit_crit_edge, %if.then4
  %ret.17584 = phi i32 [ %ret.175, %batadv_hardif_put.exit.batadv_orig_node_put.exit_crit_edge ], [ %ret.175, %if.end5.i.i.i.i.i61.batadv_orig_node_put.exit_crit_edge ], [ %ret.175, %if.then10.i.i.i.i.i62 ], [ %ret.175, %if.then.i.i63 ], [ 1, %if.then4 ], [ 1, %if.end6.batadv_orig_node_put.exit_crit_edge ]
  %skb.addr.07883 = phi ptr [ %skb.addr.078, %batadv_hardif_put.exit.batadv_orig_node_put.exit_crit_edge ], [ %skb.addr.078, %if.end5.i.i.i.i.i61.batadv_orig_node_put.exit_crit_edge ], [ %skb.addr.078, %if.then10.i.i.i.i.i62 ], [ %skb.addr.078, %if.then.i.i63 ], [ %skb, %if.then4 ], [ %skb, %if.end6.batadv_orig_node_put.exit_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.07883, i32 noundef 0) #7
  ret i32 %ret.17584
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_skb_to_orig(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_orig_node_put(ptr noundef %orig_node) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %orig_node, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 27
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !61

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #7
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_node_release(ptr noundef %refcount) #7, !callees !66
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_find_router(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %recv_if) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i208 = alloca i32, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 30
  %0 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_ops, align 4
  %tobool.not = icmp eq ptr %orig_node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @batadv_orig_router_get(ptr noundef nonnull %orig_node, ptr noundef %recv_if) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp = icmp eq ptr %recv_if, null
  br i1 %cmp, label %land.lhs.true, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %bonding = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bonding, i32 noundef 4) #7
  %2 = ptrtoint ptr %bonding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bonding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true
  %4 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !68
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %neigh_list_lock.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock.i) #7
  %last_bonding_candidate1.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 2
  %8 = ptrtoint ptr %last_bonding_candidate1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %last_bonding_candidate1.i, align 4
  %tobool.not.i204 = icmp eq ptr %9, null
  br i1 %tobool.not.i204, label %batadv_last_bonding_get.exit, label %if.then.i205

if.then.i205:                                     ; preds = %rcu_read_lock.exit
  %refcount.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %9, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i205.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !60

if.then.i205.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i205
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then10_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then10_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i205.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i205.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %if.then10

batadv_last_bonding_get.exit:                     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock.i) #7
  br label %do.body26

if.then10:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then10_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock.i) #7
  %router11 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %router11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %router11, align 4
  %call13 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %if.then10.do.body26_crit_edge

if.then10.do.body26_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

land.lhs.true15:                                  ; preds = %if.then10
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.do.body26_crit_edge, label %land.lhs.true18

land.lhs.true15.do.body26_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %.b201 = load i1, ptr @batadv_find_router.__warned, align 1
  br i1 %.b201, label %land.lhs.true18.do.body26_crit_edge, label %if.then20

land.lhs.true18.do.body26_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @batadv_find_router.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 561, ptr noundef nonnull @.str.2) #7
  br label %do.body26

do.body26:                                        ; preds = %if.then20, %land.lhs.true18.do.body26_crit_edge, %land.lhs.true15.do.body26_crit_edge, %if.then10.do.body26_crit_edge, %batadv_last_bonding_get.exit
  %last_cand_router.0 = phi ptr [ null, %batadv_last_bonding_get.exit ], [ %13, %if.then20 ], [ %13, %land.lhs.true18.do.body26_crit_edge ], [ %13, %land.lhs.true15.do.body26_crit_edge ], [ %13, %if.then10.do.body26_crit_edge ]
  %call27 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %do.body26.do.end37_crit_edge

do.body26.do.end37_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

land.lhs.true29:                                  ; preds = %do.body26
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b190200 = load i1, ptr @batadv_find_router.__warned.3, align 1
  br i1 %.b190200, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @batadv_find_router.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 563, ptr noundef nonnull @.str.4) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %do.body26.do.end37_crit_edge
  %ifinfo_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 1
  %14 = ptrtoint ptr %ifinfo_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %cand.0380 = load volatile ptr, ptr %ifinfo_list, align 4
  %tobool46.not381 = icmp eq ptr %cand.0380, null
  br i1 %tobool46.not381, label %do.end37.for.end_crit_edge, label %for.body.lr.ph

do.end37.for.end_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end37
  %is_similar_or_better = getelementptr inbounds %struct.batadv_algo_ops, ptr %1, i32 0, i32 3, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cand.0385 = phi ptr [ %cand.0380, %for.body.lr.ph ], [ %cand.0, %for.inc.for.body_crit_edge ]
  %first_candidate_router.0384 = phi ptr [ null, %for.body.lr.ph ], [ %first_candidate_router.3, %for.inc.for.body_crit_edge ]
  %first_candidate.0383 = phi ptr [ null, %for.body.lr.ph ], [ %first_candidate.3, %for.inc.for.body_crit_edge ]
  %last_candidate_found.0.off0382 = phi i1 [ false, %for.body.lr.ph ], [ %last_candidate_found.2.off0, %for.inc.for.body_crit_edge ]
  %refcount = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %cand.0385, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i206 = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #7
  %15 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %for.body
  %17 = phi i32 [ %16, %for.body ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %17, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %20, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #7, !srcloc !69
  %asmresult.i.i.i.i.i.i.i207 = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i207, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !61

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !61

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #7
  %25 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %26 = phi i32 [ %23, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.i.i.i.i.not = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %if.end50

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end50:                                         ; preds = %kref_get_unless_zero.exit
  %router55 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %cand.0385, i32 0, i32 2
  %27 = ptrtoint ptr %router55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %router55, align 4
  %call57 = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %if.end50.do.end67_crit_edge

if.end50.do.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true59:                                  ; preds = %if.end50
  %call60 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true59.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true59.do.end67_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %.b191199 = load i1, ptr @batadv_find_router.__warned.5, align 1
  br i1 %.b191199, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @batadv_find_router.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 568, ptr noundef nonnull @.str.2) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true59.do.end67_crit_edge, %if.end50.do.end67_crit_edge
  %tobool69.not = icmp eq ptr %28, null
  br i1 %tobool69.not, label %do.end67.if.end.i250_crit_edge, label %if.end71

do.end67.if.end.i250_crit_edge:                   ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i250

if.end71:                                         ; preds = %do.end67
  %refcount72 = getelementptr inbounds %struct.batadv_neigh_node, ptr %28, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i208) #7
  %call.i.i.i.i.i.i.i209 = call zeroext i1 @__kasan_check_read(ptr noundef %refcount72, i32 noundef 4) #7
  %29 = ptrtoint ptr %refcount72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %refcount72, align 4
  br label %do.body.i.i.i.i211

do.body.i.i.i.i211:                               ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221.do.body.i.i.i.i211_crit_edge, %if.end71
  %31 = phi i32 [ %30, %if.end71 ], [ %asmresult3.i.i.i.i.i.i.i219, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221.do.body.i.i.i.i211_crit_edge ]
  %32 = ptrtoint ptr %old.i.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %old.i.i.i.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i.i210 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i.i210, label %do.body.i.i.i.i211.if.end4.i.i.i.i224_crit_edge, label %do.cond.i.i.i.i215

do.body.i.i.i.i211.if.end4.i.i.i.i224_crit_edge:  ; preds = %do.body.i.i.i.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i224

do.cond.i.i.i.i215:                               ; preds = %do.body.i.i.i.i211
  %add.i.i.i.i212 = add i32 %31, 1
  %call.i.i.i.i.i.i213 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount72, i32 noundef 4) #7
  %call.i3.i.i.i.i.i214 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i208, i32 noundef 4) #7
  %33 = ptrtoint ptr %old.i.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %old.i.i.i.i208, align 4
  call void @llvm.prefetch.p0(ptr %refcount72, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i218

do.body.i.i.i.i.i.i.i218:                         ; preds = %do.body.i.i.i.i.i.i.i218.do.body.i.i.i.i.i.i.i218_crit_edge, %do.cond.i.i.i.i215
  %35 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount72, ptr %refcount72, i32 %34, i32 %add.i.i.i.i212, ptr elementtype(i32) %refcount72) #7, !srcloc !69
  %asmresult.i.i.i.i.i.i.i216 = extractvalue { i32, i32 } %35, 0
  %tobool.not.i.i.i.i.i.i.i217 = icmp eq i32 %asmresult.i.i.i.i.i.i.i216, 0
  br i1 %tobool.not.i.i.i.i.i.i.i217, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221, label %do.body.i.i.i.i.i.i.i218.do.body.i.i.i.i.i.i.i218_crit_edge

do.body.i.i.i.i.i.i.i218.do.body.i.i.i.i.i.i.i218_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i218

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221:  ; preds = %do.body.i.i.i.i.i.i.i218
  %asmresult3.i.i.i.i.i.i.i219 = extractvalue { i32, i32 } %35, 1
  %cmp.not.i.i.i.i.i.i220 = icmp eq i32 %asmresult3.i.i.i.i.i.i.i219, %34
  br i1 %cmp.not.i.i.i.i.i.i220, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221.if.end4.i.i.i.i224_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221.do.body.i.i.i.i211_crit_edge, !prof !61

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221.do.body.i.i.i.i211_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i211

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221.if.end4.i.i.i.i224_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i224

if.end4.i.i.i.i224:                               ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i221.if.end4.i.i.i.i224_crit_edge, %do.body.i.i.i.i211.if.end4.i.i.i.i224_crit_edge
  %36 = ptrtoint ptr %old.i.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %old.i.i.i.i208, align 4
  %add5.i.i.i.i222 = add i32 %37, 1
  %38 = or i32 %add5.i.i.i.i222, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i223 = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i223, label %if.end4.i.i.i.i224.kref_get_unless_zero.exit228_crit_edge, label %if.then10.i.i.i.i225, !prof !61

if.end4.i.i.i.i224.kref_get_unless_zero.exit228_crit_edge: ; preds = %if.end4.i.i.i.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit228

if.then10.i.i.i.i225:                             ; preds = %if.end4.i.i.i.i224
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount72, i32 noundef 0) #7
  %39 = ptrtoint ptr %old.i.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr394 = load i32, ptr %old.i.i.i.i208, align 4
  br label %kref_get_unless_zero.exit228

kref_get_unless_zero.exit228:                     ; preds = %if.then10.i.i.i.i225, %if.end4.i.i.i.i224.kref_get_unless_zero.exit228_crit_edge
  %40 = phi i32 [ %37, %if.end4.i.i.i.i224.kref_get_unless_zero.exit228_crit_edge ], [ %.pr394, %if.then10.i.i.i.i225 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool12.i.i.i.i226.not = icmp eq i32 %40, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i208) #7
  br i1 %tobool12.i.i.i.i226.not, label %kref_get_unless_zero.exit228.if.end.i250_crit_edge, label %if.end76

kref_get_unless_zero.exit228.if.end.i250_crit_edge: ; preds = %kref_get_unless_zero.exit228
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i250

if.end76:                                         ; preds = %kref_get_unless_zero.exit228
  %41 = ptrtoint ptr %is_similar_or_better to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %is_similar_or_better, align 4
  %if_outgoing = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %cand.0385, i32 0, i32 1
  %43 = ptrtoint ptr %if_outgoing to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %if_outgoing, align 4
  %call77 = call zeroext i1 %42(ptr noundef nonnull %28, ptr noundef %44, ptr noundef nonnull %call, ptr noundef null) #7
  %call77.not = xor i1 %call77, true
  %cmp80 = icmp eq ptr %last_cand_router.0, %28
  %or.cond = select i1 %call77.not, i1 true, i1 %cmp80
  br i1 %or.cond, label %if.end76.if.end.i_crit_edge, label %if.end82

if.end76.if.end.i_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end82:                                         ; preds = %if.end76
  %tobool83.not = icmp eq ptr %first_candidate.0383, null
  br i1 %tobool83.not, label %if.then84, label %if.end82.if.end87_crit_edge

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then84:                                        ; preds = %if.end82
  %call.i.i.i.i.i.i229 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount72, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcount72, i32 1, i32 3, i32 1) #7
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount72, ptr %refcount72, i32 1, ptr elementtype(i32) %refcount72) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then84.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !60

if.then84.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then84
  %add.i.i.i.i230 = add i32 %asmresult.i.i.i.i.i.i, 1
  %46 = or i32 %add.i.i.i.i230, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %.not.i.i.i.i231 = icmp sgt i32 %46, -1
  br i1 %.not.i.i.i.i231, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then84.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then84.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount72, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call.i.i.i.i.i.i232 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i233 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i233)
  %tobool1.not.i.i.i.i234 = icmp eq i32 %asmresult.i.i.i.i.i.i233, 0
  br i1 %tobool1.not.i.i.i.i234, label %kref_get.exit.if.end15.sink.split.i.i.i.i239_crit_edge, label %if.else.i.i.i.i237, !prof !60

kref_get.exit.if.end15.sink.split.i.i.i.i239_crit_edge: ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i239

if.else.i.i.i.i237:                               ; preds = %kref_get.exit
  %add.i.i.i.i235 = add i32 %asmresult.i.i.i.i.i.i233, 1
  %48 = or i32 %add.i.i.i.i235, %asmresult.i.i.i.i.i.i233
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i236 = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i236, label %if.else.i.i.i.i237.if.end87_crit_edge, label %if.else.i.i.i.i237.if.end15.sink.split.i.i.i.i239_crit_edge, !prof !61

if.else.i.i.i.i237.if.end15.sink.split.i.i.i.i239_crit_edge: ; preds = %if.else.i.i.i.i237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i239

if.else.i.i.i.i237.if.end87_crit_edge:            ; preds = %if.else.i.i.i.i237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.end15.sink.split.i.i.i.i239:                   ; preds = %if.else.i.i.i.i237.if.end15.sink.split.i.i.i.i239_crit_edge, %kref_get.exit.if.end15.sink.split.i.i.i.i239_crit_edge
  %.sink.i.i.i.i238 = phi i32 [ 2, %kref_get.exit.if.end15.sink.split.i.i.i.i239_crit_edge ], [ 1, %if.else.i.i.i.i237.if.end15.sink.split.i.i.i.i239_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i238) #7
  br label %if.end87

if.end87:                                         ; preds = %if.end15.sink.split.i.i.i.i239, %if.else.i.i.i.i237.if.end87_crit_edge, %if.end82.if.end87_crit_edge
  %first_candidate.1 = phi ptr [ %first_candidate.0383, %if.end82.if.end87_crit_edge ], [ %cand.0385, %if.else.i.i.i.i237.if.end87_crit_edge ], [ %cand.0385, %if.end15.sink.split.i.i.i.i239 ]
  %first_candidate_router.1 = phi ptr [ %first_candidate_router.0384, %if.end82.if.end87_crit_edge ], [ %28, %if.else.i.i.i.i237.if.end87_crit_edge ], [ %28, %if.end15.sink.split.i.i.i.i239 ]
  %brmerge = select i1 %tobool.not.i204, i1 true, i1 %last_candidate_found.0.off0382
  br i1 %brmerge, label %if.end87.for.end_crit_edge, label %if.end91

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end91:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %cmp92 = icmp eq ptr %9, %cand.0385
  br label %if.end.i

if.end.i:                                         ; preds = %if.end91, %if.end76.if.end.i_crit_edge
  %last_candidate_found.1.off0 = phi i1 [ %last_candidate_found.0.off0382, %if.end76.if.end.i_crit_edge ], [ %cmp92, %if.end91 ]
  %first_candidate.2 = phi ptr [ %first_candidate.0383, %if.end76.if.end.i_crit_edge ], [ %first_candidate.1, %if.end91 ]
  %first_candidate_router.2 = phi ptr [ %first_candidate_router.0384, %if.end76.if.end.i_crit_edge ], [ %first_candidate_router.1, %if.end91 ]
  %call.i.i.i.i.i.i.i243 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount72, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount72, i32 1, i32 3, i32 1) #7
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount72, ptr %refcount72, i32 1, ptr elementtype(i32) %refcount72) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i244 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i244, label %if.end5.i.i.i.i.i.if.end.i250_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.if.end.i250_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i250

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount72, i32 noundef 3) #7
  br label %if.end.i250

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_neigh_node_release(ptr noundef %refcount72) #7, !callees !66
  br label %if.end.i250

if.end.i250:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i250_crit_edge, %kref_get_unless_zero.exit228.if.end.i250_crit_edge, %do.end67.if.end.i250_crit_edge
  %first_candidate_router.2366 = phi ptr [ %first_candidate_router.2, %if.end5.i.i.i.i.i.if.end.i250_crit_edge ], [ %first_candidate_router.2, %if.then10.i.i.i.i.i ], [ %first_candidate_router.2, %if.then.i.i ], [ %first_candidate_router.0384, %do.end67.if.end.i250_crit_edge ], [ %first_candidate_router.0384, %kref_get_unless_zero.exit228.if.end.i250_crit_edge ]
  %first_candidate.2365 = phi ptr [ %first_candidate.2, %if.end5.i.i.i.i.i.if.end.i250_crit_edge ], [ %first_candidate.2, %if.then10.i.i.i.i.i ], [ %first_candidate.2, %if.then.i.i ], [ %first_candidate.0383, %do.end67.if.end.i250_crit_edge ], [ %first_candidate.0383, %kref_get_unless_zero.exit228.if.end.i250_crit_edge ]
  %last_candidate_found.1.off0364 = phi i1 [ %last_candidate_found.1.off0, %if.end5.i.i.i.i.i.if.end.i250_crit_edge ], [ %last_candidate_found.1.off0, %if.then10.i.i.i.i.i ], [ %last_candidate_found.1.off0, %if.then.i.i ], [ %last_candidate_found.0.off0382, %do.end67.if.end.i250_crit_edge ], [ %last_candidate_found.0.off0382, %kref_get_unless_zero.exit228.if.end.i250_crit_edge ]
  %call.i.i.i.i.i.i.i247 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i248 = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i248)
  %cmp.i.i.i.i.i249 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i248, 1
  br i1 %cmp.i.i.i.i.i249, label %if.then.i.i254, label %if.end5.i.i.i.i.i252

if.end5.i.i.i.i.i252:                             ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i248)
  %.not.i.i.i.i.i251 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i248, 0
  br i1 %.not.i.i.i.i.i251, label %if.end5.i.i.i.i.i252.for.inc_crit_edge, label %if.then10.i.i.i.i.i253, !prof !61

if.end5.i.i.i.i.i252.for.inc_crit_edge:           ; preds = %if.end5.i.i.i.i.i252
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10.i.i.i.i.i253:                           ; preds = %if.end5.i.i.i.i.i252
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #7
  br label %for.inc

if.then.i.i254:                                   ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount) #7, !callees !66
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i254, %if.then10.i.i.i.i.i253, %if.end5.i.i.i.i.i252.for.inc_crit_edge, %kref_get_unless_zero.exit.for.inc_crit_edge
  %last_candidate_found.2.off0 = phi i1 [ %last_candidate_found.0.off0382, %kref_get_unless_zero.exit.for.inc_crit_edge ], [ %last_candidate_found.1.off0364, %if.end5.i.i.i.i.i252.for.inc_crit_edge ], [ %last_candidate_found.1.off0364, %if.then10.i.i.i.i.i253 ], [ %last_candidate_found.1.off0364, %if.then.i.i254 ]
  %first_candidate.3 = phi ptr [ %first_candidate.0383, %kref_get_unless_zero.exit.for.inc_crit_edge ], [ %first_candidate.2365, %if.end5.i.i.i.i.i252.for.inc_crit_edge ], [ %first_candidate.2365, %if.then10.i.i.i.i.i253 ], [ %first_candidate.2365, %if.then.i.i254 ]
  %first_candidate_router.3 = phi ptr [ %first_candidate_router.0384, %kref_get_unless_zero.exit.for.inc_crit_edge ], [ %first_candidate_router.2366, %if.end5.i.i.i.i.i252.for.inc_crit_edge ], [ %first_candidate_router.2366, %if.then10.i.i.i.i.i253 ], [ %first_candidate_router.2366, %if.then.i.i254 ]
  %51 = ptrtoint ptr %cand.0385 to i32
  call void @__asan_load4_noabort(i32 %51)
  %cand.0 = load volatile ptr, ptr %cand.0385, align 4
  %tobool46.not = icmp eq ptr %cand.0, null
  br i1 %tobool46.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end87.for.end_crit_edge, %do.end37.for.end_crit_edge
  %cand.0.lcssa = phi ptr [ null, %do.end37.for.end_crit_edge ], [ %cand.0385, %if.end87.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %first_candidate.4 = phi ptr [ null, %do.end37.for.end_crit_edge ], [ %first_candidate.1, %if.end87.for.end_crit_edge ], [ %first_candidate.3, %for.inc.for.end_crit_edge ]
  %next_candidate_router.0 = phi ptr [ null, %do.end37.for.end_crit_edge ], [ %28, %if.end87.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %first_candidate_router.4 = phi ptr [ null, %do.end37.for.end_crit_edge ], [ %first_candidate_router.1, %if.end87.for.end_crit_edge ], [ %first_candidate_router.3, %for.inc.for.end_crit_edge ]
  %call.i255 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i255, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i258

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i258:                               ; preds = %for.end
  %call1.i256 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i256)
  %tobool.not.i257 = icmp eq i32 %call1.i256, 0
  br i1 %tobool.not.i257, label %land.lhs.true.i258.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i260

land.lhs.true.i258.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i258
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i260:                              ; preds = %land.lhs.true.i258
  %.b4.i259 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i259, label %land.lhs.true2.i260.rcu_read_unlock.exit_crit_edge, label %if.then.i261

land.lhs.true2.i260.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i261:                                     ; preds = %land.lhs.true2.i260
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i261, %land.lhs.true2.i260.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i258.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  %52 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i.i262 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i262 to ptr
  %preempt_count.i.i.i.i263 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i263, align 4
  %sub.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i263, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %tobool114.not = icmp eq ptr %cand.0.lcssa, null
  br i1 %tobool114.not, label %if.else, label %if.end.i269

if.end.i269:                                      ; preds = %rcu_read_unlock.exit
  %refcount.i265 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call, i32 0, i32 8
  %call.i.i.i.i.i.i.i266 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i265, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i265, i32 1, i32 3, i32 1) #7
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i265, ptr %refcount.i265, i32 1, ptr elementtype(i32) %refcount.i265) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i267 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i267)
  %cmp.i.i.i.i.i268 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i267, 1
  br i1 %cmp.i.i.i.i.i268, label %if.then.i.i273, label %if.end5.i.i.i.i.i271

if.end5.i.i.i.i.i271:                             ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i267)
  %.not.i.i.i.i.i270 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i267, 0
  br i1 %.not.i.i.i.i.i270, label %if.end5.i.i.i.i.i271.batadv_neigh_node_put.exit274_crit_edge, label %if.then10.i.i.i.i.i272, !prof !61

if.end5.i.i.i.i.i271.batadv_neigh_node_put.exit274_crit_edge: ; preds = %if.end5.i.i.i.i.i271
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_neigh_node_put.exit274

if.then10.i.i.i.i.i272:                           ; preds = %if.end5.i.i.i.i.i271
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i265, i32 noundef 3) #7
  br label %batadv_neigh_node_put.exit274

if.then.i.i273:                                   ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_neigh_node_release(ptr noundef %refcount.i265) #7, !callees !66
  br label %batadv_neigh_node_put.exit274

batadv_neigh_node_put.exit274:                    ; preds = %if.then.i.i273, %if.then10.i.i.i.i.i272, %if.end5.i.i.i.i.i271.batadv_neigh_node_put.exit274_crit_edge
  %refcount116 = getelementptr inbounds %struct.batadv_neigh_node, ptr %next_candidate_router.0, i32 0, i32 8
  %call.i.i.i.i.i.i275 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount116, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcount116, i32 1, i32 3, i32 1) #7
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount116, ptr %refcount116, i32 1, ptr elementtype(i32) %refcount116) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i276 = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i276)
  %tobool1.not.i.i.i.i277 = icmp eq i32 %asmresult.i.i.i.i.i.i276, 0
  br i1 %tobool1.not.i.i.i.i277, label %batadv_neigh_node_put.exit274.if.end15.sink.split.i.i.i.i282_crit_edge, label %if.else.i.i.i.i280, !prof !60

batadv_neigh_node_put.exit274.if.end15.sink.split.i.i.i.i282_crit_edge: ; preds = %batadv_neigh_node_put.exit274
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i282

if.else.i.i.i.i280:                               ; preds = %batadv_neigh_node_put.exit274
  %add.i.i.i.i278 = add i32 %asmresult.i.i.i.i.i.i276, 1
  %58 = or i32 %add.i.i.i.i278, %asmresult.i.i.i.i.i.i276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %.not.i.i.i.i279 = icmp sgt i32 %58, -1
  br i1 %.not.i.i.i.i279, label %if.else.i.i.i.i280.if.end122_crit_edge, label %if.else.i.i.i.i280.if.end15.sink.split.i.i.i.i282_crit_edge, !prof !61

if.else.i.i.i.i280.if.end15.sink.split.i.i.i.i282_crit_edge: ; preds = %if.else.i.i.i.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i282

if.else.i.i.i.i280.if.end122_crit_edge:           ; preds = %if.else.i.i.i.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.end15.sink.split.i.i.i.i282:                   ; preds = %if.else.i.i.i.i280.if.end15.sink.split.i.i.i.i282_crit_edge, %batadv_neigh_node_put.exit274.if.end15.sink.split.i.i.i.i282_crit_edge
  %.sink.i.i.i.i281 = phi i32 [ 2, %batadv_neigh_node_put.exit274.if.end15.sink.split.i.i.i.i282_crit_edge ], [ 1, %if.else.i.i.i.i280.if.end15.sink.split.i.i.i.i282_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount116, i32 noundef %.sink.i.i.i.i281) #7
  br label %if.end122

if.else:                                          ; preds = %rcu_read_unlock.exit
  %tobool117.not = icmp eq ptr %first_candidate.4, null
  br i1 %tobool117.not, label %if.end125.thread, label %if.end.i289

if.end.i289:                                      ; preds = %if.else
  %refcount.i285 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call, i32 0, i32 8
  %call.i.i.i.i.i.i.i286 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i285, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i285, i32 1, i32 3, i32 1) #7
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i285, ptr %refcount.i285, i32 1, ptr elementtype(i32) %refcount.i285) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i287 = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i287)
  %cmp.i.i.i.i.i288 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i287, 1
  br i1 %cmp.i.i.i.i.i288, label %if.then.i.i293, label %if.end5.i.i.i.i.i291

if.end5.i.i.i.i.i291:                             ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i287)
  %.not.i.i.i.i.i290 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i287, 0
  br i1 %.not.i.i.i.i.i290, label %if.end5.i.i.i.i.i291.batadv_neigh_node_put.exit294_crit_edge, label %if.then10.i.i.i.i.i292, !prof !61

if.end5.i.i.i.i.i291.batadv_neigh_node_put.exit294_crit_edge: ; preds = %if.end5.i.i.i.i.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_neigh_node_put.exit294

if.then10.i.i.i.i.i292:                           ; preds = %if.end5.i.i.i.i.i291
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i285, i32 noundef 3) #7
  br label %batadv_neigh_node_put.exit294

if.then.i.i293:                                   ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_neigh_node_release(ptr noundef %refcount.i285) #7, !callees !66
  br label %batadv_neigh_node_put.exit294

batadv_neigh_node_put.exit294:                    ; preds = %if.then.i.i293, %if.then10.i.i.i.i.i292, %if.end5.i.i.i.i.i291.batadv_neigh_node_put.exit294_crit_edge
  %refcount119 = getelementptr inbounds %struct.batadv_neigh_node, ptr %first_candidate_router.4, i32 0, i32 8
  %call.i.i.i.i.i.i295 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount119, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcount119, i32 1, i32 3, i32 1) #7
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount119, ptr %refcount119, i32 1, ptr elementtype(i32) %refcount119) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i296 = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i296)
  %tobool1.not.i.i.i.i297 = icmp eq i32 %asmresult.i.i.i.i.i.i296, 0
  br i1 %tobool1.not.i.i.i.i297, label %batadv_neigh_node_put.exit294.if.end15.sink.split.i.i.i.i302_crit_edge, label %if.else.i.i.i.i300, !prof !60

batadv_neigh_node_put.exit294.if.end15.sink.split.i.i.i.i302_crit_edge: ; preds = %batadv_neigh_node_put.exit294
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i302

if.else.i.i.i.i300:                               ; preds = %batadv_neigh_node_put.exit294
  %add.i.i.i.i298 = add i32 %asmresult.i.i.i.i.i.i296, 1
  %61 = or i32 %add.i.i.i.i298, %asmresult.i.i.i.i.i.i296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %.not.i.i.i.i299 = icmp sgt i32 %61, -1
  br i1 %.not.i.i.i.i299, label %if.else.i.i.i.i300.if.end122.thread370_crit_edge, label %if.else.i.i.i.i300.if.end15.sink.split.i.i.i.i302_crit_edge, !prof !61

if.else.i.i.i.i300.if.end15.sink.split.i.i.i.i302_crit_edge: ; preds = %if.else.i.i.i.i300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i302

if.else.i.i.i.i300.if.end122.thread370_crit_edge: ; preds = %if.else.i.i.i.i300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.thread370

if.end15.sink.split.i.i.i.i302:                   ; preds = %if.else.i.i.i.i300.if.end15.sink.split.i.i.i.i302_crit_edge, %batadv_neigh_node_put.exit294.if.end15.sink.split.i.i.i.i302_crit_edge
  %.sink.i.i.i.i301 = phi i32 [ 2, %batadv_neigh_node_put.exit294.if.end15.sink.split.i.i.i.i302_crit_edge ], [ 1, %if.else.i.i.i.i300.if.end15.sink.split.i.i.i.i302_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount119, i32 noundef %.sink.i.i.i.i301) #7
  br label %if.end122.thread370

if.end122.thread370:                              ; preds = %if.end15.sink.split.i.i.i.i302, %if.else.i.i.i.i300.if.end122.thread370_crit_edge
  call fastcc void @batadv_last_bonding_replace(ptr noundef nonnull %orig_node, ptr noundef nonnull %first_candidate.4)
  br label %if.then124

if.end125.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @batadv_last_bonding_replace(ptr noundef nonnull %orig_node, ptr noundef null)
  br label %if.end128

if.end122:                                        ; preds = %if.end15.sink.split.i.i.i.i282, %if.else.i.i.i.i280.if.end122_crit_edge
  call fastcc void @batadv_last_bonding_replace(ptr noundef nonnull %orig_node, ptr noundef nonnull %cand.0.lcssa)
  %tobool123.not = icmp eq ptr %first_candidate.4, null
  br i1 %tobool123.not, label %if.end122.if.then127_crit_edge, label %if.end122.if.then124_crit_edge

if.end122.if.then124_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then124

if.end122.if.then127_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then127

if.then124:                                       ; preds = %if.end122.if.then124_crit_edge, %if.end122.thread370
  %router.0373 = phi ptr [ %first_candidate_router.4, %if.end122.thread370 ], [ %next_candidate_router.0, %if.end122.if.then124_crit_edge ]
  %tobool.not.i304 = icmp eq ptr %first_candidate_router.4, null
  br i1 %tobool.not.i304, label %if.then124.if.end.i320_crit_edge, label %if.end.i309

if.then124.if.end.i320_crit_edge:                 ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i320

if.end.i309:                                      ; preds = %if.then124
  %refcount.i305 = getelementptr inbounds %struct.batadv_neigh_node, ptr %first_candidate_router.4, i32 0, i32 8
  %call.i.i.i.i.i.i.i306 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i305, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i305, i32 1, i32 3, i32 1) #7
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i305, ptr %refcount.i305, i32 1, ptr elementtype(i32) %refcount.i305) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i307 = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i307)
  %cmp.i.i.i.i.i308 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i307, 1
  br i1 %cmp.i.i.i.i.i308, label %if.then.i.i313, label %if.end5.i.i.i.i.i311

if.end5.i.i.i.i.i311:                             ; preds = %if.end.i309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i307)
  %.not.i.i.i.i.i310 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i307, 0
  br i1 %.not.i.i.i.i.i310, label %if.end5.i.i.i.i.i311.if.end.i320_crit_edge, label %if.then10.i.i.i.i.i312, !prof !61

if.end5.i.i.i.i.i311.if.end.i320_crit_edge:       ; preds = %if.end5.i.i.i.i.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i320

if.then10.i.i.i.i.i312:                           ; preds = %if.end5.i.i.i.i.i311
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i305, i32 noundef 3) #7
  br label %if.end.i320

if.then.i.i313:                                   ; preds = %if.end.i309
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_neigh_node_release(ptr noundef %refcount.i305) #7, !callees !66
  br label %if.end.i320

if.end.i320:                                      ; preds = %if.then.i.i313, %if.then10.i.i.i.i.i312, %if.end5.i.i.i.i.i311.if.end.i320_crit_edge, %if.then124.if.end.i320_crit_edge
  %refcount.i316 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %first_candidate.4, i32 0, i32 8
  %call.i.i.i.i.i.i.i317 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i316, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i316, i32 1, i32 3, i32 1) #7
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i316, ptr %refcount.i316, i32 1, ptr elementtype(i32) %refcount.i316) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i318 = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i318)
  %cmp.i.i.i.i.i319 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i318, 1
  br i1 %cmp.i.i.i.i.i319, label %if.then.i.i324, label %if.end5.i.i.i.i.i322

if.end5.i.i.i.i.i322:                             ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i318)
  %.not.i.i.i.i.i321 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i318, 0
  br i1 %.not.i.i.i.i.i321, label %if.end5.i.i.i.i.i322.if.end125_crit_edge, label %if.then10.i.i.i.i.i323, !prof !61

if.end5.i.i.i.i.i322.if.end125_crit_edge:         ; preds = %if.end5.i.i.i.i.i322
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then10.i.i.i.i.i323:                           ; preds = %if.end5.i.i.i.i.i322
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i316, i32 noundef 3) #7
  br label %if.end125

if.then.i.i324:                                   ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i316) #7, !callees !66
  br label %if.end125

if.end125:                                        ; preds = %if.then.i.i324, %if.then10.i.i.i.i.i323, %if.end5.i.i.i.i.i322.if.end125_crit_edge
  br i1 %tobool114.not, label %if.end125.if.end128_crit_edge, label %if.end125.if.then127_crit_edge

if.end125.if.then127_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then127

if.end125.if.end128_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then127:                                       ; preds = %if.end125.if.then127_crit_edge, %if.end122.if.then127_crit_edge
  %router.0369378 = phi ptr [ %router.0373, %if.end125.if.then127_crit_edge ], [ %next_candidate_router.0, %if.end122.if.then127_crit_edge ]
  %tobool.not.i326 = icmp eq ptr %next_candidate_router.0, null
  br i1 %tobool.not.i326, label %if.then127.if.end.i342_crit_edge, label %if.end.i331

if.then127.if.end.i342_crit_edge:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i342

if.end.i331:                                      ; preds = %if.then127
  %refcount.i327 = getelementptr inbounds %struct.batadv_neigh_node, ptr %next_candidate_router.0, i32 0, i32 8
  %call.i.i.i.i.i.i.i328 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i327, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i327, i32 1, i32 3, i32 1) #7
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i327, ptr %refcount.i327, i32 1, ptr elementtype(i32) %refcount.i327) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i329 = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i329)
  %cmp.i.i.i.i.i330 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i329, 1
  br i1 %cmp.i.i.i.i.i330, label %if.then.i.i335, label %if.end5.i.i.i.i.i333

if.end5.i.i.i.i.i333:                             ; preds = %if.end.i331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i329)
  %.not.i.i.i.i.i332 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i329, 0
  br i1 %.not.i.i.i.i.i332, label %if.end5.i.i.i.i.i333.if.end.i342_crit_edge, label %if.then10.i.i.i.i.i334, !prof !61

if.end5.i.i.i.i.i333.if.end.i342_crit_edge:       ; preds = %if.end5.i.i.i.i.i333
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i342

if.then10.i.i.i.i.i334:                           ; preds = %if.end5.i.i.i.i.i333
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i327, i32 noundef 3) #7
  br label %if.end.i342

if.then.i.i335:                                   ; preds = %if.end.i331
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_neigh_node_release(ptr noundef %refcount.i327) #7, !callees !66
  br label %if.end.i342

if.end.i342:                                      ; preds = %if.then.i.i335, %if.then10.i.i.i.i.i334, %if.end5.i.i.i.i.i333.if.end.i342_crit_edge, %if.then127.if.end.i342_crit_edge
  %refcount.i338 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %cand.0.lcssa, i32 0, i32 8
  %call.i.i.i.i.i.i.i339 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i338, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i338, i32 1, i32 3, i32 1) #7
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i338, ptr %refcount.i338, i32 1, ptr elementtype(i32) %refcount.i338) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i340 = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i340)
  %cmp.i.i.i.i.i341 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i340, 1
  br i1 %cmp.i.i.i.i.i341, label %if.then.i.i346, label %if.end5.i.i.i.i.i344

if.end5.i.i.i.i.i344:                             ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i340)
  %.not.i.i.i.i.i343 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i340, 0
  br i1 %.not.i.i.i.i.i343, label %if.end5.i.i.i.i.i344.if.end128_crit_edge, label %if.then10.i.i.i.i.i345, !prof !61

if.end5.i.i.i.i.i344.if.end128_crit_edge:         ; preds = %if.end5.i.i.i.i.i344
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then10.i.i.i.i.i345:                           ; preds = %if.end5.i.i.i.i.i344
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i338, i32 noundef 3) #7
  br label %if.end128

if.then.i.i346:                                   ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i338) #7, !callees !66
  br label %if.end128

if.end128:                                        ; preds = %if.then.i.i346, %if.then10.i.i.i.i.i345, %if.end5.i.i.i.i.i344.if.end128_crit_edge, %if.end125.if.end128_crit_edge, %if.end125.thread
  %router.0369375 = phi ptr [ %call, %if.end125.thread ], [ %router.0373, %if.end125.if.end128_crit_edge ], [ %router.0369378, %if.end5.i.i.i.i.i344.if.end128_crit_edge ], [ %router.0369378, %if.then10.i.i.i.i.i345 ], [ %router.0369378, %if.then.i.i346 ]
  br i1 %tobool.not.i204, label %if.end128.cleanup_crit_edge, label %if.end.i353

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i353:                                      ; preds = %if.end128
  %refcount.i349 = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %9, i32 0, i32 8
  %call.i.i.i.i.i.i.i350 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i349, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i349, i32 1, i32 3, i32 1) #7
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i349, ptr %refcount.i349, i32 1, ptr elementtype(i32) %refcount.i349) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i351 = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i351)
  %cmp.i.i.i.i.i352 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i351, 1
  br i1 %cmp.i.i.i.i.i352, label %if.then.i.i357, label %if.end5.i.i.i.i.i355

if.end5.i.i.i.i.i355:                             ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i351)
  %.not.i.i.i.i.i354 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i351, 0
  br i1 %.not.i.i.i.i.i354, label %if.end5.i.i.i.i.i355.cleanup_crit_edge, label %if.then10.i.i.i.i.i356, !prof !61

if.end5.i.i.i.i.i355.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i355
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i356:                           ; preds = %if.end5.i.i.i.i.i355
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i349, i32 noundef 3) #7
  br label %cleanup

if.then.i.i357:                                   ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i349) #7, !callees !66
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i357, %if.then10.i.i.i.i.i356, %if.end5.i.i.i.i.i355.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ %router.0369375, %if.end128.cleanup_crit_edge ], [ %router.0369375, %if.end5.i.i.i.i.i355.cleanup_crit_edge ], [ %router.0369375, %if.then10.i.i.i.i.i356 ], [ %router.0369375, %if.then.i.i357 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_last_bonding_replace(ptr noundef %orig_node, ptr noundef %new_candidate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %neigh_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %neigh_list_lock) #7
  %last_bonding_candidate = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 2
  %0 = ptrtoint ptr %last_bonding_candidate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_bonding_candidate, align 4
  %tobool.not = icmp eq ptr %new_candidate, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %new_candidate, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !60

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %last_bonding_candidate to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %new_candidate, ptr %last_bonding_candidate, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %neigh_list_lock) #7
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.batadv_orig_ifinfo_put.exit_crit_edge, label %if.end.i

if.end.batadv_orig_ifinfo_put.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_ifinfo_put.exit

if.end.i:                                         ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %1, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_ifinfo_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.batadv_orig_ifinfo_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_ifinfo_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %batadv_orig_ifinfo_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i) #7, !callees !66
  br label %batadv_orig_ifinfo_put.exit

batadv_orig_ifinfo_put.exit:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_ifinfo_put.exit_crit_edge, %if.end.batadv_orig_ifinfo_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_recv_unhandled_unicast_packet(ptr noundef %skb, ptr noundef %recv_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 10
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge, !prof !60

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp3.i.i = icmp ult i32 %3, 10
  br i1 %cmp3.i.i, label %if.end.i.i.free_skb_crit_edge, label %pskb_may_pull.exit.i, !prof !60

if.end.i.i.free_skb_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 10, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.free_skb_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !60

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.free_skb_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.free_skb_crit_edge

if.end.i.free_skb_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i19.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i19.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i19.i, align 2
  %conv.i.i20.i = zext i16 %14 to i32
  %or.i.i.i = or i32 %11, %conv.i.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.free_skb_crit_edge, label %if.end6.i

is_valid_ether_addr.exit.i.free_skb_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end6.i:                                        ; preds = %is_valid_ether_addr.exit.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_source.i, align 4
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %if.end10.i, label %if.end6.i.free_skb_crit_edge

if.end6.i.free_skb_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end10.i:                                       ; preds = %if.end6.i
  %call13.i = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i.i.i) #7
  br i1 %call13.i, label %if.end, label %if.end10.i.free_skb_crit_edge

if.end10.i.free_skb_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end:                                           ; preds = %if.end10.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %dest = getelementptr inbounds %struct.batadv_unicast_packet, ptr %19, i32 0, i32 4
  %call2 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %dest) #7
  br i1 %call2, label %if.end.free_skb_crit_edge, label %if.end4

if.end.free_skb_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc i32 @batadv_route_unicast_packet(ptr noundef %skb, ptr noundef %recv_if)
  br label %cleanup

free_skb:                                         ; preds = %if.end.free_skb_crit_edge, %if.end10.i.free_skb_crit_edge, %if.end6.i.free_skb_crit_edge, %is_valid_ether_addr.exit.i.free_skb_crit_edge, %if.end.i.free_skb_crit_edge, %pskb_may_pull.exit.i.free_skb_crit_edge, %if.end.i.i.free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end4
  %retval.0 = phi i32 [ 1, %free_skb ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_route_unicast_packet(ptr noundef %skb, ptr noundef %recv_if) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
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
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %ttl = getelementptr inbounds %struct.batadv_unicast_packet, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ttl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp ult i8 %9, 2
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @batadv_route_unicast_packet.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@batadv_route_unicast_packet, %if.then6)) #7
          to label %free_skb [label %if.then6], !srcloc !67

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %dest = getelementptr inbounds %struct.batadv_unicast_packet, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @batadv_route_unicast_packet.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.21, ptr noundef %h_source, ptr noundef %dest) #7
  br label %free_skb

if.end8:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %dest9 = getelementptr inbounds %struct.batadv_unicast_packet, ptr %7, i32 0, i32 4
  %call11 = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i, ptr noundef %dest9) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.free_skb_crit_edge, label %if.end14

if.end8.free_skb_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end14:                                         ; preds = %if.end8
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %10 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end14.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end14.skb_cloned.exit.i_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #7
  %13 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %14, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end14.skb_cloned.exit.i_crit_edge
  %15 = phi i1 [ true, %if.end14.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.ptr.sub.i.i.i)
  %tobool.not.i3.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 13
  %or.cond.i.i = and i1 %15, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end19_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end19_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %20 = tail call i32 @llvm.usub.sat.i32(i32 14, i32 %sub.ptr.sub.i.i.i) #7
  %add.i.i = add nuw nsw i32 %20, 127
  %and.i4.i = and i32 %add.i.i, 128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp16 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp16, label %skb_cow.exit.if.end.i_crit_edge, label %skb_cow.exit.if.end19_crit_edge

skb_cow.exit.if.end19_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

skb_cow.exit.if.end.i_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end19:                                         ; preds = %skb_cow.exit.if.end19_crit_edge, %skb_cloned.exit.i.if.end19_crit_edge
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %ttl21 = getelementptr inbounds %struct.batadv_unicast_packet, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ttl21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ttl21, align 1
  %dec = add i8 %24, -1
  store i8 %dec, ptr %ttl21, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %22, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %26, label %if.end19.if.end27_crit_edge [
    i8 66, label %if.end19.if.then26_crit_edge
    i8 64, label %sw.bb23
  ]

if.end19.if.then26_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

sw.bb23:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %sw.bb23, %if.end19.if.then26_crit_edge
  %hdr_len.0.ph = phi i32 [ 18, %if.end19.if.then26_crit_edge ], [ 10, %sw.bb23 ]
  tail call void @batadv_skb_set_priority(ptr noundef %skb, i32 noundef %hdr_len.0.ph) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end19.if.end27_crit_edge
  %len28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len28, align 4
  %call29 = tail call i32 @batadv_send_skb_to_orig(ptr noundef %skb, ptr noundef nonnull %call11, ptr noundef %recv_if) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end27.if.end.i_crit_edge

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then32:                                        ; preds = %if.end27
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !71
  %bat_counters.i = getelementptr i8, ptr %1, i32 2312
  %31 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %32, i32 5
  %33 = ptrtoint ptr %arrayidx.i to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i51 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i51 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %39, %33
  %40 = inttoptr i32 %add.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %add15.i = add i64 %42, 1
  store i64 %add15.i, ptr %40, align 8
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !72
  %and.i.i.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then32.batadv_add_counter.exit_crit_edge, !prof !60

if.then32.batadv_add_counter.exit_crit_edge:      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.then32.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #7, !srcloc !73
  %add = add i32 %29, 14
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !71
  %conv6.i = zext i32 %add to i64
  %45 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i53 = getelementptr i64, ptr %46, i32 6
  %47 = ptrtoint ptr %arrayidx.i53 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i54 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i54 to ptr
  %cpu.i55 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i55, align 4
  %arrayidx14.i56 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx14.i56 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx14.i56, align 4
  %add.i57 = add i32 %53, %47
  %54 = inttoptr i32 %add.i57 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %54, align 8
  %add15.i58 = add i64 %56, %conv6.i
  store i64 %add15.i58, ptr %54, align 8
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !72
  %and.i.i.i59 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i59)
  %tobool.not.i60 = icmp eq i32 %and.i.i.i59, 0
  br i1 %tobool.not.i60, label %if.then.i61, label %batadv_add_counter.exit.batadv_add_counter.exit62_crit_edge, !prof !60

batadv_add_counter.exit.batadv_add_counter.exit62_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit62

if.then.i61:                                      ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit62

batadv_add_counter.exit62:                        ; preds = %if.then.i61, %batadv_add_counter.exit.batadv_add_counter.exit62_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #7, !srcloc !73
  br label %if.end.i

if.end.i:                                         ; preds = %batadv_add_counter.exit62, %if.end27.if.end.i_crit_edge, %skb_cow.exit.if.end.i_crit_edge
  %ret.1 = phi i32 [ 1, %skb_cow.exit.if.end.i_crit_edge ], [ 0, %batadv_add_counter.exit62 ], [ 1, %if.end27.if.end.i_crit_edge ]
  %skb.addr.0 = phi ptr [ %skb, %skb_cow.exit.if.end.i_crit_edge ], [ null, %batadv_add_counter.exit62 ], [ null, %if.end27.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call11, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.free_skb_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.free_skb_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %free_skb

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #7, !callees !66
  br label %free_skb

free_skb:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.free_skb_crit_edge, %if.end8.free_skb_crit_edge, %if.then6, %do.body
  %ret.2 = phi i32 [ 1, %if.then6 ], [ 1, %if.end8.free_skb_crit_edge ], [ 1, %do.body ], [ %ret.1, %if.end5.i.i.i.i.i.free_skb_crit_edge ], [ %ret.1, %if.then10.i.i.i.i.i ], [ %ret.1, %if.then.i.i ]
  %skb.addr.1 = phi ptr [ %skb, %if.then6 ], [ %skb, %if.end8.free_skb_crit_edge ], [ %skb, %do.body ], [ %skb.addr.0, %if.end5.i.i.i.i.i.free_skb_crit_edge ], [ %skb.addr.0, %if.then10.i.i.i.i.i ], [ %skb.addr.0, %if.then.i.i ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.1, i32 noundef 0) #7
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_recv_unicast_packet(ptr noundef %skb, ptr noundef %recv_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %5)
  %cmp = icmp eq i8 %5, 66
  %spec.select = select i1 %cmp, i32 18, i32 10
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %spec.select, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge, !prof !60

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %spec.select)
  %cmp3.i.i = icmp ult i32 %7, %spec.select
  br i1 %cmp3.i.i, label %if.end.i.i.free_skb_crit_edge, label %pskb_may_pull.exit.i, !prof !60

if.end.i.i.free_skb_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %spec.select, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.free_skb_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !60

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.free_skb_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.free_skb_crit_edge

if.end.i.free_skb_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i19.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i19.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i19.i, align 2
  %conv.i.i20.i = zext i16 %18 to i32
  %or.i.i.i = or i32 %15, %conv.i.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.free_skb_crit_edge, label %if.end6.i

is_valid_ether_addr.exit.i.free_skb_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end6.i:                                        ; preds = %is_valid_ether_addr.exit.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %h_source.i, align 4
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i, label %if.end10.i, label %if.end6.i.free_skb_crit_edge

if.end6.i.free_skb_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end10.i:                                       ; preds = %if.end6.i
  %call13.i = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i.i.i) #7
  br i1 %call13.i, label %if.end10, label %if.end6.thread

if.end6.thread:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @batadv_nc_skb_store_sniffed_unicast(ptr noundef %add.ptr.i, ptr noundef %skb) #7
  br label %free_skb

if.end10:                                         ; preds = %if.end10.i
  %add.i = add nuw nsw i32 %spec.select, 14
  %22 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i.i, align 4
  %24 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i110 = sub i32 %23, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i110)
  %cmp.not.i.i111 = icmp ugt i32 %add.i, %sub.i.i.i110
  br i1 %cmp.not.i.i111, label %if.end.i.i113, label %if.end10.if.end.i118_crit_edge, !prof !60

if.end10.if.end.i118_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i118

if.end.i.i113:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add.i)
  %cmp3.i.i112 = icmp ult i32 %23, %add.i
  br i1 %cmp3.i.i112, label %if.end.i.i113.free_skb_crit_edge, label %pskb_may_pull.exit.i117, !prof !60

if.end.i.i113.free_skb_crit_edge:                 ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

pskb_may_pull.exit.i117:                          ; preds = %if.end.i.i113
  %sub.i.i114 = sub i32 %add.i, %sub.i.i.i110
  %call13.i.i115 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i114) #7
  %cmp14.i.not.i116 = icmp eq ptr %call13.i.i115, null
  br i1 %cmp14.i.not.i116, label %pskb_may_pull.exit.i117.free_skb_crit_edge, label %pskb_may_pull.exit.i117.if.end.i118_crit_edge

pskb_may_pull.exit.i117.if.end.i118_crit_edge:    ; preds = %pskb_may_pull.exit.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i118

pskb_may_pull.exit.i117.free_skb_crit_edge:       ; preds = %pskb_may_pull.exit.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end.i118:                                      ; preds = %pskb_may_pull.exit.i117.if.end.i118_crit_edge, %if.end10.if.end.i118_crit_edge
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %26 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end.i118.skb_cloned.exit.i.i_crit_edge, label %land.rhs.i.i.i

if.end.i118.skb_cloned.exit.i.i_crit_edge:        ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cloned.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %27 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #7
  %29 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br label %skb_cloned.exit.i.i

skb_cloned.exit.i.i:                              ; preds = %land.rhs.i.i.i, %if.end.i118.skb_cloned.exit.i.i_crit_edge
  %31 = phi i1 [ true, %if.end.i118.skb_cloned.exit.i.i_crit_edge ], [ %cmp.i.not.i.i, %land.rhs.i.i.i ]
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub.ptr.sub.i.i.i.i)
  %tobool.not.i3.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i.i, 9
  %or.cond.i.i.i = and i1 %31, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_cloned.exit.i.i.if.end3.i_crit_edge, label %skb_cow.exit.i

skb_cloned.exit.i.i.if.end3.i_crit_edge:          ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

skb_cow.exit.i:                                   ; preds = %skb_cloned.exit.i.i
  %36 = tail call i32 @llvm.usub.sat.i32(i32 10, i32 %sub.ptr.sub.i.i.i.i) #7
  %add.i.i.i = add nuw nsw i32 %36, 127
  %and.i4.i.i = and i32 %add.i.i.i, 128
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i, label %skb_cow.exit.i.free_skb_crit_edge, label %skb_cow.exit.i.if.end3.i_crit_edge

skb_cow.exit.i.if.end3.i_crit_edge:               ; preds = %skb_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

skb_cow.exit.i.free_skb_crit_edge:                ; preds = %skb_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end3.i:                                        ; preds = %skb_cow.exit.i.if.end3.i_crit_edge, %skb_cloned.exit.i.i.if.end3.i_crit_edge
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %call4.i = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef %spec.select) #7
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %add.ptr.i119 = getelementptr i8, ptr %40, i32 %spec.select
  %41 = ptrtoint ptr %add.ptr.i119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i119, align 4
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i120 = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i120, label %if.end8.i, label %if.end3.i.if.end13_crit_edge

if.end3.i.if.end13_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end8.i:                                        ; preds = %if.end3.i
  %call11.i = tail call zeroext i1 @batadv_tt_local_client_is_roaming(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i119, i16 noundef zeroext %call4.i) #7
  br i1 %call11.i, label %if.then12.i, label %if.end27.i

if.then12.i:                                      ; preds = %if.end8.i
  %call15.i = tail call fastcc zeroext i1 @batadv_reroute_unicast_packet(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef %38, ptr noundef %add.ptr.i119, i16 noundef zeroext %call4.i) #7
  br i1 %call15.i, label %do.body.i, label %if.then12.i.if.end13_crit_edge

if.then12.i.if.end13_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body.i:                                        ; preds = %if.then12.i
  %log_level.i = getelementptr i8, ptr %1, i32 2360
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #7
  %44 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end13_crit_edge, label %land.lhs.true.i

do.body.i.if.end13_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true.i:                                  ; preds = %do.body.i
  %call18.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i.if.end13_crit_edge, label %if.then20.i

land.lhs.true.i.if.end13_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %dest.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %38, i32 0, i32 4
  %call24.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.22, ptr noundef %dest.i, ptr noundef %add.ptr.i119) #7
  br label %if.end13

if.end27.i:                                       ; preds = %if.end8.i
  %tt.i = getelementptr i8, ptr %1, i32 3212
  %call.i.i145.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tt.i, i32 noundef 4) #7
  %46 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %tt.i, align 4
  %dest29.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %38, i32 0, i32 4
  %call31.i = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %dest29.i) #7
  br i1 %call31.i, label %if.end27.i.if.end41.i_crit_edge, label %if.then32.i

if.end27.i.if.end41.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then32.i:                                      ; preds = %if.end27.i
  %call35.i = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i, ptr noundef %dest29.i) #7
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %if.then32.i.free_skb_crit_edge, label %if.end.i148.i

if.then32.i.free_skb_crit_edge:                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end.i148.i:                                    ; preds = %if.then32.i
  %last_ttvn.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call35.i, i32 0, i32 15
  %call.i.i146.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn.i, i32 noundef 4) #7
  %48 = ptrtoint ptr %last_ttvn.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %last_ttvn.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call35.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i148.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end41.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.if.end41.i_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %if.end41.i

if.then.i.i.i:                                    ; preds = %if.end.i148.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i.i) #7, !callees !66
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end41.i_crit_edge, %if.end27.i.if.end41.i_crit_edge
  %curr_ttvn.0.in.i = phi i32 [ %47, %if.end27.i.if.end41.i_crit_edge ], [ %49, %if.end5.i.i.i.i.i.i.if.end41.i_crit_edge ], [ %49, %if.then10.i.i.i.i.i.i ], [ %49, %if.then.i.i.i ]
  %curr_ttvn.0.i = trunc i32 %curr_ttvn.0.in.i to i8
  %ttvn.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %38, i32 0, i32 3
  %51 = ptrtoint ptr %ttvn.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ttvn.i, align 1
  %conv43.i = and i32 %curr_ttvn.0.in.i, 255
  %conv44.i = sub i8 %52, %curr_ttvn.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %conv44.i)
  %cmp48.i = icmp ugt i8 %conv44.i, -128
  br i1 %cmp48.i, label %if.end52.i, label %if.end41.i.if.end13_crit_edge

if.end41.i.if.end13_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end52.i:                                       ; preds = %if.end41.i
  %call56.i = tail call fastcc zeroext i1 @batadv_reroute_unicast_packet(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef %38, ptr noundef %add.ptr.i119, i16 noundef zeroext %call4.i) #7
  br i1 %call56.i, label %do.body58.i, label %if.end78.i

do.body58.i:                                      ; preds = %if.end52.i
  %log_level60.i = getelementptr i8, ptr %1, i32 2360
  %call.i.i147.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level60.i, i32 noundef 4) #7
  %53 = ptrtoint ptr %log_level60.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %log_level60.i, align 4
  %and62.i = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %do.body58.i.if.end13_crit_edge, label %land.lhs.true64.i

do.body58.i.if.end13_crit_edge:                   ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true64.i:                                ; preds = %do.body58.i
  %call65.i = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %land.lhs.true64.i.if.end13_crit_edge, label %if.then67.i

land.lhs.true64.i.if.end13_crit_edge:             ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then67.i:                                      ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv72.i = zext i8 %52 to i32
  %call74.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.23, ptr noundef %dest29.i, ptr noundef %add.ptr.i119, i32 noundef %conv72.i, i32 noundef %conv43.i) #7
  br label %if.end13

if.end78.i:                                       ; preds = %if.end52.i
  %call81.i = tail call zeroext i1 @batadv_is_my_client(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i119, i16 noundef zeroext %call4.i) #7
  br i1 %call81.i, label %if.end83.i, label %if.end78.i.free_skb_crit_edge

if.end78.i.free_skb_crit_edge:                    ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end83.i:                                       ; preds = %if.end78.i
  %call84.i = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i) #7
  %tobool85.not.i = icmp eq ptr %call84.i, null
  br i1 %tobool85.not.i, label %if.end83.i.free_skb_crit_edge, label %if.end87.i

if.end83.i.free_skb_crit_edge:                    ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end87.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @skb_postpull_rcsum(ptr noundef %skb, ptr noundef %38) #7
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call84.i, i32 0, i32 4
  %55 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 86
  %57 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_addr.i, align 64
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %61 = ptrtoint ptr %dest29.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dest29.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.batadv_unicast_packet, ptr %38, i32 0, i32 4, i32 4
  %64 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %add.ptr1.i.i, align 2
  %65 = ptrtoint ptr %ttvn.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %curr_ttvn.0.i, ptr %ttvn.i, align 1
  tail call fastcc void @skb_postpush_rcsum(ptr noundef %skb, ptr noundef %38) #7
  tail call fastcc void @batadv_hardif_put(ptr noundef nonnull %call84.i) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end87.i, %if.then67.i, %land.lhs.true64.i.if.end13_crit_edge, %do.body58.i.if.end13_crit_edge, %if.end41.i.if.end13_crit_edge, %if.then20.i, %land.lhs.true.i.if.end13_crit_edge, %do.body.i.if.end13_crit_edge, %if.then12.i.if.end13_crit_edge, %if.end3.i.if.end13_crit_edge
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %dest = getelementptr inbounds %struct.batadv_unicast_packet, ptr %67, i32 0, i32 4
  %call15 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %dest) #7
  br i1 %call15, label %if.then16, label %if.end53

if.then16:                                        ; preds = %if.end13
  %68 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i.i.i, align 8
  %70 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i = zext i16 %71 to i32
  %add.ptr.i.i122 = getelementptr i8, ptr %69, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i122, i32 0, i32 1
  %call19 = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i, ptr noundef %h_source) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then16.if.end32_crit_edge, label %if.end.i124

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end.i124:                                      ; preds = %if.then16
  %call22 = tail call zeroext i1 @batadv_bla_is_backbone_gw(ptr noundef %skb, ptr noundef nonnull %call19, i32 noundef %spec.select) #7
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call19, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %batadv_orig_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #7, !callees !66
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge
  br i1 %call22, label %do.body, label %batadv_orig_node_put.exit.if.end32_crit_edge

batadv_orig_node_put.exit.if.end32_crit_edge:     ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body:                                          ; preds = %batadv_orig_node_put.exit
  %log_level = getelementptr i8, ptr %1, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #7
  %73 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.body.free_skb_crit_edge, label %if.then28

do.body.free_skb_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.batadv_recv_unicast_packet, ptr noundef %h_source) #7
  br label %free_skb

if.end32:                                         ; preds = %batadv_orig_node_put.exit.if.end32_crit_edge, %if.then16.if.end32_crit_edge
  br i1 %cmp, label %if.then34, label %if.end32.if.end45_crit_edge

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then34:                                        ; preds = %if.end32
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %subtype36 = getelementptr inbounds %struct.batadv_unicast_4addr_packet, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %subtype36 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %subtype36, align 1
  %79 = zext i8 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %78, label %if.then34.if.end45_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb1.i
    i8 1, label %if.then41
  ]

if.then34.if.end45_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

sw.bb.i:                                          ; preds = %if.then34
  %80 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !71
  %bat_counters.i.i = getelementptr i8, ptr %1, i32 2312
  %81 = ptrtoint ptr %bat_counters.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bat_counters.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %82, i32 24
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  %84 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i125 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i125 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu.i.i, align 4
  %arrayidx14.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx14.i.i, align 4
  %add.i.i = add i32 %89, %83
  %90 = inttoptr i32 %add.i.i to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %90, align 8
  %add15.i.i = add i64 %92, 1
  store i64 %add15.i.i, ptr %90, align 8
  %93 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !72
  %and.i.i.i.i = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i126, label %sw.bb.i.batadv_add_counter.exit.i_crit_edge, !prof !60

sw.bb.i.batadv_add_counter.exit.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit.i

if.then.i.i126:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit.i

batadv_add_counter.exit.i:                        ; preds = %if.then.i.i126, %sw.bb.i.batadv_add_counter.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %80) #7, !srcloc !73
  br label %if.end45

sw.bb1.i:                                         ; preds = %if.then34
  %94 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !71
  %bat_counters.i3.i = getelementptr i8, ptr %1, i32 2312
  %95 = ptrtoint ptr %bat_counters.i3.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bat_counters.i3.i, align 4
  %arrayidx.i4.i = getelementptr i64, ptr %96, i32 26
  %97 = ptrtoint ptr %arrayidx.i4.i to i32
  %98 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i5.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i5.i to ptr
  %cpu.i6.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu.i6.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu.i6.i, align 4
  %arrayidx14.i7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx14.i7.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx14.i7.i, align 4
  %add.i8.i = add i32 %103, %97
  %104 = inttoptr i32 %add.i8.i to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %104, align 8
  %add15.i9.i = add i64 %106, 1
  store i64 %add15.i9.i, ptr %104, align 8
  %107 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !72
  %and.i.i.i10.i = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i10.i)
  %tobool.not.i11.i = icmp eq i32 %and.i.i.i10.i, 0
  br i1 %tobool.not.i11.i, label %if.then.i12.i, label %sw.bb1.i.batadv_add_counter.exit13.i_crit_edge, !prof !60

sw.bb1.i.batadv_add_counter.exit13.i_crit_edge:   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit13.i

if.then.i12.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit13.i

batadv_add_counter.exit13.i:                      ; preds = %if.then.i12.i, %sw.bb1.i.batadv_add_counter.exit13.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %94) #7, !srcloc !73
  br label %if.end45

if.then41:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %src = getelementptr inbounds %struct.batadv_unicast_4addr_packet, ptr %76, i32 0, i32 1
  %call43 = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i, ptr noundef %src) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %batadv_add_counter.exit13.i, %batadv_add_counter.exit.i, %if.then34.if.end45_crit_edge, %if.end32.if.end45_crit_edge
  %orig_node.0 = phi ptr [ %call43, %if.then41 ], [ null, %if.end32.if.end45_crit_edge ], [ null, %batadv_add_counter.exit.i ], [ null, %batadv_add_counter.exit13.i ], [ null, %if.then34.if.end45_crit_edge ]
  %call46 = tail call zeroext i1 @batadv_dat_snoop_incoming_arp_request(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef %spec.select) #7
  br i1 %call46, label %if.end45.rx_success_crit_edge, label %if.end48

if.end45.rx_success_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_success

if.end48:                                         ; preds = %if.end45
  %call49 = tail call zeroext i1 @batadv_dat_snoop_incoming_arp_reply(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef %spec.select) #7
  br i1 %call49, label %if.end48.rx_success_crit_edge, label %if.end51

if.end48.rx_success_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_success

if.end51:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @batadv_dat_snoop_incoming_dhcp_ack(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef %spec.select) #7
  %108 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %soft_iface, align 4
  tail call void @batadv_interface_rx(ptr noundef %109, ptr noundef %skb, i32 noundef %spec.select, ptr noundef %orig_node.0) #7
  br label %rx_success

rx_success:                                       ; preds = %if.end51, %if.end48.rx_success_crit_edge, %if.end45.rx_success_crit_edge
  %tobool.not.i127 = icmp eq ptr %orig_node.0, null
  br i1 %tobool.not.i127, label %rx_success.cleanup_crit_edge, label %if.end.i132

rx_success.cleanup_crit_edge:                     ; preds = %rx_success
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i132:                                      ; preds = %rx_success
  %refcount.i128 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.0, i32 0, i32 27
  %call.i.i.i.i.i.i.i129 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i128, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i128, i32 1, i32 3, i32 1) #7
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i128, ptr %refcount.i128, i32 1, ptr elementtype(i32) %refcount.i128) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i130 = extractvalue { i32, i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i130)
  %cmp.i.i.i.i.i131 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i130, 1
  br i1 %cmp.i.i.i.i.i131, label %if.then.i.i136, label %if.end5.i.i.i.i.i134

if.end5.i.i.i.i.i134:                             ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i130)
  %.not.i.i.i.i.i133 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i130, 0
  br i1 %.not.i.i.i.i.i133, label %if.end5.i.i.i.i.i134.cleanup_crit_edge, label %if.then10.i.i.i.i.i135, !prof !61

if.end5.i.i.i.i.i134.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i135:                           ; preds = %if.end5.i.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i128, i32 noundef 3) #7
  br label %cleanup

if.then.i.i136:                                   ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i128) #7, !callees !66
  br label %cleanup

if.end53:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call fastcc i32 @batadv_route_unicast_packet(ptr noundef %skb, ptr noundef %recv_if)
  br label %free_skb

free_skb:                                         ; preds = %if.end53, %if.then28, %do.body.free_skb_crit_edge, %if.end83.i.free_skb_crit_edge, %if.end78.i.free_skb_crit_edge, %if.then32.i.free_skb_crit_edge, %skb_cow.exit.i.free_skb_crit_edge, %pskb_may_pull.exit.i117.free_skb_crit_edge, %if.end.i.i113.free_skb_crit_edge, %if.end6.thread, %if.end6.i.free_skb_crit_edge, %is_valid_ether_addr.exit.i.free_skb_crit_edge, %if.end.i.free_skb_crit_edge, %pskb_may_pull.exit.i.free_skb_crit_edge, %if.end.i.i.free_skb_crit_edge
  %skb.addr.0 = phi ptr [ null, %if.end53 ], [ %skb, %if.then28 ], [ %skb, %do.body.free_skb_crit_edge ], [ %skb, %if.end6.thread ], [ %skb, %if.end.i.i113.free_skb_crit_edge ], [ %skb, %pskb_may_pull.exit.i117.free_skb_crit_edge ], [ %skb, %skb_cow.exit.i.free_skb_crit_edge ], [ %skb, %if.then32.i.free_skb_crit_edge ], [ %skb, %if.end78.i.free_skb_crit_edge ], [ %skb, %if.end83.i.free_skb_crit_edge ], [ %skb, %if.end.i.free_skb_crit_edge ], [ %skb, %if.end.i.i.free_skb_crit_edge ], [ %skb, %if.end6.i.free_skb_crit_edge ], [ %skb, %is_valid_ether_addr.exit.i.free_skb_crit_edge ], [ %skb, %pskb_may_pull.exit.i.free_skb_crit_edge ]
  %ret.0 = phi i32 [ %call54, %if.end53 ], [ 1, %if.then28 ], [ 1, %do.body.free_skb_crit_edge ], [ 1, %if.end6.thread ], [ 1, %if.end.i.i113.free_skb_crit_edge ], [ 1, %pskb_may_pull.exit.i117.free_skb_crit_edge ], [ 1, %skb_cow.exit.i.free_skb_crit_edge ], [ 1, %if.then32.i.free_skb_crit_edge ], [ 1, %if.end78.i.free_skb_crit_edge ], [ 1, %if.end83.i.free_skb_crit_edge ], [ 1, %if.end.i.free_skb_crit_edge ], [ 1, %if.end.i.i.free_skb_crit_edge ], [ 1, %if.end6.i.free_skb_crit_edge ], [ 1, %is_valid_ether_addr.exit.i.free_skb_crit_edge ], [ 1, %pskb_may_pull.exit.i.free_skb_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.then.i.i136, %if.then10.i.i.i.i.i135, %if.end5.i.i.i.i.i134.cleanup_crit_edge, %rx_success.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_skb ], [ 0, %rx_success.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i134.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i135 ], [ 0, %if.then.i.i136 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_nc_skb_store_sniffed_unicast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_bla_is_backbone_gw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_dat_snoop_incoming_arp_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_dat_snoop_incoming_arp_reply(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_dat_snoop_incoming_dhcp_ack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_interface_rx(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_recv_unicast_tvlv(ptr noundef %skb, ptr noundef %recv_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge, !prof !60

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %3)
  %cmp3.i.i = icmp ult i32 %3, 20
  br i1 %cmp3.i.i, label %if.end.i.i.free_skb_crit_edge, label %pskb_may_pull.exit.i, !prof !60

if.end.i.i.free_skb_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 20, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.free_skb_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !60

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.free_skb_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.free_skb_crit_edge

if.end.i.free_skb_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i19.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i19.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i19.i, align 2
  %conv.i.i20.i = zext i16 %14 to i32
  %or.i.i.i = or i32 %11, %conv.i.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.free_skb_crit_edge, label %if.end6.i

is_valid_ether_addr.exit.i.free_skb_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end6.i:                                        ; preds = %is_valid_ether_addr.exit.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_source.i, align 4
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %if.end10.i, label %if.end6.i.free_skb_crit_edge

if.end6.i.free_skb_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end10.i:                                       ; preds = %if.end6.i
  %call13.i = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i.i.i) #7
  br i1 %call13.i, label %if.end, label %if.end10.i.free_skb_crit_edge

if.end10.i.free_skb_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end:                                           ; preds = %if.end10.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %18 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end.skb_cloned.exit.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #7
  %21 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %22, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end.skb_cloned.exit.i_crit_edge
  %23 = phi i1 [ true, %if.end.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i, align 4
  %26 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.ptr.sub.i.i.i)
  %tobool.not.i3.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 19
  %or.cond.i.i = and i1 %23, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end5_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end5_crit_edge:              ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %28 = tail call i32 @llvm.usub.sat.i32(i32 20, i32 %sub.ptr.sub.i.i.i) #7
  %add.i.i = add nuw nsw i32 %28, 127
  %and.i4.i = and i32 %add.i.i, 128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp3 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp3, label %skb_cow.exit.free_skb_crit_edge, label %skb_cow.exit.if.end5_crit_edge

skb_cow.exit.if.end5_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

skb_cow.exit.free_skb_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end5:                                          ; preds = %skb_cow.exit.if.end5_crit_edge, %skb_cloned.exit.i.if.end5_crit_edge
  %29 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i39 = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i39, label %if.end5.if.end9_crit_edge, label %cond.true.i

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

cond.true.i:                                      ; preds = %if.end5
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %30) #7
  %tobool.not.i.i40 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i40, label %cond.true.i.free_skb_crit_edge, label %cond.true.i.if.end9_crit_edge

cond.true.i.if.end9_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

cond.true.i.free_skb_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end9:                                          ; preds = %cond.true.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %tvlv_len = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %tvlv_len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tvlv_len, align 2
  %conv = zext i16 %34 to i32
  %35 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i.i.i, align 4
  %sub = add i32 %36, -20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp11 = icmp ult i32 %sub, %conv
  br i1 %cmp11, label %if.end9.free_skb_crit_edge, label %if.end14

if.end9.free_skb_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end14:                                         ; preds = %if.end9
  %add.ptr = getelementptr i8, ptr %32, i32 20
  %src = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %32, i32 0, i32 5
  %dst = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %32, i32 0, i32 4
  %call16 = tail call i32 @batadv_tvlv_containers_process(ptr noundef %add.ptr.i, i1 noundef zeroext false, ptr noundef null, ptr noundef %src, ptr noundef %dst, ptr noundef %add.ptr, i16 noundef zeroext %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end14.free_skb_crit_edge, label %if.then19

if.end14.free_skb_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call fastcc i32 @batadv_route_unicast_packet(ptr noundef %skb, ptr noundef %recv_if)
  br label %free_skb

free_skb:                                         ; preds = %if.then19, %if.end14.free_skb_crit_edge, %if.end9.free_skb_crit_edge, %cond.true.i.free_skb_crit_edge, %skb_cow.exit.free_skb_crit_edge, %if.end10.i.free_skb_crit_edge, %if.end6.i.free_skb_crit_edge, %is_valid_ether_addr.exit.i.free_skb_crit_edge, %if.end.i.free_skb_crit_edge, %pskb_may_pull.exit.i.free_skb_crit_edge, %if.end.i.i.free_skb_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %skb_cow.exit.free_skb_crit_edge ], [ %skb, %if.end9.free_skb_crit_edge ], [ null, %if.then19 ], [ %skb, %if.end14.free_skb_crit_edge ], [ %skb, %cond.true.i.free_skb_crit_edge ], [ %skb, %pskb_may_pull.exit.i.free_skb_crit_edge ], [ %skb, %is_valid_ether_addr.exit.i.free_skb_crit_edge ], [ %skb, %if.end6.i.free_skb_crit_edge ], [ %skb, %if.end10.i.free_skb_crit_edge ], [ %skb, %if.end.i.i.free_skb_crit_edge ], [ %skb, %if.end.i.free_skb_crit_edge ]
  %ret.0 = phi i32 [ 1, %skb_cow.exit.free_skb_crit_edge ], [ 1, %if.end9.free_skb_crit_edge ], [ %call20, %if.then19 ], [ 0, %if.end14.free_skb_crit_edge ], [ 1, %cond.true.i.free_skb_crit_edge ], [ 1, %pskb_may_pull.exit.i.free_skb_crit_edge ], [ 1, %is_valid_ether_addr.exit.i.free_skb_crit_edge ], [ 1, %if.end6.i.free_skb_crit_edge ], [ 1, %if.end10.i.free_skb_crit_edge ], [ 1, %if.end.i.i.free_skb_crit_edge ], [ 1, %if.end.i.free_skb_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_tvlv_containers_process(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_recv_frag_packet(ptr noundef %skb, ptr noundef %recv_if) local_unnamed_addr #0 align 64 {
entry:
  %skb.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %skb.addr, align 4
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 7
  %1 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 2304
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge, !prof !60

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %4)
  %cmp3.i.i = icmp ult i32 %4, 20
  br i1 %cmp3.i.i, label %if.end.i.i.free_skb_crit_edge, label %pskb_may_pull.exit.i, !prof !60

if.end.i.i.free_skb_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 20, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.free_skb_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !60

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.free_skb_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %9 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %10 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i.i, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.free_skb_crit_edge

if.end.i.free_skb_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i19.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i19.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i19.i, align 2
  %conv.i.i20.i = zext i16 %15 to i32
  %or.i.i.i = or i32 %12, %conv.i.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.free_skb_crit_edge, label %if.end6.i

is_valid_ether_addr.exit.i.free_skb_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end6.i:                                        ; preds = %is_valid_ether_addr.exit.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h_source.i, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.end10.i, label %if.end6.i.free_skb_crit_edge

if.end6.i.free_skb_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end10.i:                                       ; preds = %if.end6.i
  %call13.i = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i.i.i) #7
  br i1 %call13.i, label %if.end, label %if.end10.i.free_skb_crit_edge

if.end10.i.free_skb_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end:                                           ; preds = %if.end10.i
  %19 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb.addr, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %orig = getelementptr inbounds %struct.batadv_frag_packet, ptr %22, i32 0, i32 5
  %call2 = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i, ptr noundef %orig) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.free_skb_crit_edge, label %if.end4

if.end.free_skb_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end4:                                          ; preds = %if.end
  %priority = getelementptr inbounds %struct.batadv_frag_packet, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %priority, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 7
  %conv = zext i8 %bf.clear to i32
  %add = or i32 %conv, 256
  %24 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb.addr, align 4
  %priority5 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15, i32 0, i32 6
  %26 = ptrtoint ptr %priority5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %priority5, align 4
  %dest = getelementptr inbounds %struct.batadv_frag_packet, ptr %22, i32 0, i32 4
  %call7 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %dest) #7
  br i1 %call7, label %if.end4.if.end11_crit_edge, label %land.lhs.true

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %27 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb.addr, align 4
  %call8 = tail call zeroext i1 @batadv_frag_skb_fwd(ptr noundef %28, ptr noundef %recv_if, ptr noundef nonnull %call2) #7
  br i1 %call8, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %skb.addr, align 4
  br label %if.end.i43

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !71
  %bat_counters.i = getelementptr i8, ptr %2, i32 2312
  %31 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %32, i32 13
  %33 = ptrtoint ptr %arrayidx.i to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %39, %33
  %40 = inttoptr i32 %add.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %add15.i = add i64 %42, 1
  store i64 %add15.i, ptr %40, align 8
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !72
  %and.i.i.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end11.batadv_add_counter.exit_crit_edge, !prof !60

if.end11.batadv_add_counter.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.end11.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #7, !srcloc !73
  %44 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb.addr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !71
  %conv6.i = zext i32 %47 to i64
  %49 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i32 = getelementptr i64, ptr %50, i32 14
  %51 = ptrtoint ptr %arrayidx.i32 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i33 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i33 to ptr
  %cpu.i34 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i34, align 4
  %arrayidx14.i35 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx14.i35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx14.i35, align 4
  %add.i36 = add i32 %57, %51
  %58 = inttoptr i32 %add.i36 to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %58, align 8
  %add15.i37 = add i64 %60, %conv6.i
  store i64 %add15.i37, ptr %58, align 8
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !72
  %and.i.i.i38 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i38)
  %tobool.not.i39 = icmp eq i32 %and.i.i.i38, 0
  br i1 %tobool.not.i39, label %if.then.i40, label %batadv_add_counter.exit.batadv_add_counter.exit41_crit_edge, !prof !60

batadv_add_counter.exit.batadv_add_counter.exit41_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit41

if.then.i40:                                      ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit41

batadv_add_counter.exit41:                        ; preds = %if.then.i40, %batadv_add_counter.exit.batadv_add_counter.exit41_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #7, !srcloc !73
  %call12 = call zeroext i1 @batadv_frag_skb_buffer(ptr noundef nonnull %skb.addr, ptr noundef nonnull %call2) #7
  br i1 %call12, label %if.end14, label %batadv_add_counter.exit41.if.end.i43_crit_edge

batadv_add_counter.exit41.if.end.i43_crit_edge:   ; preds = %batadv_add_counter.exit41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i43

if.end14:                                         ; preds = %batadv_add_counter.exit41
  %62 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb.addr, align 4
  %tobool15.not = icmp eq ptr %63, null
  br i1 %tobool15.not, label %if.end14.if.end.i43_crit_edge, label %if.then16

if.end14.if.end.i43_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i43

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 4
  %64 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net_dev, align 4
  %batman_adv_ptype = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 6
  %call17 = call i32 @batadv_batman_skb_recv(ptr noundef nonnull %63, ptr noundef %65, ptr noundef %batman_adv_ptype, ptr noundef null) #7
  %66 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %skb.addr, align 4
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then16, %if.end14.if.end.i43_crit_edge, %batadv_add_counter.exit41.if.end.i43_crit_edge, %if.then10
  %ret.0 = phi i32 [ 1, %batadv_add_counter.exit41.if.end.i43_crit_edge ], [ 0, %if.then10 ], [ 0, %if.then16 ], [ 0, %if.end14.if.end.i43_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call2, i32 0, i32 27
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.free_skb_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.free_skb_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %free_skb

if.then.i.i:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @batadv_orig_node_release(ptr noundef %refcount.i) #7, !callees !66
  br label %free_skb

free_skb:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.free_skb_crit_edge, %if.end.free_skb_crit_edge, %if.end10.i.free_skb_crit_edge, %if.end6.i.free_skb_crit_edge, %is_valid_ether_addr.exit.i.free_skb_crit_edge, %if.end.i.free_skb_crit_edge, %pskb_may_pull.exit.i.free_skb_crit_edge, %if.end.i.i.free_skb_crit_edge
  %ret.1 = phi i32 [ 1, %if.end.free_skb_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.free_skb_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i ], [ 1, %pskb_may_pull.exit.i.free_skb_crit_edge ], [ 1, %is_valid_ether_addr.exit.i.free_skb_crit_edge ], [ 1, %if.end6.i.free_skb_crit_edge ], [ 1, %if.end10.i.free_skb_crit_edge ], [ 1, %if.end.i.i.free_skb_crit_edge ], [ 1, %if.end.i.free_skb_crit_edge ]
  %68 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %skb.addr, align 4
  call void @kfree_skb_reason(ptr noundef %69, i32 noundef 0) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_frag_skb_fwd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_frag_skb_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_batman_skb_recv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_recv_bcast_packet(ptr noundef %skb, ptr nocapture noundef readonly %recv_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 14
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !60

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp3.i = icmp ult i32 %3, 14
  br i1 %cmp3.i, label %if.end.i.out.thread127_crit_edge, label %pskb_may_pull.exit, !prof !60

if.end.i.out.thread127_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread127

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 14, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out.thread127_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !60

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pskb_may_pull.exit.out.thread127_crit_edge:       ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread127

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %13, %11
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %14 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.end7, label %if.end.out.thread127_crit_edge

if.end.out.thread127_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread127

if.end7:                                          ; preds = %if.end
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h_source, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %if.end11, label %if.end7.out.thread127_crit_edge

if.end7.out.thread127_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread127

if.end11:                                         ; preds = %if.end7
  %call14 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %h_source) #7
  br i1 %call14, label %if.end11.out.thread127_crit_edge, label %if.end16

if.end11.out.thread127_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread127

if.end16:                                         ; preds = %if.end11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %orig = getelementptr inbounds %struct.batadv_bcast_packet, ptr %20, i32 0, i32 5
  %call18 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %orig) #7
  br i1 %call18, label %if.end16.out.thread127_crit_edge, label %if.end20

if.end16.out.thread127_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread127

if.end20:                                         ; preds = %if.end16
  %ttl = getelementptr inbounds %struct.batadv_bcast_packet, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ttl, align 2
  %dec = add i8 %22, -1
  store i8 %dec, ptr %ttl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp = icmp ult i8 %22, 2
  br i1 %cmp, label %if.end20.out.thread127_crit_edge, label %if.end23

if.end20.out.thread127_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread127

if.end23:                                         ; preds = %if.end20
  %call26 = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i, ptr noundef %orig) #7
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end23.out.thread127_crit_edge, label %if.end29

if.end23.out.thread127_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread127

if.end29:                                         ; preds = %if.end23
  %bcast_seqno_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %call26, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %bcast_seqno_lock) #7
  %seqno30 = getelementptr inbounds %struct.batadv_bcast_packet, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %seqno30 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %seqno30, align 2
  %bcast_bits = getelementptr inbounds %struct.batadv_orig_node, ptr %call26, i32 0, i32 20
  %last_bcast_seqno = getelementptr inbounds %struct.batadv_orig_node, ptr %call26, i32 0, i32 21
  %25 = ptrtoint ptr %last_bcast_seqno to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %last_bcast_seqno, align 4
  %sub.i112 = sub i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i112)
  %27 = icmp ugt i32 %sub.i112, 63
  br i1 %27, label %if.end29.if.end34_crit_edge, label %batadv_test_bit.exit

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

batadv_test_bit.exit:                             ; preds = %if.end29
  %div3.i.i = lshr i32 %sub.i112, 5
  %arrayidx.i.i = getelementptr i32, ptr %bcast_bits, i32 %div3.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %sub.i112, 31
  %30 = shl nuw i32 1, %and.i.i
  %31 = and i32 %29, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2.i.not = icmp eq i32 %31, 0
  br i1 %cmp2.i.not, label %batadv_test_bit.exit.if.end34_crit_edge, label %batadv_test_bit.exit.spin_unlock_crit_edge

batadv_test_bit.exit.spin_unlock_crit_edge:       ; preds = %batadv_test_bit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spin_unlock

batadv_test_bit.exit.if.end34_crit_edge:          ; preds = %batadv_test_bit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34:                                         ; preds = %batadv_test_bit.exit.if.end34_crit_edge, %if.end29.if.end34_crit_edge
  %sub = sub i32 %24, %26
  %bcast_seqno_reset = getelementptr inbounds %struct.batadv_orig_node, ptr %call26, i32 0, i32 5
  %call36 = tail call zeroext i1 @batadv_window_protected(ptr noundef %add.ptr.i, i32 noundef %sub, i32 noundef 64, ptr noundef %bcast_seqno_reset, ptr noundef null)
  br i1 %call36, label %if.end34.spin_unlock_crit_edge, label %if.end38

if.end34.spin_unlock_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %spin_unlock

if.end38:                                         ; preds = %if.end34
  %call41 = tail call zeroext i1 @batadv_bit_get_packet(ptr noundef %add.ptr.i, ptr noundef %bcast_bits, i32 noundef %sub, i32 noundef 1) #7
  br i1 %call41, label %if.then42, label %if.end38.if.end44_crit_edge

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %last_bcast_seqno to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %24, ptr %last_bcast_seqno, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end38.if.end44_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcast_seqno_lock) #7
  %call46 = tail call zeroext i1 @batadv_bla_check_bcast_duplist(ptr noundef %add.ptr.i, ptr noundef %skb) #7
  br i1 %call46, label %if.end44.out_crit_edge, label %if.end48

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end48:                                         ; preds = %if.end44
  tail call void @batadv_skb_set_priority(ptr noundef %skb, i32 noundef 14) #7
  %call49 = tail call i32 @batadv_forw_bcast_packet(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef 0, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 16
  br i1 %cmp50, label %if.end48.out_crit_edge, label %if.end53

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end53:                                         ; preds = %if.end48
  %call54 = tail call zeroext i1 @batadv_bla_is_backbone_gw(ptr noundef %skb, ptr noundef nonnull %call26, i32 noundef 14) #7
  br i1 %call54, label %if.end53.out_crit_edge, label %if.end56

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end56:                                         ; preds = %if.end53
  %call57 = tail call zeroext i1 @batadv_dat_snoop_incoming_arp_request(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef 14) #7
  br i1 %call57, label %if.end56.if.end.i115_crit_edge, label %if.end59

if.end56.if.end.i115_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i115

if.end59:                                         ; preds = %if.end56
  %call60 = tail call zeroext i1 @batadv_dat_snoop_incoming_arp_reply(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef 14) #7
  br i1 %call60, label %if.end59.if.end.i115_crit_edge, label %if.end62

if.end59.if.end.i115_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i115

if.end62:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @batadv_dat_snoop_incoming_dhcp_ack(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef 14) #7
  %33 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soft_iface, align 4
  tail call void @batadv_interface_rx(ptr noundef %34, ptr noundef %skb, i32 noundef 14, ptr noundef nonnull %call26) #7
  br label %if.end.i115

spin_unlock:                                      ; preds = %if.end34.spin_unlock_crit_edge, %batadv_test_bit.exit.spin_unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcast_seqno_lock) #7
  br label %out

out.thread127:                                    ; preds = %if.end23.out.thread127_crit_edge, %if.end20.out.thread127_crit_edge, %if.end16.out.thread127_crit_edge, %if.end11.out.thread127_crit_edge, %if.end7.out.thread127_crit_edge, %if.end.out.thread127_crit_edge, %pskb_may_pull.exit.out.thread127_crit_edge, %if.end.i.out.thread127_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %batadv_orig_node_put.exit

out:                                              ; preds = %spin_unlock, %if.end53.out_crit_edge, %if.end48.out_crit_edge, %if.end44.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %if.end.i115

if.end.i115:                                      ; preds = %out, %if.end62, %if.end59.if.end.i115_crit_edge, %if.end56.if.end.i115_crit_edge
  %ret.0124 = phi i32 [ 1, %out ], [ 0, %if.end59.if.end.i115_crit_edge ], [ 0, %if.end56.if.end.i115_crit_edge ], [ 0, %if.end62 ]
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call26, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %batadv_orig_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #7, !callees !66
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, %out.thread127
  %ret.0125 = phi i32 [ %ret.0124, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge ], [ %ret.0124, %if.then10.i.i.i.i.i ], [ %ret.0124, %if.then.i.i ], [ 1, %out.thread127 ]
  ret i32 %ret.0125
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_bit_get_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_bla_check_bcast_duplist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_skb_set_priority(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_forw_bcast_packet(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_ifinfo_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tt_global_del_orig(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !68
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %primary_if = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 29
  %4 = ptrtoint ptr %primary_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %primary_if, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 110, ptr noundef nonnull @.str.2) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %do.end7
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #7, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !61

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !61

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #7
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %5
  br label %out

out:                                              ; preds = %kref_get_unless_zero.exit, %do.end7.out_crit_edge
  %hard_iface.0 = phi ptr [ null, %do.end7.out_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  %call.i19 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i19, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %out
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  %18 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i.i.i.i26 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %hard_iface.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tp_meter_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_hardif_put(ptr noundef %hard_iface) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %hard_iface, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !61

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #7
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_hardif_release(ptr noundef %refcount) #7, !callees !66
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_ifinfo_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @batadv_get_vid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_tt_local_client_is_roaming(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @batadv_reroute_unicast_packet(ptr noundef %bat_priv, ptr nocapture noundef %skb, ptr noundef %unicast_packet, ptr noundef %dst_addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @batadv_is_my_client(ptr noundef %bat_priv, ptr noundef %dst_addr, i16 noundef zeroext %vid) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then.batadv_orig_node_put.exit_crit_edge, label %if.end

if.then.batadv_orig_node_put.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call1, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %tt = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36
  br label %if.end16

if.else:                                          ; preds = %entry
  %call4 = tail call ptr @batadv_transtable_search(ptr noundef %bat_priv, ptr noundef null, ptr noundef %dst_addr, i16 noundef zeroext %vid) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else.batadv_orig_node_put.exit_crit_edge, label %if.end7

if.else.batadv_orig_node_put.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.end7:                                          ; preds = %if.else
  %dest = getelementptr inbounds %struct.batadv_unicast_packet, ptr %unicast_packet, i32 0, i32 4
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call4, align 4
  %6 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dest, align 4
  %xor.i.i.i = xor i32 %7, %5
  %add.ptr.i.i.i = getelementptr i8, ptr %call4, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.batadv_unicast_packet, ptr %unicast_packet, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %11, %9
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end7.if.end.i44_crit_edge, label %if.end11

if.end7.if.end.i44_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i44

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %last_ttvn = getelementptr inbounds %struct.batadv_orig_node, ptr %call4, i32 0, i32 15
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %if.end
  %last_ttvn.sink = phi ptr [ %last_ttvn, %if.end11 ], [ %tt, %if.end ]
  %orig_node.0 = phi ptr [ %call4, %if.end11 ], [ null, %if.end ]
  %primary_if.0 = phi ptr [ null, %if.end11 ], [ %call1, %if.end ]
  %orig_addr.0 = phi ptr [ %call4, %if.end11 ], [ %3, %if.end ]
  %call.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn.sink, i32 noundef 4) #7
  %12 = ptrtoint ptr %last_ttvn.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %orig_ttvn.0.in = load volatile i32, ptr %last_ttvn.sink, align 4
  %orig_ttvn.0 = trunc i32 %orig_ttvn.0.in to i8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %13 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %14 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.27)
  switch i2 %trunc.i, label %if.end16.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i
    i2 -1, label %land.lhs.true.i
  ]

if.end16.skb_postpull_rcsum.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_postpull_rcsum.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %sub.i.i = sub i32 0, %17
  %call2.i = tail call i32 @csum_partial(ptr noundef %unicast_packet, i32 noundef 10, i32 noundef %sub.i.i) #7
  %sub.i1.i = sub i32 0, %call2.i
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i1.i, ptr %15, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 8
  %conv.i.i = zext i16 %21 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i2.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2.i)
  %cmp13.i = icmp slt i32 %sub.i2.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear18.i = and i16 %bf.load.i, -1537
  %26 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge, %if.then.i, %if.end16.skb_postpull_rcsum.exit_crit_edge
  %dest17 = getelementptr inbounds %struct.batadv_unicast_packet, ptr %unicast_packet, i32 0, i32 4
  %27 = ptrtoint ptr %orig_addr.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %orig_addr.0, align 4
  %29 = ptrtoint ptr %dest17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dest17, align 4
  %add.ptr.i = getelementptr i8, ptr %orig_addr.0, i32 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.batadv_unicast_packet, ptr %unicast_packet, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr1.i, align 2
  %ttvn = getelementptr inbounds %struct.batadv_unicast_packet, ptr %unicast_packet, i32 0, i32 3
  %33 = ptrtoint ptr %ttvn to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %orig_ttvn.0, ptr %ttvn, align 1
  %34 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i.i = load i16, ptr %ip_summed.i, align 8
  %35 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %35)
  %cmp.i.i = icmp eq i16 %35, 1024
  br i1 %cmp.i.i, label %if.then.i.i, label %skb_postpull_rcsum.exit.out_crit_edge

skb_postpull_rcsum.exit.out_crit_edge:            ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i.i:                                      ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %call.i.i37 = tail call i32 @csum_partial(ptr noundef %unicast_packet, i32 noundef 10, i32 noundef 0) #7
  %add.i.i.i.i = add i32 %call.i.i37, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %call.i.i37)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %call.i.i37
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add1.i.i.i.i, ptr %36, align 8
  br label %out

out:                                              ; preds = %if.then.i.i, %skb_postpull_rcsum.exit.out_crit_edge
  %tobool.not.i = icmp eq ptr %primary_if.0, null
  br i1 %tobool.not.i, label %out.batadv_hardif_put.exit_crit_edge, label %if.end.i

out.batadv_hardif_put.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %out
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if.0, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i38, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %batadv_hardif_put.exit

if.then.i.i38:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #7, !callees !66
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i38, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %out.batadv_hardif_put.exit_crit_edge
  %tobool.not.i39 = icmp eq ptr %orig_node.0, null
  br i1 %tobool.not.i39, label %batadv_hardif_put.exit.batadv_orig_node_put.exit_crit_edge, label %batadv_hardif_put.exit.if.end.i44_crit_edge

batadv_hardif_put.exit.if.end.i44_crit_edge:      ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i44

batadv_hardif_put.exit.batadv_orig_node_put.exit_crit_edge: ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.end.i44:                                       ; preds = %batadv_hardif_put.exit.if.end.i44_crit_edge, %if.end7.if.end.i44_crit_edge
  %orig_node.15364 = phi ptr [ %orig_node.0, %batadv_hardif_put.exit.if.end.i44_crit_edge ], [ %call4, %if.end7.if.end.i44_crit_edge ]
  %ret.0.off05463 = phi i1 [ true, %batadv_hardif_put.exit.if.end.i44_crit_edge ], [ false, %if.end7.if.end.i44_crit_edge ]
  %refcount.i40 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.15364, i32 0, i32 27
  %call.i.i.i.i.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i40, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %refcount.i40, i32 1, i32 3, i32 1) #7
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i40, ptr %refcount.i40, i32 1, ptr elementtype(i32) %refcount.i40) #7, !srcloc !64
  %asmresult.i.i.i.i.i.i.i.i42 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %cmp.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i42, 1
  br i1 %cmp.i.i.i.i.i43, label %if.then.i.i48, label %if.end5.i.i.i.i.i46

if.end5.i.i.i.i.i46:                              ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %.not.i.i.i.i.i45 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i42, 0
  br i1 %.not.i.i.i.i.i45, label %if.end5.i.i.i.i.i46.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i47, !prof !61

if.end5.i.i.i.i.i46.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i47:                            ; preds = %if.end5.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i40, i32 noundef 3) #7
  br label %batadv_orig_node_put.exit

if.then.i.i48:                                    ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i40) #7, !callees !66
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i48, %if.then10.i.i.i.i.i47, %if.end5.i.i.i.i.i46.batadv_orig_node_put.exit_crit_edge, %batadv_hardif_put.exit.batadv_orig_node_put.exit_crit_edge, %if.else.batadv_orig_node_put.exit_crit_edge, %if.then.batadv_orig_node_put.exit_crit_edge
  %ret.0.off05458 = phi i1 [ true, %batadv_hardif_put.exit.batadv_orig_node_put.exit_crit_edge ], [ %ret.0.off05463, %if.end5.i.i.i.i.i46.batadv_orig_node_put.exit_crit_edge ], [ %ret.0.off05463, %if.then10.i.i.i.i.i47 ], [ %ret.0.off05463, %if.then.i.i48 ], [ false, %if.else.batadv_orig_node_put.exit_crit_edge ], [ false, %if.then.batadv_orig_node_put.exit_crit_edge ]
  ret i1 %ret.0.off05458
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_my_client(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_postpull_rcsum(ptr nocapture noundef %skb, ptr noundef %start) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr to i2
  %1 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.28)
  switch i2 %trunc, label %entry.if.end19_crit_edge [
    i2 -2, label %if.then
    i2 -1, label %land.lhs.true
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %sub.i = sub i32 0, %4
  %call2 = tail call i32 @csum_partial(ptr noundef %start, i32 noundef 10, i32 noundef %sub.i) #7
  %sub.i1 = sub i32 0, %call2
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i1, ptr %2, align 8
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %conv.i = zext i16 %8 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i2 = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2)
  %cmp13 = icmp slt i32 %sub.i2, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear18 = and i16 %bf.load, -1537
  %13 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %bf.clear18, ptr %ip_summed, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true.if.end19_crit_edge, %if.then, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_postpush_rcsum(ptr nocapture noundef %skb, ptr noundef %start) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %1 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %1)
  %cmp.i = icmp eq i16 %1, 1024
  br i1 %cmp.i, label %if.then.i, label %entry.__skb_postpush_rcsum.exit_crit_edge

entry.__skb_postpush_rcsum.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_postpush_rcsum.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %call.i = tail call i32 @csum_partial(ptr noundef %start, i32 noundef 10, i32 noundef 0) #7
  %add.i.i.i = add i32 %call.i, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %call.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %call.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add1.i.i.i, ptr %2, align 8
  br label %__skb_postpush_rcsum.exit

__skb_postpush_rcsum.exit:                        ; preds = %if.then.i, %entry.__skb_postpush_rcsum.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_transtable_search(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/routing.c", i32 162, i32 3}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/batman-adv/routing.c", i32 561, i32 22}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/batman-adv/routing.c", i32 563, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/batman-adv/routing.c", i32 568, i32 17}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/batman-adv/routing.c", i32 985, i32 5}
!13 = !{ptr @__func__.batadv_recv_unicast_packet, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/batman-adv/routing.c", i32 78, i32 16}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/batman-adv/routing.c", i32 85, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/batman-adv/routing.c", i32 88, i32 8}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/batman-adv/routing.c", i32 92, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/batman-adv/routing.c", i32 97, i32 3}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/batman-adv/routing.c", i32 290, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @batadv_recv_icmp_ttl_exceeded.__UNIQUE_ID_ddebug360, !28, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!32 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/batman-adv/routing.c", i32 670, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @batadv_route_unicast_packet.__UNIQUE_ID_ddebug369, !41, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!44 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/batman-adv/routing.c", i32 821, i32 4}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/batman-adv/routing.c", i32 867, i32 3}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148169257, i64 2148169289, i64 2148169318, i64 2148169352, i64 2148169383, i64 2148169406}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2156371864}
!63 = !{i64 2148257258}
!64 = !{i64 2148171722, i64 2148171754, i64 2148171783, i64 2148171817, i64 2148171848, i64 2148171871}
!65 = !{i64 2150588269}
!66 = !{ptr @batadv_hardif_release, ptr @batadv_neigh_node_release, ptr @batadv_orig_ifinfo_release, ptr @batadv_orig_node_release}
!67 = !{i64 2148898900, i64 2148898905, i64 2148898918, i64 2148898962, i64 2148898996, i64 2148899017}
!68 = !{i64 2149713722}
!69 = !{i64 542561, i64 542585, i64 542606, i64 542623, i64 542640}
!70 = !{i64 2149713988}
!71 = !{i64 621054, i64 621115}
!72 = !{i64 623786}
!73 = !{i64 624071}
