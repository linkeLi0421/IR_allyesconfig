; ModuleID = '/llk/IR_all_yes/net/batman-adv/send.c_pt.bc'
source_filename = "../net/batman-adv/send.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.batadv_hardif_neigh_node = type { %struct.hlist_node, [6 x i8], [6 x i8], ptr, i32, %struct.batadv_hardif_neigh_node_bat_v, %struct.kref, %struct.callback_head }
%struct.batadv_hardif_neigh_node_bat_v = type { %struct.ewma_throughput, i32, i32, i32, %struct.work_struct }
%struct.ewma_throughput = type { i32 }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
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
%struct.batadv_unicast_packet = type { i8, i8, i8, i8, [6 x i8] }
%struct.batadv_unicast_4addr_packet = type { %struct.batadv_unicast_packet, [6 x i8], i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_forw_packet = type { %struct.hlist_node, %struct.hlist_node, i32, i8, ptr, i16, i32, i8, %struct.delayed_work, ptr, ptr, ptr }
%struct.batadv_bcast_packet = type <{ i8, i8, i8, i8, i32, [6 x i8] }>

@batadv_send_skb_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014batman_adv: Interface %s is not up - can't send packet via that interface!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"batadv_send_skb_packet\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/batman-adv/send.c\00", [42 x i8] zeroinitializer }, align 32
@batadv_send_skb_packet._entry_ptr = internal global ptr @batadv_send_skb_packet._entry, section ".printk_index", align 4
@batadv_broadcast_addr = external dso_local global [0 x i8], align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bcast\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"batman\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s queue is full\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(): %s\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.batadv_purge_outstanding_packets = private unnamed_addr constant [33 x i8] c"batadv_purge_outstanding_packets\00", align 1
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_forw_packet_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Requeuing after batadv_forw_packet_steal() not allowed!\0A\00", [39 x i8] zeroinitializer }, align 32
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__batadv_forw_bcast_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@batadv_hardif_list = external dso_local global %struct.list_head, align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no neighbor\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"single neighbor is source\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"single neighbor is originator\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"BCAST packet from orig %pM on %s suppressed: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@batadv_forw_bcast_packet_to_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&forw_packet->delayed_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@batadv_forw_bcast_packet_to_list.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&forw_packet->delayed_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 66]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 80, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 505, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 508, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 511, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 513, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1114, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1118, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 110, i32 15 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 695, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 723, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 680, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 932, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 881, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 884, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 887, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 893, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [25 x i8] c"../net/batman-adv/send.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 774, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @batadv_send_skb_packet._entry, ptr @batadv_send_skb_packet._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @batadv_forw_bcast_packet_to_list.__key, ptr @.str.20, ptr @batadv_forw_bcast_packet_to_list.__key.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_send_skb_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_forw_bcast_packet_to_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_forw_bcast_packet_to_list.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_send_skb_packet(ptr noundef %skb, ptr nocapture noundef readonly %hard_iface, ptr nocapture noundef readonly %dst_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 1
  %2 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.not = icmp eq i8 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.send_skb_err_crit_edge

entry.send_skb_err_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %send_skb_err

if.end:                                           ; preds = %entry
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.send_skb_err_crit_edge, label %if.end6, !prof !59

if.end.send_skb_err_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %send_skb_err

if.end6:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %5) #12
  br label %send_skb_err

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @batadv_skb_head_push(ptr noundef %skb, i32 noundef 14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.send_skb_err_crit_edge, label %if.end17

if.end12.send_skb_err_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %send_skb_err

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %h_source, align 4
  %add.ptr.i45 = getelementptr i8, ptr %16, i32 4
  %20 = ptrtoint ptr %add.ptr.i45 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i45, align 2
  %add.ptr1.i = getelementptr i8, ptr %h_source, i32 4
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i, align 2
  %23 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dst_addr, align 4
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr.i.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %dst_addr, i32 4
  %26 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i46, align 2
  %add.ptr1.i47 = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %28 = ptrtoint ptr %add.ptr1.i47 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i47, align 2
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 17157, ptr %h_proto, align 1
  %30 = load ptr, ptr %data.i, align 4
  %31 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i49 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %add.i = add i16 %conv.i.i49, 14
  %32 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %add.i, ptr %network_header.i.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 17157, ptr %protocol, align 8
  %34 = load ptr, ptr %net_dev, align 4
  %35 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %35, align 8
  tail call void @batadv_nc_skb_store_for_decoding(ptr noundef %add.ptr.i, ptr noundef %skb) #9
  %call23 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 2
  %spec.select = select i1 %cmp24, i32 0, i32 %call23
  br label %cleanup

send_skb_err:                                     ; preds = %if.end12.send_skb_err_crit_edge, %do.end, %if.end.send_skb_err_crit_edge, %entry.send_skb_err_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %send_skb_err, %if.end17
  %retval.0 = phi i32 [ 1, %send_skb_err ], [ %spec.select, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_skb_head_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_nc_skb_store_for_decoding(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_send_broadcast_skb(ptr noundef %skb, ptr nocapture noundef readonly %hard_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_send_skb_packet(ptr noundef %skb, ptr noundef %hard_iface, ptr noundef nonnull @batadv_broadcast_addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_send_unicast_skb(ptr noundef %skb, ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %if_incoming = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh, i32 0, i32 5
  %0 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_incoming, align 4
  %addr = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh, i32 0, i32 2
  %call = tail call i32 @batadv_send_skb_packet(ptr noundef %skb, ptr noundef %1, ptr noundef %addr)
  %2 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %if_incoming, align 4
  %call4 = tail call ptr @batadv_hardif_neigh_get(ptr noundef %3, ptr noundef %addr) #9
  %tobool.not = icmp eq ptr %call4, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %last_unicast_tx = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call4, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %last_unicast_tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %last_unicast_tx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %tobool.not, label %if.end.batadv_hardif_neigh_put.exit_crit_edge, label %if.end.i

if.end.batadv_hardif_neigh_put.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_neigh_put.exit

if.end.i:                                         ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call4, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_neigh_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.batadv_hardif_neigh_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_neigh_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_hardif_neigh_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @batadv_hardif_neigh_release(ptr noundef %refcount.i) #9, !callees !64
  br label %batadv_hardif_neigh_put.exit

batadv_hardif_neigh_put.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_neigh_put.exit_crit_edge, %if.end.batadv_hardif_neigh_put.exit_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hardif_neigh_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_send_skb_to_orig(ptr noundef %skb, ptr noundef %orig_node, ptr noundef %recv_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_priv1 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 25
  %0 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_priv1, align 4
  %call = tail call ptr @batadv_find_router(ptr noundef %1, ptr noundef %orig_node, ptr noundef %recv_if) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.free_skb_crit_edge, label %if.end

entry.free_skb_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_skb

if.end:                                           ; preds = %entry
  %fragmentation = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fragmentation, i32 noundef 4) #9
  %2 = ptrtoint ptr %fragmentation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fragmentation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %if_incoming = getelementptr inbounds %struct.batadv_neigh_node, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_incoming, align 4
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp = icmp ugt i32 %5, %11
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @batadv_frag_send_packet(ptr noundef %skb, ptr noundef %orig_node, ptr noundef nonnull %call) #9
  br label %if.end.i

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %recv_if, null
  br i1 %tobool7.not, label %if.end6.if.else_crit_edge, label %land.lhs.true8

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true8:                                   ; preds = %if.end6
  %call9 = tail call zeroext i1 @batadv_nc_skb_forward(ptr noundef %skb, ptr noundef nonnull %call) #9
  br i1 %call9, label %land.lhs.true8.if.end.i_crit_edge, label %land.lhs.true8.if.else_crit_edge

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true8.if.end.i_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %if.end6.if.else_crit_edge
  %call11 = tail call i32 @batadv_send_unicast_skb(ptr noundef %skb, ptr noundef nonnull %call)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else, %land.lhs.true8.if.end.i_crit_edge, %if.then4
  %ret.1 = phi i32 [ %call5, %if.then4 ], [ %call11, %if.else ], [ -115, %land.lhs.true8.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.free_skb_crit_edge, label %if.then10.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.free_skb_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_skb

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %free_skb

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i) #9, !callees !64
  br label %free_skb

free_skb:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.free_skb_crit_edge, %entry.free_skb_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %entry.free_skb_crit_edge ], [ null, %if.end5.i.i.i.i.i.free_skb_crit_edge ], [ null, %if.then10.i.i.i.i.i ], [ null, %if.then.i.i ]
  %ret.2 = phi i32 [ -22, %entry.free_skb_crit_edge ], [ %ret.1, %if.end5.i.i.i.i.i.free_skb_crit_edge ], [ %ret.1, %if.then10.i.i.i.i.i ], [ %ret.1, %if.then.i.i ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.1, i32 noundef 0) #9
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_find_router(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_frag_send_packet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_nc_skb_forward(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_send_skb_prepare_unicast_4addr(ptr noundef %bat_priv, ptr noundef %skb, ptr noundef %orig, i32 noundef %packet_subtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.batadv_hardif_put.exit_crit_edge, label %if.end

entry.batadv_hardif_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit

if.end:                                           ; preds = %entry
  %last_ttvn.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %last_ttvn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %last_ttvn.i, align 4
  %call1.i = tail call i32 @batadv_skb_head_push(ptr noundef %skb, i32 noundef 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.if.end.i11_crit_edge, label %if.end3

if.end.if.end.i11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i11

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %1 to i8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %version.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %version.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %3, align 1
  %ttl.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 50, ptr %ttl.i, align 1
  %dest.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %orig, align 4
  %9 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dest.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %orig, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.batadv_unicast_packet, ptr %3, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i.i, align 2
  %ttvn4.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %ttvn4.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %ttvn4.i, align 1
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 66, ptr %14, align 1
  %src = getelementptr inbounds %struct.batadv_unicast_4addr_packet, ptr %14, i32 0, i32 1
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %src, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.batadv_unicast_4addr_packet, ptr %14, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr1.i, align 2
  %conv = trunc i32 %packet_subtype to i8
  %subtype = getelementptr inbounds %struct.batadv_unicast_4addr_packet, ptr %14, i32 0, i32 2
  %26 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %subtype, align 1
  %reserved = getelementptr inbounds %struct.batadv_unicast_4addr_packet, ptr %14, i32 0, i32 3
  %27 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %reserved, align 1
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.end3, %if.end.if.end.i11_crit_edge
  %28 = xor i1 %cmp.i, true
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #9, !callees !64
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %entry.batadv_hardif_put.exit_crit_edge
  %ret.0.off014 = phi i1 [ %28, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge ], [ %28, %if.then10.i.i.i.i.i ], [ %28, %if.then.i.i ], [ false, %entry.batadv_hardif_put.exit_crit_edge ]
  ret i1 %ret.0.off014
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 110, ptr noundef nonnull @.str.10) #9
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
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #9, !srcloc !66
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !62

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
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !62

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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  %18 = call i32 @llvm.read_register.i32(metadata !49) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_send_skb_unicast(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %packet_type, i32 noundef %packet_subtype, ptr noundef %orig_node, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %orig_node, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %0 = zext i32 %packet_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %packet_type, label %if.end.out_crit_edge [
    i32 64, label %sw.bb
    i32 66, label %sw.bb3
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb:                                            ; preds = %if.end
  %last_ttvn.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn.i.i, i32 noundef 4) #9
  %1 = ptrtoint ptr %last_ttvn.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %last_ttvn.i.i, align 4
  %call1.i.i = tail call i32 @batadv_skb_head_push(ptr noundef %skb, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.out_crit_edge, label %batadv_send_skb_prepare_unicast.exit.thread

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

batadv_send_skb_prepare_unicast.exit.thread:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %2 to i8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %version.i.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %4, align 1
  %ttl.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 50, ptr %ttl.i.i, align 1
  %dest.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_node, align 4
  %10 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dest.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %orig_node, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.batadv_unicast_packet, ptr %4, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i.i.i, align 2
  %ttvn4.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %4, i32 0, i32 3
  %14 = ptrtoint ptr %ttvn4.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i.i, ptr %ttvn4.i.i, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %call4 = tail call zeroext i1 @batadv_send_skb_prepare_unicast_4addr(ptr noundef %bat_priv, ptr noundef %skb, ptr noundef nonnull %orig_node, i32 noundef %packet_subtype)
  br i1 %call4, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.out_crit_edge

sw.bb3.out_crit_edge:                             ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %batadv_send_skb_prepare_unicast.exit.thread
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %17 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i24 = zext i16 %18 to i32
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %conv.i.i24
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %call8 = tail call zeroext i1 @batadv_tt_global_client_is_roaming(ptr noundef %bat_priv, ptr noundef %add.ptr.i.i, i16 noundef zeroext %vid) #9
  br i1 %call8, label %if.then9, label %sw.epilog.if.end12_crit_edge

sw.epilog.if.end12_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %ttvn = getelementptr inbounds %struct.batadv_unicast_packet, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ttvn to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ttvn, align 1
  %sub = add i8 %22, -1
  store i8 %sub, ptr %ttvn, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %sw.epilog.if.end12_crit_edge
  %call13 = tail call i32 @batadv_send_skb_to_orig(ptr noundef %skb, ptr noundef nonnull %orig_node, ptr noundef null)
  br label %out

out:                                              ; preds = %if.end12, %sw.bb3.out_crit_edge, %sw.bb.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %if.end.out_crit_edge ], [ null, %if.end12 ], [ %skb, %sw.bb3.out_crit_edge ], [ %skb, %entry.out_crit_edge ], [ %skb, %sw.bb.out_crit_edge ]
  %ret.0 = phi i32 [ 1, %if.end.out_crit_edge ], [ %call13, %if.end12 ], [ 1, %sw.bb3.out_crit_edge ], [ 1, %entry.out_crit_edge ], [ 1, %sw.bb.out_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_tt_global_client_is_roaming(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_send_skb_via_tt_generic(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %packet_type, i32 noundef %packet_subtype, ptr noundef %dst_hint, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 1
  %tobool.not = icmp eq ptr %dst_hint, null
  %spec.select = select i1 %tobool.not, ptr %h_source, ptr null
  %spec.select9 = select i1 %tobool.not, ptr %1, ptr %dst_hint
  %call = tail call ptr @batadv_transtable_search(ptr noundef %bat_priv, ptr noundef %spec.select, ptr noundef %spec.select9, i16 noundef zeroext %vid) #9
  %call2 = tail call i32 @batadv_send_skb_unicast(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %packet_type, i32 noundef %packet_subtype, ptr noundef %call, i16 noundef zeroext %vid)
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.batadv_orig_node_put.exit_crit_edge, label %if.end.i

entry.batadv_orig_node_put.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_orig_node_put.exit

if.end.i:                                         ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_orig_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #9, !callees !64
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, %entry.batadv_orig_node_put.exit_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_transtable_search(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_send_skb_via_gw(ptr noundef %bat_priv, ptr noundef %skb, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_gw_get_selected_orig(ptr noundef %bat_priv) #9
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %batadv_send_skb_unicast.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call4.i = tail call zeroext i1 @batadv_send_skb_prepare_unicast_4addr(ptr noundef %bat_priv, ptr noundef %skb, ptr noundef nonnull %call, i32 noundef 1) #9
  br i1 %call4.i, label %sw.epilog.i, label %if.end.i.if.end.i5_crit_edge

if.end.i.if.end.i5_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i5

sw.epilog.i:                                      ; preds = %if.end.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i24.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i24.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %call8.i = tail call zeroext i1 @batadv_tt_global_client_is_roaming(ptr noundef %bat_priv, ptr noundef %add.ptr.i.i.i, i16 noundef zeroext %vid) #9
  br i1 %call8.i, label %if.then9.i, label %sw.epilog.i.if.end12.i_crit_edge

sw.epilog.i.if.end12.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then9.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %ttvn.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ttvn.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ttvn.i, align 1
  %sub.i = add i8 %7, -1
  store i8 %sub.i, ptr %ttvn.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %sw.epilog.i.if.end12.i_crit_edge
  %call13.i = tail call i32 @batadv_send_skb_to_orig(ptr noundef %skb, ptr noundef nonnull %call, ptr noundef null) #9
  br label %if.end.i5

batadv_send_skb_unicast.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %batadv_orig_node_put.exit

if.end.i5:                                        ; preds = %if.end12.i, %if.end.i.if.end.i5_crit_edge
  %skb.addr.0.i.ph = phi ptr [ %skb, %if.end.i.if.end.i5_crit_edge ], [ null, %if.end12.i ]
  %ret.0.i.ph = phi i32 [ 1, %if.end.i.if.end.i5_crit_edge ], [ %call13.i, %if.end12.i ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i.ph, i32 noundef 0) #9
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_orig_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #9, !callees !64
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, %batadv_send_skb_unicast.exit
  %ret.0.i9 = phi i32 [ 1, %batadv_send_skb_unicast.exit ], [ %ret.0.i.ph, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge ], [ %ret.0.i.ph, %if.then10.i.i.i.i.i ], [ %ret.0.i.ph, %if.then.i.i ]
  ret i32 %ret.0.i9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_gw_get_selected_orig(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_forw_packet_free(ptr noundef %forw_packet, i1 noundef zeroext %dropped) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  br i1 %dropped, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %if_incoming = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 9
  %2 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %if_incoming, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.batadv_hardif_put.exit_crit_edge, label %if.end.i

if.end.batadv_hardif_put.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %3, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #9, !callees !64
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %if.end.batadv_hardif_put.exit_crit_edge
  %if_outgoing = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 10
  %5 = ptrtoint ptr %if_outgoing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %if_outgoing, align 4
  %tobool.not.i12 = icmp eq ptr %6, null
  br i1 %tobool.not.i12, label %batadv_hardif_put.exit.batadv_hardif_put.exit22_crit_edge, label %if.end.i17

batadv_hardif_put.exit.batadv_hardif_put.exit22_crit_edge: ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit22

if.end.i17:                                       ; preds = %batadv_hardif_put.exit
  %refcount.i13 = getelementptr inbounds %struct.batadv_hard_iface, ptr %6, i32 0, i32 5
  %call.i.i.i.i.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i13, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcount.i13, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i13, ptr %refcount.i13, i32 1, ptr elementtype(i32) %refcount.i13) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i15 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i15)
  %cmp.i.i.i.i.i16 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i15, 1
  br i1 %cmp.i.i.i.i.i16, label %if.then.i.i21, label %if.end5.i.i.i.i.i19

if.end5.i.i.i.i.i19:                              ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i15)
  %.not.i.i.i.i.i18 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i15, 0
  br i1 %.not.i.i.i.i.i18, label %if.end5.i.i.i.i.i19.batadv_hardif_put.exit22_crit_edge, label %if.then10.i.i.i.i.i20, !prof !62

if.end5.i.i.i.i.i19.batadv_hardif_put.exit22_crit_edge: ; preds = %if.end5.i.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit22

if.then10.i.i.i.i.i20:                            ; preds = %if.end5.i.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i13, i32 noundef 3) #9
  br label %batadv_hardif_put.exit22

if.then.i.i21:                                    ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @batadv_hardif_release(ptr noundef %refcount.i13) #9, !callees !64
  br label %batadv_hardif_put.exit22

batadv_hardif_put.exit22:                         ; preds = %if.then.i.i21, %if.then10.i.i.i.i.i20, %if.end5.i.i.i.i.i19.batadv_hardif_put.exit22_crit_edge, %batadv_hardif_put.exit.batadv_hardif_put.exit22_crit_edge
  %queue_left = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 11
  %8 = ptrtoint ptr %queue_left to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue_left, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %batadv_hardif_put.exit22.if.end5_crit_edge, label %if.then3

batadv_hardif_put.exit22.if.end5_crit_edge:       ; preds = %batadv_hardif_put.exit22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %batadv_hardif_put.exit22
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %9, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %9, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #9, !srcloc !68
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %batadv_hardif_put.exit22.if.end5_crit_edge
  tail call void @kfree(ptr noundef %forw_packet) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_forw_packet_alloc(ptr noundef %if_incoming, ptr noundef %if_outgoing, ptr noundef %queue_left, ptr noundef %bat_priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %queue_left, null
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %queue_left, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr nonnull %queue_left, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %queue_left, ptr nonnull %queue_left, i32 0, i32 -1, ptr nonnull elementtype(i32) %queue_left) #9, !srcloc !70
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then, label %if.end10.thread

if.then:                                          ; preds = %land.lhs.true
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i52 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %1 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.then7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %batman_queue_left = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 19
  %cmp2 = icmp eq ptr %batman_queue_left, %queue_left
  %bcast_queue_left = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 18
  %cmp = icmp eq ptr %bcast_queue_left, %queue_left
  %spec.store.select = select i1 %cmp, ptr @.str.4, ptr @.str.3
  %spec.store.select30 = select i1 %cmp2, ptr @.str.5, ptr %spec.store.select
  %call8 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.6, ptr noundef nonnull %spec.store.select30) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 152) #13
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.thread:                                  ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 152) #13
  %tobool12.not66 = icmp eq ptr %call7.i65, null
  br i1 %tobool12.not66, label %if.then27, label %if.end10.thread.if.end14_crit_edge

if.end10.thread.if.end14_crit_edge:               ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.end10.thread.if.end14_crit_edge, %if.end10.if.end14_crit_edge
  %call7.i67 = phi ptr [ %call7.i65, %if.end10.thread.if.end14_crit_edge ], [ %call7.i, %if.end10.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %if_incoming, null
  br i1 %tobool15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then16.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !59

if.then16.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then16
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end17_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !62

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end17_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then16.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then16.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end17_crit_edge, %if.end14.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %if_outgoing, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  %refcount20 = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_outgoing, i32 0, i32 5
  %call.i.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount20, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount20, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount20, ptr %refcount20, i32 1, ptr elementtype(i32) %refcount20) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i55)
  %tobool1.not.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i55, 0
  br i1 %tobool1.not.i.i.i.i56, label %if.then19.if.end15.sink.split.i.i.i.i61_crit_edge, label %if.else.i.i.i.i59, !prof !59

if.then19.if.end15.sink.split.i.i.i.i61_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i61

if.else.i.i.i.i59:                                ; preds = %if.then19
  %add.i.i.i.i57 = add i32 %asmresult.i.i.i.i.i.i55, 1
  %8 = or i32 %add.i.i.i.i57, %asmresult.i.i.i.i.i.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i58 = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i58, label %if.else.i.i.i.i59.if.end21_crit_edge, label %if.else.i.i.i.i59.if.end15.sink.split.i.i.i.i61_crit_edge, !prof !62

if.else.i.i.i.i59.if.end15.sink.split.i.i.i.i61_crit_edge: ; preds = %if.else.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i61

if.else.i.i.i.i59.if.end21_crit_edge:             ; preds = %if.else.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end15.sink.split.i.i.i.i61:                    ; preds = %if.else.i.i.i.i59.if.end15.sink.split.i.i.i.i61_crit_edge, %if.then19.if.end15.sink.split.i.i.i.i61_crit_edge
  %.sink.i.i.i.i60 = phi i32 [ 2, %if.then19.if.end15.sink.split.i.i.i.i61_crit_edge ], [ 1, %if.else.i.i.i.i59.if.end15.sink.split.i.i.i.i61_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount20, i32 noundef %.sink.i.i.i.i60) #9
  br label %if.end21

if.end21:                                         ; preds = %if.end15.sink.split.i.i.i.i61, %if.else.i.i.i.i59.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %skb22 = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i67, i32 0, i32 4
  %9 = call ptr @memset(ptr %call7.i67, i32 0, i32 16)
  %10 = ptrtoint ptr %skb22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %skb22, align 8
  %queue_left23 = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i67, i32 0, i32 11
  %11 = ptrtoint ptr %queue_left23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queue_left, ptr %queue_left23, align 4
  %if_incoming24 = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i67, i32 0, i32 9
  %12 = ptrtoint ptr %if_incoming24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %if_incoming, ptr %if_incoming24, align 4
  %if_outgoing25 = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i67, i32 0, i32 10
  %13 = ptrtoint ptr %if_outgoing25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %if_outgoing, ptr %if_outgoing25, align 8
  %num_packets = getelementptr inbounds %struct.batadv_forw_packet, ptr %call7.i67, i32 0, i32 7
  %14 = ptrtoint ptr %num_packets to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %num_packets, align 4
  br label %cleanup

if.then27:                                        ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %queue_left, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %queue_left, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %queue_left, ptr nonnull %queue_left, i32 1, ptr nonnull elementtype(i32) %queue_left) #9, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end21, %if.end10.cleanup_crit_edge, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i67, %if.end21 ], [ null, %if.then7 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.then27 ], [ null, %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_forw_packet_steal(ptr noundef %forw_packet, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %pprev.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %pprev.i.i5 = getelementptr inbounds %struct.hlist_node, ptr %forw_packet, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i5, align 4
  %tobool.not.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i, label %if.end.hlist_del_init.exit_crit_edge, label %if.then.i

if.end.hlist_del_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %forw_packet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %forw_packet, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %8 = ptrtoint ptr %forw_packet to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %forw_packet, align 4
  %9 = ptrtoint ptr %pprev.i.i5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i5, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.end.hlist_del_init.exit_crit_edge
  %cleanup_list = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cleanup_list, ptr %pprev.i.i, align 4
  br label %return

return:                                           ; preds = %hlist_del_init.exit, %entry.return_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  ret i1 %tobool.not.i.i.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_forw_packet_ogmv1_queue(ptr noundef %bat_priv, ptr noundef %forw_packet, i32 noundef %send_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %forw_bat_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 24
  %forw_bat_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 20
  tail call fastcc void @batadv_forw_packet_queue(ptr noundef %forw_packet, ptr noundef %forw_bat_list_lock, ptr noundef %forw_bat_list, i32 noundef %send_time)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_forw_packet_queue(ptr noundef %forw_packet, ptr noundef %lock, ptr noundef %head, i32 noundef %send_time) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %pprev.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.end37, label %if.then

if.then:                                          ; preds = %entry
  %cleanup_list = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %cmp.i = icmp eq ptr %3, %cleanup_list
  br i1 %cmp.i, label %land.rhs, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.rhs:                                         ; preds = %if.then
  %.b48 = load i1, ptr @batadv_forw_packet_queue.__already_done, align 1
  br i1 %.b48, label %land.rhs.return_crit_edge, label %if.then8, !prof !62

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_forw_packet_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 681, i32 noundef 9, ptr noundef nonnull @.str.14) #9
  br label %return

if.end37:                                         ; preds = %entry
  %pprev.i.i49 = getelementptr inbounds %struct.hlist_node, ptr %forw_packet, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i49, align 4
  %tobool.not.i.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i, label %if.end37.hlist_del_init.exit_crit_edge, label %if.then.i

if.end37.hlist_del_init.exit_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.end37
  %6 = ptrtoint ptr %forw_packet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %forw_packet, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %5, align 4
  %tobool.not.i3.i = icmp eq ptr %7, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %10 = ptrtoint ptr %forw_packet to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %forw_packet, align 4
  %11 = ptrtoint ptr %pprev.i.i49 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i49, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.end37.hlist_del_init.exit_crit_edge
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head, align 4
  %14 = ptrtoint ptr %forw_packet to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %forw_packet, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %hlist_del_init.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

hlist_del_init.exit.hlist_add_head.exit_crit_edge: ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i50 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev.i50 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %forw_packet, ptr %pprev.i50, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %hlist_del_init.exit.hlist_add_head.exit_crit_edge
  %16 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %forw_packet, ptr %head, align 4
  %17 = ptrtoint ptr %pprev.i.i49 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %head, ptr %pprev.i.i49, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %18 = load ptr, ptr @batadv_event_workqueue, align 4
  %delayed_work = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %send_time, %19
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %delayed_work, i32 noundef %sub) #9
  br label %return

return:                                           ; preds = %hlist_add_head.exit, %if.then8, %land.rhs.return_crit_edge, %if.then.return_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_forw_bcast_packet(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %delay, i1 noundef zeroext %own_packet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__batadv_forw_bcast_packet(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %delay, i1 noundef zeroext %own_packet)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__batadv_forw_bcast_packet(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %delay, i1 noundef zeroext %own_packet) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b55 = load i1, ptr @__batadv_forw_bcast_packet.__warned, align 1
  br i1 %.b55, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__batadv_forw_bcast_packet.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 932, ptr noundef nonnull @.str.15) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.099 = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not100 = icmp eq ptr %hard_iface.099, @batadv_hardif_list
  br i1 %cmp.not100, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %soft_iface13 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %tobool.not.i62 = icmp eq i32 %delay, 0
  %num_bcasts9.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %frombool.i.i = zext i1 %own_packet to i8
  %bcast_queue_left.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 18
  %spec.select.i.i = select i1 %tobool.not.i62, i32 1, i32 %delay
  %forw_bcast_list_lock.i.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 25
  %forw_bcast_list.i.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 21
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hard_iface.0102 = phi ptr [ %hard_iface.099, %for.body.lr.ph ], [ %hard_iface.0, %for.inc.for.body_crit_edge ]
  %ret.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0102, i32 0, i32 7
  %4 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soft_iface, align 4
  %6 = ptrtoint ptr %soft_iface13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soft_iface13, align 4
  %cmp14.not = icmp eq ptr %5, %7
  br i1 %cmp14.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0102, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end16
  %10 = phi i32 [ %9, %if.end16 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %10, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %13, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #9, !srcloc !66
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !62

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #9
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %19 = phi i32 [ %16, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %if.end20

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end20:                                         ; preds = %kref_get_unless_zero.exit
  br i1 %own_packet, label %if.end20.if.end.i_crit_edge, label %if.then.i57

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i57:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %22 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %call1.i56 = call ptr @batadv_hardif_neigh_get(ptr noundef %hard_iface.0102, ptr noundef %h_source.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i57, %if.end20.if.end.i_crit_edge
  %neigh_node.0.i = phi ptr [ null, %if.end20.if.end.i_crit_edge ], [ %call1.i56, %if.then.i57 ]
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %tobool2.not.i = icmp eq ptr %neigh_node.0.i, null
  %orig.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %neigh_node.0.i, i32 0, i32 2
  %spec.select.i = select i1 %tobool2.not.i, ptr null, ptr %orig.i
  %orig4.i = getelementptr inbounds %struct.batadv_bcast_packet, ptr %25, i32 0, i32 5
  %call6.i = call i32 @batadv_hardif_no_broadcast(ptr noundef %hard_iface.0102, ptr noundef %orig4.i, ptr noundef %spec.select.i) #9
  br i1 %tobool2.not.i, label %if.end.i.batadv_hardif_neigh_put.exit.i_crit_edge, label %if.end.i.i

if.end.i.batadv_hardif_neigh_put.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_neigh_put.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %neigh_node.0.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_hardif_neigh_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.i.batadv_hardif_neigh_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_neigh_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %batadv_hardif_neigh_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @batadv_hardif_neigh_release(ptr noundef %refcount.i.i) #9, !callees !64
  br label %batadv_hardif_neigh_put.exit.i

batadv_hardif_neigh_put.exit.i:                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_hardif_neigh_put.exit.i_crit_edge, %if.end.i.batadv_hardif_neigh_put.exit.i_crit_edge
  %27 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call6.i, label %sw.default.i [
    i32 0, label %if.end24
    i32 1, label %batadv_hardif_neigh_put.exit.i.do.body.i_crit_edge
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb11.i
  ]

batadv_hardif_neigh_put.exit.i.do.body.i_crit_edge: ; preds = %batadv_hardif_neigh_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

sw.bb10.i:                                        ; preds = %batadv_hardif_neigh_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

sw.bb11.i:                                        ; preds = %batadv_hardif_neigh_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

sw.default.i:                                     ; preds = %batadv_hardif_neigh_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %sw.default.i, %sw.bb11.i, %sw.bb10.i, %batadv_hardif_neigh_put.exit.i.do.body.i_crit_edge
  %type.0.i = phi ptr [ @.str.3, %sw.default.i ], [ @.str.18, %sw.bb11.i ], [ @.str.17, %sw.bb10.i ], [ @.str.16, %batadv_hardif_neigh_put.exit.i.do.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %28 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %do.body.i.if.then23_crit_edge, label %if.then14.i

do.body.i.if.then23_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0102, i32 0, i32 4
  %30 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_dev.i, align 4
  %call18.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.19, ptr noundef %orig4.i, ptr noundef %31, ptr noundef nonnull %type.0.i) #9
  br label %if.then23

if.then23:                                        ; preds = %if.then14.i, %do.body.i.if.then23_crit_edge
  %tobool.not.i58 = icmp eq ptr %hard_iface.0102, null
  br i1 %tobool.not.i58, label %if.then23.for.inc_crit_edge, label %if.end.i60

if.then23.for.inc_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i60:                                       ; preds = %if.then23
  %call.i.i.i.i.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @batadv_hardif_release(ptr noundef %refcount) #9, !callees !64
  br label %for.inc

if.end24:                                         ; preds = %batadv_hardif_neigh_put.exit.i
  %num_bcasts1.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0102, i32 0, i32 2
  %33 = ptrtoint ptr %num_bcasts1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_bcasts1.i, align 1
  %conv.i61 = zext i8 %34 to i32
  br i1 %tobool.not.i62, label %if.then.i65, label %if.end24.if.end5.i_crit_edge

if.end24.if.end5.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i65:                                      ; preds = %if.end24
  %call.i63 = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #9
  %tobool2.not.i64 = icmp eq ptr %call.i63, null
  br i1 %tobool2.not.i64, label %if.then.i65.batadv_forw_bcast_packet_if.exit_crit_edge, label %if.end.i66

if.then.i65.batadv_forw_bcast_packet_if.exit_crit_edge: ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_forw_bcast_packet_if.exit

if.end.i66:                                       ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @batadv_send_skb_packet(ptr noundef nonnull %call.i63, ptr noundef %hard_iface.0102, ptr noundef nonnull @batadv_broadcast_addr) #9
  %dec.i = add nsw i32 %conv.i61, -1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i66, %if.end24.if.end5.i_crit_edge
  %num_bcasts.0.i = phi i32 [ %conv.i61, %if.end24.if.end5.i_crit_edge ], [ %dec.i, %if.end.i66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bcasts.0.i)
  %cmp.not.i = icmp eq i32 %num_bcasts.0.i, 0
  br i1 %cmp.not.i, label %if.end5.i.batadv_forw_bcast_packet_if.exit_crit_edge, label %if.then7.i

if.end5.i.batadv_forw_bcast_packet_if.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_forw_bcast_packet_if.exit

if.then7.i:                                       ; preds = %if.end5.i
  %conv8.i = trunc i32 %num_bcasts.0.i to i8
  %35 = ptrtoint ptr %num_bcasts9.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv8.i, ptr %num_bcasts9.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %call.i23.i = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i23.i, null
  br i1 %tobool.not.i.i, label %if.then7.i.batadv_forw_bcast_packet_if.exit_crit_edge, label %if.end.i.i67

if.then7.i.batadv_forw_bcast_packet_if.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_forw_bcast_packet_if.exit

if.end.i.i67:                                     ; preds = %if.then7.i
  %call1.i.i = call ptr @batadv_forw_packet_alloc(ptr noundef nonnull %call, ptr noundef %hard_iface.0102, ptr noundef %bcast_queue_left.i.i, ptr noundef %bat_priv, ptr noundef nonnull %call.i23.i) #9
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %err_packet_free.i.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  %own.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call1.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %own.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool.i.i, ptr %own.i.i, align 4
  %delayed_work.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call1.i.i, i32 0, i32 8
  call void @__init_work(ptr noundef %delayed_work.i.i, i32 noundef 0) #9
  %38 = ptrtoint ptr %delayed_work.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %delayed_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call1.i.i, i32 0, i32 8, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_forw_bcast_packet_to_list.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry13.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call1.i.i, i32 0, i32 8, i32 0, i32 1
  %39 = ptrtoint ptr %entry13.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry13.i.i, ptr %entry13.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call1.i.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry13.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call1.i.i, i32 0, i32 8, i32 0, i32 2
  %41 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @batadv_send_outstanding_bcast_packet, ptr %func.i.i, align 4
  %timer.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %call1.i.i, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.22, ptr noundef nonnull @batadv_forw_bcast_packet_to_list.__key.21) #9
  %add.i.i = add i32 %36, %spec.select.i.i
  call fastcc void @batadv_forw_packet_queue(ptr noundef nonnull %call1.i.i, ptr noundef %forw_bcast_list_lock.i.i.i, ptr noundef %forw_bcast_list.i.i.i, i32 noundef %add.i.i) #9
  br label %batadv_forw_bcast_packet_if.exit

err_packet_free.i.i:                              ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef nonnull %call.i23.i, i32 noundef 0) #9
  br label %batadv_forw_bcast_packet_if.exit

batadv_forw_bcast_packet_if.exit:                 ; preds = %err_packet_free.i.i, %if.end4.i.i, %if.then7.i.batadv_forw_bcast_packet_if.exit_crit_edge, %if.end5.i.batadv_forw_bcast_packet_if.exit_crit_edge, %if.then.i65.batadv_forw_bcast_packet_if.exit_crit_edge
  %cmp27 = phi i1 [ true, %if.then.i65.batadv_forw_bcast_packet_if.exit_crit_edge ], [ false, %if.end5.i.batadv_forw_bcast_packet_if.exit_crit_edge ], [ true, %if.then7.i.batadv_forw_bcast_packet_if.exit_crit_edge ], [ false, %if.end4.i.i ], [ true, %err_packet_free.i.i ]
  %retval.0.i = phi i32 [ 16, %if.then.i65.batadv_forw_bcast_packet_if.exit_crit_edge ], [ 0, %if.end5.i.batadv_forw_bcast_packet_if.exit_crit_edge ], [ 16, %if.then7.i.batadv_forw_bcast_packet_if.exit_crit_edge ], [ 0, %if.end4.i.i ], [ 16, %err_packet_free.i.i ]
  %tobool.not.i68 = icmp eq ptr %hard_iface.0102, null
  br i1 %tobool.not.i68, label %batadv_forw_bcast_packet_if.exit.batadv_hardif_put.exit78_crit_edge, label %if.end.i73

batadv_forw_bcast_packet_if.exit.batadv_hardif_put.exit78_crit_edge: ; preds = %batadv_forw_bcast_packet_if.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit78

if.end.i73:                                       ; preds = %batadv_forw_bcast_packet_if.exit
  %call.i.i.i.i.i.i.i70 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i71 = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %cmp.i.i.i.i.i72 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i71, 1
  br i1 %cmp.i.i.i.i.i72, label %if.then.i.i77, label %if.end5.i.i.i.i.i75

if.end5.i.i.i.i.i75:                              ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %.not.i.i.i.i.i74 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i71, 0
  br i1 %.not.i.i.i.i.i74, label %if.end5.i.i.i.i.i75.batadv_hardif_put.exit78_crit_edge, label %if.then10.i.i.i.i.i76, !prof !62

if.end5.i.i.i.i.i75.batadv_hardif_put.exit78_crit_edge: ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_put.exit78

if.then10.i.i.i.i.i76:                            ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %batadv_hardif_put.exit78

if.then.i.i77:                                    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @batadv_hardif_release(ptr noundef %refcount) #9, !callees !64
  br label %batadv_hardif_put.exit78

batadv_hardif_put.exit78:                         ; preds = %if.then.i.i77, %if.then10.i.i.i.i.i76, %if.end5.i.i.i.i.i75.batadv_hardif_put.exit78_crit_edge, %batadv_forw_bcast_packet_if.exit.batadv_hardif_put.exit78_crit_edge
  br i1 %cmp27, label %batadv_hardif_put.exit78.for.end_crit_edge, label %batadv_hardif_put.exit78.for.inc_crit_edge

batadv_hardif_put.exit78.for.inc_crit_edge:       ; preds = %batadv_hardif_put.exit78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

batadv_hardif_put.exit78.for.end_crit_edge:       ; preds = %batadv_hardif_put.exit78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %batadv_hardif_put.exit78.for.inc_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %if.then23.for.inc_crit_edge, %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.0101, %for.body.for.inc_crit_edge ], [ %retval.0.i, %batadv_hardif_put.exit78.for.inc_crit_edge ], [ %ret.0101, %kref_get_unless_zero.exit.for.inc_crit_edge ], [ %ret.0101, %if.then23.for.inc_crit_edge ], [ %ret.0101, %if.end5.i.i.i.i.i.for.inc_crit_edge ], [ %ret.0101, %if.then10.i.i.i.i.i ], [ %ret.0101, %if.then.i.i ]
  %43 = ptrtoint ptr %hard_iface.0102 to i32
  call void @__asan_load4_noabort(i32 %43)
  %hard_iface.0 = load volatile ptr, ptr %hard_iface.0102, align 4
  %cmp.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %batadv_hardif_put.exit78.for.end_crit_edge, %do.end.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %do.end.for.end_crit_edge ], [ 16, %batadv_hardif_put.exit78.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  %call.i79 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i79, label %for.end.if.end.i93_crit_edge, label %land.lhs.true.i82

for.end.if.end.i93_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i93

land.lhs.true.i82:                                ; preds = %for.end
  %call1.i80 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.if.end.i93_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.if.end.i93_crit_edge:           ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i93

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.if.end.i93_crit_edge, label %if.then.i85

land.lhs.true2.i84.if.end.i93_crit_edge:          ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i93

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %if.end.i93

if.end.i93:                                       ; preds = %if.then.i85, %land.lhs.true2.i84.if.end.i93_crit_edge, %land.lhs.true.i82.if.end.i93_crit_edge, %for.end.if.end.i93_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  %44 = call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i86 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i87, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i87, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %refcount.i89 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i90 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i89, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  call void @llvm.prefetch.p0(ptr %refcount.i89, i32 1, i32 3, i32 1) #9
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i89, ptr %refcount.i89, i32 1, ptr elementtype(i32) %refcount.i89) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i91 = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i91)
  %cmp.i.i.i.i.i92 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i91, 1
  br i1 %cmp.i.i.i.i.i92, label %if.then.i.i97, label %if.end5.i.i.i.i.i95

if.end5.i.i.i.i.i95:                              ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i91)
  %.not.i.i.i.i.i94 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i91, 0
  br i1 %.not.i.i.i.i.i94, label %if.end5.i.i.i.i.i95.cleanup_crit_edge, label %if.then10.i.i.i.i.i96, !prof !62

if.end5.i.i.i.i.i95.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i96:                            ; preds = %if.end5.i.i.i.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i89, i32 noundef 3) #9
  br label %cleanup

if.then.i.i97:                                    ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @batadv_hardif_release(ptr noundef %refcount.i89) #9, !callees !64
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i97, %if.then10.i.i.i.i.i96, %if.end5.i.i.i.i.i95.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %entry.cleanup_crit_edge ], [ %ret.2, %if.end5.i.i.i.i.i95.cleanup_crit_edge ], [ %ret.2, %if.then10.i.i.i.i.i96 ], [ %ret.2, %if.then.i.i97 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_send_bcast_packet(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %delay, i1 noundef zeroext %own_packet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__batadv_forw_bcast_packet(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %delay, i1 noundef zeroext %own_packet)
  tail call void @consume_skb(ptr noundef %skb) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @batadv_forw_packet_is_rebroadcast(ptr nocapture noundef readonly %forw_packet) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %num_bcasts1 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %num_bcasts1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_bcasts1, align 1
  %if_outgoing = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 10
  %4 = ptrtoint ptr %if_outgoing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %if_outgoing, align 4
  %num_bcasts2 = getelementptr inbounds %struct.batadv_hard_iface, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %num_bcasts2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_bcasts2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %7)
  %cmp = icmp ne i8 %3, %7
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_purge_outstanding_packets(ptr noundef %bat_priv, ptr noundef readonly %hard_iface) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.hlist_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head) #9
  %0 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %head, align 4
  %tobool.not = icmp eq ptr %hard_iface, null
  %log_level6 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level6, i32 noundef 4) #9
  %1 = ptrtoint ptr %log_level6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %log_level6, align 4
  %and8 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %do.body4, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool9.not, label %do.body.if.end15_crit_edge, label %if.then2

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %3 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_dev, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.batadv_purge_outstanding_packets, ptr noundef %4) #9
  br label %if.end15

