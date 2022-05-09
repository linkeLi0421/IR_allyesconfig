; ModuleID = '/llk/IR_all_yes/net/batman-adv/gateway_client.c_pt.bc'
source_filename = "../net/batman-adv/gateway_client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
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
%struct.batadv_gw_node = type { %struct.hlist_node, ptr, i32, i32, %struct.kref, %struct.callback_head }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.batadv_neigh_ifinfo = type { %struct.hlist_node, ptr, %struct.batadv_neigh_ifinfo_bat_iv, %struct.batadv_neigh_ifinfo_bat_v, i8, %struct.kref, %struct.callback_head }
%struct.batadv_neigh_ifinfo_bat_iv = type { [5 x i8], i8, i8, [2 x i32], i8 }
%struct.batadv_neigh_ifinfo_bat_v = type { i32, i32 }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.batadv_tvlv_gateway_data = type { i32, i32 }
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
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_ethhdr = type { %union.anon.145, i16, i16, i16 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { [6 x i8], [6 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.udphdr = type { i16, i16, i16, i16 }

@batadv_gw_get_selected_gw_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/gateway_client.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pM\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Removing selected gateway - no gateway in range\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Adding route to gateway %pM (bandwidth: %u.%u/%u.%u MBit, tq: %i)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Changing route to gateway %pM (bandwidth: %u.%u/%u.%u MBit, tq: %i)\0A\00", [59 x i8] zeroinitializer }, align 32
@batadv_gw_node_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Gateway bandwidth of originator %pM changed from %u.%u/%u.%u MBit to %u.%u/%u.%u MBit\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Gateway %pM removed from gateway list\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Found new gateway %pM -> gw bandwidth: %u.%u/%u.%u MBit\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 84, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 226, i32 20 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 244, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 249, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 260, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 375, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 417, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 433, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 695, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 723, i32 2 }
@___asan_gen_.53 = private constant [35 x i8] c"../net/batman-adv/gateway_client.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 350, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 110, i32 15 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_node_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -20
  %orig_node = getelementptr i8, ptr %ref, i32 -12
  %0 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_node, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.batadv_orig_node_put.exit_crit_edge, label %if.end.i

entry.batadv_orig_node_put.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_orig_node_put.exit

if.end.i:                                         ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %1, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %batadv_orig_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #8
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, %entry.batadv_orig_node_put.exit_crit_edge
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %batadv_orig_node_put.exit.if.end_crit_edge, label %do.end

batadv_orig_node_put.exit.if.end_crit_edge:       ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr i8, ptr %ref, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 24 to ptr)) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %batadv_orig_node_put.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_gw_get_selected_gw_node(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %curr_gw = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 2
  %4 = ptrtoint ptr %curr_gw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %curr_gw, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @batadv_gw_get_selected_gw_node.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @batadv_gw_get_selected_gw_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 84, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %do.end7
  %refcount = getelementptr inbounds %struct.batadv_gw_node, ptr %5, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #8, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !45

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #8
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %5
  br label %out

out:                                              ; preds = %kref_get_unless_zero.exit, %do.end7.out_crit_edge
  %gw_node.0 = phi ptr [ null, %do.end7.out_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  %call.i19 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i19, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %out
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %18 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i26 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %gw_node.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_gw_get_selected_orig(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_gw_get_selected_gw_node(ptr noundef %bat_priv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %orig_node1 = getelementptr inbounds %struct.batadv_gw_node, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %orig_node1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_node1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %rcu_read_lock.exit.unlock_crit_edge, label %if.end4

rcu_read_lock.exit.unlock_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end4:                                          ; preds = %rcu_read_lock.exit
  %refcount = getelementptr inbounds %struct.batadv_orig_node, ptr %5, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end4
  %8 = phi i32 [ %7, %if.end4 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #8, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !45

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #8
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %5
  br label %unlock

unlock:                                           ; preds = %kref_get_unless_zero.exit, %rcu_read_lock.exit.unlock_crit_edge
  %orig_node.0 = phi ptr [ null, %rcu_read_lock.exit.unlock_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  %call.i13 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i13, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %unlock
  %call1.i14 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %18 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i20 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %entry.out_crit_edge
  %orig_node.1 = phi ptr [ %orig_node.0, %rcu_read_unlock.exit ], [ null, %entry.out_crit_edge ]
  call fastcc void @batadv_gw_node_put(ptr noundef %call)
  ret ptr %orig_node.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_gw_node_put(ptr noundef %gw_node) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %gw_node, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  %orig_node.i = getelementptr %struct.batadv_gw_node, ptr %gw_node, i32 0, i32 1
  %1 = ptrtoint ptr %orig_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %orig_node.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end.i_crit_edge, label %if.end.i.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %2, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.do.end.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.i.do.end.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #8
  br label %do.end.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %rcu.i = getelementptr %struct.batadv_gw_node, ptr %gw_node, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #8
  br label %return

return:                                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_reselect(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reselect = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reselect, i32 noundef 4) #8
  %0 = ptrtoint ptr %reselect to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %reselect, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_check_client_stop(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @batadv_gw_get_selected_gw_node(ptr noundef %bat_priv)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %list_lock.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i) #8
  %curr_gw.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 2
  %2 = ptrtoint ptr %curr_gw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_gw.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  %4 = ptrtoint ptr %curr_gw.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %curr_gw.i, align 4
  tail call fastcc void @batadv_gw_node_put(ptr noundef %3) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i) #8
  %call4 = tail call i32 @batadv_throw_uevent(ptr noundef %bat_priv, i32 noundef 0, i32 noundef 1, ptr noundef null) #8
  tail call fastcc void @batadv_gw_node_put(ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_throw_uevent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_election(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  %gw_addr = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %gw_addr) #8
  %0 = call ptr @memset(ptr %gw_addr, i32 0, i32 18)
  %mode = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #8
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 30
  %3 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo_ops, align 4
  %get_best_gw_node = getelementptr inbounds %struct.batadv_algo_ops, ptr %4, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %get_best_gw_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_best_gw_node, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @batadv_gw_get_selected_gw_node(ptr noundef %bat_priv)
  %reselect = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 8
  %call.i.i139 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reselect, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %reselect, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %reselect, ptr %reselect, i32 0, i32 -1, ptr elementtype(i32) %reselect) #8, !srcloc !52
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %atomic_add_unless.exit, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %tobool7.not160 = icmp eq ptr %call4, null
  br label %if.end9

atomic_add_unless.exit:                           ; preds = %if.end3
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %atomic_add_unless.exit.if.end9_crit_edge, label %atomic_add_unless.exit.out_crit_edge

atomic_add_unless.exit.out_crit_edge:             ; preds = %atomic_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

atomic_add_unless.exit.if.end9_crit_edge:         ; preds = %atomic_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %atomic_add_unless.exit.if.end9_crit_edge, %atomic_add_unless.exit.thread
  %tobool7.not162 = phi i1 [ %tobool7.not160, %atomic_add_unless.exit.thread ], [ true, %atomic_add_unless.exit.if.end9_crit_edge ]
  %8 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %algo_ops, align 4
  %get_best_gw_node12 = getelementptr inbounds %struct.batadv_algo_ops, ptr %9, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %get_best_gw_node12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_best_gw_node12, align 4
  %call13 = tail call ptr %11(ptr noundef %bat_priv) #8
  %cmp14 = icmp eq ptr %call4, %call13
  br i1 %cmp14, label %if.end9.out_crit_edge, label %if.end16

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %if.end9
  %tobool17.not = icmp eq ptr %call13, null
  br i1 %tobool17.not, label %if.end30, label %if.then18

if.then18:                                        ; preds = %if.end16
  %orig_node = getelementptr inbounds %struct.batadv_gw_node, ptr %call13, i32 0, i32 1
  %12 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %orig_node, align 4
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %gw_addr, ptr noundef nonnull @.str.2, ptr noundef %13)
  %14 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %orig_node, align 4
  %call22 = tail call ptr @batadv_orig_router_get(ptr noundef %15, ptr noundef null) #8
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reselect, i32 noundef 4) #8
  %16 = ptrtoint ptr %reselect to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %reselect, align 4
  br label %out

if.end25:                                         ; preds = %if.then18
  %call26 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call22, ptr noundef null) #8
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reselect, i32 noundef 4) #8
  %17 = ptrtoint ptr %reselect to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %reselect, align 4
  br label %out

if.end30:                                         ; preds = %if.end16
  br i1 %tobool7.not162, label %if.end30.do.body66_crit_edge, label %do.body

if.end30.do.body66_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body66

do.body:                                          ; preds = %if.end30
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i140 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #8
  %18 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %do.body.if.end94.thread_crit_edge, label %if.then37

do.body.if.end94.thread_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.thread

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.3) #8
  br label %if.end94.thread