do.body4:                                         ; preds = %entry
  br i1 %tobool9.not, label %do.body4.if.end15_crit_edge, label %if.then10

do.body4.if.end15_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.batadv_purge_outstanding_packets) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %do.body4.if.end15_crit_edge, %if.then2, %do.body.if.end15_crit_edge
  %forw_bcast_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 25
  tail call void @_raw_spin_lock_bh(ptr noundef %forw_bcast_list_lock) #9
  %forw_bcast_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 21
  %5 = ptrtoint ptr %forw_bcast_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %forw_bcast_list, align 4
  %tobool2.not31.i = icmp eq ptr %6, null
  br i1 %tobool2.not31.i, label %if.end15.batadv_forw_packet_list_steal.exit_crit_edge, label %if.end15.land.rhs.i_crit_edge

if.end15.land.rhs.i_crit_edge:                    ; preds = %if.end15
  br label %land.rhs.i

if.end15.batadv_forw_packet_list_steal.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_forw_packet_list_steal.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end15.land.rhs.i_crit_edge
  %forw_packet.032.i = phi ptr [ %8, %for.inc.i.land.rhs.i_crit_edge ], [ %6, %if.end15.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %forw_packet.032.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %forw_packet.032.i, align 4
  br i1 %tobool.not, label %land.rhs.i.if.end.i_crit_edge, label %land.lhs.true.i

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %if_incoming.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.032.i, i32 0, i32 9
  %9 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %if_incoming.i, align 4
  %cmp.not.i = icmp eq ptr %10, %hard_iface
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %if_outgoing.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.032.i, i32 0, i32 10
  %11 = ptrtoint ptr %if_outgoing.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %if_outgoing.i, align 4
  %cmp7.not.i = icmp eq ptr %12, %hard_iface
  br i1 %cmp7.not.i, label %land.lhs.true6.i.if.end.i_crit_edge, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true6.i.if.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true6.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %land.rhs.i.if.end.i_crit_edge
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %forw_packet.032.i, i32 0, i32 1
  %13 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev2.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %8, ptr %14, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.end.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.end.i.hlist_del.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.end.i.hlist_del.exit.i_crit_edge
  %17 = ptrtoint ptr %forw_packet.032.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %forw_packet.032.i, align 4
  %18 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %cleanup_list9.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.032.i, i32 0, i32 1
  %19 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head, align 4
  %21 = ptrtoint ptr %cleanup_list9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %cleanup_list9.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %hlist_del.exit.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

hlist_del.exit.i.hlist_add_head.exit.i_crit_edge: ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %cleanup_list9.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %hlist_del.exit.i.hlist_add_head.exit.i_crit_edge
  %23 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %cleanup_list9.i, ptr %head, align 4
  %pprev34.i.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.032.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %head, ptr %pprev34.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %hlist_add_head.exit.i, %land.lhs.true6.i.for.inc.i_crit_edge
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %for.inc.i.batadv_forw_packet_list_steal.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.batadv_forw_packet_list_steal.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_forw_packet_list_steal.exit

batadv_forw_packet_list_steal.exit:               ; preds = %for.inc.i.batadv_forw_packet_list_steal.exit_crit_edge, %if.end15.batadv_forw_packet_list_steal.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %forw_bcast_list_lock) #9
  %forw_bat_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 24
  call void @_raw_spin_lock_bh(ptr noundef %forw_bat_list_lock) #9
  %forw_bat_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 20
  %25 = ptrtoint ptr %forw_bat_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %forw_bat_list, align 4
  %tobool2.not31.i31 = icmp eq ptr %26, null
  br i1 %tobool2.not31.i31, label %batadv_forw_packet_list_steal.exit.batadv_forw_packet_list_steal.exit56_crit_edge, label %batadv_forw_packet_list_steal.exit.land.rhs.i35_crit_edge