if.end94.thread:                                  ; preds = %if.then37, %do.body.if.end94.thread_crit_edge
  %call40 = tail call i32 @batadv_throw_uevent(ptr noundef %bat_priv, i32 noundef 0, i32 noundef 1, ptr noundef null) #8
  %list_lock.i181 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i181) #8
  br label %batadv_gw_select.exit

if.else:                                          ; preds = %if.end25
  br i1 %tobool7.not162, label %do.body45, label %if.else.do.body66_crit_edge

if.else.do.body66_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body66

do.body45:                                        ; preds = %if.else
  %log_level47 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i141 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level47, i32 noundef 4) #8
  %20 = ptrtoint ptr %log_level47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %log_level47, align 4
  %and49 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body45.if.end94.thread185_crit_edge, label %if.then51

do.body45.if.end94.thread185_crit_edge:           ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.thread185

if.then51:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %orig_node, align 4
  %bandwidth_down = getelementptr inbounds %struct.batadv_gw_node, ptr %call13, i32 0, i32 2
  %24 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bandwidth_down, align 4
  %.frozen = freeze i32 %25
  %div = udiv i32 %.frozen, 10
  %26 = mul i32 %div, 10
  %rem.decomposed = sub i32 %.frozen, %26
  %bandwidth_up = getelementptr inbounds %struct.batadv_gw_node, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %bandwidth_up to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bandwidth_up, align 4
  %.frozen195 = freeze i32 %28
  %div56 = udiv i32 %.frozen195, 10
  %29 = mul i32 %div56, 10
  %rem58.decomposed = sub i32 %.frozen195, %29
  %tq_avg = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call26, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %tq_avg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tq_avg, align 2
  %conv = zext i8 %31 to i32
  %call59 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.4, ptr noundef %23, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %div56, i32 noundef %rem58.decomposed, i32 noundef %conv) #8
  br label %if.end94.thread185

if.end94.thread185:                               ; preds = %if.then51, %do.body45.if.end94.thread185_crit_edge
  %call64 = call i32 @batadv_throw_uevent(ptr noundef %bat_priv, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %gw_addr) #8
  %list_lock.i188 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %list_lock.i188) #8
  br label %if.then.i

do.body66:                                        ; preds = %if.else.do.body66_crit_edge, %if.end30.do.body66_crit_edge
  %router.0168178 = phi ptr [ %call22, %if.else.do.body66_crit_edge ], [ null, %if.end30.do.body66_crit_edge ]
  %router_ifinfo.0169177 = phi ptr [ %call26, %if.else.do.body66_crit_edge ], [ null, %if.end30.do.body66_crit_edge ]
  %log_level68 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level68, i32 noundef 4) #8
  %32 = ptrtoint ptr %log_level68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %log_level68, align 4
  %and70 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body66.if.end94_crit_edge, label %if.then72

do.body66.if.end94_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then72:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %orig_node73 = getelementptr inbounds %struct.batadv_gw_node, ptr %call13, i32 0, i32 1
  %34 = ptrtoint ptr %orig_node73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %orig_node73, align 4
  %bandwidth_down76 = getelementptr inbounds %struct.batadv_gw_node, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %bandwidth_down76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bandwidth_down76, align 4
  %.frozen196 = freeze i32 %37
  %div77 = udiv i32 %.frozen196, 10
  %38 = mul i32 %div77, 10
  %rem79.decomposed = sub i32 %.frozen196, %38
  %bandwidth_up80 = getelementptr inbounds %struct.batadv_gw_node, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %bandwidth_up80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bandwidth_up80, align 4
  %.frozen197 = freeze i32 %40
  %div81 = udiv i32 %.frozen197, 10
  %41 = mul i32 %div81, 10
  %rem83.decomposed = sub i32 %.frozen197, %41
  %tq_avg85 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %router_ifinfo.0169177, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %tq_avg85 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tq_avg85, align 2
  %conv86 = zext i8 %43 to i32
  %call87 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.5, ptr noundef %35, i32 noundef %div77, i32 noundef %rem79.decomposed, i32 noundef %div81, i32 noundef %rem83.decomposed, i32 noundef %conv86) #8
  br label %if.end94

if.end94:                                         ; preds = %if.then72, %do.body66.if.end94_crit_edge
  %call92 = call i32 @batadv_throw_uevent(ptr noundef %bat_priv, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %gw_addr) #8
  %list_lock.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %list_lock.i) #8
  br i1 %tobool17.not, label %if.end94.batadv_gw_select.exit_crit_edge, label %if.end94.if.then.i_crit_edge

if.end94.if.then.i_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end94.batadv_gw_select.exit_crit_edge:         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_gw_select.exit

if.then.i:                                        ; preds = %if.end94.if.then.i_crit_edge, %if.end94.thread185
  %list_lock.i193 = phi ptr [ %list_lock.i188, %if.end94.thread185 ], [ %list_lock.i, %if.end94.if.then.i_crit_edge ]
  %router.0167191 = phi ptr [ %call22, %if.end94.thread185 ], [ %router.0168178, %if.end94.if.then.i_crit_edge ]
  %router_ifinfo.0170189 = phi ptr [ %call26, %if.end94.thread185 ], [ %router_ifinfo.0169177, %if.end94.if.then.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_gw_node, ptr %call13, i32 0, i32 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !55

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %45 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i.i = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.batadv_gw_select.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !45

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.batadv_gw_select.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_gw_select.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %batadv_gw_select.exit

batadv_gw_select.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.batadv_gw_select.exit_crit_edge, %if.end94.batadv_gw_select.exit_crit_edge, %if.end94.thread
  %list_lock.i184 = phi ptr [ %list_lock.i181, %if.end94.thread ], [ %list_lock.i, %if.end94.batadv_gw_select.exit_crit_edge ], [ %list_lock.i193, %if.else.i.i.i.i.i.batadv_gw_select.exit_crit_edge ], [ %list_lock.i193, %if.end15.sink.split.i.i.i.i.i ]
  %router.0167183 = phi ptr [ null, %if.end94.thread ], [ %router.0168178, %if.end94.batadv_gw_select.exit_crit_edge ], [ %router.0167191, %if.else.i.i.i.i.i.batadv_gw_select.exit_crit_edge ], [ %router.0167191, %if.end15.sink.split.i.i.i.i.i ]
  %router_ifinfo.0170182 = phi ptr [ null, %if.end94.thread ], [ %router_ifinfo.0169177, %if.end94.batadv_gw_select.exit_crit_edge ], [ %router_ifinfo.0170189, %if.else.i.i.i.i.i.batadv_gw_select.exit_crit_edge ], [ %router_ifinfo.0170189, %if.end15.sink.split.i.i.i.i.i ]
  %curr_gw.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 2
  %46 = ptrtoint ptr %curr_gw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %curr_gw.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  %48 = ptrtoint ptr %curr_gw.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call13, ptr %curr_gw.i, align 4
  call fastcc void @batadv_gw_node_put(ptr noundef %47) #8
  call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i184) #8
  br label %out

out:                                              ; preds = %batadv_gw_select.exit, %if.then28, %if.then24, %if.end9.out_crit_edge, %atomic_add_unless.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %curr_gw.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call4, %if.end9.out_crit_edge ], [ %call4, %batadv_gw_select.exit ], [ %call4, %if.then28 ], [ %call4, %if.then24 ], [ null, %if.end.out_crit_edge ], [ %call4, %atomic_add_unless.exit.out_crit_edge ]
  %next_gw.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call4, %if.end9.out_crit_edge ], [ %call13, %batadv_gw_select.exit ], [ %call13, %if.then28 ], [ %call13, %if.then24 ], [ null, %if.end.out_crit_edge ], [ null, %atomic_add_unless.exit.out_crit_edge ]
  %router.1 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end9.out_crit_edge ], [ %router.0167183, %batadv_gw_select.exit ], [ %call22, %if.then28 ], [ null, %if.then24 ], [ null, %if.end.out_crit_edge ], [ null, %atomic_add_unless.exit.out_crit_edge ]
  %router_ifinfo.1 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end9.out_crit_edge ], [ %router_ifinfo.0170182, %batadv_gw_select.exit ], [ null, %if.then28 ], [ null, %if.then24 ], [ null, %if.end.out_crit_edge ], [ null, %atomic_add_unless.exit.out_crit_edge ]
  call fastcc void @batadv_gw_node_put(ptr noundef %curr_gw.0)
  call fastcc void @batadv_gw_node_put(ptr noundef %next_gw.0)
  %tobool.not.i145 = icmp eq ptr %router.1, null
  br i1 %tobool.not.i145, label %out.batadv_neigh_node_put.exit_crit_edge, label %if.end.i

out.batadv_neigh_node_put.exit_crit_edge:         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_neigh_node_put.exit

if.end.i:                                         ; preds = %out
  %refcount.i146 = getelementptr inbounds %struct.batadv_neigh_node, ptr %router.1, i32 0, i32 8
  %call.i.i.i.i.i.i.i147 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i146, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %refcount.i146, i32 1, i32 3, i32 1) #8
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i146, ptr %refcount.i146, i32 1, ptr elementtype(i32) %refcount.i146) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i148 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i148, label %if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i146, i32 noundef 3) #8
  br label %batadv_neigh_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @batadv_neigh_node_release(ptr noundef %refcount.i146) #8
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_neigh_node_put.exit_crit_edge, %out.batadv_neigh_node_put.exit_crit_edge
  %tobool.not.i149 = icmp eq ptr %router_ifinfo.1, null
  br i1 %tobool.not.i149, label %batadv_neigh_node_put.exit.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.end.i154

batadv_neigh_node_put.exit.batadv_neigh_ifinfo_put.exit_crit_edge: ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_neigh_ifinfo_put.exit

if.end.i154:                                      ; preds = %batadv_neigh_node_put.exit
  %refcount.i150 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %router_ifinfo.1, i32 0, i32 5
  %call.i.i.i.i.i.i.i151 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i150, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %refcount.i150, i32 1, i32 3, i32 1) #8
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i150, ptr %refcount.i150, i32 1, ptr elementtype(i32) %refcount.i150) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i152 = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i152)
  %cmp.i.i.i.i.i153 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i152, 1
  br i1 %cmp.i.i.i.i.i153, label %if.then.i.i158, label %if.end5.i.i.i.i.i156

if.end5.i.i.i.i.i156:                             ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i152)
  %.not.i.i.i.i.i155 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i152, 0
  br i1 %.not.i.i.i.i.i155, label %if.end5.i.i.i.i.i156.batadv_neigh_ifinfo_put.exit_crit_edge, label %if.then10.i.i.i.i.i157, !prof !45

if.end5.i.i.i.i.i156.batadv_neigh_ifinfo_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_neigh_ifinfo_put.exit

if.then10.i.i.i.i.i157:                           ; preds = %if.end5.i.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i150, i32 noundef 3) #8
  br label %batadv_neigh_ifinfo_put.exit

if.then.i.i158:                                   ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i150) #8
  br label %batadv_neigh_ifinfo_put.exit

batadv_neigh_ifinfo_put.exit:                     ; preds = %if.then.i.i158, %if.then10.i.i.i.i.i157, %if.end5.i.i.i.i.i156.batadv_neigh_ifinfo_put.exit_crit_edge, %batadv_neigh_node_put.exit.batadv_neigh_ifinfo_put.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %gw_addr) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_router_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_ifinfo_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_neigh_ifinfo_put(ptr noundef %neigh_ifinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %neigh_ifinfo, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %neigh_ifinfo, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount) #8
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_check_election(ptr noundef %bat_priv, ptr noundef %orig_node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 30
  %0 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_ops, align 4
  %is_eligible = getelementptr inbounds %struct.batadv_algo_ops, ptr %1, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %is_eligible to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_eligible, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @batadv_gw_get_selected_orig(ptr noundef %bat_priv)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %out.thread20, label %if.end3

out.thread20:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %reselect.i21 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 8
  %call.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reselect.i21, i32 noundef 4) #8
  %4 = ptrtoint ptr %reselect.i21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %reselect.i21, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp = icmp eq ptr %call, %orig_node
  br i1 %cmp, label %if.end3.if.end.i_crit_edge, label %if.end5

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end5:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo_ops, align 4
  %is_eligible8 = getelementptr inbounds %struct.batadv_algo_ops, ptr %6, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %is_eligible8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %is_eligible8, align 4
  %call9 = tail call zeroext i1 %8(ptr noundef %bat_priv, ptr noundef nonnull %call, ptr noundef %orig_node) #8
  br i1 %call9, label %out, label %if.end5.if.end.i_crit_edge

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

out:                                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %reselect.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reselect.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %reselect.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %reselect.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %out, %if.end5.if.end.i_crit_edge, %if.end3.if.end.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %out.thread20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_gw_node_get(ptr noundef %bat_priv, ptr noundef readnone %orig_node) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @batadv_gw_node_get.__warned, align 1
  br i1 %.b42, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @batadv_gw_node_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 376, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %gw = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35
  %4 = ptrtoint ptr %gw to i32
  call void @__asan_load4_noabort(i32 %4)
  %gw_node_tmp.053 = load volatile ptr, ptr %gw, align 4
  %tobool12.not54 = icmp eq ptr %gw_node_tmp.053, null
  br i1 %tobool12.not54, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %gw_node_tmp.055 = phi ptr [ %gw_node_tmp.0, %for.inc.for.body_crit_edge ], [ %gw_node_tmp.053, %do.end.for.body_crit_edge ]
  %orig_node13 = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node_tmp.055, i32 0, i32 1
  %5 = ptrtoint ptr %orig_node13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %orig_node13, align 4
  %cmp.not = icmp eq ptr %6, %orig_node
  br i1 %cmp.not, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_gw_node, ptr %gw_node_tmp.055, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %9, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %12, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #8, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !45

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %15, 1
  %16 = or i32 %add5.i.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !45

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #8
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %18 = phi i32 [ %15, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.i.i.i.i.not = icmp eq i32 %18, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %gw_node_tmp.055 to i32
  call void @__asan_load4_noabort(i32 %19)
  %gw_node_tmp.0 = load volatile ptr, ptr %gw_node_tmp.055, align 4
  %tobool12.not = icmp eq ptr %gw_node_tmp.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %gw_node_tmp.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %gw_node_tmp.055, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i44 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i44, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %for.end
  %call1.i45 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %20 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i51 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %gw_node_tmp.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_node_update(ptr noundef %bat_priv, ptr noundef %orig_node, ptr nocapture noundef readonly %gateway) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #8
  %call = tail call ptr @batadv_gw_node_get(ptr noundef %bat_priv, ptr noundef %orig_node)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.rhs.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %dep_map.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 1, i32 0, i32 0, i32 4
  %call.i.i104 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %cmp.not.i = icmp eq i32 %call.i.i104, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !55

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 330, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %1 = ptrtoint ptr %gateway to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %gateway, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp24.i = icmp eq i32 %2, 0
  br i1 %cmp24.i, label %if.end.i.batadv_gw_node_add.exit_crit_edge, label %if.end26.i

if.end.i.batadv_gw_node_add.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_gw_node_add.exit

if.end26.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 32) #11
  %tobool28.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool28.not.i, label %if.end26.i.batadv_gw_node_add.exit_crit_edge, label %if.end30.i

if.end26.i.batadv_gw_node_add.exit_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_gw_node_add.exit

if.end30.i:                                       ; preds = %if.end26.i
  %refcount.i = getelementptr inbounds %struct.batadv_gw_node, ptr %call7.i.i.i, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcount.i, align 4
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pprev.i.i, align 4
  %refcount31.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount31.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount31.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount31.i, ptr %refcount31.i, i32 1, ptr elementtype(i32) %refcount31.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end30.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !55

if.end30.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end30.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !45

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end30.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end30.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount31.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %orig_node32.i = getelementptr inbounds %struct.batadv_gw_node, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %orig_node32.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %orig_node, ptr %orig_node32.i, align 8
  %10 = ptrtoint ptr %gateway to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %gateway, align 2
  %bandwidth_down34.i = getelementptr inbounds %struct.batadv_gw_node, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %bandwidth_down34.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bandwidth_down34.i, align 4
  %bandwidth_up.i = getelementptr inbounds %struct.batadv_tvlv_gateway_data, ptr %gateway, i32 0, i32 1
  %13 = ptrtoint ptr %bandwidth_up.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %bandwidth_up.i, align 2
  %bandwidth_up35.i = getelementptr inbounds %struct.batadv_gw_node, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %bandwidth_up35.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bandwidth_up35.i, align 8
  %call.i.i.i.i.i.i75.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i76.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i76.i)
  %tobool1.not.i.i.i.i77.i = icmp eq i32 %asmresult.i.i.i.i.i.i76.i, 0
  br i1 %tobool1.not.i.i.i.i77.i, label %kref_get.exit.i.if.end15.sink.split.i.i.i.i82.i_crit_edge, label %if.else.i.i.i.i80.i, !prof !55