batadv_forw_packet_list_steal.exit.land.rhs.i35_crit_edge: ; preds = %batadv_forw_packet_list_steal.exit
  br label %land.rhs.i35

batadv_forw_packet_list_steal.exit.batadv_forw_packet_list_steal.exit56_crit_edge: ; preds = %batadv_forw_packet_list_steal.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_forw_packet_list_steal.exit56

land.rhs.i35:                                     ; preds = %for.inc.i55.land.rhs.i35_crit_edge, %batadv_forw_packet_list_steal.exit.land.rhs.i35_crit_edge
  %forw_packet.032.i34 = phi ptr [ %28, %for.inc.i55.land.rhs.i35_crit_edge ], [ %26, %batadv_forw_packet_list_steal.exit.land.rhs.i35_crit_edge ]
  %27 = ptrtoint ptr %forw_packet.032.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %forw_packet.032.i34, align 4
  br i1 %tobool.not, label %land.rhs.i35.if.end.i44_crit_edge, label %land.lhs.true.i38

land.rhs.i35.if.end.i44_crit_edge:                ; preds = %land.rhs.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i44

land.lhs.true.i38:                                ; preds = %land.rhs.i35
  %if_incoming.i36 = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.032.i34, i32 0, i32 9
  %29 = ptrtoint ptr %if_incoming.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %if_incoming.i36, align 4
  %cmp.not.i37 = icmp eq ptr %30, %hard_iface
  br i1 %cmp.not.i37, label %land.lhs.true.i38.if.end.i44_crit_edge, label %land.lhs.true6.i41