kref_get.exit.i.if.end15.sink.split.i.i.i.i82.i_crit_edge: ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i82.i

if.else.i.i.i.i80.i:                              ; preds = %kref_get.exit.i
  %add.i.i.i.i78.i = add i32 %asmresult.i.i.i.i.i.i76.i, 1
  %17 = or i32 %add.i.i.i.i78.i, %asmresult.i.i.i.i.i.i76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i79.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i79.i, label %if.else.i.i.i.i80.i.kref_get.exit83.i_crit_edge, label %if.else.i.i.i.i80.i.if.end15.sink.split.i.i.i.i82.i_crit_edge, !prof !45

if.else.i.i.i.i80.i.if.end15.sink.split.i.i.i.i82.i_crit_edge: ; preds = %if.else.i.i.i.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i82.i

if.else.i.i.i.i80.i.kref_get.exit83.i_crit_edge:  ; preds = %if.else.i.i.i.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit83.i

if.end15.sink.split.i.i.i.i82.i:                  ; preds = %if.else.i.i.i.i80.i.if.end15.sink.split.i.i.i.i82.i_crit_edge, %kref_get.exit.i.if.end15.sink.split.i.i.i.i82.i_crit_edge
  %.sink.i.i.i.i81.i = phi i32 [ 2, %kref_get.exit.i.if.end15.sink.split.i.i.i.i82.i_crit_edge ], [ 1, %if.else.i.i.i.i80.i.if.end15.sink.split.i.i.i.i82.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i81.i) #8
  br label %kref_get.exit83.i

kref_get.exit83.i:                                ; preds = %if.end15.sink.split.i.i.i.i82.i, %if.else.i.i.i.i80.i.kref_get.exit83.i_crit_edge
  %gw38.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35
  %18 = ptrtoint ptr %gw38.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gw38.i, align 4
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %call7.i.i.i, align 8
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %gw38.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  %22 = ptrtoint ptr %gw38.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i.i.i, ptr %gw38.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %kref_get.exit83.i.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

kref_get.exit83.i.hlist_add_head_rcu.exit.i_crit_edge: ; preds = %kref_get.exit83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %kref_get.exit83.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i.i, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %kref_get.exit83.i.hlist_add_head_rcu.exit.i_crit_edge
  %generation.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 3
  %24 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %generation.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %generation.i, align 4
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #8
  %26 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %hlist_add_head_rcu.exit.i.if.end51.i_crit_edge, label %if.then43.i

hlist_add_head_rcu.exit.i.if.end51.i_crit_edge:   ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then43.i:                                      ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %gateway to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %gateway, align 2
  %.frozen = freeze i32 %29
  %div.i = udiv i32 %.frozen, 10
  %30 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %.frozen, %30
  %31 = ptrtoint ptr %bandwidth_up.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %bandwidth_up.i, align 2
  %.frozen109 = freeze i32 %32
  %div47.i = udiv i32 %.frozen109, 10
  %33 = mul i32 %div47.i, 10
  %rem49.i.decomposed = sub i32 %.frozen109, %33
  %call50.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.12, ptr noundef %orig_node, i32 noundef %div.i, i32 noundef %rem.i.decomposed, i32 noundef %div47.i, i32 noundef %rem49.i.decomposed) #8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then43.i, %hlist_add_head_rcu.exit.i.if.end51.i_crit_edge
  tail call fastcc void @batadv_gw_node_put(ptr noundef nonnull %call7.i.i.i) #8
  br label %batadv_gw_node_add.exit

batadv_gw_node_add.exit:                          ; preds = %if.end51.i, %if.end26.i.batadv_gw_node_add.exit_crit_edge, %if.end.i.batadv_gw_node_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #8
  br label %out

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #8
  %bandwidth_down = getelementptr inbounds %struct.batadv_gw_node, ptr %call, i32 0, i32 2
  %34 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bandwidth_down, align 4
  %36 = ptrtoint ptr %gateway to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %gateway, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp = icmp eq i32 %35, %37
  br i1 %cmp, label %land.lhs.true, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %bandwidth_up = getelementptr inbounds %struct.batadv_gw_node, ptr %call, i32 0, i32 3
  %38 = ptrtoint ptr %bandwidth_up to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bandwidth_up, align 4
  %bandwidth_up6 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, ptr %gateway, i32 0, i32 1
  %40 = ptrtoint ptr %bandwidth_up6 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %bandwidth_up6, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp7 = icmp eq i32 %39, %41
  br i1 %cmp7, label %land.lhs.true.out_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #8
  %42 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.if.end28_crit_edge, label %if.then12

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bandwidth_down, align 4
  %.frozen110 = freeze i32 %45
  %div = udiv i32 %.frozen110, 10
  %46 = mul i32 %div, 10
  %rem.decomposed = sub i32 %.frozen110, %46
  %bandwidth_up15 = getelementptr inbounds %struct.batadv_gw_node, ptr %call, i32 0, i32 3
  %47 = ptrtoint ptr %bandwidth_up15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bandwidth_up15, align 4
  %.frozen111 = freeze i32 %48
  %div16 = udiv i32 %.frozen111, 10
  %49 = mul i32 %div16, 10
  %rem18.decomposed = sub i32 %.frozen111, %49
  %50 = ptrtoint ptr %gateway to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %gateway, align 2
  %.frozen112 = freeze i32 %51
  %div20 = udiv i32 %.frozen112, 10
  %52 = mul i32 %div20, 10
  %rem22.decomposed = sub i32 %.frozen112, %52
  %bandwidth_up23 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, ptr %gateway, i32 0, i32 1
  %53 = ptrtoint ptr %bandwidth_up23 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %bandwidth_up23, align 2
  %.frozen113 = freeze i32 %54
  %div24 = udiv i32 %.frozen113, 10
  %55 = mul i32 %div24, 10
  %rem26.decomposed = sub i32 %.frozen113, %55
  %call27 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.7, ptr noundef %orig_node, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %div16, i32 noundef %rem18.decomposed, i32 noundef %div20, i32 noundef %rem22.decomposed, i32 noundef %div24, i32 noundef %rem26.decomposed) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then12, %do.body.if.end28_crit_edge
  %56 = ptrtoint ptr %gateway to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %gateway, align 2
  %58 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %bandwidth_down, align 4
  %bandwidth_up31 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, ptr %gateway, i32 0, i32 1
  %59 = ptrtoint ptr %bandwidth_up31 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %bandwidth_up31, align 2
  %bandwidth_up32 = getelementptr inbounds %struct.batadv_gw_node, ptr %call, i32 0, i32 3
  %61 = ptrtoint ptr %bandwidth_up32 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %bandwidth_up32, align 4
  %62 = load i32, ptr %gateway, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp34 = icmp eq i32 %62, 0
  br i1 %cmp34, label %do.body36, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body36:                                        ; preds = %if.end28
  %call.i.i103 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #8
  %63 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %log_level, align 4
  %and40 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body36.if.end46_crit_edge, label %if.then42

do.body36.if.end46_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.8, ptr noundef %orig_node) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %do.body36.if.end46_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call, i32 0, i32 1
  %65 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i105 = icmp eq ptr %66, null
  br i1 %tobool.not.i105, label %if.end46.if.end56_crit_edge, label %if.then.i

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then.i:                                        ; preds = %if.end46
  %67 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %68, ptr %66, align 4
  %tobool.not.i7.i = icmp eq ptr %68, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %68, i32 0, i32 1
  %70 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %66, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %71 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr null, ptr %pprev.i, align 4
  tail call fastcc void @batadv_gw_node_put(ptr noundef nonnull %call)
  %generation = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 3
  %72 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %generation, align 4
  %inc = add i32 %73, 1
  store i32 %inc, ptr %generation, align 4
  br label %if.end56

if.end56:                                         ; preds = %__hlist_del.exit.i, %if.end46.if.end56_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #8
  %call59 = tail call ptr @batadv_gw_get_selected_gw_node(ptr noundef %bat_priv)
  %cmp60 = icmp eq ptr %call, %call59
  br i1 %cmp60, label %if.then61, label %if.end56.if.end62_crit_edge

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %reselect.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 8
  %call.i.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reselect.i, i32 noundef 4) #8
  %74 = ptrtoint ptr %reselect.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 1, ptr %reselect.i, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end56.if.end62_crit_edge
  tail call fastcc void @batadv_gw_node_put(ptr noundef %call59)
  br label %out

out:                                              ; preds = %if.end62, %if.end28.out_crit_edge, %land.lhs.true.out_crit_edge, %batadv_gw_node_add.exit
  tail call fastcc void @batadv_gw_node_put(ptr noundef %call)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_node_delete(ptr noundef %bat_priv, ptr noundef %orig_node) local_unnamed_addr #0 align 64 {
entry:
  %gateway = alloca %struct.batadv_tvlv_gateway_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gateway) #8
  %0 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, ptr %gateway, i32 0, i32 1
  %1 = ptrtoint ptr %gateway to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %gateway, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  call void @batadv_gw_node_update(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef nonnull %gateway)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gateway) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_node_free(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gw = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35
  %list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #8
  %0 = ptrtoint ptr %gw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gw, align 4
  %tobool3.not29 = icmp eq ptr %1, null
  br i1 %tobool3.not29, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %generation = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %hlist_del_init_rcu.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %gw_node.030 = phi ptr [ %1, %land.rhs.lr.ph ], [ %3, %hlist_del_init_rcu.exit.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %gw_node.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gw_node.030, align 4
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %gw_node.030, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i, label %land.rhs.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

land.rhs.hlist_del_init_rcu.exit_crit_edge:       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %land.rhs
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %land.rhs.hlist_del_init_rcu.exit_crit_edge
  tail call fastcc void @batadv_gw_node_put(ptr noundef nonnull %gw_node.030)
  %9 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %generation, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %generation, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %hlist_del_init_rcu.exit.for.end_crit_edge, label %hlist_del_init_rcu.exit.land.rhs_crit_edge

hlist_del_init_rcu.exit.land.rhs_crit_edge:       ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

hlist_del_init_rcu.exit.for.end_crit_edge:        ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %hlist_del_init_rcu.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_gw_dump(ptr noundef %msg, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %call1 = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %8, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @dev_get_by_index(ptr noundef %6, i32 noundef %call1) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call2) #8
  br i1 %call4, label %if.end6, label %lor.lhs.false.do.body1.i_crit_edge

lor.lhs.false.do.body1.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.end6:                                          ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %call2, i32 2304
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end6.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end6.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end6.rcu_read_lock.exit.i_crit_edge
  %primary_if.i = getelementptr i8, ptr %call2, i32 2636
  %13 = ptrtoint ptr %primary_if.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %primary_if.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b18.i = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 110, ptr noundef nonnull @.str.1) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %14, null
  br i1 %tobool9.not.i, label %do.end7.i.out.i_crit_edge, label %if.end11.i

do.end7.i.out.i_crit_edge:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end11.i:                                       ; preds = %do.end7.i
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %14, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #8
  %15 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end11.i
  %17 = phi i32 [ %16, %if.end11.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %17, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #8
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %20, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #8, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !45

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #8
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %25 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  %spec.select.i = select i1 %tobool12.i.i.i.i.not.i, ptr null, ptr %14
  br label %out.i

out.i:                                            ; preds = %kref_get_unless_zero.exit.i, %do.end7.i.out.i_crit_edge
  %hard_iface.0.i = phi ptr [ null, %do.end7.i.out.i_crit_edge ], [ %spec.select.i, %kref_get_unless_zero.exit.i ]
  %call.i19.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i19.i, label %out.i.batadv_primary_if_get_selected.exit_crit_edge, label %land.lhs.true.i22.i

out.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_primary_if_get_selected.exit

land.lhs.true.i22.i:                              ; preds = %out.i
  %call1.i20.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call1.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge, label %land.lhs.true2.i24.i

land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_primary_if_get_selected.exit

land.lhs.true2.i24.i:                             ; preds = %land.lhs.true.i22.i
  %.b4.i23.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23.i, label %land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge, label %if.then.i25.i

land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_primary_if_get_selected.exit

if.then.i25.i:                                    ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #8
  br label %batadv_primary_if_get_selected.exit

batadv_primary_if_get_selected.exit:              ; preds = %if.then.i25.i, %land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge, %land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge, %out.i.batadv_primary_if_get_selected.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %27 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i26.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i26.i to ptr
  %preempt_count.i.i.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i27.i, align 4
  %sub.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i27.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tobool9.not = icmp eq ptr %hard_iface.0.i, null
  br i1 %tobool9.not, label %batadv_primary_if_get_selected.exit.do.body1.i_crit_edge, label %lor.lhs.false10

batadv_primary_if_get_selected.exit.do.body1.i_crit_edge: ; preds = %batadv_primary_if_get_selected.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

lor.lhs.false10:                                  ; preds = %batadv_primary_if_get_selected.exit
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp.not = icmp eq i8 %32, 3
  br i1 %cmp.not, label %if.end13, label %lor.lhs.false10.if.end.i_crit_edge

lor.lhs.false10.if.end.i_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end13:                                         ; preds = %lor.lhs.false10
  %algo_ops = getelementptr i8, ptr %call2, i32 2640
  %33 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %algo_ops, align 4
  %dump = getelementptr inbounds %struct.batadv_algo_ops, ptr %34, i32 0, i32 5, i32 4
  %35 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dump, align 4
  %tobool14.not = icmp eq ptr %36, null
  br i1 %tobool14.not, label %if.end13.if.end.i_crit_edge, label %if.end16

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void %36(ptr noundef %msg, ptr noundef %cb, ptr noundef %add.ptr.i) #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end16, %if.end13.if.end.i_crit_edge, %lor.lhs.false10.if.end.i_crit_edge
  %ret.0 = phi i32 [ %38, %if.end16 ], [ -2, %lor.lhs.false10.if.end.i_crit_edge ], [ -95, %if.end13.if.end.i_crit_edge ]
  %refcount.i38 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i38, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %refcount.i38, i32 1, i32 3, i32 1) #8
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i38, ptr %refcount.i38, i32 1, ptr elementtype(i32) %refcount.i38) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i40 = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i40)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i40, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i43, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i40)
  %.not.i.i.i.i.i41 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i.i41, label %if.end5.i.i.i.i.i.do.body1.i_crit_edge, label %if.then10.i.i.i.i.i42, !prof !45

if.end5.i.i.i.i.i.do.body1.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.then10.i.i.i.i.i42:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i38, i32 noundef 3) #8
  br label %do.body1.i

if.then.i.i43:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  call void @batadv_hardif_release(ptr noundef %refcount.i38) #8
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i.i43, %if.then10.i.i.i.i.i42, %if.end5.i.i.i.i.i.do.body1.i_crit_edge, %batadv_primary_if_get_selected.exit.do.body1.i_crit_edge, %lor.lhs.false.do.body1.i_crit_edge
  %ret.04852 = phi i32 [ -19, %lor.lhs.false.do.body1.i_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i42 ], [ %ret.0, %if.then.i.i43 ], [ -2, %batadv_primary_if_get_selected.exit.do.body1.i_crit_edge ]
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !57
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 118
  %41 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcpu_refcnt.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i = add i32 %52, -1
  store i32 %add13.i, ptr %50, align 4
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !58
  %and.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !55

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #8, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.04852, %do.end30.i ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_netlink_get_ifindex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_softif_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_gw_dhcp_recipient_get(ptr noundef %skb, ptr nocapture noundef %header_len, ptr nocapture noundef writeonly %chaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %header_len, align 4
  %add = add i32 %1, 14
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp3.i = icmp ult i32 %3, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !55

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

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
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %h_proto, align 1
  %12 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %header_len, align 4
  %add2 = add i32 %13, 14
  store i32 %add2, ptr %header_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %11)
  %cmp = icmp eq i16 %11, -32512
  br i1 %cmp, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %add5 = add i32 %13, 18
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i148 = sub i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %sub.i.i148)
  %cmp.not.i149 = icmp ugt i32 %add5, %sub.i.i148
  br i1 %cmp.not.i149, label %if.end.i151, label %if.then4.if.end8_crit_edge, !prof !55

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.i151:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add5)
  %cmp3.i150 = icmp ult i32 %15, %add5
  br i1 %cmp3.i150, label %if.end.i151.cleanup_crit_edge, label %pskb_may_pull.exit157, !prof !55

if.end.i151.cleanup_crit_edge:                    ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pskb_may_pull.exit157:                            ; preds = %if.end.i151
  %sub.i152 = sub i32 %add5, %sub.i.i148
  %call13.i153 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i152) #8
  %cmp14.i154.not = icmp eq ptr %call13.i153, null
  br i1 %cmp14.i154.not, label %pskb_may_pull.exit157.cleanup_crit_edge, label %pskb_may_pull.exit157.if.end8_crit_edge

pskb_may_pull.exit157.if.end8_crit_edge:          ; preds = %pskb_may_pull.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