land.lhs.true.i38.if.end.i44_crit_edge:           ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i44

land.lhs.true6.i41:                               ; preds = %land.lhs.true.i38
  %if_outgoing.i39 = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.032.i34, i32 0, i32 10
  %31 = ptrtoint ptr %if_outgoing.i39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %if_outgoing.i39, align 4
  %cmp7.not.i40 = icmp eq ptr %32, %hard_iface
  br i1 %cmp7.not.i40, label %land.lhs.true6.i41.if.end.i44_crit_edge, label %land.lhs.true6.i41.for.inc.i55_crit_edge

land.lhs.true6.i41.for.inc.i55_crit_edge:         ; preds = %land.lhs.true6.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i55

land.lhs.true6.i41.if.end.i44_crit_edge:          ; preds = %land.lhs.true6.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i44

if.end.i44:                                       ; preds = %land.lhs.true6.i41.if.end.i44_crit_edge, %land.lhs.true.i38.if.end.i44_crit_edge, %land.rhs.i35.if.end.i44_crit_edge
  %pprev2.i.i.i42 = getelementptr inbounds %struct.hlist_node, ptr %forw_packet.032.i34, i32 0, i32 1
  %33 = ptrtoint ptr %pprev2.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pprev2.i.i.i42, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %28, ptr %34, align 4
  %tobool.not.i.i.i43 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i43, label %if.end.i44.hlist_del.exit.i49_crit_edge, label %do.body13.i.i.i46