pskb_may_pull.exit157.cleanup_crit_edge:          ; preds = %pskb_may_pull.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %pskb_may_pull.exit157.if.end8_crit_edge, %if.then4.if.end8_crit_edge
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %20 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i160 = zext i16 %21 to i32
  %add.ptr.i.i161 = getelementptr i8, ptr %19, i32 %conv.i.i160
  %h_vlan_encapsulated_proto = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i161, i32 0, i32 3
  %22 = ptrtoint ptr %h_vlan_encapsulated_proto to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %h_vlan_encapsulated_proto, align 2
  %24 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %header_len, align 4
  %add10 = add i32 %25, 4
  store i32 %add10, ptr %header_len, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end.if.end11_crit_edge
  %proto.0 = phi i16 [ %23, %if.end8 ], [ %11, %if.end.if.end11_crit_edge ]
  %26 = zext i16 %proto.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %proto.0, label %if.end11.cleanup_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb24
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  %27 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %header_len, align 4
  %add13 = add i32 %28, 20
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %31 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i164 = sub i32 %30, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %sub.i.i164)
  %cmp.not.i165 = icmp ugt i32 %add13, %sub.i.i164
  br i1 %cmp.not.i165, label %if.end.i167, label %sw.bb.if.end16_crit_edge, !prof !55

sw.bb.if.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.i167:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add13)
  %cmp3.i166 = icmp ult i32 %30, %add13
  br i1 %cmp3.i166, label %if.end.i167.cleanup_crit_edge, label %pskb_may_pull.exit173, !prof !55

if.end.i167.cleanup_crit_edge:                    ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pskb_may_pull.exit173:                            ; preds = %if.end.i167
  %sub.i168 = sub i32 %add13, %sub.i.i164
  %call13.i169 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i168) #8
  %cmp14.i170.not = icmp eq ptr %call13.i169, null
  br i1 %cmp14.i170.not, label %pskb_may_pull.exit173.cleanup_crit_edge, label %pskb_may_pull.exit173.if.end16_crit_edge

pskb_may_pull.exit173.if.end16_crit_edge:         ; preds = %pskb_may_pull.exit173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

pskb_may_pull.exit173.cleanup_crit_edge:          ; preds = %pskb_may_pull.exit173
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %pskb_may_pull.exit173.if.end16_crit_edge, %sw.bb.if.end16_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %header_len, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 %36
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %add.ptr, align 4
  %bf.clear = shl i8 %bf.load, 2
  %38 = and i8 %bf.clear, 60
  %mul = zext i8 %38 to i32
  %add18 = add i32 %36, %mul
  store i32 %add18, ptr %header_len, align 4
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 6
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %40)
  %cmp20.not = icmp eq i8 %40, 17
  br i1 %cmp20.not, label %if.end16.sw.epilog_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end11
  %41 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %header_len, align 4
  %add25 = add i32 %42, 40
  %43 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i.i, align 4
  %45 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i176 = sub i32 %44, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %add25, i32 %sub.i.i176)
  %cmp.not.i177 = icmp ugt i32 %add25, %sub.i.i176
  br i1 %cmp.not.i177, label %if.end.i179, label %sw.bb24.if.end28_crit_edge, !prof !55

sw.bb24.if.end28_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end.i179:                                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add25)
  %cmp3.i178 = icmp ult i32 %44, %add25
  br i1 %cmp3.i178, label %if.end.i179.cleanup_crit_edge, label %pskb_may_pull.exit185, !prof !55

if.end.i179.cleanup_crit_edge:                    ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pskb_may_pull.exit185:                            ; preds = %if.end.i179
  %sub.i180 = sub i32 %add25, %sub.i.i176
  %call13.i181 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i180) #8
  %cmp14.i182.not = icmp eq ptr %call13.i181, null
  br i1 %cmp14.i182.not, label %pskb_may_pull.exit185.cleanup_crit_edge, label %pskb_may_pull.exit185.if.end28_crit_edge

pskb_may_pull.exit185.if.end28_crit_edge:         ; preds = %pskb_may_pull.exit185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

pskb_may_pull.exit185.cleanup_crit_edge:          ; preds = %pskb_may_pull.exit185
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %pskb_may_pull.exit185.if.end28_crit_edge, %sw.bb24.if.end28_crit_edge
  %data29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %47 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data29, align 4
  %49 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %header_len, align 4
  %add.ptr30 = getelementptr i8, ptr %48, i32 %50
  %add31 = add i32 %50, 40
  store i32 %add31, ptr %header_len, align 4
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr30, i32 0, i32 3
  %51 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %52)
  %cmp33.not = icmp eq i8 %52, 17
  br i1 %cmp33.not, label %if.end28.sw.epilog_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end28.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge
  %53 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %header_len, align 4
  %add37 = add i32 %54, 8
  %55 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i.i, align 4
  %57 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i188 = sub i32 %56, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %sub.i.i188)
  %cmp.not.i189 = icmp ugt i32 %add37, %sub.i.i188
  br i1 %cmp.not.i189, label %if.end.i191, label %sw.epilog.if.end40_crit_edge, !prof !55

sw.epilog.if.end40_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end.i191:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add37)
  %cmp3.i190 = icmp ult i32 %56, %add37
  br i1 %cmp3.i190, label %if.end.i191.cleanup_crit_edge, label %pskb_may_pull.exit197, !prof !55

if.end.i191.cleanup_crit_edge:                    ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pskb_may_pull.exit197:                            ; preds = %if.end.i191
  %sub.i192 = sub i32 %add37, %sub.i.i188
  %call13.i193 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i192) #8
  %cmp14.i194.not = icmp eq ptr %call13.i193, null
  br i1 %cmp14.i194.not, label %pskb_may_pull.exit197.cleanup_crit_edge, label %pskb_may_pull.exit197.if.end40_crit_edge

pskb_may_pull.exit197.if.end40_crit_edge:         ; preds = %pskb_may_pull.exit197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

pskb_may_pull.exit197.cleanup_crit_edge:          ; preds = %pskb_may_pull.exit197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %pskb_may_pull.exit197.if.end40_crit_edge, %sw.epilog.if.end40_crit_edge
  %data41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %59 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data41, align 4
  %61 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %header_len, align 4
  %add.ptr42 = getelementptr i8, ptr %60, i32 %62
  %add43 = add i32 %62, 8
  store i32 %add43, ptr %header_len, align 4
  %63 = zext i16 %proto.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %proto.0, label %if.end40.cleanup_crit_edge [
    i16 2048, label %sw.bb45
    i16 -31011, label %sw.bb56
  ]

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb45:                                          ; preds = %if.end40
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr42, i32 0, i32 1
  %64 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %65)
  %cmp47 = icmp eq i16 %65, 67
  br i1 %cmp47, label %sw.bb45.cleanup_crit_edge, label %if.else

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %sw.bb45
  %66 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %67)
  %cmp51 = icmp eq i16 %67, 67
  br i1 %cmp51, label %if.else.if.then74_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.then74_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

sw.bb56:                                          ; preds = %if.end40
  %dest57 = getelementptr inbounds %struct.udphdr, ptr %add.ptr42, i32 0, i32 1
  %68 = ptrtoint ptr %dest57 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %dest57, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 547, i16 %69)
  %cmp59 = icmp eq i16 %69, 547
  br i1 %cmp59, label %sw.bb56.cleanup_crit_edge, label %sw.epilog70

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog70:                                      ; preds = %sw.bb56
  %70 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 547, i16 %71)
  %cmp65 = icmp eq i16 %71, 547
  br i1 %cmp65, label %sw.epilog70.if.then74_crit_edge, label %sw.epilog70.cleanup_crit_edge

sw.epilog70.cleanup_crit_edge:                    ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog70.if.then74_crit_edge:                  ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.then74:                                        ; preds = %sw.epilog70.if.then74_crit_edge, %if.else.if.then74_crit_edge
  %add71218 = add i32 %62, 36
  %add75 = add i32 %62, 42
  %call76 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %add75)
  br i1 %call76, label %if.end78, label %if.then74.cleanup_crit_edge

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %if.then74
  %72 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data41, align 4
  %74 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %header_len, align 4
  %add.ptr80 = getelementptr i8, ptr %73, i32 %75
  %add.ptr81 = getelementptr i8, ptr %add.ptr80, i32 1
  %76 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %add.ptr81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp83.not = icmp eq i8 %77, 1
  br i1 %cmp83.not, label %if.end86, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end86:                                         ; preds = %if.end78
  %add.ptr89 = getelementptr i8, ptr %add.ptr80, i32 2
  %78 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %79)
  %cmp91.not = icmp eq i8 %79, 6
  br i1 %cmp91.not, label %if.end94, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end94:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr96 = getelementptr i8, ptr %73, i32 %add71218
  %80 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr96, align 4
  %82 = ptrtoint ptr %chaddr to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %chaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr96, i32 4
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %chaddr, i32 4
  %85 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end86.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.then74.cleanup_crit_edge, %sw.epilog70.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %pskb_may_pull.exit197.cleanup_crit_edge, %if.end.i191.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %pskb_may_pull.exit185.cleanup_crit_edge, %if.end.i179.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %pskb_may_pull.exit173.cleanup_crit_edge, %if.end.i167.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %pskb_may_pull.exit157.cleanup_crit_edge, %if.end.i151.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pskb_may_pull.exit.cleanup_crit_edge ], [ 0, %pskb_may_pull.exit157.cleanup_crit_edge ], [ 0, %pskb_may_pull.exit173.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %pskb_may_pull.exit185.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %pskb_may_pull.exit197.cleanup_crit_edge ], [ 0, %if.then74.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ], [ 2, %if.end94 ], [ 0, %sw.epilog70.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i151.cleanup_crit_edge ], [ 0, %if.end.i167.cleanup_crit_edge ], [ 0, %if.end.i179.cleanup_crit_edge ], [ 0, %if.end.i191.cleanup_crit_edge ], [ 1, %sw.bb56.cleanup_crit_edge ], [ 1, %sw.bb45.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !55

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !55

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #8
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_gw_out_of_range(ptr noundef %bat_priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.batadv_orig_node_put.exit_crit_edge

entry.batadv_orig_node_put.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_orig_node_put.exit

if.end:                                           ; preds = %entry
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 1
  %call5 = tail call ptr @batadv_transtable_search(ptr noundef %bat_priv, ptr noundef %h_source, ptr noundef %1, i16 noundef zeroext %call) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.batadv_orig_node_put.exit_crit_edge, label %if.end7

if.end.batadv_orig_node_put.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_orig_node_put.exit

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @batadv_gw_node_get(ptr noundef %bat_priv, ptr noundef nonnull %call5)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.if.end.i75_crit_edge, label %if.end11

if.end7.if.end.i75_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

if.end11:                                         ; preds = %if.end7
  %mode = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #8
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %mode, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %6, label %if.end11.if.end.i75_crit_edge [
    i32 2, label %if.end11.sw.epilog_crit_edge
    i32 1, label %sw.bb13
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end11.if.end.i75_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

sw.bb13:                                          ; preds = %if.end11
  %call14 = tail call ptr @batadv_gw_get_selected_gw_node(ptr noundef %bat_priv)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %sw.bb13.if.end.i75_crit_edge, label %if.end17

sw.bb13.if.end.i75_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

if.end17:                                         ; preds = %sw.bb13
  %orig_node = getelementptr inbounds %struct.batadv_gw_node, ptr %call14, i32 0, i32 1
  %8 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %orig_node, align 4
  %cmp = icmp eq ptr %9, %call5
  br i1 %cmp, label %if.end17.if.end.i75_crit_edge, label %if.end19

if.end17.if.end.i75_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

if.end19:                                         ; preds = %if.end17
  %call21 = tail call ptr @batadv_find_router(ptr noundef %bat_priv, ptr noundef %9, ptr noundef null) #8
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.if.end.i75_crit_edge, label %if.end24

if.end19.if.end.i75_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

if.end24:                                         ; preds = %if.end19
  %call25 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call21, ptr noundef null) #8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.if.end.i75_crit_edge, label %if.end28

if.end24.if.end.i75_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %tq_avg = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call25, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %tq_avg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tq_avg, align 2
  tail call fastcc void @batadv_neigh_ifinfo_put(ptr noundef nonnull %call25)
  %phi.cast = zext i8 %11 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end28, %if.end11.sw.epilog_crit_edge
  %neigh_curr.0 = phi ptr [ %call21, %if.end28 ], [ null, %if.end11.sw.epilog_crit_edge ]
  %curr_gw.0 = phi ptr [ %call14, %if.end28 ], [ null, %if.end11.sw.epilog_crit_edge ]
  %curr_tq_avg.0 = phi i32 [ %phi.cast, %if.end28 ], [ 255, %if.end11.sw.epilog_crit_edge ]
  %call30 = tail call ptr @batadv_find_router(ptr noundef %bat_priv, ptr noundef nonnull %call5, ptr noundef null) #8
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %sw.epilog.if.end.i75_crit_edge, label %if.end33

sw.epilog.if.end.i75_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

if.end33:                                         ; preds = %sw.epilog
  %call34 = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call30, ptr noundef null) #8
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.if.end.i75_crit_edge, label %if.end.i

if.end33.if.end.i75_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

if.end.i:                                         ; preds = %if.end33
  %tq_avg39 = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call34, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tq_avg39 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tq_avg39, align 2
  %conv40 = zext i8 %13 to i32
  %sub = sub nsw i32 %curr_tq_avg.0, %conv40
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %sub)
  %cmp41 = icmp sgt i32 %sub, 50
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call34, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end.i75_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.if.end.i75_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %if.end.i75

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i) #8
  br label %if.end.i75

if.end.i75:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i75_crit_edge, %if.end33.if.end.i75_crit_edge, %sw.epilog.if.end.i75_crit_edge, %if.end24.if.end.i75_crit_edge, %if.end19.if.end.i75_crit_edge, %if.end17.if.end.i75_crit_edge, %sw.bb13.if.end.i75_crit_edge, %if.end11.if.end.i75_crit_edge, %if.end7.if.end.i75_crit_edge
  %neigh_curr.1.ph = phi ptr [ %neigh_curr.0, %if.then.i.i ], [ %neigh_curr.0, %if.then10.i.i.i.i.i ], [ %neigh_curr.0, %if.end5.i.i.i.i.i.if.end.i75_crit_edge ], [ null, %if.end7.if.end.i75_crit_edge ], [ null, %sw.bb13.if.end.i75_crit_edge ], [ null, %if.end19.if.end.i75_crit_edge ], [ %call21, %if.end24.if.end.i75_crit_edge ], [ %neigh_curr.0, %sw.epilog.if.end.i75_crit_edge ], [ %neigh_curr.0, %if.end33.if.end.i75_crit_edge ], [ null, %if.end17.if.end.i75_crit_edge ], [ null, %if.end11.if.end.i75_crit_edge ]
  %neigh_old.0.ph = phi ptr [ %call30, %if.then.i.i ], [ %call30, %if.then10.i.i.i.i.i ], [ %call30, %if.end5.i.i.i.i.i.if.end.i75_crit_edge ], [ null, %if.end7.if.end.i75_crit_edge ], [ null, %sw.bb13.if.end.i75_crit_edge ], [ null, %if.end19.if.end.i75_crit_edge ], [ null, %if.end24.if.end.i75_crit_edge ], [ null, %sw.epilog.if.end.i75_crit_edge ], [ %call30, %if.end33.if.end.i75_crit_edge ], [ null, %if.end17.if.end.i75_crit_edge ], [ null, %if.end11.if.end.i75_crit_edge ]
  %curr_gw.1.ph = phi ptr [ %curr_gw.0, %if.then.i.i ], [ %curr_gw.0, %if.then10.i.i.i.i.i ], [ %curr_gw.0, %if.end5.i.i.i.i.i.if.end.i75_crit_edge ], [ null, %if.end7.if.end.i75_crit_edge ], [ null, %sw.bb13.if.end.i75_crit_edge ], [ %call14, %if.end19.if.end.i75_crit_edge ], [ %call14, %if.end24.if.end.i75_crit_edge ], [ %curr_gw.0, %sw.epilog.if.end.i75_crit_edge ], [ %curr_gw.0, %if.end33.if.end.i75_crit_edge ], [ %call14, %if.end17.if.end.i75_crit_edge ], [ null, %if.end11.if.end.i75_crit_edge ]
  %out_of_range.1.off0.ph = phi i1 [ %cmp41, %if.then.i.i ], [ %cmp41, %if.then10.i.i.i.i.i ], [ %cmp41, %if.end5.i.i.i.i.i.if.end.i75_crit_edge ], [ false, %if.end7.if.end.i75_crit_edge ], [ false, %sw.bb13.if.end.i75_crit_edge ], [ false, %if.end19.if.end.i75_crit_edge ], [ false, %if.end24.if.end.i75_crit_edge ], [ false, %sw.epilog.if.end.i75_crit_edge ], [ false, %if.end33.if.end.i75_crit_edge ], [ false, %if.end17.if.end.i75_crit_edge ], [ false, %if.end11.if.end.i75_crit_edge ]
  %refcount.i71 = getelementptr inbounds %struct.batadv_orig_node, ptr %call5, i32 0, i32 27
  %call.i.i.i.i.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i71, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i71, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i71, ptr %refcount.i71, i32 1, ptr elementtype(i32) %refcount.i71) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i73 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i73)
  %cmp.i.i.i.i.i74 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i73, 1
  br i1 %cmp.i.i.i.i.i74, label %if.then.i.i79, label %if.end5.i.i.i.i.i77