if.end.i44.hlist_del.exit.i49_crit_edge:          ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit.i49

do.body13.i.i.i46:                                ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i45 = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %pprev14.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %pprev14.i.i.i45, align 4
  br label %hlist_del.exit.i49

hlist_del.exit.i49:                               ; preds = %do.body13.i.i.i46, %if.end.i44.hlist_del.exit.i49_crit_edge
  %37 = ptrtoint ptr %forw_packet.032.i34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %forw_packet.032.i34, align 4
  %38 = ptrtoint ptr %pprev2.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i42, align 4
  %cleanup_list9.i47 = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.032.i34, i32 0, i32 1
  %39 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head, align 4
  %41 = ptrtoint ptr %cleanup_list9.i47 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %cleanup_list9.i47, align 4
  %tobool.not.i.i48 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i48, label %hlist_del.exit.i49.hlist_add_head.exit.i53_crit_edge, label %do.body12.i.i51

hlist_del.exit.i49.hlist_add_head.exit.i53_crit_edge: ; preds = %hlist_del.exit.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit.i53

do.body12.i.i51:                                  ; preds = %hlist_del.exit.i49
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i50 = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %pprev.i.i50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %cleanup_list9.i47, ptr %pprev.i.i50, align 4
  br label %hlist_add_head.exit.i53