if.end5.i.i.i.i.i77:                              ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i73)
  %.not.i.i.i.i.i76 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i73, 0
  br i1 %.not.i.i.i.i.i76, label %if.end5.i.i.i.i.i77.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i78, !prof !45

if.end5.i.i.i.i.i77.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i78:                            ; preds = %if.end5.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i71, i32 noundef 3) #8
  br label %batadv_orig_node_put.exit

if.then.i.i79:                                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i71) #8
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i79, %if.then10.i.i.i.i.i78, %if.end5.i.i.i.i.i77.batadv_orig_node_put.exit_crit_edge, %if.end.batadv_orig_node_put.exit_crit_edge, %entry.batadv_orig_node_put.exit_crit_edge
  %out_of_range.1.off0118 = phi i1 [ %out_of_range.1.off0.ph, %if.end5.i.i.i.i.i77.batadv_orig_node_put.exit_crit_edge ], [ %out_of_range.1.off0.ph, %if.then10.i.i.i.i.i78 ], [ %out_of_range.1.off0.ph, %if.then.i.i79 ], [ false, %entry.batadv_orig_node_put.exit_crit_edge ], [ false, %if.end.batadv_orig_node_put.exit_crit_edge ]
  %curr_gw.1116 = phi ptr [ %curr_gw.1.ph, %if.end5.i.i.i.i.i77.batadv_orig_node_put.exit_crit_edge ], [ %curr_gw.1.ph, %if.then10.i.i.i.i.i78 ], [ %curr_gw.1.ph, %if.then.i.i79 ], [ null, %entry.batadv_orig_node_put.exit_crit_edge ], [ null, %if.end.batadv_orig_node_put.exit_crit_edge ]
  %gw_node.0114 = phi ptr [ %call8, %if.end5.i.i.i.i.i77.batadv_orig_node_put.exit_crit_edge ], [ %call8, %if.then10.i.i.i.i.i78 ], [ %call8, %if.then.i.i79 ], [ null, %entry.batadv_orig_node_put.exit_crit_edge ], [ null, %if.end.batadv_orig_node_put.exit_crit_edge ]
  %neigh_old.0111 = phi ptr [ %neigh_old.0.ph, %if.end5.i.i.i.i.i77.batadv_orig_node_put.exit_crit_edge ], [ %neigh_old.0.ph, %if.then10.i.i.i.i.i78 ], [ %neigh_old.0.ph, %if.then.i.i79 ], [ null, %entry.batadv_orig_node_put.exit_crit_edge ], [ null, %if.end.batadv_orig_node_put.exit_crit_edge ]
  %neigh_curr.1109 = phi ptr [ %neigh_curr.1.ph, %if.end5.i.i.i.i.i77.batadv_orig_node_put.exit_crit_edge ], [ %neigh_curr.1.ph, %if.then10.i.i.i.i.i78 ], [ %neigh_curr.1.ph, %if.then.i.i79 ], [ null, %entry.batadv_orig_node_put.exit_crit_edge ], [ null, %if.end.batadv_orig_node_put.exit_crit_edge ]
  tail call fastcc void @batadv_gw_node_put(ptr noundef %curr_gw.1116)
  tail call fastcc void @batadv_gw_node_put(ptr noundef %gw_node.0114)
  %tobool.not.i80 = icmp eq ptr %neigh_old.0111, null
  br i1 %tobool.not.i80, label %batadv_orig_node_put.exit.batadv_neigh_node_put.exit_crit_edge, label %if.end.i85

batadv_orig_node_put.exit.batadv_neigh_node_put.exit_crit_edge: ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_neigh_node_put.exit

if.end.i85:                                       ; preds = %batadv_orig_node_put.exit
  %refcount.i81 = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_old.0111, i32 0, i32 8
  %call.i.i.i.i.i.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i81, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i81, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i81, ptr %refcount.i81, i32 1, ptr elementtype(i32) %refcount.i81) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i83 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i83)
  %cmp.i.i.i.i.i84 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i83, 1
  br i1 %cmp.i.i.i.i.i84, label %if.then.i.i89, label %if.end5.i.i.i.i.i87

if.end5.i.i.i.i.i87:                              ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i83)
  %.not.i.i.i.i.i86 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i83, 0
  br i1 %.not.i.i.i.i.i86, label %if.end5.i.i.i.i.i87.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i88, !prof !45

if.end5.i.i.i.i.i87.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i88:                            ; preds = %if.end5.i.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i81, i32 noundef 3) #8
  br label %batadv_neigh_node_put.exit

if.then.i.i89:                                    ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i81) #8
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i89, %if.then10.i.i.i.i.i88, %if.end5.i.i.i.i.i87.batadv_neigh_node_put.exit_crit_edge, %batadv_orig_node_put.exit.batadv_neigh_node_put.exit_crit_edge
  %tobool.not.i90 = icmp eq ptr %neigh_curr.1109, null
  br i1 %tobool.not.i90, label %batadv_neigh_node_put.exit.batadv_neigh_node_put.exit100_crit_edge, label %if.end.i95

batadv_neigh_node_put.exit.batadv_neigh_node_put.exit100_crit_edge: ; preds = %batadv_neigh_node_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_neigh_node_put.exit100

if.end.i95:                                       ; preds = %batadv_neigh_node_put.exit
  %refcount.i91 = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_curr.1109, i32 0, i32 8
  %call.i.i.i.i.i.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i91, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i91, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i91, ptr %refcount.i91, i32 1, ptr elementtype(i32) %refcount.i91) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i93 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i93)
  %cmp.i.i.i.i.i94 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i93, 1
  br i1 %cmp.i.i.i.i.i94, label %if.then.i.i99, label %if.end5.i.i.i.i.i97

if.end5.i.i.i.i.i97:                              ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i93)
  %.not.i.i.i.i.i96 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i93, 0
  br i1 %.not.i.i.i.i.i96, label %if.end5.i.i.i.i.i97.batadv_neigh_node_put.exit100_crit_edge, label %if.then10.i.i.i.i.i98, !prof !45

if.end5.i.i.i.i.i97.batadv_neigh_node_put.exit100_crit_edge: ; preds = %if.end5.i.i.i.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_neigh_node_put.exit100

if.then10.i.i.i.i.i98:                            ; preds = %if.end5.i.i.i.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i91, i32 noundef 3) #8
  br label %batadv_neigh_node_put.exit100

if.then.i.i99:                                    ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i91) #8
  br label %batadv_neigh_node_put.exit100

batadv_neigh_node_put.exit100:                    ; preds = %if.then.i.i99, %if.then10.i.i.i.i.i98, %if.end5.i.i.i.i.i97.batadv_neigh_node_put.exit100_crit_edge, %batadv_neigh_node_put.exit.batadv_neigh_node_put.exit100_crit_edge
  ret i1 %out_of_range.1.off0118
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @batadv_get_vid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_transtable_search(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_find_router(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_ifinfo_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !25, !26, !28, !30, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/batman-adv/gateway_client.c", i32 84, i32 12}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/batman-adv/gateway_client.c", i32 226, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/batman-adv/gateway_client.c", i32 244, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/batman-adv/gateway_client.c", i32 249, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/batman-adv/gateway_client.c", i32 260, i32 3}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/batman-adv/gateway_client.c", i32 375, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/batman-adv/gateway_client.c", i32 417, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/batman-adv/gateway_client.c", i32 433, i32 3}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/batman-adv/gateway_client.c", i32 137, i32 17}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/batman-adv/gateway_client.c", i32 350, i32 2}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2148241447}
!44 = !{i64 2148155911, i64 2148155943, i64 2148155972, i64 2148156006, i64 2148156037, i64 2148156060}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2150572458}
!47 = !{i64 2149697911}
!48 = !{i64 526750, i64 526774, i64 526795, i64 526812, i64 526829}
!49 = !{i64 2149698177}
!50 = !{i64 2157329763}
!51 = !{i64 2148151335}
!52 = !{i64 527256, i64 527281, i64 527303, i64 527319, i64 527331, i64 527351, i64 527375, i64 527391, i64 527403}
!53 = !{i64 2148151523}
!54 = !{i64 2148153446, i64 2148153478, i64 2148153507, i64 2148153541, i64 2148153572, i64 2148153595}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2149799522}
!57 = !{i64 605243, i64 605304}
!58 = !{i64 607975}
!59 = !{i64 608260}