hlist_add_head.exit.i53:                          ; preds = %do.body12.i.i51, %hlist_del.exit.i49.hlist_add_head.exit.i53_crit_edge
  %43 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %cleanup_list9.i47, ptr %head, align 4
  %pprev34.i.i52 = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.032.i34, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %pprev34.i.i52 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %head, ptr %pprev34.i.i52, align 4
  br label %for.inc.i55

for.inc.i55:                                      ; preds = %hlist_add_head.exit.i53, %land.lhs.true6.i41.for.inc.i55_crit_edge
  %tobool2.not.i54 = icmp eq ptr %28, null
  br i1 %tobool2.not.i54, label %for.inc.i55.batadv_forw_packet_list_steal.exit56_crit_edge, label %for.inc.i55.land.rhs.i35_crit_edge

for.inc.i55.land.rhs.i35_crit_edge:               ; preds = %for.inc.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i35

for.inc.i55.batadv_forw_packet_list_steal.exit56_crit_edge: ; preds = %for.inc.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_forw_packet_list_steal.exit56

batadv_forw_packet_list_steal.exit56:             ; preds = %for.inc.i55.batadv_forw_packet_list_steal.exit56_crit_edge, %batadv_forw_packet_list_steal.exit.batadv_forw_packet_list_steal.exit56_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %forw_bat_list_lock) #9
  %45 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head, align 4
  %tobool.not.i = icmp eq ptr %46, null
  %add.ptr.i = getelementptr i8, ptr %46, i32 -8
  %tobool2.not2527.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not25.i = or i1 %tobool.not.i, %tobool2.not2527.i
  br i1 %tobool2.not25.i, label %batadv_forw_packet_list_steal.exit56.batadv_forw_packet_list_free.exit_crit_edge, label %batadv_forw_packet_list_steal.exit56.land.rhs.i59_crit_edge

batadv_forw_packet_list_steal.exit56.land.rhs.i59_crit_edge: ; preds = %batadv_forw_packet_list_steal.exit56
  br label %land.rhs.i59

batadv_forw_packet_list_steal.exit56.batadv_forw_packet_list_free.exit_crit_edge: ; preds = %batadv_forw_packet_list_steal.exit56
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_forw_packet_list_free.exit

land.rhs.i59:                                     ; preds = %hlist_del.exit.i63.land.rhs.i59_crit_edge, %batadv_forw_packet_list_steal.exit56.land.rhs.i59_crit_edge
  %forw_packet.026.i = phi ptr [ %add.ptr12.i, %hlist_del.exit.i63.land.rhs.i59_crit_edge ], [ %add.ptr.i, %batadv_forw_packet_list_steal.exit56.land.rhs.i59_crit_edge ]
  %cleanup_list.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.026.i, i32 0, i32 1
  %47 = ptrtoint ptr %cleanup_list.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cleanup_list.i, align 4
  %delayed_work.i = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.026.i, i32 0, i32 8
  %call.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work.i) #9
  %49 = ptrtoint ptr %cleanup_list.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cleanup_list.i, align 4
  %pprev2.i.i.i57 = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet.026.i, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %pprev2.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pprev2.i.i.i57, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %50, ptr %52, align 4
  %tobool.not.i.i.i58 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i58, label %land.rhs.i59.hlist_del.exit.i63_crit_edge, label %do.body13.i.i.i61

land.rhs.i59.hlist_del.exit.i63_crit_edge:        ; preds = %land.rhs.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit.i63

do.body13.i.i.i61:                                ; preds = %land.rhs.i59
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i60 = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %pprev14.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %pprev14.i.i.i60, align 4
  br label %hlist_del.exit.i63

hlist_del.exit.i63:                               ; preds = %do.body13.i.i.i61, %land.rhs.i59.hlist_del.exit.i63_crit_edge
  %55 = ptrtoint ptr %cleanup_list.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %cleanup_list.i, align 4
  %56 = ptrtoint ptr %pprev2.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i57, align 4
  call void @batadv_forw_packet_free(ptr noundef nonnull %forw_packet.026.i, i1 noundef zeroext true) #9
  %tobool8.not.i = icmp eq ptr %48, null
  %add.ptr12.i = getelementptr i8, ptr %48, i32 -8
  %tobool2.not28.i = icmp eq ptr %add.ptr12.i, null
  %tobool2.not.i62 = or i1 %tobool8.not.i, %tobool2.not28.i
  br i1 %tobool2.not.i62, label %hlist_del.exit.i63.batadv_forw_packet_list_free.exit_crit_edge, label %hlist_del.exit.i63.land.rhs.i59_crit_edge

hlist_del.exit.i63.land.rhs.i59_crit_edge:        ; preds = %hlist_del.exit.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i59

hlist_del.exit.i63.batadv_forw_packet_list_free.exit_crit_edge: ; preds = %hlist_del.exit.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_forw_packet_list_free.exit

batadv_forw_packet_list_free.exit:                ; preds = %hlist_del.exit.i63.batadv_forw_packet_list_free.exit_crit_edge, %batadv_forw_packet_list_steal.exit56.batadv_forw_packet_list_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_neigh_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_hardif_no_broadcast(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_send_outstanding_bcast_packet(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %if_incoming = getelementptr i8, ptr %work, i32 100
  %1 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %if_incoming, align 4
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 2304
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call4 = tail call zeroext i1 @batadv_dat_drop_broadcast_packet(ptr noundef %add.ptr.i, ptr noundef %add.ptr) #9
  br i1 %call4, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %if.end
  %skb = getelementptr i8, ptr %work, i32 -16
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %call7 = tail call ptr @skb_clone(ptr noundef %8, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end6.out_crit_edge, label %if.end9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %if.end6
  %if_outgoing = getelementptr i8, ptr %work, i32 104
  %9 = ptrtoint ptr %if_outgoing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %if_outgoing, align 4
  %call.i = tail call i32 @batadv_send_skb_packet(ptr noundef nonnull %call7, ptr noundef %10, ptr noundef nonnull @batadv_broadcast_addr) #9
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  %num_bcasts.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %num_bcasts.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_bcasts.i, align 1
  %dec.i = add i8 %14, -1
  store i8 %dec.i, ptr %num_bcasts.i, align 1
  %15 = load ptr, ptr %skb, align 4
  %num_bcasts.i36 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %num_bcasts.i36 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_bcasts.i36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.not = icmp eq i8 %17, 0
  br i1 %tobool.i.not, label %if.end9.out_crit_edge, label %if.then12

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %forw_bcast_list_lock.i = getelementptr i8, ptr %4, i32 2444
  %forw_bcast_list.i = getelementptr i8, ptr %4, i32 2388
  tail call fastcc void @batadv_forw_packet_queue(ptr noundef %add.ptr, ptr noundef %forw_bcast_list_lock.i, ptr noundef %forw_bcast_list.i, i32 noundef %add) #9
  br label %cleanup

out:                                              ; preds = %if.end9.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %dropped.0.off0 = phi i1 [ false, %if.end9.out_crit_edge ], [ false, %if.end6.out_crit_edge ], [ true, %entry.out_crit_edge ], [ true, %if.end.out_crit_edge ]
  %forw_bcast_list_lock = getelementptr i8, ptr %4, i32 2444
  tail call void @_raw_spin_lock_bh(ptr noundef %forw_bcast_list_lock) #9
  %pprev.i.i.i = getelementptr i8, ptr %work, i32 -28
  %18 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.not.i, label %if.end.i, label %batadv_forw_packet_steal.exit

if.end.i:                                         ; preds = %out
  %pprev.i.i5.i = getelementptr i8, ptr %work, i32 -36
  %20 = ptrtoint ptr %pprev.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev.i.i5.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.not.i.i, label %if.end.i.if.then15_crit_edge, label %if.then.i.i

if.end.i.if.then15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then.i.i:                                      ; preds = %if.end.i
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %21, align 4
  %tobool.not.i3.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %21, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %add.ptr, align 4
  %27 = ptrtoint ptr %pprev.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pprev.i.i5.i, align 4
  br label %if.then15

batadv_forw_packet_steal.exit:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %forw_bcast_list_lock) #9
  br label %cleanup

if.then15:                                        ; preds = %__hlist_del.exit.i.i, %if.end.i.if.then15_crit_edge
  %cleanup_list.i = getelementptr i8, ptr %work, i32 -32
  %28 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cleanup_list.i, ptr %pprev.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %forw_bcast_list_lock) #9
  tail call void @batadv_forw_packet_free(ptr noundef %add.ptr, i1 noundef zeroext %dropped.0.off0)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %batadv_forw_packet_steal.exit, %if.then12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_dat_drop_broadcast_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !47, !48}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/send.c", i32 80, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @batadv_send_skb_packet._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @batadv_send_skb_packet._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/batman-adv/send.c", i32 505, i32 11}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/batman-adv/send.c", i32 508, i32 12}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/batman-adv/send.c", i32 511, i32 12}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/batman-adv/send.c", i32 513, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/batman-adv/send.c", i32 1114, i32 3}
!16 = !{ptr @__func__.batadv_purge_outstanding_packets, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/batman-adv/send.c", i32 1118, i32 3}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../net/batman-adv/send.c", i32 680, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/batman-adv/send.c", i32 932, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/batman-adv/send.c", i32 881, i32 10}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/batman-adv/send.c", i32 884, i32 10}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/batman-adv/send.c", i32 887, i32 10}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/batman-adv/send.c", i32 893, i32 2}
!44 = !{ptr @batadv_forw_bcast_packet_to_list.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../net/batman-adv/send.c", i32 774, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @batadv_forw_bcast_packet_to_list.__key.21, !45, !"__key", i1 false, i1 false}
!48 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
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
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2148257679}
!61 = !{i64 2148172143, i64 2148172175, i64 2148172204, i64 2148172238, i64 2148172269, i64 2148172292}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2150588690}
!64 = !{ptr @batadv_hardif_neigh_release, ptr @batadv_hardif_release, ptr @batadv_neigh_node_release, ptr @batadv_orig_node_release}
!65 = !{i64 2149714143}
!66 = !{i64 542982, i64 543006, i64 543027, i64 543044, i64 543061}
!67 = !{i64 2149714409}
!68 = !{i64 2148168148, i64 2148168174, i64 2148168203, i64 2148168237, i64 2148168268, i64 2148168291}
!69 = !{i64 2148167567}
!70 = !{i64 543488, i64 543513, i64 543535, i64 543551, i64 543563, i64 543583, i64 543607, i64 543623, i64 543635}
!71 = !{i64 2148167755}
!72 = !{i64 2148169678, i64 2148169710, i64 2148169739, i64 2148169773, i64 2148169804, i64 2148169827}
