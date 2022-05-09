; ModuleID = '/llk/IR_all_yes/net/batman-adv/bridge_loop_avoidance.c_pt.bc'
source_filename = "../net/batman-adv/bridge_loop_avoidance.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_bla_backbone_gw = type { [6 x i8], i16, %struct.hlist_node, ptr, i32, %struct.atomic_t, %struct.atomic_t, i16, %struct.spinlock, %struct.work_struct, %struct.kref, %struct.callback_head }
%struct.batadv_bla_claim = type { [6 x i8], i16, ptr, %struct.spinlock, i32, %struct.hlist_node, %struct.callback_head, %struct.kref }
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
%struct.batadv_bcast_packet = type <{ i8, i8, i8, i8, i32, [6 x i8] }>
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.129 }
%union.anon.129 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.145, i16, i16, i16 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { [6 x i8], [6 x i8] }

@batadv_bla_update_orig_address.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"net/batman-adv/bridge_loop_avoidance.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__const.batadv_bla_init.claim_dest = private unnamed_addr constant [6 x i8] c"\FFC\05\00\00\00", align 1
@batadv_bla_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&bat_priv->bla.bcast_duplist_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bla hash registering\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@batadv_claim_hash_lock_class_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@batadv_backbone_hash_lock_class_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bla hashes initialized\0A\00", [40 x i8] zeroinitializer }, align 32
@batadv_bla_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&bat_priv->bla.work)->work)\00", [48 x i8] zeroinitializer }, align 32
@batadv_bla_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&bat_priv->bla.work)->timer\00", [34 x i8] zeroinitializer }, align 32
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@batadv_bla_is_backbone_gw_orig.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(): Unclaimed MAC %pM found. Claim it. Local: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.batadv_bla_rx = private unnamed_addr constant [14 x i8] c"batadv_bla_rx\00", align 1
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(): Roaming client %pM detected. Unclaim it.\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.batadv_bla_tx = private unnamed_addr constant [14 x i8] c"batadv_bla_tx\00", align 1
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(): Race for claim %pM detected. Drop packet.\0A\00", [47 x i8] zeroinitializer }, align 32
@batadv_bla_purge_claims.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): timed out.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.batadv_bla_purge_claims = private unnamed_addr constant [24 x i8] c"batadv_bla_purge_claims\00", align 1
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(): %pM, vid %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): backbone gw %pM timed out\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.batadv_bla_purge_backbone_gw = private unnamed_addr constant [29 x i8] c"batadv_bla_purge_backbone_gw\00", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@batadv_announce_mac = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"C\05C\05", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): CLAIM %pM on vid %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.batadv_bla_send_claim = private unnamed_addr constant [22 x i8] c"batadv_bla_send_claim\00", align 1
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): UNCLAIM %pM on vid %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): ANNOUNCE of %pM on vid %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): REQUEST of %pM to %pM on vid %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): LOOPDETECT of %pM to %pM on vid %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@batadv_bla_periodic_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Send loopdetect frame for vid %d\0A\00", [62 x i8] zeroinitializer }, align 32
@batadv_backbone_hash_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): not found (%pM, %d), creating new entry\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.batadv_bla_get_backbone_gw = private unnamed_addr constant [27 x i8] c"batadv_bla_get_backbone_gw\00", align 1
@batadv_bla_get_backbone_gw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&entry->crc_lock\00", [47 x i8] zeroinitializer }, align 32
@batadv_bla_get_backbone_gw.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&entry->report_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"became a backbone gateway\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.33 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"Possible loop on VLAN %d detected which can't be handled by BLA - please check your network setup!\0A\00", [60 x i8] zeroinitializer }, align 32
@batadv_bla_loopdetect_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\016batman_adv: %s: Possible loop on VLAN %d detected which can't be handled by BLA - please check your network setup!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"batadv_bla_loopdetect_report\00", [35 x i8] zeroinitializer }, align 32
@batadv_bla_loopdetect_report._entry_ptr = internal global ptr @batadv_bla_loopdetect_report._entry, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@batadv_claim_hash_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_bla_add_claim.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&claim->backbone_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(): adding new entry %pM, vid %d to hash ...\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.batadv_bla_add_claim = private unnamed_addr constant [21 x i8] c"batadv_bla_add_claim\00", align 1
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(): changing ownership for %pM, vid %d to gw %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"%s(): received a claim frame from another group. From: %pM on vid %d ...(hw_src %pM, hw_dst %pM)\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.batadv_bla_process_claim = private unnamed_addr constant [25 x i8] c"batadv_bla_process_claim\00", align 1
@.str.41 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"%s(): ERROR - this looks like a claim frame, but is useless. eth src %pM on vid %d ...(hw_src %pM, hw_dst %pM)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"taking other backbones claim group: %#.4x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(): ANNOUNCE vid %d (sent by %pM)... CRC = %#.4x\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.batadv_handle_announce = private unnamed_addr constant [23 x i8] c"batadv_handle_announce\00", align 1
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(): CRC FAILED for %pM/%d (my = %#.4x, sent = %#.4x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sending REQUEST to %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): REQUEST vid %d (sent by %pM)...\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.batadv_handle_request = private unnamed_addr constant [22 x i8] c"batadv_handle_request\00", align 1
@.str.47 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s(): received a claim request, send all of our own claims again\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.batadv_bla_answer_request = private unnamed_addr constant [26 x i8] c"batadv_bla_answer_request\00", align 1
@batadv_bla_answer_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s(): UNCLAIM %pM on vid %d (sent by %pM)...\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.batadv_handle_unclaim = private unnamed_addr constant [22 x i8] c"batadv_handle_unclaim\00", align 1
@__func__.batadv_bla_del_claim = private unnamed_addr constant [21 x i8] c"batadv_bla_del_claim\00", align 1
@batadv_netlink_family = external dso_local global %struct.genl_family, align 4
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 64]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 64]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1359, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1534, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1536, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [33 x i8] c"batadv_claim_hash_lock_class_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1517, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [36 x i8] c"batadv_backbone_hash_lock_class_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1518, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1577, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1579, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1952, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 2079, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 2086, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1302, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1306, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1244, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 695, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"batadv_announce_mac\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 51, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 389, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 398, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 407, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 418, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 425, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 723, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 110, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1390, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 503, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 515, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 519, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 538, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 468, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 471, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 706, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 713, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 734, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1166, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1202, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1056, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 854, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 863, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 643, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 909, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 599, i32 2 }
@___asan_gen_.220 = private constant [42 x i8] c"../net/batman-adv/bridge_loop_avoidance.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 946, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 991, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @batadv_bla_loopdetect_report._entry, ptr @batadv_bla_loopdetect_report._entry_ptr, ptr @.str, ptr @.str.1, ptr @batadv_bla_init.__key, ptr @.str.2, ptr @.str.3, ptr @batadv_claim_hash_lock_class_key, ptr @batadv_backbone_hash_lock_class_key, ptr @.str.4, ptr @batadv_bla_init.__key.5, ptr @.str.6, ptr @batadv_bla_init.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @batadv_announce_mac, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @batadv_bla_get_backbone_gw.__key, ptr @.str.29, ptr @batadv_bla_get_backbone_gw.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @batadv_bla_add_claim.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_bla_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_claim_hash_lock_class_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_backbone_hash_lock_class_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_bla_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_bla_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_announce_mac to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_bla_get_backbone_gw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_bla_get_backbone_gw.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_bla_loopdetect_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_bla_add_claim.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_bla_update_orig_address(ptr noundef %bat_priv, ptr nocapture noundef readonly %primary_if, ptr noundef readonly %oldif) local_unnamed_addr #0 align 64 {
entry:
  %mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %3, i32 noundef 6) #11
  %group1 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 9, i32 2
  %4 = ptrtoint ptr %group1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call, ptr %group1, align 4
  %bridge_loop_avoidance = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #11
  %5 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %bridge_loop_avoidance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %tobool3.not92 = icmp eq ptr %oldif, null
  %tobool3.not = or i1 %tobool3.not92, %tobool.not
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_bla_purge_claims(ptr noundef %bat_priv, ptr noundef null, i32 noundef 1)
  tail call fastcc void @batadv_bla_purge_backbone_gw(ptr noundef %bat_priv, i32 noundef 1)
  br label %cleanup

if.end5:                                          ; preds = %entry
  %backbone_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 2
  %7 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %backbone_hash, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %for.cond.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end5
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp96.not = icmp eq i32 %10, 0
  br i1 %cmp96.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %net_dev28 = getelementptr inbounds %struct.batadv_hard_iface, ptr %oldif, i32 0, i32 4
  %11 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rcu_read_unlock.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %8, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %13, i32 %i.097
  %14 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %call10 = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call12 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b77 = load i1, ptr @batadv_bla_update_orig_address.__warned, align 1
  br i1 %.b77, label %land.lhs.true14.do.end_crit_edge, label %if.then16

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_bla_update_orig_address.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1359, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true14.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx, align 4
  %tobool23.not = icmp eq ptr %19, null
  %add.ptr = getelementptr i8, ptr %19, i32 -8
  %tobool26.not9398 = icmp eq ptr %add.ptr, null
  %tobool26.not93 = or i1 %tobool23.not, %tobool26.not9398
  br i1 %tobool26.not93, label %do.end.for.end_crit_edge, label %do.end.for.body27_crit_edge

do.end.for.body27_crit_edge:                      ; preds = %do.end
  br label %for.body27

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body27:                                       ; preds = %for.inc.for.body27_crit_edge, %do.end.for.body27_crit_edge
  %backbone_gw.094 = phi ptr [ %add.ptr48, %for.inc.for.body27_crit_edge ], [ %add.ptr, %do.end.for.body27_crit_edge ]
  %20 = ptrtoint ptr %net_dev28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev28, align 4
  %dev_addr29 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr29, align 64
  %24 = ptrtoint ptr %backbone_gw.094 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %backbone_gw.094, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %xor.i.i.i = xor i32 %27, %25
  %add.ptr.i.i.i = getelementptr i8, ptr %backbone_gw.094, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %23, i32 4
  %30 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %31, %29
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end32, label %for.body27.for.inc_crit_edge

for.body27.for.inc_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32:                                         ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev, align 4
  %dev_addr36 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 86
  %34 = ptrtoint ptr %dev_addr36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr36, align 64
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = ptrtoint ptr %backbone_gw.094 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %backbone_gw.094, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 4
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i, align 2
  %41 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %add.ptr.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #11
  %42 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1124418309, ptr %mac.i, align 4
  %crc_lock.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.094, i32 0, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %crc_lock.i) #11
  %crc1.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.094, i32 0, i32 7
  %43 = ptrtoint ptr %crc1.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %crc1.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %crc_lock.i) #11
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %11, align 4
  %vid.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.094, i32 0, i32 1
  %46 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vid.i, align 2
  call fastcc void @batadv_bla_send_claim(ptr noundef %bat_priv, ptr noundef nonnull %mac.i, i16 noundef zeroext %47, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %for.body27.for.inc_crit_edge
  %hash_entry = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.094, i32 0, i32 2
  %48 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %hash_entry, align 4
  %tobool44.not = icmp eq ptr %49, null
  %add.ptr48 = getelementptr i8, ptr %49, i32 -8
  %tobool26.not99 = icmp eq ptr %add.ptr48, null
  %tobool26.not = or i1 %tobool44.not, %tobool26.not99
  br i1 %tobool26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body27_crit_edge

for.inc.for.body27_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i80 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i80, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i83

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i83:                                ; preds = %for.end
  %call1.i81 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, label %if.then.i86

land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i86, %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %50 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i87 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i88, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc = add nuw i32 %i.097, 1
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %rcu_read_unlock.exit.for.body_crit_edge, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %rcu_read_unlock.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_bla_purge_claims(ptr noundef %bat_priv, ptr noundef %primary_if, i32 noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %claim_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 1
  %0 = ptrtoint ptr %claim_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %claim_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp119.not = icmp eq i32 %3, 0
  br i1 %cmp119.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %now)
  %tobool19.not = icmp eq i32 %now, 0
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if, i32 0, i32 4
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rcu_read_unlock.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.0120
  %6 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b98 = load i1, ptr @batadv_bla_purge_claims.__warned, align 1
  br i1 %.b98, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_bla_purge_claims.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1289, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %11, null
  %add.ptr = getelementptr i8, ptr %11, i32 -60
  %tobool16.not116121 = icmp eq ptr %add.ptr, null
  %tobool16.not116 = or i1 %tobool13.not, %tobool16.not116121
  br i1 %tobool16.not116, label %do.end.for.end_crit_edge, label %do.end.for.body17_crit_edge

do.end.for.body17_crit_edge:                      ; preds = %do.end
  br label %for.body17

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body17:                                       ; preds = %batadv_backbone_gw_put.exit.for.body17_crit_edge, %do.end.for.body17_crit_edge
  %claim.0117 = phi ptr [ %add.ptr65, %batadv_backbone_gw_put.exit.for.body17_crit_edge ], [ %add.ptr, %do.end.for.body17_crit_edge ]
  %backbone_lock.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.0117, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %backbone_lock.i) #11
  %backbone_gw1.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.0117, i32 0, i32 2
  %12 = ptrtoint ptr %backbone_gw1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %backbone_gw1.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %13, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !142
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.body17.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !143

for.body17.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body17
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.batadv_bla_claim_get_backbone_gw.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.batadv_bla_claim_get_backbone_gw.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_claim_get_backbone_gw.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.body17.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.body17.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %batadv_bla_claim_get_backbone_gw.exit

batadv_bla_claim_get_backbone_gw.exit:            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.batadv_bla_claim_get_backbone_gw.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %backbone_lock.i) #11
  br i1 %tobool19.not, label %if.end21, label %batadv_bla_claim_get_backbone_gw.exit.do.body36_crit_edge

batadv_bla_claim_get_backbone_gw.exit.do.body36_crit_edge: ; preds = %batadv_bla_claim_get_backbone_gw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.end21:                                         ; preds = %batadv_bla_claim_get_backbone_gw.exit
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %xor.i.i.i = xor i32 %23, %21
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %19, i32 4
  %26 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %27, %25
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end24, label %if.end21.skip_crit_edge

if.end21.skip_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

if.end24:                                         ; preds = %if.end21
  %lasttime = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.0117, i32 0, i32 4
  %28 = ptrtoint ptr %lasttime to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lasttime, align 4
  %add.i = add i32 %29, 10000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body28, label %if.end24.skip_crit_edge

if.end24.skip_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

do.body28:                                        ; preds = %if.end24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %31 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %do.body28.do.body36_crit_edge, label %if.then31

do.body28.do.body36_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.then31:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.batadv_bla_purge_claims) #11
  br label %do.body36

do.body36:                                        ; preds = %if.then31, %do.body28.do.body36_crit_edge, %batadv_bla_claim_get_backbone_gw.exit.do.body36_crit_edge
  %call.i.i100 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %33 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %log_level, align 4
  %and40 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body36.if.end45_crit_edge, label %if.then42

do.body36.if.end45_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %vid = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.0117, i32 0, i32 1
  %35 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vid, align 2
  %conv = zext i16 %36 to i32
  %call44 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.batadv_bla_purge_claims, ptr noundef nonnull %claim.0117, i32 noundef %conv) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %do.body36.if.end45_crit_edge
  %vid52 = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.0117, i32 0, i32 1
  %37 = ptrtoint ptr %vid52 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid52, align 2
  tail call fastcc void @batadv_handle_unclaim(ptr noundef %bat_priv, ptr noundef %primary_if, ptr noundef %13, ptr noundef nonnull %claim.0117, i16 noundef zeroext %38)
  br label %skip

skip:                                             ; preds = %if.end45, %if.end24.skip_crit_edge, %if.end21.skip_crit_edge
  %tobool.not.i101 = icmp eq ptr %13, null
  br i1 %tobool.not.i101, label %skip.batadv_backbone_gw_put.exit_crit_edge, label %if.end.i

skip.batadv_backbone_gw_put.exit_crit_edge:       ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit

if.end.i:                                         ; preds = %skip
  %call.i.i.i.i.i.i.i103 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i104 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i104, label %if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_backbone_gw_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %13, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %batadv_backbone_gw_put.exit

batadv_backbone_gw_put.exit:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge, %skip.batadv_backbone_gw_put.exit_crit_edge
  %hash_entry = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.0117, i32 0, i32 5
  %40 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %hash_entry, align 4
  %tobool61.not = icmp eq ptr %41, null
  %add.ptr65 = getelementptr i8, ptr %41, i32 -60
  %tobool16.not122 = icmp eq ptr %add.ptr65, null
  %tobool16.not = or i1 %tobool61.not, %tobool16.not122
  br i1 %tobool16.not, label %batadv_backbone_gw_put.exit.for.end_crit_edge, label %batadv_backbone_gw_put.exit.for.body17_crit_edge

batadv_backbone_gw_put.exit.for.body17_crit_edge: ; preds = %batadv_backbone_gw_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17

batadv_backbone_gw_put.exit.for.end_crit_edge:    ; preds = %batadv_backbone_gw_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %batadv_backbone_gw_put.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i105 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i105, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i108

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i108:                               ; preds = %for.end
  %call1.i106 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106)
  %tobool.not.i107 = icmp eq i32 %call1.i106, 0
  br i1 %tobool.not.i107, label %land.lhs.true.i108.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i110

land.lhs.true.i108.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i110:                              ; preds = %land.lhs.true.i108
  %.b4.i109 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i109, label %land.lhs.true2.i110.rcu_read_unlock.exit_crit_edge, label %if.then.i111

land.lhs.true2.i110.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i111:                                     ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i111, %land.lhs.true2.i110.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i108.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %42 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i112 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i112 to ptr
  %preempt_count.i.i.i.i113 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i113, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i113, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc = add nuw i32 %i.0120, 1
  %46 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %rcu_read_unlock.exit.for.body_crit_edge, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %rcu_read_unlock.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_bla_purge_backbone_gw(ptr noundef %bat_priv, i32 noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bla = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33
  %backbone_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 2
  %0 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backbone_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp71.not = icmp eq i32 %3, 0
  br i1 %cmp71.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %now)
  %tobool9.not = icmp eq i32 %now, 0
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.072
  %6 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_locks, align 4
  %arrayidx1 = getelementptr %struct.spinlock, ptr %7, i32 %i.072
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1) #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -8
  %tobool5.not6973 = icmp eq ptr %add.ptr, null
  %tobool5.not69 = or i1 %tobool2.not, %tobool5.not6973
  br i1 %tobool5.not69, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %backbone_gw.070 = phi ptr [ %add.ptr32, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.070, i32 0, i32 2
  %10 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_entry, align 4
  br i1 %tobool9.not, label %if.end11, label %land.rhs.purge_now_crit_edge

land.rhs.purge_now_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %purge_now

if.end11:                                         ; preds = %land.rhs
  %lasttime = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.070, i32 0, i32 4
  %12 = ptrtoint ptr %lasttime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lasttime, align 4
  %add.i = add i32 %13, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %if.end11
  %bat_priv14 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.070, i32 0, i32 3
  %15 = ptrtoint ptr %bat_priv14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bat_priv14, align 4
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %16, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %17 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.purge_now_crit_edge, label %if.then17

do.body.purge_now_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %purge_now

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %16, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.batadv_bla_purge_backbone_gw, ptr noundef nonnull %backbone_gw.070) #11
  br label %purge_now

purge_now:                                        ; preds = %if.then17, %do.body.purge_now_crit_edge, %land.rhs.purge_now_crit_edge
  %request_sent = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.070, i32 0, i32 6
  %call.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %request_sent, i32 noundef 4) #11
  %19 = ptrtoint ptr %request_sent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %request_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %purge_now.if.end24_crit_edge, label %if.then22

purge_now.if.end24_crit_edge:                     ; preds = %purge_now
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %purge_now
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bla, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %bla, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bla, ptr %bla, i32 1, ptr elementtype(i32) %bla) #11, !srcloc !148
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %purge_now.if.end24_crit_edge
  tail call fastcc void @batadv_bla_del_backbone_claims(ptr noundef nonnull %backbone_gw.070)
  %22 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hash_entry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.070, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pprev2.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %23, ptr %25, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end24.if.end.i_crit_edge, label %do.body13.i.i

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body13.i.i:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %pprev14.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i, %if.end24.if.end.i_crit_edge
  %28 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.070, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %backbone_gw.070, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %if.end11.for.inc_crit_edge
  %tobool28.not = icmp eq ptr %11, null
  %add.ptr32 = getelementptr i8, ptr %11, i32 -8
  %tobool5.not74 = icmp eq ptr %add.ptr32, null
  %tobool5.not = or i1 %tobool28.not, %tobool5.not74
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1) #11
  %inc = add nuw i32 %i.072, 1
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_bla_status_update(ptr noundef %net_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call1 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @batadv_bla_update_orig_address(ptr noundef %add.ptr.i, ptr noundef nonnull %call1, ptr noundef nonnull %call1)
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call1, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #11, !callees !149
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 110, ptr noundef nonnull @.str.26) #11
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
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !144

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
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %18 = call i32 @llvm.read_register.i32(metadata !130) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_bla_init(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bcast_duplist_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %bcast_duplist_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @batadv_bla_init.__key, i16 noundef signext 3) #11
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %0 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %claim_dest7 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 9
  %2 = call ptr @memcpy(ptr %claim_dest7, ptr @__const.batadv_bla_init.claim_dest, i32 3)
  %type = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 9, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %type, align 1
  %call10 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call10, i32 0, i32 4
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %call13 = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %7, i32 noundef 6) #11
  %group = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 9, i32 2
  %8 = ptrtoint ptr %group to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call13, ptr %group, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call10, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end19_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.if.end19_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %if.end19

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #11, !callees !149
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %group18 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 9, i32 2
  %10 = ptrtoint ptr %group18 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %group18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %11, -50
  %entrytime22 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 0, i32 2
  %12 = ptrtoint ptr %entrytime22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %entrytime22, align 4
  %entrytime22.1 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 1, i32 2
  %13 = ptrtoint ptr %entrytime22.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %entrytime22.1, align 4
  %entrytime22.2 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 2, i32 2
  %14 = ptrtoint ptr %entrytime22.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %entrytime22.2, align 4
  %entrytime22.3 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 3, i32 2
  %15 = ptrtoint ptr %entrytime22.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %entrytime22.3, align 4
  %entrytime22.4 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 4, i32 2
  %16 = ptrtoint ptr %entrytime22.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %entrytime22.4, align 4
  %entrytime22.5 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 5, i32 2
  %17 = ptrtoint ptr %entrytime22.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %entrytime22.5, align 4
  %entrytime22.6 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 6, i32 2
  %18 = ptrtoint ptr %entrytime22.6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %entrytime22.6, align 4
  %entrytime22.7 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 7, i32 2
  %19 = ptrtoint ptr %entrytime22.7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %entrytime22.7, align 4
  %entrytime22.8 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 8, i32 2
  %20 = ptrtoint ptr %entrytime22.8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %entrytime22.8, align 4
  %entrytime22.9 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 9, i32 2
  %21 = ptrtoint ptr %entrytime22.9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %entrytime22.9, align 4
  %entrytime22.10 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 10, i32 2
  %22 = ptrtoint ptr %entrytime22.10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %entrytime22.10, align 4
  %entrytime22.11 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 11, i32 2
  %23 = ptrtoint ptr %entrytime22.11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %entrytime22.11, align 4
  %entrytime22.12 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 12, i32 2
  %24 = ptrtoint ptr %entrytime22.12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %entrytime22.12, align 4
  %entrytime22.13 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 13, i32 2
  %25 = ptrtoint ptr %entrytime22.13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %entrytime22.13, align 4
  %entrytime22.14 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 14, i32 2
  %26 = ptrtoint ptr %entrytime22.14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %entrytime22.14, align 4
  %entrytime22.15 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 15, i32 2
  %27 = ptrtoint ptr %entrytime22.15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %entrytime22.15, align 4
  %bcast_duplist_curr = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 7
  %28 = ptrtoint ptr %bcast_duplist_curr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bcast_duplist_curr, align 4
  %loopdetect_next = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 5
  %call.i.i126 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loopdetect_next, i32 noundef 4) #11
  %29 = ptrtoint ptr %loopdetect_next to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 6, ptr %loopdetect_next, align 4
  %claim_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 1
  %30 = ptrtoint ptr %claim_hash to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %claim_hash, align 4
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %if.end28, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %call29 = tail call ptr @batadv_hash_new(i32 noundef 128) #11
  %32 = ptrtoint ptr %claim_hash to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call29, ptr %claim_hash, align 4
  %tobool34.not = icmp eq ptr %call29, null
  br i1 %tobool34.not, label %if.end28.cleanup_crit_edge, label %if.end36

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call37 = tail call ptr @batadv_hash_new(i32 noundef 32) #11
  %backbone_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 2
  %33 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call37, ptr %backbone_hash, align 4
  %tobool41.not = icmp eq ptr %call37, null
  %34 = ptrtoint ptr %claim_hash to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %claim_hash, align 4
  br i1 %tobool41.not, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_hash_destroy(ptr noundef %35) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  tail call void @batadv_hash_set_lock_class(ptr noundef %35, ptr noundef nonnull @batadv_claim_hash_lock_class_key) #11
  %36 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %backbone_hash, align 4
  tail call void @batadv_hash_set_lock_class(ptr noundef %37, ptr noundef nonnull @batadv_backbone_hash_lock_class_key) #11
  %call.i.i127 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %38 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %log_level, align 4
  %and54 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end45.if.end58_crit_edge, label %if.then56

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then56:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.4) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end45.if.end58_crit_edge
  %work = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 10
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %40 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @batadv_bla_init.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry74 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 10, i32 0, i32 1
  %41 = ptrtoint ptr %entry74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry74, ptr %entry74, align 4
  %prev.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 10, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry74, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 10, i32 0, i32 2
  %43 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @batadv_bla_periodic_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @batadv_bla_init.__key.7) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %44 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %work, i32 noundef 1000) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then42, %if.end28.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -12, %if.then42 ], [ 0, %if.end19.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hash_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hash_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hash_set_lock_class(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_bla_periodic_work(ptr noundef %work) #0 align 64 {
entry:
  %mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -728
  %call4 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr3)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.batadv_hardif_put.exit_crit_edge, label %if.end

entry.batadv_hardif_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.end:                                           ; preds = %entry
  tail call fastcc void @batadv_bla_purge_claims(ptr noundef %add.ptr3, ptr noundef nonnull %call4, i32 noundef 0)
  tail call fastcc void @batadv_bla_purge_backbone_gw(ptr noundef %add.ptr3, i32 noundef 0)
  %bridge_loop_avoidance = getelementptr i8, ptr %work, i32 -696
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #11
  %0 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bridge_loop_avoidance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %if.end.if.end.i_crit_edge, label %if.end8

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end8:                                          ; preds = %if.end
  %loopdetect_next = getelementptr i8, ptr %work, i32 -316
  %call.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loopdetect_next, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %loopdetect_next, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %loopdetect_next, ptr %loopdetect_next, i32 1, ptr elementtype(i32) %loopdetect_next) #11, !srcloc !152
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then10, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %loopdetect_addr = getelementptr i8, ptr %work, i32 -328
  tail call void @get_random_bytes(ptr noundef %loopdetect_addr, i32 noundef 6) #11
  %3 = ptrtoint ptr %loopdetect_addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -70, ptr %loopdetect_addr, align 4
  %arrayidx16 = getelementptr i8, ptr %work, i32 -327
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -66, ptr %arrayidx16, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %loopdetect_lasttime = getelementptr i8, ptr %work, i32 -320
  %6 = ptrtoint ptr %loopdetect_lasttime to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %loopdetect_lasttime, align 4
  %call.i.i121 = tail call zeroext i1 @__kasan_check_write(ptr noundef %loopdetect_next, i32 noundef 4) #11
  %7 = ptrtoint ptr %loopdetect_next to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 6, ptr %loopdetect_next, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %if.end8.if.end20_crit_edge
  %backbone_hash = getelementptr i8, ptr %work, i32 -332
  %8 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %backbone_hash, align 4
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %if.end20.if.end.i_crit_edge, label %for.cond.preheader

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.cond.preheader:                               ; preds = %if.end20
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp149.not = icmp eq i32 %11, 0
  br i1 %cmp149.not, label %for.cond.preheader.if.end.i_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end.i_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call4, i32 0, i32 4
  %12 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %log_level.i = getelementptr i8, ptr %work, i32 -672
  %loopdetect_addr.i = getelementptr i8, ptr %work, i32 -328
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rcu_read_unlock.exit.for.body_crit_edge ]
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 4
  %arrayidx25 = getelementptr %struct.hlist_head, ptr %14, i32 %i.0150
  %15 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %call26 = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call28 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true30

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true30:                                  ; preds = %land.lhs.true
  %.b118 = load i1, ptr @batadv_bla_periodic_work.__warned, align 1
  br i1 %.b118, label %land.lhs.true30.do.end_crit_edge, label %if.then32

land.lhs.true30.do.end_crit_edge:                 ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_bla_periodic_work.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1473, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then32, %land.lhs.true30.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx25, align 4
  %tobool40.not = icmp eq ptr %20, null
  %add.ptr43 = getelementptr i8, ptr %20, i32 -8
  %tobool45.not146151 = icmp eq ptr %add.ptr43, null
  %tobool45.not146 = or i1 %tobool40.not, %tobool45.not146151
  br i1 %tobool45.not146, label %do.end.for.end_crit_edge, label %do.end.for.body46_crit_edge

do.end.for.body46_crit_edge:                      ; preds = %do.end
  br label %for.body46

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body46:                                       ; preds = %for.inc.for.body46_crit_edge, %do.end.for.body46_crit_edge
  %backbone_gw.0147 = phi ptr [ %add.ptr75, %for.inc.for.body46_crit_edge ], [ %add.ptr43, %do.end.for.body46_crit_edge ]
  %21 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr, align 64
  %25 = ptrtoint ptr %backbone_gw.0147 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %backbone_gw.0147, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %xor.i.i.i = xor i32 %28, %26
  %add.ptr.i.i.i = getelementptr i8, ptr %backbone_gw.0147, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %24, i32 4
  %31 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %32, %30
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end50, label %for.body46.for.inc_crit_edge

for.body46.for.inc_crit_edge:                     ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end50:                                         ; preds = %for.body46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %lasttime = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.0147, i32 0, i32 4
  %34 = ptrtoint ptr %lasttime to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %lasttime, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #11
  %35 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1124418309, ptr %mac.i, align 4
  %crc_lock.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.0147, i32 0, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %crc_lock.i) #11
  %crc1.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.0147, i32 0, i32 7
  %36 = ptrtoint ptr %crc1.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %crc1.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %crc_lock.i) #11
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %12, align 4
  %vid.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.0147, i32 0, i32 1
  %39 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vid.i, align 2
  call fastcc void @batadv_bla_send_claim(ptr noundef %add.ptr3, ptr noundef nonnull %mac.i, i16 noundef zeroext %40, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #11
  br i1 %cmp.i.i, label %if.then52, label %if.end50.if.end53_crit_edge

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.end50
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %41 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i128 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i128, label %if.then52.batadv_bla_send_loopdetect.exit_crit_edge, label %if.then.i131

if.then52.batadv_bla_send_loopdetect.exit_crit_edge: ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_send_loopdetect.exit

if.then.i131:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vid.i, align 2
  %conv.i = zext i16 %44 to i32
  %call1.i130 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr3, ptr noundef nonnull @.str.27, i32 noundef %conv.i) #11
  br label %batadv_bla_send_loopdetect.exit

batadv_bla_send_loopdetect.exit:                  ; preds = %if.then.i131, %if.then52.batadv_bla_send_loopdetect.exit_crit_edge
  %45 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vid.i, align 2
  call fastcc void @batadv_bla_send_claim(ptr noundef %add.ptr3, ptr noundef %loopdetect_addr.i, i16 noundef zeroext %46, i32 noundef 4) #11
  br label %if.end53

if.end53:                                         ; preds = %batadv_bla_send_loopdetect.exit, %if.end50.if.end53_crit_edge
  %request_sent = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.0147, i32 0, i32 6
  %call.i.i122 = call zeroext i1 @__kasan_check_read(ptr noundef %request_sent, i32 noundef 4) #11
  %47 = ptrtoint ptr %request_sent to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %request_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp55 = icmp eq i32 %48, 0
  br i1 %cmp55, label %if.end53.for.inc_crit_edge, label %if.end57

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end57:                                         ; preds = %if.end53
  %wait_periods = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.0147, i32 0, i32 5
  %call.i.i123 = call zeroext i1 @__kasan_check_write(ptr noundef %wait_periods, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !151
  call void @llvm.prefetch.p0(ptr %wait_periods, i32 1, i32 3, i32 1) #11
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wait_periods, ptr %wait_periods, i32 1, ptr elementtype(i32) %wait_periods) #11, !srcloc !152
  %asmresult.i.i.i.i.i124 = extractvalue { i32, i32 } %49, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i124)
  %cmp.i.i125 = icmp eq i32 %asmresult.i.i.i.i.i124, 0
  br i1 %cmp.i.i125, label %if.end60, label %if.end57.for.inc_crit_edge

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end60:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %bat_priv61 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.0147, i32 0, i32 3
  %50 = ptrtoint ptr %bat_priv61 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bat_priv61, align 4
  %bla62 = getelementptr inbounds %struct.batadv_priv, ptr %51, i32 0, i32 33
  %call.i.i126 = call zeroext i1 @__kasan_check_write(ptr noundef %bla62, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %bla62, i32 1, i32 3, i32 1) #11
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bla62, ptr %bla62, i32 1, ptr elementtype(i32) %bla62) #11, !srcloc !148
  %call.i.i127 = call zeroext i1 @__kasan_check_write(ptr noundef %request_sent, i32 noundef 4) #11
  %53 = ptrtoint ptr %request_sent to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %request_sent, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end60, %if.end57.for.inc_crit_edge, %if.end53.for.inc_crit_edge, %for.body46.for.inc_crit_edge
  %hash_entry = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.0147, i32 0, i32 2
  %54 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %hash_entry, align 4
  %tobool71.not = icmp eq ptr %55, null
  %add.ptr75 = getelementptr i8, ptr %55, i32 -8
  %tobool45.not152 = icmp eq ptr %add.ptr75, null
  %tobool45.not = or i1 %tobool71.not, %tobool45.not152
  br i1 %tobool45.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body46_crit_edge

for.inc.for.body46_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body46

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i132 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i132, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i135

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i135:                               ; preds = %for.end
  %call1.i133 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i133)
  %tobool.not.i134 = icmp eq i32 %call1.i133, 0
  br i1 %tobool.not.i134, label %land.lhs.true.i135.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i137

land.lhs.true.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i137:                              ; preds = %land.lhs.true.i135
  %.b4.i136 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i136, label %land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge, label %if.then.i138

land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i138:                                     ; preds = %land.lhs.true2.i137
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i138, %land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i135.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %56 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i139 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i139 to ptr
  %preempt_count.i.i.i.i140 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i140, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i140, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc = add nuw i32 %i.0150, 1
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %61
  br i1 %cmp, label %rcu_read_unlock.exit.for.body_crit_edge, label %rcu_read_unlock.exit.if.end.i_crit_edge

rcu_read_unlock.exit.if.end.i_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.i:                                         ; preds = %rcu_read_unlock.exit.if.end.i_crit_edge, %for.cond.preheader.if.end.i_crit_edge, %if.end20.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call4, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @batadv_hardif_release(ptr noundef %refcount.i) #11, !callees !149
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %entry.batadv_hardif_put.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %63 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i142 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %63, ptr noundef %work, i32 noundef 1000) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_bla_check_bcast_duplist(ptr noundef %bat_priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr %struct.batadv_bcast_packet, ptr %1, i32 1
  %orig = getelementptr inbounds %struct.batadv_bcast_packet, ptr %1, i32 0, i32 5
  %call = tail call fastcc zeroext i1 @batadv_bla_check_duplist(ptr noundef %bat_priv, ptr noundef %skb, ptr noundef %add.ptr, ptr noundef %orig)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @batadv_bla_check_duplist(ptr noundef %bat_priv, ptr noundef %skb, ptr noundef %payload_ptr, ptr noundef readonly %orig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_skb_crc32(ptr noundef %skb, ptr noundef %payload_ptr) #11
  %bcast_duplist_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %bcast_duplist_lock) #11
  %bcast_duplist_curr = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 7
  %0 = ptrtoint ptr %bcast_duplist_curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bcast_duplist_curr, align 4
  %tobool.not = icmp eq ptr %orig, null
  %add.ptr.i = getelementptr i8, ptr %orig, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %1, %i.071
  %rem = srem i32 %add, 16
  %arrayidx = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem
  %entrytime = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem, i32 2
  %2 = ptrtoint ptr %entrytime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entrytime, align 4
  %add.i = add i32 %3, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  %crc5 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem, i32 1
  %5 = ptrtoint ptr %crc5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crc5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call)
  %cmp6.not = icmp eq i32 %6, %call
  br i1 %cmp6.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end8.out_crit_edge, label %land.lhs.true

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true:                                    ; preds = %if.end8
  %7 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %orig, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %10 to i32
  %or.i = or i32 %8, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i65 = icmp eq i32 %or.i, 0
  br i1 %cmp.i65, label %land.lhs.true.out_crit_edge, label %land.lhs.true10

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true10:                                  ; preds = %land.lhs.true
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add.ptr.i66 = getelementptr i8, ptr %arrayidx, i32 4
  %13 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i66, align 2
  %conv.i67 = zext i16 %14 to i32
  %or.i68 = or i32 %12, %conv.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i68)
  %cmp.i69 = icmp eq i32 %or.i68, 0
  br i1 %cmp.i69, label %land.lhs.true10.out_crit_edge, label %if.then13

land.lhs.true10.out_crit_edge:                    ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then13:                                        ; preds = %land.lhs.true10
  %xor.i.i.i = xor i32 %12, %8
  %xor37.i.i.i = xor i16 %14, %10
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then13.for.inc_crit_edge, label %if.then13.out_crit_edge

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.then13.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %15 = ptrtoint ptr %bcast_duplist_curr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bcast_duplist_curr, align 4
  %sub = add i32 %16, 15
  %rem23 = srem i32 %sub, 16
  %arrayidx26 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem23
  %crc27 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem23, i32 1
  %17 = ptrtoint ptr %crc27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call, ptr %crc27, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %entrytime28 = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem23, i32 2
  %19 = ptrtoint ptr %entrytime28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %entrytime28, align 4
  br i1 %tobool.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %orig, align 4
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx26, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %arrayidx26, i32 4
  %25 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr1.i, align 2
  br label %if.end35

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %26 = call ptr @memset(ptr %arrayidx26, i32 0, i32 6)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then30
  %27 = ptrtoint ptr %bcast_duplist_curr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %rem23, ptr %bcast_duplist_curr, align 4
  br label %out

out:                                              ; preds = %if.end35, %if.then13.out_crit_edge, %land.lhs.true10.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end8.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %if.end35 ], [ true, %if.then13.out_crit_edge ], [ true, %land.lhs.true10.out_crit_edge ], [ true, %land.lhs.true.out_crit_edge ], [ true, %if.end8.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcast_duplist_lock) #11
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %bat_priv, ptr nocapture noundef readonly %orig, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %backbone_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 2
  %0 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backbone_hash, align 4
  %bridge_loop_avoidance = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #11
  %2 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bridge_loop_avoidance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp90.not = icmp eq i32 %5, 0
  br i1 %cmp90.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr1.i.i.i = getelementptr i8, ptr %orig, i32 4
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit84.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rcu_read_unlock.exit84.for.body_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %7, i32 %i.091
  %8 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %call4 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b63 = load i1, ptr @batadv_bla_is_backbone_gw_orig.__warned, align 1
  br i1 %.b63, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_bla_is_backbone_gw_orig.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1749, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %13, null
  %add.ptr = getelementptr i8, ptr %13, i32 -8
  %tobool20.not8792 = icmp eq ptr %add.ptr, null
  %tobool20.not87 = or i1 %tobool17.not, %tobool20.not8792
  br i1 %tobool20.not87, label %do.end.for.end_crit_edge, label %for.body21.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body21.lr.ph:                                 ; preds = %do.end
  %14 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig, align 4
  %16 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %for.body21

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %for.body21.lr.ph
  %backbone_gw.088 = phi ptr [ %add.ptr, %for.body21.lr.ph ], [ %add.ptr42, %for.inc.for.body21_crit_edge ]
  %18 = ptrtoint ptr %backbone_gw.088 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %backbone_gw.088, align 4
  %xor.i.i.i = xor i32 %15, %19
  %add.ptr.i.i.i = getelementptr i8, ptr %backbone_gw.088, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %17, %21
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true24, label %for.body21.for.inc_crit_edge

for.body21.for.inc_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true24:                                  ; preds = %for.body21
  %vid25 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.088, i32 0, i32 1
  %22 = ptrtoint ptr %vid25 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vid25, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %vid)
  %cmp27 = icmp eq i16 %23, %vid
  br i1 %cmp27, label %if.then29, label %land.lhs.true24.for.inc_crit_edge

land.lhs.true24.for.inc_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then29:                                        ; preds = %land.lhs.true24
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i65, label %if.then29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

if.then29.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %if.then29
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %if.then29.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %24 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i72 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true24.for.inc_crit_edge, %for.body21.for.inc_crit_edge
  %hash_entry = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.088, i32 0, i32 2
  %28 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hash_entry, align 4
  %tobool38.not = icmp eq ptr %29, null
  %add.ptr42 = getelementptr i8, ptr %29, i32 -8
  %tobool20.not93 = icmp eq ptr %add.ptr42, null
  %tobool20.not = or i1 %tobool38.not, %tobool20.not93
  br i1 %tobool20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body21_crit_edge

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i74 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i74, label %for.end.rcu_read_unlock.exit84_crit_edge, label %land.lhs.true.i77

for.end.rcu_read_unlock.exit84_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit84

land.lhs.true.i77:                                ; preds = %for.end
  %call1.i75 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge, label %land.lhs.true2.i79

land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit84

land.lhs.true2.i79:                               ; preds = %land.lhs.true.i77
  %.b4.i78 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78, label %land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge, label %if.then.i80

land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge: ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit84

if.then.i80:                                      ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit84

rcu_read_unlock.exit84:                           ; preds = %if.then.i80, %land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge, %land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge, %for.end.rcu_read_unlock.exit84_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %30 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i81 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i81 to ptr
  %preempt_count.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i82, align 4
  %sub.i.i.i83 = add i32 %33, -1
  store volatile i32 %sub.i.i.i83, ptr %preempt_count.i.i.i.i82, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc = add nuw i32 %i.091, 1
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %rcu_read_unlock.exit84.for.body_crit_edge, label %rcu_read_unlock.exit84.cleanup_crit_edge

rcu_read_unlock.exit84.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rcu_read_unlock.exit84.for.body_crit_edge:        ; preds = %rcu_read_unlock.exit84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %rcu_read_unlock.exit84.cleanup_crit_edge, %rcu_read_unlock.exit, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ], [ false, %for.cond.preheader.cleanup_crit_edge ], [ false, %rcu_read_unlock.exit84.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_bla_is_backbone_gw(ptr noundef %skb, ptr nocapture noundef readonly %orig_node, i32 noundef %hdr_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_priv = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 25
  %0 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_priv, align 4
  %bridge_loop_avoidance = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #11
  %2 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bridge_loop_avoidance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %hdr_size, 14
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge, !prof !143

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp3.i = icmp ult i32 %5, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !143

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end3_crit_edge

pskb_may_pull.exit.if.end3_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %pskb_may_pull.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef %hdr_size) #11
  %8 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bat_priv, align 4
  %call6 = tail call fastcc ptr @batadv_backbone_hash_find(ptr noundef %9, ptr noundef %orig_node, i16 noundef zeroext %call4)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end3.cleanup_crit_edge, label %if.end.i16

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i16:                                       ; preds = %if.end3
  %refcount.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call6, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %call6, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %pskb_may_pull.exit.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ true, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ true, %if.then10.i.i.i.i.i ], [ true, %if.then.i.i ], [ false, %if.end.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @batadv_get_vid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_backbone_hash_find(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %backbone_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 2
  %0 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backbone_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %search_entry.sroa.0.sroa.0.0.extract.shift = lshr i32 %3, 24
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %search_entry.sroa.9.sroa.0.0.extract.shift = lshr i16 %5, 8
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = shl i16 %5, 8
  %shl60.i.i = zext i16 %8 to i32
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %conv64.i.i = zext i16 %search_entry.sroa.9.sroa.0.0.extract.shift to i32
  %add65.i.i = add nuw nsw i32 %add61.i.i, %conv64.i.i
  %conv68.i.i = shl i32 %3, 24
  %9 = shl i32 %3, 8
  %shl74.i.i = and i32 %9, 16711680
  %10 = lshr i32 %3, 8
  %shl79.i.i = and i32 %10, 65280
  %add70.i.i = add nuw nsw i32 %search_entry.sroa.0.sroa.0.0.extract.shift, -559038731
  %add75.i.i = add i32 %add70.i.i, %conv68.i.i
  %add80.i.i = add i32 %add75.i.i, %shl74.i.i
  %add84.i.i = add i32 %add80.i.i, %shl79.i.i
  %xor85.i.i = xor i32 %add65.i.i, -559038731
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #11
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i.i = xor i32 %sub87.i.i, %add84.i.i
  %or.i201.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #11
  %sub90.i.i = sub i32 %xor88.i.i, %or.i201.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add65.i.i
  %or.i202.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #11
  %sub93.i.i = sub i32 %xor91.i.i, %or.i202.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i203.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #11
  %sub96.i.i = sub i32 %xor94.i.i, %or.i203.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i204.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #11
  %sub99.i.i = sub i32 %xor97.i.i, %or.i204.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i205.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #11
  %sub102.i.i = sub i32 %xor100.i.i, %or.i205.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i206.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #11
  %sub105.i.i = sub i32 %xor103.i.i, %or.i206.i.i
  %add1.i.i = add i32 %sub105.i.i, -559038735
  %rev = tail call i16 @llvm.bswap.i16(i16 %vid)
  %add80.i8.i = zext i16 %rev to i32
  %add84.i10.i = add i32 %add1.i.i, %add80.i8.i
  %or.i.i12.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #11
  %sub87.i13.i = sub i32 0, %or.i.i12.i
  %xor88.i14.i = xor i32 %add84.i10.i, %sub87.i13.i
  %or.i201.i15.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i13.i, i32 %sub87.i13.i, i32 11) #11
  %sub90.i16.i = sub i32 %xor88.i14.i, %or.i201.i15.i
  %xor91.i17.i = xor i32 %sub90.i16.i, %add1.i.i
  %or.i202.i18.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i16.i, i32 %sub90.i16.i, i32 25) #11
  %sub93.i19.i = sub i32 %xor91.i17.i, %or.i202.i18.i
  %xor94.i20.i = xor i32 %sub93.i19.i, %sub87.i13.i
  %or.i203.i21.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i19.i, i32 %sub93.i19.i, i32 16) #11
  %sub96.i22.i = sub i32 %xor94.i20.i, %or.i203.i21.i
  %xor97.i23.i = xor i32 %sub96.i22.i, %sub90.i16.i
  %or.i204.i24.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i22.i, i32 %sub96.i22.i, i32 4) #11
  %sub99.i25.i = sub i32 %xor97.i23.i, %or.i204.i24.i
  %xor100.i26.i = xor i32 %sub99.i25.i, %sub93.i19.i
  %or.i205.i27.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i25.i, i32 %sub99.i25.i, i32 14) #11
  %sub102.i28.i = sub i32 %xor100.i26.i, %or.i205.i27.i
  %xor103.i29.i = xor i32 %sub102.i28.i, %sub96.i22.i
  %or.i206.i30.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i28.i, i32 %sub102.i28.i, i32 24) #11
  %sub105.i31.i = sub i32 %xor103.i29.i, %or.i206.i30.i
  %rem.i = urem i32 %sub105.i31.i, %7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %12, i32 %rem.i
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @batadv_backbone_hash_find.__warned, align 1
  br i1 %.b56, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_backbone_hash_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 276, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %18, null
  %add.ptr = getelementptr i8, ptr %18, i32 -8
  %tobool17.not8387 = icmp eq ptr %add.ptr, null
  %tobool17.not83 = or i1 %tobool15.not, %tobool17.not8387
  br i1 %tobool17.not83, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %backbone_gw.084 = phi ptr [ %add.ptr37, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.084, i32 0, i32 2
  %19 = ptrtoint ptr %backbone_gw.084 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %backbone_gw.084, align 4
  %xor.i.i.i.i = xor i32 %20, %3
  %add.ptr.i.i.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %backbone_gw.084, i32 0, i32 0, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %22, %5
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %batadv_compare_backbone_gw.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

batadv_compare_backbone_gw.exit:                  ; preds = %for.body
  %vid.i59 = getelementptr %struct.batadv_bla_backbone_gw, ptr %backbone_gw.084, i32 0, i32 1
  %23 = ptrtoint ptr %vid.i59 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid.i59, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %vid)
  %cmp.not.i = icmp eq i16 %24, %vid
  br i1 %cmp.not.i, label %if.end20, label %batadv_compare_backbone_gw.exit.for.inc_crit_edge

batadv_compare_backbone_gw.exit.for.inc_crit_edge: ; preds = %batadv_compare_backbone_gw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end20:                                         ; preds = %batadv_compare_backbone_gw.exit
  %refcount = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.084, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %25 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end20
  %27 = phi i32 [ %26, %if.end20 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %28 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %27, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %29 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %31 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %30, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %30
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !144

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %32 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %33, 1
  %34 = or i32 %add5.i.i.i.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %35 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %36 = phi i32 [ %33, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.i.i.i.i.not = icmp eq i32 %36, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %batadv_compare_backbone_gw.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %37 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %hash_entry, align 4
  %tobool33.not = icmp eq ptr %38, null
  %add.ptr37 = getelementptr i8, ptr %38, i32 -8
  %tobool17.not88 = icmp eq ptr %add.ptr37, null
  %tobool17.not = or i1 %tobool33.not, %tobool17.not88
  br i1 %tobool17.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %backbone_gw.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %backbone_gw.084, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i60 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i60, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i63

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i63:                                ; preds = %for.end
  %call1.i61 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i65

land.lhs.true.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i65:                               ; preds = %land.lhs.true.i63
  %.b4.i64 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64, label %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, label %if.then.i66

land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i66:                                      ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i66, %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %39 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i67 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i68, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i68, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %backbone_gw.0.lcssa, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_bla_free(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #11
  %call1 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %claim_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 1
  %0 = ptrtoint ptr %claim_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %claim_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_bla_purge_claims(ptr noundef %bat_priv, ptr noundef %call1, i32 noundef 1)
  %2 = ptrtoint ptr %claim_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %claim_hash, align 4
  tail call void @batadv_hash_destroy(ptr noundef %3) #11
  %4 = ptrtoint ptr %claim_hash to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %claim_hash, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %backbone_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 2
  %5 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %backbone_hash, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_bla_purge_backbone_gw(ptr noundef %bat_priv, i32 noundef 1)
  %7 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %backbone_hash, align 4
  tail call void @batadv_hash_destroy(ptr noundef %8) #11
  %9 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %backbone_hash, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %if.end14.batadv_hardif_put.exit_crit_edge, label %if.end.i

if.end14.batadv_hardif_put.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %if.end14
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call1, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #11, !callees !149
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %if.end14.batadv_hardif_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_bla_rx(ptr noundef %bat_priv, ptr noundef %skb, i16 noundef zeroext %vid, i32 noundef %packet_type) local_unnamed_addr #0 align 64 {
entry:
  %search_claim = alloca %struct.batadv_bla_claim, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %search_claim) #11
  %0 = getelementptr inbounds i8, ptr %search_claim, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 72)
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
  %call1 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.handled_crit_edge, label %if.end

entry.handled_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %handled

if.end:                                           ; preds = %entry
  %bridge_loop_avoidance = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #11
  %6 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bridge_loop_avoidance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.allow_crit_edge, label %if.end5

if.end.allow_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %allow

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %10 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %loopdetect_addr.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 3
  %12 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_source.i, align 4
  %14 = ptrtoint ptr %loopdetect_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %loopdetect_addr.i, align 4
  %xor.i.i.i.i = xor i32 %15, %13
  %add.ptr.i.i.i.i = getelementptr i8, ptr %h_source.i, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 3, i32 4
  %18 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %19, %17
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end8

if.end.i:                                         ; preds = %if.end5
  %loopdetect_lasttime.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 4
  %20 = ptrtoint ptr %loopdetect_lasttime.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %loopdetect_lasttime.i, align 4
  %add.i.i = add i32 %21, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.handled_crit_edge, label %if.end6.i

if.end.i.handled_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handled

if.end6.i:                                        ; preds = %if.end.i
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call1, i32 0, i32 4
  %23 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr.i, align 64
  %call7.i = tail call fastcc ptr @batadv_bla_get_backbone_gw(ptr noundef %bat_priv, ptr noundef %26, i16 noundef zeroext %vid, i1 noundef zeroext true) #11
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %if.end6.i.handled_crit_edge, label %if.end12.i, !prof !143

if.end6.i.handled_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handled

if.end12.i:                                       ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %27 = load ptr, ptr @batadv_event_workqueue, align 4
  %report_work.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i, i32 0, i32 9
  %call.i.i115 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %report_work.i) #11
  br i1 %call.i.i115, label %if.end12.i.handled_crit_edge, label %if.end.i.i

if.end12.i.handled_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handled

if.end.i.i:                                       ; preds = %if.end12.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i, i32 0, i32 10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.handled_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.i.handled_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handled

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %handled

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %call7.i, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %handled

if.end8:                                          ; preds = %if.end5
  %bla = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33
  %call.i.i113 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bla, i32 noundef 4) #11
  %29 = ptrtoint ptr %bla to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %bla, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not = icmp eq i32 %30, 0
  br i1 %tobool10.not, label %if.end8.if.end20_crit_edge, label %if.then13, !prof !144

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then13:                                        ; preds = %if.end8
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i, align 4
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not = icmp eq i32 %33, 0
  br i1 %tobool.i.not, label %if.then13.if.end20_crit_edge, label %if.then15

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then15:                                        ; preds = %if.then13
  %34 = zext i32 %packet_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %packet_type, label %if.then15.if.end28_crit_edge [
    i32 1, label %if.then15.handled_crit_edge
    i32 64, label %if.then15.handled_crit_edge144
  ]

if.then15.handled_crit_edge144:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %handled

if.then15.handled_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %handled

if.then15.if.end28_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i, align 4
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i116 = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %packet_type)
  %cmp24 = icmp eq i32 %packet_type, 64
  %or.cond = and i1 %cmp24, %tobool.i116
  br i1 %or.cond, label %land.lhs.true25, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true25:                                  ; preds = %if.end20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %call.i.i117 = tail call i32 @batadv_skb_crc32(ptr noundef %skb, ptr noundef %39) #11
  %bcast_duplist_lock.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %bcast_duplist_lock.i.i) #11
  %bcast_duplist_curr.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 7
  %40 = ptrtoint ptr %bcast_duplist_curr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bcast_duplist_curr.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %land.lhs.true25
  %i.071.i.i = phi i32 [ 0, %land.lhs.true25 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i118 = add i32 %i.071.i.i, %41
  %rem.i.i = srem i32 %add.i.i118, 16
  %entrytime.i.i = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem.i.i, i32 2
  %42 = ptrtoint ptr %entrytime.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %entrytime.i.i, align 4
  %add.i.i.i = add i32 %43, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.batadv_bla_check_ucast_duplist.exit_crit_edge, label %if.end.i.i119

for.body.i.i.batadv_bla_check_ucast_duplist.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_check_ucast_duplist.exit

if.end.i.i119:                                    ; preds = %for.body.i.i
  %crc5.i.i = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem.i.i, i32 1
  %45 = ptrtoint ptr %crc5.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crc5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %call.i.i117)
  %cmp6.not.i.i = icmp eq i32 %46, %call.i.i117
  br i1 %cmp6.not.i.i, label %batadv_bla_check_ucast_duplist.exit.thread, label %for.inc.i.i

batadv_bla_check_ucast_duplist.exit.thread:       ; preds = %if.end.i.i119
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcast_duplist_lock.i.i) #11
  br label %handled

for.inc.i.i:                                      ; preds = %if.end.i.i119
  %inc.i.i = add nuw nsw i32 %i.071.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc.i.i.batadv_bla_check_ucast_duplist.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.batadv_bla_check_ucast_duplist.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_check_ucast_duplist.exit

batadv_bla_check_ucast_duplist.exit:              ; preds = %for.inc.i.i.batadv_bla_check_ucast_duplist.exit_crit_edge, %for.body.i.i.batadv_bla_check_ucast_duplist.exit_crit_edge
  %sub.i.i120 = add i32 %41, 15
  %rem23.i.i = srem i32 %sub.i.i120, 16
  %arrayidx26.i.i = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem23.i.i
  %crc27.i.i = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem23.i.i, i32 1
  %47 = ptrtoint ptr %crc27.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call.i.i117, ptr %crc27.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %entrytime28.i.i = getelementptr %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 6, i32 %rem23.i.i, i32 2
  %49 = ptrtoint ptr %entrytime28.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %entrytime28.i.i, align 4
  %50 = call ptr @memset(ptr %arrayidx26.i.i, i32 0, i32 6)
  %51 = ptrtoint ptr %bcast_duplist_curr.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %rem23.i.i, ptr %bcast_duplist_curr.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcast_duplist_lock.i.i) #11
  br label %if.end28

if.end28:                                         ; preds = %batadv_bla_check_ucast_duplist.exit, %if.end20.if.end28_crit_edge, %if.then15.if.end28_crit_edge
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %h_source, align 4
  %54 = ptrtoint ptr %search_claim to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %search_claim, align 4
  %add.ptr.i = getelementptr i8, ptr %h_source, i32 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %search_claim, i32 4
  %57 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %add.ptr1.i, align 4
  %vid31 = getelementptr inbounds %struct.batadv_bla_claim, ptr %search_claim, i32 0, i32 1
  %58 = ptrtoint ptr %vid31 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %vid, ptr %vid31, align 2
  %call32 = call fastcc ptr @batadv_claim_hash_find(ptr noundef %bat_priv, ptr noundef nonnull %search_claim)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.body, label %if.end48

do.body:                                          ; preds = %if.end28
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i114 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %59 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %do.body.if.end44_crit_edge, label %if.then37

do.body.if.end44_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call zeroext i1 @batadv_is_my_client(ptr noundef %bat_priv, ptr noundef %h_source, i16 noundef zeroext %vid) #11
  %cond = select i1 %call42, ptr @.str.10, ptr @.str.11
  %call43 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.batadv_bla_rx, ptr noundef %h_source, ptr noundef nonnull %cond) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %do.body.if.end44_crit_edge
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call1, i32 0, i32 4
  %61 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 86
  %63 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @batadv_handle_claim(ptr noundef %bat_priv, ptr noundef nonnull %call1, ptr noundef %64, ptr noundef %h_source, i16 noundef zeroext %vid)
  br label %allow

if.end48:                                         ; preds = %if.end28
  %backbone_lock.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call32, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %backbone_lock.i) #11
  %backbone_gw1.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call32, i32 0, i32 2
  %65 = ptrtoint ptr %backbone_gw1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %backbone_gw1.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %66, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !142
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end48.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !143

if.end48.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end48
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %68 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %.not.i.i.i.i.i = icmp sgt i32 %68, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.batadv_bla_claim_get_backbone_gw.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.batadv_bla_claim_get_backbone_gw.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_claim_get_backbone_gw.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end48.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end48.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %batadv_bla_claim_get_backbone_gw.exit

batadv_bla_claim_get_backbone_gw.exit:            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.batadv_bla_claim_get_backbone_gw.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %backbone_lock.i) #11
  %net_dev51 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call1, i32 0, i32 4
  %69 = ptrtoint ptr %net_dev51 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net_dev51, align 4
  %dev_addr52 = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 86
  %71 = ptrtoint ptr %dev_addr52 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_addr52, align 64
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %66, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %72, align 4
  %xor.i.i.i = xor i32 %76, %74
  %add.ptr.i.i.i121 = getelementptr i8, ptr %66, i32 4
  %77 = ptrtoint ptr %add.ptr.i.i.i121 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i.i.i121, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %72, i32 4
  %79 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %80, %78
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i122 = icmp eq i32 %or.i.i.i, 0
  %tobool.not.i123 = icmp eq ptr %66, null
  br i1 %tobool.not.i123, label %batadv_bla_claim_get_backbone_gw.exit.batadv_backbone_gw_put.exit_crit_edge, label %if.end.i126

batadv_bla_claim_get_backbone_gw.exit.batadv_backbone_gw_put.exit_crit_edge: ; preds = %batadv_bla_claim_get_backbone_gw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit

if.end.i126:                                      ; preds = %batadv_bla_claim_get_backbone_gw.exit
  %call.i.i.i.i.i.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i127 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i127, label %if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_backbone_gw_put.exit

if.then.i.i:                                      ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %66, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %batadv_backbone_gw_put.exit

batadv_backbone_gw_put.exit:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge, %batadv_bla_claim_get_backbone_gw.exit.batadv_backbone_gw_put.exit_crit_edge
  br i1 %cmp.i.i.i122, label %if.then55, label %if.end56

if.then55:                                        ; preds = %batadv_backbone_gw_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %lasttime = getelementptr inbounds %struct.batadv_bla_claim, ptr %call32, i32 0, i32 4
  %83 = ptrtoint ptr %lasttime to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %lasttime, align 4
  br label %allow

if.end56:                                         ; preds = %batadv_backbone_gw_put.exit
  %84 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i.i, align 4
  %86 = and i32 %85, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i128.not = icmp eq i32 %86, 0
  br i1 %tobool.i128.not, label %if.end56.if.else_crit_edge, label %land.lhs.true60

if.end56.if.else_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true60:                                  ; preds = %if.end56
  %87 = zext i32 %packet_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %packet_type, label %land.lhs.true60.if.else_crit_edge [
    i32 1, label %land.lhs.true60.handled_crit_edge
    i32 64, label %land.lhs.true60.handled_crit_edge145
  ]

land.lhs.true60.handled_crit_edge145:             ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %handled

land.lhs.true60.handled_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %handled

land.lhs.true60.if.else_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true60.if.else_crit_edge, %if.end56.if.else_crit_edge
  %88 = ptrtoint ptr %net_dev51 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %net_dev51, align 4
  %dev_addr66 = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 86
  %90 = ptrtoint ptr %dev_addr66 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_addr66, align 64
  tail call fastcc void @batadv_handle_claim(ptr noundef %bat_priv, ptr noundef nonnull %call1, ptr noundef %91, ptr noundef %h_source, i16 noundef zeroext %vid)
  br label %allow

allow:                                            ; preds = %if.else, %if.then55, %if.end44, %if.end.allow_crit_edge
  %claim.0 = phi ptr [ %call32, %if.then55 ], [ %call32, %if.else ], [ null, %if.end44 ], [ null, %if.end.allow_crit_edge ]
  tail call fastcc void @batadv_bla_update_own_backbone_gw(ptr noundef %bat_priv, ptr noundef nonnull %call1, i16 noundef zeroext %vid)
  br label %out

handled:                                          ; preds = %land.lhs.true60.handled_crit_edge, %land.lhs.true60.handled_crit_edge145, %batadv_bla_check_ucast_duplist.exit.thread, %if.then15.handled_crit_edge, %if.then15.handled_crit_edge144, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.handled_crit_edge, %if.end12.i.handled_crit_edge, %if.end6.i.handled_crit_edge, %if.end.i.handled_crit_edge, %entry.handled_crit_edge
  %claim.1 = phi ptr [ null, %if.then15.handled_crit_edge ], [ %call32, %land.lhs.true60.handled_crit_edge ], [ null, %entry.handled_crit_edge ], [ null, %if.then15.handled_crit_edge144 ], [ %call32, %land.lhs.true60.handled_crit_edge145 ], [ null, %batadv_bla_check_ucast_duplist.exit.thread ], [ null, %if.end.i.handled_crit_edge ], [ null, %if.end6.i.handled_crit_edge ], [ null, %if.end12.i.handled_crit_edge ], [ null, %if.end5.i.i.i.i.i.i.handled_crit_edge ], [ null, %if.then10.i.i.i.i.i.i ], [ null, %if.then.i.i.i ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %out

out:                                              ; preds = %handled, %allow
  %claim.2 = phi ptr [ %claim.1, %handled ], [ %claim.0, %allow ]
  %ret.0.off0 = phi i1 [ true, %handled ], [ false, %allow ]
  br i1 %tobool.not, label %out.batadv_hardif_put.exit_crit_edge, label %if.end.i134

out.batadv_hardif_put.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.end.i134:                                      ; preds = %out
  %refcount.i130 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call1, i32 0, i32 5
  %call.i.i.i.i.i.i.i131 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i130, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i130, i32 1, i32 3, i32 1) #11
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i130, ptr %refcount.i130, i32 1, ptr elementtype(i32) %refcount.i130) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i132 = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i132)
  %cmp.i.i.i.i.i133 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i132, 1
  br i1 %cmp.i.i.i.i.i133, label %if.then.i.i138, label %if.end5.i.i.i.i.i136

if.end5.i.i.i.i.i136:                             ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i132)
  %.not.i.i.i.i.i135 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i132, 0
  br i1 %.not.i.i.i.i.i135, label %if.end5.i.i.i.i.i136.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i137, !prof !144

if.end5.i.i.i.i.i136.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i137:                           ; preds = %if.end5.i.i.i.i.i136
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i130, i32 noundef 3) #11
  br label %batadv_hardif_put.exit

if.then.i.i138:                                   ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @batadv_hardif_release(ptr noundef %refcount.i130) #11, !callees !149
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i138, %if.then10.i.i.i.i.i137, %if.end5.i.i.i.i.i136.batadv_hardif_put.exit_crit_edge, %out.batadv_hardif_put.exit_crit_edge
  tail call fastcc void @batadv_claim_put(ptr noundef %claim.2)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %search_claim) #11
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_claim_hash_find(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %claim_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 1
  %0 = ptrtoint ptr %claim_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %claim_hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #11
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i.i = xor i32 %add84.i.i, %sub87.i.i
  %or.i201.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #11
  %sub90.i.i = sub i32 %xor88.i.i, %or.i201.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add65.i.i
  %or.i202.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #11
  %sub93.i.i = sub i32 %xor91.i.i, %or.i202.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i203.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #11
  %sub96.i.i = sub i32 %xor94.i.i, %or.i203.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i204.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #11
  %sub99.i.i = sub i32 %xor97.i.i, %or.i204.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i205.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #11
  %sub102.i.i = sub i32 %xor100.i.i, %or.i205.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i206.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #11
  %sub105.i.i = sub i32 %xor103.i.i, %or.i206.i.i
  %vid.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %data, i32 0, i32 1
  %add1.i.i = add i32 %sub105.i.i, -559038735
  %arrayidx77.i5.i = getelementptr i8, ptr %vid.i, i32 1
  %16 = ptrtoint ptr %arrayidx77.i5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx77.i5.i, align 1
  %conv78.i6.i = zext i8 %17 to i32
  %shl79.i7.i = shl nuw nsw i32 %conv78.i6.i, 8
  %18 = ptrtoint ptr %vid.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vid.i, align 1
  %conv83.i9.i = zext i8 %19 to i32
  %add80.i8.i = or i32 %shl79.i7.i, %conv83.i9.i
  %add84.i10.i = add i32 %add1.i.i, %add80.i8.i
  %or.i.i12.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #11
  %sub87.i13.i = sub i32 0, %or.i.i12.i
  %xor88.i14.i = xor i32 %add84.i10.i, %sub87.i13.i
  %or.i201.i15.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i13.i, i32 %sub87.i13.i, i32 11) #11
  %sub90.i16.i = sub i32 %xor88.i14.i, %or.i201.i15.i
  %xor91.i17.i = xor i32 %sub90.i16.i, %add1.i.i
  %or.i202.i18.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i16.i, i32 %sub90.i16.i, i32 25) #11
  %sub93.i19.i = sub i32 %xor91.i17.i, %or.i202.i18.i
  %xor94.i20.i = xor i32 %sub93.i19.i, %sub87.i13.i
  %or.i203.i21.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i19.i, i32 %sub93.i19.i, i32 16) #11
  %sub96.i22.i = sub i32 %xor94.i20.i, %or.i203.i21.i
  %xor97.i23.i = xor i32 %sub96.i22.i, %sub90.i16.i
  %or.i204.i24.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i22.i, i32 %sub96.i22.i, i32 4) #11
  %sub99.i25.i = sub i32 %xor97.i23.i, %or.i204.i24.i
  %xor100.i26.i = xor i32 %sub99.i25.i, %sub93.i19.i
  %or.i205.i27.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i25.i, i32 %sub99.i25.i, i32 14) #11
  %sub102.i28.i = sub i32 %xor100.i26.i, %or.i205.i27.i
  %xor103.i29.i = xor i32 %sub102.i28.i, %sub96.i22.i
  %or.i206.i30.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i28.i, i32 %sub102.i28.i, i32 24) #11
  %sub105.i31.i = sub i32 %xor103.i29.i, %or.i206.i30.i
  %rem.i = urem i32 %sub105.i31.i, %3
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %21, i32 %rem.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b55 = load i1, ptr @batadv_claim_hash_find.__warned, align 1
  br i1 %.b55, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_claim_hash_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 233, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %27, null
  %add.ptr = getelementptr i8, ptr %27, i32 -60
  %tobool16.not7073 = icmp eq ptr %add.ptr, null
  %tobool16.not70 = or i1 %tobool14.not, %tobool16.not7073
  br i1 %tobool16.not70, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %claim.071 = phi ptr [ %add.ptr36, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.071, i32 0, i32 5
  %28 = ptrtoint ptr %claim.071 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %claim.071, align 4
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data, align 4
  %xor.i.i.i.i = xor i32 %31, %29
  %add.ptr.i.i.i.i = getelementptr %struct.batadv_bla_claim, ptr %claim.071, i32 0, i32 0, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %34 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx63.i.i, align 2
  %xor37.i.i.i.i = xor i16 %35, %33
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %batadv_compare_claim.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

batadv_compare_claim.exit:                        ; preds = %for.body
  %vid.i57 = getelementptr %struct.batadv_bla_claim, ptr %claim.071, i32 0, i32 1
  %36 = ptrtoint ptr %vid.i57 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vid.i57, align 2
  %38 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %39)
  %cmp.not.i = icmp eq i16 %37, %39
  br i1 %cmp.not.i, label %if.end19, label %batadv_compare_claim.exit.for.inc_crit_edge

batadv_compare_claim.exit.for.inc_crit_edge:      ; preds = %batadv_compare_claim.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end19:                                         ; preds = %batadv_compare_claim.exit
  %refcount = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.071, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %40 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end19
  %42 = phi i32 [ %41, %if.end19 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %43 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %42, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %44 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %46 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %45, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %45
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !144

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %47 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %48, 1
  %49 = or i32 %add5.i.i.i.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %50 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %51 = phi i32 [ %48, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool12.i.i.i.i.not = icmp eq i32 %51, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %batadv_compare_claim.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %52 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %hash_entry, align 4
  %tobool32.not = icmp eq ptr %53, null
  %add.ptr36 = getelementptr i8, ptr %53, i32 -60
  %tobool16.not74 = icmp eq ptr %add.ptr36, null
  %tobool16.not = or i1 %tobool32.not, %tobool16.not74
  br i1 %tobool16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %claim.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %claim.071, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i58 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i58, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i61

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i61:                                ; preds = %for.end
  %call1.i59 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %54 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i65 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i66, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i66, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %claim.0.lcssa, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_my_client(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_handle_claim(ptr noundef %bat_priv, ptr nocapture noundef readonly %primary_if, ptr noundef %backbone_addr, ptr noundef %claim_addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  %search_claim.i = alloca %struct.batadv_bla_claim, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @batadv_bla_get_backbone_gw(ptr noundef %bat_priv, ptr noundef %backbone_addr, i16 noundef zeroext %vid, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !143

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %search_claim.i) #11
  %0 = getelementptr inbounds i8, ptr %search_claim.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 72)
  %2 = ptrtoint ptr %claim_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %claim_addr, align 4
  %4 = ptrtoint ptr %search_claim.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %search_claim.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %claim_addr, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr inbounds i8, ptr %search_claim.i, i32 4
  %7 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i.i, align 4
  %vid1.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %search_claim.i, i32 0, i32 1
  %8 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %vid, ptr %vid1.i, align 2
  %call.i = call fastcc ptr @batadv_claim_hash_find(ptr noundef %bat_priv, ptr noundef nonnull %search_claim.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 80) #14
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.then.i.batadv_bla_add_claim.exit_crit_edge, label %if.end.i

if.then.i.batadv_bla_add_claim.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_add_claim.exit

if.end.i:                                         ; preds = %if.then.i
  %10 = ptrtoint ptr %claim_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %claim_addr, align 4
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call7.i.i.i, align 8
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i121.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %15 = ptrtoint ptr %add.ptr1.i121.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i121.i, align 4
  %backbone_lock.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %backbone_lock.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @batadv_bla_add_claim.__key, i16 noundef signext 3) #11
  %vid8.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %vid8.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %vid, ptr %vid8.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %lasttime.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call7.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %lasttime.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %lasttime.i, align 8
  %refcount.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !142
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !143

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %backbone_gw9.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %backbone_gw9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %backbone_gw9.i, align 8
  %refcount10.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call7.i.i.i, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount10.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %refcount10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %refcount10.i, align 4
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %23 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %kref_get.exit.i.if.end17.i_crit_edge, label %if.then14.i

kref_get.exit.i.if.end17.i_crit_edge:             ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then14.i:                                      ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i16 %vid to i32
  %and.i.i = and i32 %conv.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 4095
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 -1, i32 %and2.i.i
  %call16.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.batadv_bla_add_claim, ptr noundef %claim_addr, i32 noundef %retval.0.i.i) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %kref_get.exit.i.if.end17.i_crit_edge
  %call.i.i.i.i.i.i122.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount10.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount10.i, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount10.i, ptr %refcount10.i, i32 1, ptr elementtype(i32) %refcount10.i) #11, !srcloc !142
  %asmresult.i.i.i.i.i.i123.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i123.i)
  %tobool1.not.i.i.i.i124.i = icmp eq i32 %asmresult.i.i.i.i.i.i123.i, 0
  br i1 %tobool1.not.i.i.i.i124.i, label %if.end17.i.if.end15.sink.split.i.i.i.i129.i_crit_edge, label %if.else.i.i.i.i127.i, !prof !143

if.end17.i.if.end15.sink.split.i.i.i.i129.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i129.i

if.else.i.i.i.i127.i:                             ; preds = %if.end17.i
  %add.i.i.i.i125.i = add i32 %asmresult.i.i.i.i.i.i123.i, 1
  %26 = or i32 %add.i.i.i.i125.i, %asmresult.i.i.i.i.i.i123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i126.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i126.i, label %if.else.i.i.i.i127.i.kref_get.exit130.i_crit_edge, label %if.else.i.i.i.i127.i.if.end15.sink.split.i.i.i.i129.i_crit_edge, !prof !144

if.else.i.i.i.i127.i.if.end15.sink.split.i.i.i.i129.i_crit_edge: ; preds = %if.else.i.i.i.i127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i129.i

if.else.i.i.i.i127.i.kref_get.exit130.i_crit_edge: ; preds = %if.else.i.i.i.i127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit130.i

if.end15.sink.split.i.i.i.i129.i:                 ; preds = %if.else.i.i.i.i127.i.if.end15.sink.split.i.i.i.i129.i_crit_edge, %if.end17.i.if.end15.sink.split.i.i.i.i129.i_crit_edge
  %.sink.i.i.i.i128.i = phi i32 [ 2, %if.end17.i.if.end15.sink.split.i.i.i.i129.i_crit_edge ], [ 1, %if.else.i.i.i.i127.i.if.end15.sink.split.i.i.i.i129.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount10.i, i32 noundef %.sink.i.i.i.i128.i) #11
  br label %kref_get.exit130.i

kref_get.exit130.i:                               ; preds = %if.end15.sink.split.i.i.i.i129.i, %if.else.i.i.i.i127.i.kref_get.exit130.i_crit_edge
  %claim_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 1
  %27 = ptrtoint ptr %claim_hash.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %claim_hash.i, align 4
  %hash_entry.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call7.i.i.i, i32 0, i32 5
  %tobool.not.i131.i = icmp eq ptr %28, null
  br i1 %tobool.not.i131.i, label %kref_get.exit130.i.if.then24.i_crit_edge, label %if.end.i.i

kref_get.exit130.i.if.then24.i_crit_edge:         ; preds = %kref_get.exit130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

if.end.i.i:                                       ; preds = %kref_get.exit130.i
  %size.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i.i, align 4
  %arrayidx58.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 5
  %31 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx58.i.i.i, align 1
  %conv59.i.i.i = zext i8 %32 to i32
  %shl60.i.i.i = shl nuw nsw i32 %conv59.i.i.i, 8
  %add61.i.i.i = add nuw nsw i32 %shl60.i.i.i, -559038731
  %33 = ptrtoint ptr %add.ptr1.i121.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr1.i121.i, align 4
  %conv64.i.i.i = zext i8 %34 to i32
  %add65.i.i.i = add nuw nsw i32 %add61.i.i.i, %conv64.i.i.i
  %arrayidx67.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %35 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx67.i.i.i, align 1
  %conv68.i.i.i = zext i8 %36 to i32
  %shl69.i.i.i = shl nuw i32 %conv68.i.i.i, 24
  %add70.i.i.i = add i32 %shl69.i.i.i, -559038731
  %arrayidx72.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %37 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx72.i.i.i, align 2
  %conv73.i.i.i = zext i8 %38 to i32
  %shl74.i.i.i = shl nuw nsw i32 %conv73.i.i.i, 16
  %add75.i.i.i = add i32 %add70.i.i.i, %shl74.i.i.i
  %arrayidx77.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %39 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx77.i.i.i, align 1
  %conv78.i.i.i = zext i8 %40 to i32
  %shl79.i.i.i = shl nuw nsw i32 %conv78.i.i.i, 8
  %add80.i.i.i = add i32 %add75.i.i.i, %shl79.i.i.i
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %call7.i.i.i, align 8
  %conv83.i.i.i = zext i8 %42 to i32
  %add84.i.i.i = add i32 %add80.i.i.i, %conv83.i.i.i
  %xor85.i.i.i = xor i32 %add65.i.i.i, -559038731
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i.i, i32 %add65.i.i.i, i32 14) #11
  %sub87.i.i.i = sub i32 %xor85.i.i.i, %or.i.i.i.i
  %xor88.i.i.i = xor i32 %add84.i.i.i, %sub87.i.i.i
  %or.i201.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i.i, i32 %sub87.i.i.i, i32 11) #11
  %sub90.i.i.i = sub i32 %xor88.i.i.i, %or.i201.i.i.i
  %xor91.i.i.i = xor i32 %sub90.i.i.i, %add65.i.i.i
  %or.i202.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i.i, i32 %sub90.i.i.i, i32 25) #11
  %sub93.i.i.i = sub i32 %xor91.i.i.i, %or.i202.i.i.i
  %xor94.i.i.i = xor i32 %sub93.i.i.i, %sub87.i.i.i
  %or.i203.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i.i, i32 %sub93.i.i.i, i32 16) #11
  %sub96.i.i.i = sub i32 %xor94.i.i.i, %or.i203.i.i.i
  %xor97.i.i.i = xor i32 %sub96.i.i.i, %sub90.i.i.i
  %or.i204.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i.i, i32 %sub96.i.i.i, i32 4) #11
  %sub99.i.i.i = sub i32 %xor97.i.i.i, %or.i204.i.i.i
  %xor100.i.i.i = xor i32 %sub99.i.i.i, %sub93.i.i.i
  %or.i205.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i.i, i32 %sub99.i.i.i, i32 14) #11
  %sub102.i.i.i = sub i32 %xor100.i.i.i, %or.i205.i.i.i
  %xor103.i.i.i = xor i32 %sub102.i.i.i, %sub96.i.i.i
  %or.i206.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i.i, i32 %sub102.i.i.i, i32 24) #11
  %sub105.i.i.i = sub i32 %xor103.i.i.i, %or.i206.i.i.i
  %add1.i.i.i = add i32 %sub105.i.i.i, -559038735
  %arrayidx77.i5.i.i = getelementptr i8, ptr %vid8.i, i32 1
  %43 = ptrtoint ptr %arrayidx77.i5.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx77.i5.i.i, align 1
  %conv78.i6.i.i = zext i8 %44 to i32
  %shl79.i7.i.i = shl nuw nsw i32 %conv78.i6.i.i, 8
  %45 = ptrtoint ptr %vid8.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vid8.i, align 2
  %conv83.i9.i.i = zext i8 %46 to i32
  %add80.i8.i.i = or i32 %shl79.i7.i.i, %conv83.i9.i.i
  %add84.i10.i.i = add i32 %add1.i.i.i, %add80.i8.i.i
  %or.i.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #11
  %sub87.i13.i.i = sub i32 0, %or.i.i12.i.i
  %xor88.i14.i.i = xor i32 %add84.i10.i.i, %sub87.i13.i.i
  %or.i201.i15.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i13.i.i, i32 %sub87.i13.i.i, i32 11) #11
  %sub90.i16.i.i = sub i32 %xor88.i14.i.i, %or.i201.i15.i.i
  %xor91.i17.i.i = xor i32 %sub90.i16.i.i, %add1.i.i.i
  %or.i202.i18.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i16.i.i, i32 %sub90.i16.i.i, i32 25) #11
  %sub93.i19.i.i = sub i32 %xor91.i17.i.i, %or.i202.i18.i.i
  %xor94.i20.i.i = xor i32 %sub93.i19.i.i, %sub87.i13.i.i
  %or.i203.i21.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i19.i.i, i32 %sub93.i19.i.i, i32 16) #11
  %sub96.i22.i.i = sub i32 %xor94.i20.i.i, %or.i203.i21.i.i
  %xor97.i23.i.i = xor i32 %sub96.i22.i.i, %sub90.i16.i.i
  %or.i204.i24.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i22.i.i, i32 %sub96.i22.i.i, i32 4) #11
  %sub99.i25.i.i = sub i32 %xor97.i23.i.i, %or.i204.i24.i.i
  %xor100.i26.i.i = xor i32 %sub99.i25.i.i, %sub93.i19.i.i
  %or.i205.i27.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i25.i.i, i32 %sub99.i25.i.i, i32 14) #11
  %sub102.i28.i.i = sub i32 %xor100.i26.i.i, %or.i205.i27.i.i
  %xor103.i29.i.i = xor i32 %sub102.i28.i.i, %sub96.i22.i.i
  %or.i206.i30.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i28.i.i, i32 %sub102.i28.i.i, i32 24) #11
  %sub105.i31.i.i = sub i32 %xor103.i29.i.i, %or.i206.i30.i.i
  %rem.i.i = urem i32 %sub105.i31.i.i, %30
  %47 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %28, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %48, i32 %rem.i.i
  %list_locks.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %28, i32 0, i32 1
  %49 = ptrtoint ptr %list_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %list_locks.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.spinlock, ptr %50, i32 %rem.i.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1.i.i) #11
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %node.0.i157.i = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i158.i = icmp eq ptr %node.0.i157.i, null
  br i1 %tobool2.not.i158.i, label %batadv_hash_add.exit.thread154.i.critedge, label %for.body.i.lr.ph.i

for.body.i.lr.ph.i:                               ; preds = %if.end.i.i
  %52 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call7.i.i.i, align 8
  %54 = ptrtoint ptr %add.ptr1.i121.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr1.i121.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.backedge.i.for.body.i.i_crit_edge, %for.body.i.lr.ph.i
  %node.0.i159.i = phi ptr [ %node.0.i157.i, %for.body.i.lr.ph.i ], [ %node.0.i.i, %for.cond.i.backedge.i.for.body.i.i_crit_edge ]
  %add.ptr.i148.i = getelementptr i8, ptr %node.0.i159.i, i32 -60
  %56 = ptrtoint ptr %add.ptr.i148.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i148.i, align 4
  %xor.i.i.i.i.i = xor i32 %57, %53
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %node.0.i159.i, i32 -56
  %58 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i = xor i16 %59, %55
  %xor3.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %xor.i.i.i.i.i, %xor3.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.end.i149.i, label %for.body.i.i.for.cond.i.backedge.i_crit_edge

for.body.i.i.for.cond.i.backedge.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.backedge.i

if.end.i149.i:                                    ; preds = %for.body.i.i
  %vid.i.i = getelementptr i8, ptr %node.0.i159.i, i32 -54
  %60 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vid.i.i, align 2
  %62 = ptrtoint ptr %vid8.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vid8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %63)
  %cmp.not.i.i = icmp eq i16 %61, %63
  br i1 %cmp.not.i.i, label %batadv_hash_add.exit.i, label %if.end.i149.i.for.cond.i.backedge.i_crit_edge

if.end.i149.i.for.cond.i.backedge.i_crit_edge:    ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.backedge.i

for.cond.i.backedge.i:                            ; preds = %if.end.i149.i.for.cond.i.backedge.i_crit_edge, %for.body.i.i.for.cond.i.backedge.i_crit_edge
  %64 = ptrtoint ptr %node.0.i159.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %node.0.i.i = load ptr, ptr %node.0.i159.i, align 4
  %tobool2.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool2.not.i.i, label %for.end.i.i, label %for.cond.i.backedge.i.for.body.i.i_crit_edge

for.cond.i.backedge.i.for.body.i.i_crit_edge:     ; preds = %for.cond.i.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.cond.i.backedge.i
  %65 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %node.0.i157.i, ptr %hash_entry.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %hash_entry.i, ptr %arrayidx.i.i, align 4
  br i1 %tobool2.not.i158.i, label %for.end.i.i.batadv_hash_add.exit.thread154.i_crit_edge, label %do.body49.i.i.i

for.end.i.i.batadv_hash_add.exit.thread154.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hash_add.exit.thread154.i

do.body49.i.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %node.0.i157.i, i32 0, i32 1
  br label %batadv_hash_add.exit.thread154.i.sink.split

batadv_hash_add.exit.thread154.i.critedge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %node.0.i157.i, ptr %hash_entry.i, align 4
  %pprev.i.i.i.c = getelementptr inbounds %struct.batadv_bla_claim, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %pprev.i.i.i.c to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i.i.c, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  br label %batadv_hash_add.exit.thread154.i.sink.split

batadv_hash_add.exit.thread154.i.sink.split:      ; preds = %batadv_hash_add.exit.thread154.i.critedge, %do.body49.i.i.i
  %arrayidx.i.i.sink = phi ptr [ %arrayidx.i.i, %batadv_hash_add.exit.thread154.i.critedge ], [ %pprev51.i.i.i, %do.body49.i.i.i ]
  %70 = ptrtoint ptr %arrayidx.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %hash_entry.i, ptr %arrayidx.i.i.sink, align 4
  br label %batadv_hash_add.exit.thread154.i

batadv_hash_add.exit.thread154.i:                 ; preds = %batadv_hash_add.exit.thread154.i.sink.split, %for.end.i.i.batadv_hash_add.exit.thread154.i_crit_edge
  %generation.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %28, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %generation.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %generation.i.i, i32 1, i32 3, i32 1) #11
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %generation.i.i, ptr %generation.i.i, i32 1, ptr elementtype(i32) %generation.i.i) #11, !srcloc !155
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i.i) #11
  br label %if.end44.i

batadv_hash_add.exit.i:                           ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i.i) #11
  br label %if.then24.i

if.then24.i:                                      ; preds = %batadv_hash_add.exit.i, %kref_get.exit130.i.if.then24.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %batadv_bla_add_claim.exit

if.else.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %lasttime26.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call.i, i32 0, i32 4
  %73 = ptrtoint ptr %lasttime26.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %lasttime26.i, align 4
  %backbone_gw27.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call.i, i32 0, i32 2
  %74 = ptrtoint ptr %backbone_gw27.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %backbone_gw27.i, align 4
  %cmp28.i = icmp eq ptr %75, %call
  br i1 %cmp28.i, label %if.else.i.claim_free_ref.i_crit_edge, label %do.body31.i

if.else.i.claim_free_ref.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %claim_free_ref.i

do.body31.i:                                      ; preds = %if.else.i
  %log_level33.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i119.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level33.i, i32 noundef 4) #11
  %76 = ptrtoint ptr %log_level33.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %log_level33.i, align 4
  %and35.i = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %do.body31.i.if.end44.i_crit_edge, label %if.then37.i

do.body31.i.if.end44.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then37.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i132.i = zext i16 %vid to i32
  %and.i133.i = and i32 %conv.i132.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i133.i)
  %tobool.not.i134.i = icmp eq i32 %and.i133.i, 0
  %and2.i135.i = and i32 %conv.i132.i, 4095
  %retval.0.i136.i = select i1 %tobool.not.i134.i, i32 -1, i32 %and2.i135.i
  %call40.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.batadv_bla_add_claim, ptr noundef %claim_addr, i32 noundef %retval.0.i136.i, ptr noundef nonnull %call) #11
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then37.i, %do.body31.i.if.end44.i_crit_edge, %batadv_hash_add.exit.thread154.i
  %claim.0.i = phi ptr [ %call.i, %if.then37.i ], [ %call.i, %do.body31.i.if.end44.i_crit_edge ], [ %call7.i.i.i, %batadv_hash_add.exit.thread154.i ]
  %backbone_lock45.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.0.i, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %backbone_lock45.i) #11
  %backbone_gw46.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.0.i, i32 0, i32 2
  %78 = ptrtoint ptr %backbone_gw46.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %backbone_gw46.i, align 4
  %refcount47.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 10
  %call.i.i.i.i.i.i137.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount47.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount47.i, i32 1, i32 3, i32 1) #11
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount47.i, ptr %refcount47.i, i32 1, ptr elementtype(i32) %refcount47.i) #11, !srcloc !142
  %asmresult.i.i.i.i.i.i138.i = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i138.i)
  %tobool1.not.i.i.i.i139.i = icmp eq i32 %asmresult.i.i.i.i.i.i138.i, 0
  br i1 %tobool1.not.i.i.i.i139.i, label %if.end44.i.if.end15.sink.split.i.i.i.i144.i_crit_edge, label %if.else.i.i.i.i142.i, !prof !143

if.end44.i.if.end15.sink.split.i.i.i.i144.i_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i144.i

if.else.i.i.i.i142.i:                             ; preds = %if.end44.i
  %add.i.i.i.i140.i = add i32 %asmresult.i.i.i.i.i.i138.i, 1
  %81 = or i32 %add.i.i.i.i140.i, %asmresult.i.i.i.i.i.i138.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %.not.i.i.i.i141.i = icmp sgt i32 %81, -1
  br i1 %.not.i.i.i.i141.i, label %if.else.i.i.i.i142.i.kref_get.exit145.i_crit_edge, label %if.else.i.i.i.i142.i.if.end15.sink.split.i.i.i.i144.i_crit_edge, !prof !144

if.else.i.i.i.i142.i.if.end15.sink.split.i.i.i.i144.i_crit_edge: ; preds = %if.else.i.i.i.i142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i144.i

if.else.i.i.i.i142.i.kref_get.exit145.i_crit_edge: ; preds = %if.else.i.i.i.i142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit145.i

if.end15.sink.split.i.i.i.i144.i:                 ; preds = %if.else.i.i.i.i142.i.if.end15.sink.split.i.i.i.i144.i_crit_edge, %if.end44.i.if.end15.sink.split.i.i.i.i144.i_crit_edge
  %.sink.i.i.i.i143.i = phi i32 [ 2, %if.end44.i.if.end15.sink.split.i.i.i.i144.i_crit_edge ], [ 1, %if.else.i.i.i.i142.i.if.end15.sink.split.i.i.i.i144.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount47.i, i32 noundef %.sink.i.i.i.i143.i) #11
  br label %kref_get.exit145.i

kref_get.exit145.i:                               ; preds = %if.end15.sink.split.i.i.i.i144.i, %if.else.i.i.i.i142.i.kref_get.exit145.i_crit_edge
  %82 = ptrtoint ptr %backbone_gw46.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call, ptr %backbone_gw46.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %backbone_lock45.i) #11
  br i1 %tobool.not.i, label %kref_get.exit145.i.if.end58.i_crit_edge, label %if.then51.i

kref_get.exit145.i.if.end58.i_crit_edge:          ; preds = %kref_get.exit145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.then51.i:                                      ; preds = %kref_get.exit145.i
  call void @__sanitizer_cov_trace_pc() #13
  %crc_lock.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %79, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %crc_lock.i) #11
  %call54.i = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef nonnull %claim.0.i, i32 noundef 6) #11
  %crc.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %79, i32 0, i32 7
  %83 = ptrtoint ptr %crc.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %crc.i, align 4
  %xor118.i = xor i16 %84, %call54.i
  store i16 %xor118.i, ptr %crc.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %crc_lock.i) #11
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then51.i, %kref_get.exit145.i.if.end58.i_crit_edge
  %tobool.not.i146.i = icmp eq ptr %79, null
  br i1 %tobool.not.i146.i, label %if.end58.i.batadv_backbone_gw_put.exit.i_crit_edge, label %if.end.i147.i

if.end58.i.batadv_backbone_gw_put.exit.i_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit.i

if.end.i147.i:                                    ; preds = %if.end58.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %79, i32 0, i32 10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_backbone_gw_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.i.batadv_backbone_gw_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %batadv_backbone_gw_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i147.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %79, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %batadv_backbone_gw_put.exit.i

batadv_backbone_gw_put.exit.i:                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_backbone_gw_put.exit.i_crit_edge, %if.end58.i.batadv_backbone_gw_put.exit.i_crit_edge
  %crc_lock59.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %crc_lock59.i) #11
  %call62.i = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef nonnull %claim.0.i, i32 noundef 6) #11
  %crc64.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 7
  %86 = ptrtoint ptr %crc64.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %crc64.i, align 4
  %xor66117.i = xor i16 %87, %call62.i
  store i16 %xor66117.i, ptr %crc64.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %crc_lock59.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %lasttime69.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 4
  %89 = ptrtoint ptr %lasttime69.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %lasttime69.i, align 4
  br label %claim_free_ref.i

claim_free_ref.i:                                 ; preds = %batadv_backbone_gw_put.exit.i, %if.else.i.claim_free_ref.i_crit_edge
  %claim.1.i = phi ptr [ %call.i, %if.else.i.claim_free_ref.i_crit_edge ], [ %claim.0.i, %batadv_backbone_gw_put.exit.i ]
  tail call fastcc void @batadv_claim_put(ptr noundef %claim.1.i) #11
  br label %batadv_bla_add_claim.exit

batadv_bla_add_claim.exit:                        ; preds = %claim_free_ref.i, %if.then24.i, %if.then.i.batadv_bla_add_claim.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %search_claim.i) #11
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if, i32 0, i32 4
  %90 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 86
  %92 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_addr, align 64
  %94 = ptrtoint ptr %backbone_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %backbone_addr, align 4
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %93, align 4
  %xor.i.i.i = xor i32 %97, %95
  %add.ptr.i.i.i = getelementptr i8, ptr %backbone_addr, i32 4
  %98 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %93, i32 4
  %100 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %101, %99
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then5, label %batadv_bla_add_claim.exit.if.end.i5_crit_edge

batadv_bla_add_claim.exit.if.end.i5_crit_edge:    ; preds = %batadv_bla_add_claim.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i5

if.then5:                                         ; preds = %batadv_bla_add_claim.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_bla_send_claim(ptr noundef %bat_priv, ptr noundef %claim_addr, i16 noundef zeroext %vid, i32 noundef 0)
  br label %if.end.i5

if.end.i5:                                        ; preds = %if.then5, %batadv_bla_add_claim.exit.if.end.i5_crit_edge
  %refcount.i2 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 10
  %call.i.i.i.i.i.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i2, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i2, i32 1, i32 3, i32 1) #11
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i2, ptr %refcount.i2, i32 1, ptr elementtype(i32) %refcount.i2) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i4 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i4, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i6 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i6, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i2, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_bla_update_own_backbone_gw(ptr noundef %bat_priv, ptr nocapture noundef readonly %primary_if, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call = tail call fastcc ptr @batadv_bla_get_backbone_gw(ptr noundef %bat_priv, ptr noundef %3, i16 noundef zeroext %vid, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i, !prof !143

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %lasttime = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %lasttime to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %lasttime, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %call, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_claim_put(ptr noundef %claim) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %claim, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %backbone_lock.i = getelementptr %struct.batadv_bla_claim, ptr %claim, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %backbone_lock.i) #11
  %backbone_gw.i = getelementptr %struct.batadv_bla_claim, ptr %claim, i32 0, i32 2
  %1 = ptrtoint ptr %backbone_gw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %backbone_gw.i, align 4
  store ptr null, ptr %backbone_gw.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %backbone_lock.i) #11
  %crc_lock.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %2, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %crc_lock.i) #11
  %call.i = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef nonnull %claim, i32 noundef 6) #11
  %crc.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %crc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %crc.i, align 4
  %xor18.i = xor i16 %4, %call.i
  store i16 %xor18.i, ptr %crc.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %crc_lock.i) #11
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end.i_crit_edge, label %if.end.i.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %2, i32 0, i32 10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.do.end.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.i.do.end.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %do.end.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %2, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %rcu.i = getelementptr %struct.batadv_bla_claim, ptr %claim, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 68 to ptr)) #11
  br label %return

return:                                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_bla_tx(ptr noundef %bat_priv, ptr noundef %skb, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %vhdr_buf.i = alloca %struct.vlan_hdr, align 2
  %search_claim = alloca %struct.batadv_bla_claim, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %search_claim) #11
  %0 = call ptr @memset(ptr %search_claim, i32 255, i32 80)
  %call = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.batadv_hardif_put.exit_crit_edge, label %if.end

entry.batadv_hardif_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.end:                                           ; preds = %entry
  %bridge_loop_avoidance = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #11
  %1 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %bridge_loop_avoidance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.end.allow_crit_edge, label %if.end4

if.end.allow_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %allow

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr_buf.i) #11
  %3 = ptrtoint ptr %vhdr_buf.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %vhdr_buf.i, align 2, !annotation !156
  %4 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr_buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !156
  %call.i = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef 0) #11
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
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i)
  %tobool.not.i = icmp sgt i16 %call.i, -1
  br i1 %tobool.not.i, label %if.end4.if.end7.i_crit_edge, label %do.body.preheader.i

if.end4.if.end7.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

do.body.preheader.i:                              ; preds = %if.end4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.body.preheader.i
  %vlan_depth.0.i = phi i32 [ %inc.i, %if.end.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %headlen.0.i = phi i32 [ %add.i, %if.end.i.do.body.i_crit_edge ], [ 14, %do.body.preheader.i ]
  %12 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i.i, align 4
  %14 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i, align 8
  %16 = add i32 %headlen.0.i, %15
  %sub.i1.i.i = sub i32 %13, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 3
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !144

if.end.i.i.i:                                     ; preds = %do.body.i
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.batadv_bla_process_claim.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i195.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %headlen.0.i, ptr noundef nonnull %vhdr_buf.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i195.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i195.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.batadv_bla_process_claim.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false.i.i.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

skb_header_pointer.exit.i:                        ; preds = %do.body.i
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i194.i = getelementptr i8, ptr %18, i32 %headlen.0.i
  %tobool3.not.i = icmp eq ptr %add.ptr.i.i194.i, null
  br i1 %tobool3.not.i, label %skb_header_pointer.exit.i.batadv_bla_process_claim.exit.thread_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

skb_header_pointer.exit.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i214.i = phi ptr [ %add.ptr.i.i194.i, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %vhdr_buf.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i214.i, i32 0, i32 1
  %19 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  %add.i = add i32 %headlen.0.i, 4
  %inc.i = add i32 %vlan_depth.0.i, 1
  %cmp.i = icmp eq i16 %20, -32512
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end7.i:                                        ; preds = %if.end.i.if.end7.i_crit_edge, %if.end4.if.end7.i_crit_edge
  %vlan_depth.1.i = phi i32 [ 0, %if.end4.if.end7.i_crit_edge ], [ %inc.i, %if.end.i.if.end7.i_crit_edge ]
  %proto.0.i = phi i16 [ %11, %if.end4.if.end7.i_crit_edge ], [ %20, %if.end.i.if.end7.i_crit_edge ]
  %headlen.1.i = phi i32 [ 14, %if.end4.if.end7.i_crit_edge ], [ %add.i, %if.end.i.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %proto.0.i)
  %cmp9.not.i = icmp eq i16 %proto.0.i, 2054
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end7.i.batadv_bla_process_claim.exit.thread_crit_edge

if.end7.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

if.end12.i:                                       ; preds = %if.end7.i
  %21 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %type.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %25)
  %cond.i.i = icmp ne i16 %25, 24
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 56
  %26 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr_len.i.i, align 1
  %conv1.i.i = zext i8 %27 to i32
  %add5.i.i = zext i1 %cond.i.i to i32
  %retval.0.in.i.i = shl nuw nsw i32 %conv1.i.i, %add5.i.i
  %retval.0.i.i = add i32 %headlen.1.i, 16
  %add14.i = add i32 %retval.0.i.i, %retval.0.in.i.i
  %len.i.i196.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len.i.i196.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i196.i, align 4
  %data_len.i.i197.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %30 = ptrtoint ptr %data_len.i.i197.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len.i.i197.i, align 8
  %sub.i.i.i = sub i32 %29, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add14.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end12.i.if.end20.i_crit_edge, !prof !143

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end.i.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add14.i)
  %cmp3.i.i = icmp ult i32 %29, %add14.i
  br i1 %cmp3.i.i, label %if.end.i.i.batadv_bla_process_claim.exit.thread_crit_edge, label %pskb_may_pull.exit.i, !prof !143

if.end.i.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add14.i, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #11
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.batadv_bla_process_claim.exit.thread_crit_edge, label %pskb_may_pull.exit.i.if.end20.i_crit_edge, !prof !143

pskb_may_pull.exit.i.if.end20.i_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

pskb_may_pull.exit.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

if.end20.i:                                       ; preds = %pskb_may_pull.exit.i.if.end20.i_crit_edge, %if.end12.i.if.end20.i_crit_edge
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %34 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i201.i = zext i16 %35 to i32
  %add.ptr.i.i202.i = getelementptr i8, ptr %33, i32 %conv.i.i201.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i202.i, i32 %headlen.1.i
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp23.not.i = icmp eq i16 %37, 1
  br i1 %cmp23.not.i, label %if.end26.i, label %if.end20.i.batadv_bla_process_claim.exit.thread_crit_edge

if.end20.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

if.end26.i:                                       ; preds = %if.end20.i
  %ar_pro.i = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i, i32 0, i32 1
  %38 = ptrtoint ptr %ar_pro.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ar_pro.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %39)
  %cmp28.not.i = icmp eq i16 %39, 2048
  br i1 %cmp28.not.i, label %if.end31.i, label %if.end26.i.batadv_bla_process_claim.exit.thread_crit_edge

if.end26.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

if.end31.i:                                       ; preds = %if.end26.i
  %ar_hln.i = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i, i32 0, i32 2
  %40 = ptrtoint ptr %ar_hln.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ar_hln.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %41)
  %cmp33.not.i = icmp eq i8 %41, 6
  br i1 %cmp33.not.i, label %if.end36.i, label %if.end31.i.batadv_bla_process_claim.exit.thread_crit_edge

if.end31.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

if.end36.i:                                       ; preds = %if.end31.i
  %ar_pln.i = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i, i32 0, i32 3
  %42 = ptrtoint ptr %ar_pln.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ar_pln.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp38.not.i = icmp eq i8 %43, 4
  br i1 %cmp38.not.i, label %if.end41.i, label %if.end36.i.batadv_bla_process_claim.exit.thread_crit_edge

if.end36.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

if.end41.i:                                       ; preds = %if.end36.i
  %add.ptr42.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %add.ptr43.i = getelementptr i8, ptr %add.ptr42.i, i32 6
  %add.ptr44.i = getelementptr i8, ptr %add.ptr43.i, i32 4
  %claim_dest.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 9
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr44.i, ptr noundef dereferenceable(3) %claim_dest.i, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp48.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp48.not.i, label %if.end51.i, label %if.end41.i.batadv_bla_process_claim.exit.thread_crit_edge

if.end41.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

if.end51.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vlan_depth.1.i)
  %cmp52.i = icmp sgt i32 %vlan_depth.1.i, 1
  br i1 %cmp52.i, label %if.end51.i.batadv_bla_process_claim.exit.thread121_crit_edge, label %if.end55.i

if.end51.i.batadv_bla_process_claim.exit.thread121_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread121

if.end55.i:                                       ; preds = %if.end51.i
  %type.i = getelementptr inbounds %struct.batadv_bla_claim_dst, ptr %add.ptr44.i, i32 0, i32 1
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %45)
  %cmp57.i = icmp eq i8 %45, 4
  br i1 %cmp57.i, label %if.end55.i.batadv_bla_process_claim.exit.thread_crit_edge, label %if.end60.i

if.end55.i.batadv_bla_process_claim.exit.thread_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread

if.end60.i:                                       ; preds = %if.end55.i
  %call61.i = call fastcc i32 @batadv_check_claim_group(ptr noundef %bat_priv, ptr noundef nonnull %call, ptr noundef %add.ptr42.i, ptr noundef %add.ptr44.i, ptr noundef %add.ptr.i.i202.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call61.i)
  %cmp62.i = icmp eq i32 %call61.i, 1
  br i1 %cmp62.i, label %do.body65.i, label %if.end76.i

do.body65.i:                                      ; preds = %if.end60.i
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %46 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %log_level.i, align 4
  %and67.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %do.body65.i.batadv_bla_process_claim.exit.thread124_crit_edge, label %if.then69.i

do.body65.i.batadv_bla_process_claim.exit.thread124_crit_edge: ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread124

if.then69.i:                                      ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i202.i, i32 0, i32 1
  %conv.i.i = zext i16 %call.i to i32
  %and.i.i = and i32 %conv.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 4095
  %retval.0.i203.i = select i1 %tobool.not.i.i, i32 -1, i32 %and2.i.i
  %call72.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.batadv_bla_process_claim, ptr noundef %h_source.i, i32 noundef %retval.0.i203.i, ptr noundef %add.ptr42.i, ptr noundef %add.ptr44.i) #11
  br label %batadv_bla_process_claim.exit.thread124

if.end76.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call61.i)
  %cmp77.i = icmp slt i32 %call61.i, 2
  br i1 %cmp77.i, label %batadv_bla_process_claim.exit, label %if.end85.i

if.end85.i:                                       ; preds = %if.end76.i
  call fastcc void @batadv_bla_update_own_backbone_gw(ptr noundef %bat_priv, ptr noundef nonnull %call, i16 noundef zeroext %call.i) #11
  %48 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %type.i, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %49, label %if.end85.i.do.body109.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb93.i
    i8 2, label %sw.bb99.i
    i8 3, label %sw.bb105.i
  ]

if.end85.i.do.body109.i_crit_edge:                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body109.i

sw.bb.i:                                          ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_source88.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i202.i, i32 0, i32 1
  call fastcc void @batadv_handle_claim(ptr noundef %bat_priv, ptr noundef nonnull %call, ptr noundef %add.ptr42.i, ptr noundef %h_source88.i, i16 noundef zeroext %call.i) #11
  br label %batadv_bla_process_claim.exit.thread121

sw.bb93.i:                                        ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_source94.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i202.i, i32 0, i32 1
  call fastcc void @batadv_handle_unclaim(ptr noundef %bat_priv, ptr noundef nonnull %call, ptr noundef %h_source94.i, ptr noundef %add.ptr42.i, i16 noundef zeroext %call.i) #11
  br label %batadv_bla_process_claim.exit.thread121

sw.bb99.i:                                        ; preds = %if.end85.i
  %h_source100.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i202.i, i32 0, i32 1
  %call102.i = call fastcc zeroext i1 @batadv_handle_announce(ptr noundef %bat_priv, ptr noundef %add.ptr42.i, ptr noundef %h_source100.i, i16 noundef zeroext %call.i) #11
  br i1 %call102.i, label %sw.bb99.i.batadv_bla_process_claim.exit.thread121_crit_edge, label %sw.bb99.i.do.body109.i_crit_edge

sw.bb99.i.do.body109.i_crit_edge:                 ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body109.i

sw.bb99.i.batadv_bla_process_claim.exit.thread121_crit_edge: ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread121

sw.bb105.i:                                       ; preds = %if.end85.i
  %call106.i = call fastcc zeroext i1 @batadv_handle_request(ptr noundef %bat_priv, ptr noundef nonnull %call, ptr noundef %add.ptr42.i, ptr noundef %add.ptr.i.i202.i, i16 noundef zeroext %call.i) #11
  br i1 %call106.i, label %sw.bb105.i.batadv_bla_process_claim.exit.thread121_crit_edge, label %sw.bb105.i.do.body109.i_crit_edge

sw.bb105.i.do.body109.i_crit_edge:                ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body109.i

sw.bb105.i.batadv_bla_process_claim.exit.thread121_crit_edge: ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread121

do.body109.i:                                     ; preds = %sw.bb105.i.do.body109.i_crit_edge, %sw.bb99.i.do.body109.i_crit_edge, %if.end85.i.do.body109.i_crit_edge
  %log_level111.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i193.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level111.i, i32 noundef 4) #11
  %51 = ptrtoint ptr %log_level111.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %log_level111.i, align 4
  %and113.i = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %do.body109.i.batadv_bla_process_claim.exit.thread121_crit_edge, label %if.then115.i

do.body109.i.batadv_bla_process_claim.exit.thread121_crit_edge: ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_process_claim.exit.thread121

if.then115.i:                                     ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #13
  %h_source116.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i202.i, i32 0, i32 1
  %conv.i204.i = zext i16 %call.i to i32
  %and.i205.i = and i32 %conv.i204.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205.i)
  %tobool.not.i206.i = icmp eq i32 %and.i205.i, 0
  %and2.i207.i = and i32 %conv.i204.i, 4095
  %retval.0.i208.i = select i1 %tobool.not.i206.i, i32 -1, i32 %and2.i207.i
  %call119.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.batadv_bla_process_claim, ptr noundef %h_source116.i, i32 noundef %retval.0.i208.i, ptr noundef %add.ptr42.i, ptr noundef %add.ptr44.i) #11
  br label %batadv_bla_process_claim.exit.thread121

batadv_bla_process_claim.exit.thread:             ; preds = %if.end55.i.batadv_bla_process_claim.exit.thread_crit_edge, %if.end41.i.batadv_bla_process_claim.exit.thread_crit_edge, %if.end36.i.batadv_bla_process_claim.exit.thread_crit_edge, %if.end31.i.batadv_bla_process_claim.exit.thread_crit_edge, %if.end26.i.batadv_bla_process_claim.exit.thread_crit_edge, %if.end20.i.batadv_bla_process_claim.exit.thread_crit_edge, %pskb_may_pull.exit.i.batadv_bla_process_claim.exit.thread_crit_edge, %if.end.i.i.batadv_bla_process_claim.exit.thread_crit_edge, %if.end7.i.batadv_bla_process_claim.exit.thread_crit_edge, %skb_header_pointer.exit.i.batadv_bla_process_claim.exit.thread_crit_edge, %lor.lhs.false.i.i.i.batadv_bla_process_claim.exit.thread_crit_edge, %if.end.i.i.i.batadv_bla_process_claim.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr_buf.i) #11
  br label %if.end7

batadv_bla_process_claim.exit.thread121:          ; preds = %if.then115.i, %do.body109.i.batadv_bla_process_claim.exit.thread121_crit_edge, %sw.bb105.i.batadv_bla_process_claim.exit.thread121_crit_edge, %sw.bb99.i.batadv_bla_process_claim.exit.thread121_crit_edge, %sw.bb93.i, %sw.bb.i, %if.end51.i.batadv_bla_process_claim.exit.thread121_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr_buf.i) #11
  br label %if.end.i114

batadv_bla_process_claim.exit.thread124:          ; preds = %if.then69.i, %do.body65.i.batadv_bla_process_claim.exit.thread124_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr_buf.i) #11
  br label %if.end.i114

batadv_bla_process_claim.exit:                    ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool80.i.not = icmp eq i32 %call61.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr_buf.i) #11
  br i1 %tobool80.i.not, label %batadv_bla_process_claim.exit.if.end7_crit_edge, label %batadv_bla_process_claim.exit.if.end.i114_crit_edge

batadv_bla_process_claim.exit.if.end.i114_crit_edge: ; preds = %batadv_bla_process_claim.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i114

batadv_bla_process_claim.exit.if.end7_crit_edge:  ; preds = %batadv_bla_process_claim.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %batadv_bla_process_claim.exit.if.end7_crit_edge, %batadv_bla_process_claim.exit.thread
  %53 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i.i, align 8
  %55 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i95 = zext i16 %56 to i32
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 %conv.i.i95
  %bla = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33
  %call.i.i92 = call zeroext i1 @__kasan_check_read(ptr noundef %bla, i32 noundef 4) #11
  %57 = ptrtoint ptr %bla to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %bla, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool10.not = icmp eq i32 %58, 0
  br i1 %tobool10.not, label %if.end7.if.end17_crit_edge, label %if.then13, !prof !144

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then13:                                        ; preds = %if.end7
  %59 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i, align 4
  %61 = and i32 %60, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.not = icmp eq i32 %61, 0
  br i1 %tobool.i.not, label %if.then13.if.end17_crit_edge, label %if.then13.if.end.i114_crit_edge

if.then13.if.end.i114_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i114

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %if.then13.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %h_source, align 4
  %64 = ptrtoint ptr %search_claim to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %search_claim, align 4
  %add.ptr.i96 = getelementptr i8, ptr %h_source, i32 4
  %65 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i96, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %search_claim, i32 4
  %67 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %add.ptr1.i, align 4
  %vid20 = getelementptr inbounds %struct.batadv_bla_claim, ptr %search_claim, i32 0, i32 1
  %68 = ptrtoint ptr %vid20 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %vid, ptr %vid20, align 2
  %call21 = call fastcc ptr @batadv_claim_hash_find(ptr noundef %bat_priv, ptr noundef nonnull %search_claim)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end17.allow_crit_edge, label %if.end24

if.end17.allow_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %allow

if.end24:                                         ; preds = %if.end17
  %backbone_lock.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call21, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %backbone_lock.i) #11
  %backbone_gw1.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call21, i32 0, i32 2
  %69 = ptrtoint ptr %backbone_gw1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %backbone_gw1.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %70, i32 0, i32 10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %71 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !142
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end24.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !143

if.end24.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end24
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %72 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %.not.i.i.i.i.i = icmp sgt i32 %72, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.batadv_bla_claim_get_backbone_gw.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.batadv_bla_claim_get_backbone_gw.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_claim_get_backbone_gw.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end24.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end24.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %batadv_bla_claim_get_backbone_gw.exit

batadv_bla_claim_get_backbone_gw.exit:            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.batadv_bla_claim_get_backbone_gw.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %backbone_lock.i) #11
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 4
  %73 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 86
  %75 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_addr, align 64
  %77 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %70, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %76, align 4
  %xor.i.i.i = xor i32 %80, %78
  %add.ptr.i.i.i97 = getelementptr i8, ptr %70, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i.i97 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i.i.i97, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %76, i32 4
  %83 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %84, %82
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i98 = icmp eq i32 %or.i.i.i, 0
  %tobool.not.i99 = icmp eq ptr %70, null
  br i1 %tobool.not.i99, label %batadv_bla_claim_get_backbone_gw.exit.batadv_backbone_gw_put.exit_crit_edge, label %if.end.i102

batadv_bla_claim_get_backbone_gw.exit.batadv_backbone_gw_put.exit_crit_edge: ; preds = %batadv_bla_claim_get_backbone_gw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit

if.end.i102:                                      ; preds = %batadv_bla_claim_get_backbone_gw.exit
  %call.i.i.i.i.i.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i103 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i103, label %if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_backbone_gw_put.exit

if.then.i.i:                                      ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %70, i32 0, i32 11
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %batadv_backbone_gw_put.exit

batadv_backbone_gw_put.exit:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge, %batadv_bla_claim_get_backbone_gw.exit.batadv_backbone_gw_put.exit_crit_edge
  br i1 %cmp.i.i.i98, label %if.then29, label %if.end57

if.then29:                                        ; preds = %batadv_backbone_gw_put.exit
  %lasttime = getelementptr inbounds %struct.batadv_bla_claim, ptr %call21, i32 0, i32 4
  %86 = ptrtoint ptr %lasttime to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lasttime, align 4
  %add.i106 = add i32 %87, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i106, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i107 = icmp slt i32 %sub.i, 0
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i93 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %89 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %cmp.i107, label %do.body, label %do.body44

do.body:                                          ; preds = %if.then29
  br i1 %tobool33.not, label %do.body.if.end38_crit_edge, label %if.then34

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.batadv_bla_tx, ptr noundef %h_source) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %do.body.if.end38_crit_edge
  %91 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %net_dev, align 4
  %dev_addr40 = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 86
  %93 = ptrtoint ptr %dev_addr40 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_addr40, align 64
  call fastcc void @batadv_handle_unclaim(ptr noundef %bat_priv, ptr noundef nonnull %call, ptr noundef %94, ptr noundef %h_source, i16 noundef zeroext %vid)
  br label %allow

do.body44:                                        ; preds = %if.then29
  br i1 %tobool33.not, label %do.body44.if.end.i114_crit_edge, label %if.then50

do.body44.if.end.i114_crit_edge:                  ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i114

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.batadv_bla_tx, ptr noundef %h_source) #11
  br label %if.end.i114

if.end57:                                         ; preds = %batadv_backbone_gw_put.exit
  %95 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i.i, align 4
  %97 = and i32 %96, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i108.not = icmp eq i32 %97, 0
  br i1 %tobool.i108.not, label %if.end57.allow_crit_edge, label %if.end57.if.end.i114_crit_edge

if.end57.if.end.i114_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i114

if.end57.allow_crit_edge:                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %allow

allow:                                            ; preds = %if.end57.allow_crit_edge, %if.end38, %if.end17.allow_crit_edge, %if.end.allow_crit_edge
  %claim.0 = phi ptr [ %call21, %if.end38 ], [ %call21, %if.end57.allow_crit_edge ], [ null, %if.end17.allow_crit_edge ], [ null, %if.end.allow_crit_edge ]
  call fastcc void @batadv_bla_update_own_backbone_gw(ptr noundef %bat_priv, ptr noundef nonnull %call, i16 noundef zeroext %vid)
  br label %if.end.i114

if.end.i114:                                      ; preds = %allow, %if.end57.if.end.i114_crit_edge, %if.then50, %do.body44.if.end.i114_crit_edge, %if.then13.if.end.i114_crit_edge, %batadv_bla_process_claim.exit.if.end.i114_crit_edge, %batadv_bla_process_claim.exit.thread124, %batadv_bla_process_claim.exit.thread121
  %claim.2 = phi ptr [ %claim.0, %allow ], [ null, %batadv_bla_process_claim.exit.if.end.i114_crit_edge ], [ null, %if.then13.if.end.i114_crit_edge ], [ %call21, %if.end57.if.end.i114_crit_edge ], [ %call21, %if.then50 ], [ %call21, %do.body44.if.end.i114_crit_edge ], [ null, %batadv_bla_process_claim.exit.thread121 ], [ null, %batadv_bla_process_claim.exit.thread124 ]
  %ret.0.off0 = phi i1 [ false, %allow ], [ true, %batadv_bla_process_claim.exit.if.end.i114_crit_edge ], [ true, %if.then13.if.end.i114_crit_edge ], [ true, %if.end57.if.end.i114_crit_edge ], [ true, %if.then50 ], [ true, %do.body44.if.end.i114_crit_edge ], [ true, %batadv_bla_process_claim.exit.thread121 ], [ true, %batadv_bla_process_claim.exit.thread124 ]
  %refcount.i110 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i111 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i110, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @llvm.prefetch.p0(ptr %refcount.i110, i32 1, i32 3, i32 1) #11
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i110, ptr %refcount.i110, i32 1, ptr elementtype(i32) %refcount.i110) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i112 = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i112)
  %cmp.i.i.i.i.i113 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i112, 1
  br i1 %cmp.i.i.i.i.i113, label %if.then.i.i118, label %if.end5.i.i.i.i.i116

if.end5.i.i.i.i.i116:                             ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i112)
  %.not.i.i.i.i.i115 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i112, 0
  br i1 %.not.i.i.i.i.i115, label %if.end5.i.i.i.i.i116.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i117, !prof !144

if.end5.i.i.i.i.i116.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i117:                           ; preds = %if.end5.i.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i110, i32 noundef 3) #11
  br label %batadv_hardif_put.exit

if.then.i.i118:                                   ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @batadv_hardif_release(ptr noundef %refcount.i110) #11, !callees !149
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i118, %if.then10.i.i.i.i.i117, %if.end5.i.i.i.i.i116.batadv_hardif_put.exit_crit_edge, %entry.batadv_hardif_put.exit_crit_edge
  %ret.0.off0129 = phi i1 [ %ret.0.off0, %if.end5.i.i.i.i.i116.batadv_hardif_put.exit_crit_edge ], [ %ret.0.off0, %if.then10.i.i.i.i.i117 ], [ %ret.0.off0, %if.then.i.i118 ], [ false, %entry.batadv_hardif_put.exit_crit_edge ]
  %claim.2128 = phi ptr [ %claim.2, %if.end5.i.i.i.i.i116.batadv_hardif_put.exit_crit_edge ], [ %claim.2, %if.then10.i.i.i.i.i117 ], [ %claim.2, %if.then.i.i118 ], [ null, %entry.batadv_hardif_put.exit_crit_edge ]
  call fastcc void @batadv_claim_put(ptr noundef %claim.2128)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %search_claim) #11
  ret i1 %ret.0.off0129
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_handle_unclaim(ptr noundef %bat_priv, ptr noundef readonly %primary_if, ptr nocapture noundef readonly %backbone_addr, ptr noundef %claim_addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  %search_claim.i = alloca %struct.batadv_bla_claim, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %primary_if, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %backbone_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %backbone_addr, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %xor.i.i.i = xor i32 %7, %5
  %add.ptr.i.i.i = getelementptr i8, ptr %backbone_addr, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %11, %9
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_bla_send_claim(ptr noundef %bat_priv, ptr noundef %claim_addr, i16 noundef zeroext %vid, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call fastcc ptr @batadv_backbone_hash_find(ptr noundef %bat_priv, ptr noundef %backbone_addr, i16 noundef zeroext %vid)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %12 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.if.end10_crit_edge, label %if.then7

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %vid to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %call9 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.batadv_handle_unclaim, ptr noundef %claim_addr, i32 noundef %retval.0.i, ptr noundef nonnull %call1) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %search_claim.i) #11
  %14 = getelementptr inbounds i8, ptr %search_claim.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 255, i32 72)
  %16 = ptrtoint ptr %claim_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %claim_addr, align 4
  %18 = ptrtoint ptr %search_claim.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %search_claim.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %claim_addr, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr inbounds i8, ptr %search_claim.i, i32 4
  %21 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i.i, align 4
  %vid1.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %search_claim.i, i32 0, i32 1
  %22 = ptrtoint ptr %vid1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %vid, ptr %vid1.i, align 2
  %call.i = call fastcc ptr @batadv_claim_hash_find(ptr noundef %bat_priv, ptr noundef nonnull %search_claim.i) #11
  %tobool.not.i1 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i1, label %if.end10.if.end.i_crit_edge, label %do.body.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body.i:                                        ; preds = %if.end10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %23 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %log_level, align 4
  %and.i2 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool3.not.i = icmp eq i32 %and.i2, 0
  br i1 %tobool3.not.i, label %do.body.i.if.end7.i_crit_edge, label %if.then4.i

do.body.i.if.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i16 %vid to i32
  %and.i.i = and i32 %conv.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 4095
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 -1, i32 %and2.i.i
  %call6.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.batadv_bla_del_claim, ptr noundef %claim_addr, i32 noundef %retval.0.i.i) #11
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %do.body.i.if.end7.i_crit_edge
  %claim_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 1
  %25 = ptrtoint ptr %claim_hash.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %claim_hash.i, align 4
  %size.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i, align 4
  %arrayidx58.i.i.i.i = getelementptr i8, ptr %call.i, i32 5
  %29 = ptrtoint ptr %arrayidx58.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx58.i.i.i.i, align 1
  %conv59.i.i.i.i = zext i8 %30 to i32
  %shl60.i.i.i.i = shl nuw nsw i32 %conv59.i.i.i.i, 8
  %add61.i.i.i.i = add nuw nsw i32 %shl60.i.i.i.i, -559038731
  %arrayidx63.i.i.i.i = getelementptr i8, ptr %call.i, i32 4
  %31 = ptrtoint ptr %arrayidx63.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx63.i.i.i.i, align 1
  %conv64.i.i.i.i = zext i8 %32 to i32
  %add65.i.i.i.i = add nuw nsw i32 %add61.i.i.i.i, %conv64.i.i.i.i
  %arrayidx67.i.i.i.i = getelementptr i8, ptr %call.i, i32 3
  %33 = ptrtoint ptr %arrayidx67.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx67.i.i.i.i, align 1
  %conv68.i.i.i.i = zext i8 %34 to i32
  %shl69.i.i.i.i = shl nuw i32 %conv68.i.i.i.i, 24
  %add70.i.i.i.i = add i32 %shl69.i.i.i.i, -559038731
  %arrayidx72.i.i.i.i = getelementptr i8, ptr %call.i, i32 2
  %35 = ptrtoint ptr %arrayidx72.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx72.i.i.i.i, align 1
  %conv73.i.i.i.i = zext i8 %36 to i32
  %shl74.i.i.i.i = shl nuw nsw i32 %conv73.i.i.i.i, 16
  %add75.i.i.i.i = add i32 %add70.i.i.i.i, %shl74.i.i.i.i
  %arrayidx77.i.i.i.i = getelementptr i8, ptr %call.i, i32 1
  %37 = ptrtoint ptr %arrayidx77.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx77.i.i.i.i, align 1
  %conv78.i.i.i.i = zext i8 %38 to i32
  %shl79.i.i.i.i = shl nuw nsw i32 %conv78.i.i.i.i, 8
  %add80.i.i.i.i = add i32 %add75.i.i.i.i, %shl79.i.i.i.i
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %call.i, align 1
  %conv83.i.i.i.i = zext i8 %40 to i32
  %add84.i.i.i.i = add i32 %add80.i.i.i.i, %conv83.i.i.i.i
  %xor85.i.i.i.i = xor i32 %add65.i.i.i.i, -559038731
  %or.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i.i.i, i32 %add65.i.i.i.i, i32 14) #11
  %sub87.i.i.i.i = sub i32 %xor85.i.i.i.i, %or.i.i.i.i.i
  %xor88.i.i.i.i = xor i32 %add84.i.i.i.i, %sub87.i.i.i.i
  %or.i201.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i.i.i, i32 %sub87.i.i.i.i, i32 11) #11
  %sub90.i.i.i.i = sub i32 %xor88.i.i.i.i, %or.i201.i.i.i.i
  %xor91.i.i.i.i = xor i32 %sub90.i.i.i.i, %add65.i.i.i.i
  %or.i202.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i.i.i, i32 %sub90.i.i.i.i, i32 25) #11
  %sub93.i.i.i.i = sub i32 %xor91.i.i.i.i, %or.i202.i.i.i.i
  %xor94.i.i.i.i = xor i32 %sub93.i.i.i.i, %sub87.i.i.i.i
  %or.i203.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i.i.i, i32 %sub93.i.i.i.i, i32 16) #11
  %sub96.i.i.i.i = sub i32 %xor94.i.i.i.i, %or.i203.i.i.i.i
  %xor97.i.i.i.i = xor i32 %sub96.i.i.i.i, %sub90.i.i.i.i
  %or.i204.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i.i.i, i32 %sub96.i.i.i.i, i32 4) #11
  %sub99.i.i.i.i = sub i32 %xor97.i.i.i.i, %or.i204.i.i.i.i
  %xor100.i.i.i.i = xor i32 %sub99.i.i.i.i, %sub93.i.i.i.i
  %or.i205.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i.i.i, i32 %sub99.i.i.i.i, i32 14) #11
  %sub102.i.i.i.i = sub i32 %xor100.i.i.i.i, %or.i205.i.i.i.i
  %xor103.i.i.i.i = xor i32 %sub102.i.i.i.i, %sub96.i.i.i.i
  %or.i206.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i.i.i, i32 %sub102.i.i.i.i, i32 24) #11
  %sub105.i.i.i.i = sub i32 %xor103.i.i.i.i, %or.i206.i.i.i.i
  %vid.i.i.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %call.i, i32 0, i32 1
  %add1.i.i.i.i = add i32 %sub105.i.i.i.i, -559038735
  %arrayidx77.i5.i.i.i = getelementptr i8, ptr %vid.i.i.i, i32 1
  %41 = ptrtoint ptr %arrayidx77.i5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx77.i5.i.i.i, align 1
  %conv78.i6.i.i.i = zext i8 %42 to i32
  %shl79.i7.i.i.i = shl nuw nsw i32 %conv78.i6.i.i.i, 8
  %43 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vid.i.i.i, align 1
  %conv83.i9.i.i.i = zext i8 %44 to i32
  %add80.i8.i.i.i = or i32 %shl79.i7.i.i.i, %conv83.i9.i.i.i
  %add84.i10.i.i.i = add i32 %add1.i.i.i.i, %add80.i8.i.i.i
  %or.i.i12.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #11
  %sub87.i13.i.i.i = sub i32 0, %or.i.i12.i.i.i
  %xor88.i14.i.i.i = xor i32 %add84.i10.i.i.i, %sub87.i13.i.i.i
  %or.i201.i15.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i13.i.i.i, i32 %sub87.i13.i.i.i, i32 11) #11
  %sub90.i16.i.i.i = sub i32 %xor88.i14.i.i.i, %or.i201.i15.i.i.i
  %xor91.i17.i.i.i = xor i32 %sub90.i16.i.i.i, %add1.i.i.i.i
  %or.i202.i18.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i16.i.i.i, i32 %sub90.i16.i.i.i, i32 25) #11
  %sub93.i19.i.i.i = sub i32 %xor91.i17.i.i.i, %or.i202.i18.i.i.i
  %xor94.i20.i.i.i = xor i32 %sub93.i19.i.i.i, %sub87.i13.i.i.i
  %or.i203.i21.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i19.i.i.i, i32 %sub93.i19.i.i.i, i32 16) #11
  %sub96.i22.i.i.i = sub i32 %xor94.i20.i.i.i, %or.i203.i21.i.i.i
  %xor97.i23.i.i.i = xor i32 %sub96.i22.i.i.i, %sub90.i16.i.i.i
  %or.i204.i24.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i22.i.i.i, i32 %sub96.i22.i.i.i, i32 4) #11
  %sub99.i25.i.i.i = sub i32 %xor97.i23.i.i.i, %or.i204.i24.i.i.i
  %xor100.i26.i.i.i = xor i32 %sub99.i25.i.i.i, %sub93.i19.i.i.i
  %or.i205.i27.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i25.i.i.i, i32 %sub99.i25.i.i.i, i32 14) #11
  %sub102.i28.i.i.i = sub i32 %xor100.i26.i.i.i, %or.i205.i27.i.i.i
  %xor103.i29.i.i.i = xor i32 %sub102.i28.i.i.i, %sub96.i22.i.i.i
  %or.i206.i30.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i28.i.i.i, i32 %sub102.i28.i.i.i, i32 24) #11
  %sub105.i31.i.i.i = sub i32 %xor103.i29.i.i.i, %or.i206.i30.i.i.i
  %rem.i.i.i = urem i32 %sub105.i31.i.i.i, %28
  %45 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %26, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %46, i32 %rem.i.i.i
  %list_locks.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %26, i32 0, i32 1
  %47 = ptrtoint ptr %list_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %list_locks.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.spinlock, ptr %48, i32 %rem.i.i.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1.i.i) #11
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %node.04.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not5.i.i = icmp eq ptr %node.04.i.i, null
  br i1 %tobool.not5.i.i, label %if.end7.i.batadv_hash_remove.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end7.i.batadv_hash_remove.exit.i_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hash_remove.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end7.i
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call.i, align 4
  %52 = ptrtoint ptr %arrayidx63.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx63.i.i.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %node.06.i.i = phi ptr [ %node.04.i.i, %for.body.lr.ph.i.i ], [ %node.0.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i.i3 = getelementptr i8, ptr %node.06.i.i, i32 -60
  %54 = ptrtoint ptr %add.ptr.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.i3, align 4
  %xor.i.i.i.i.i.i = xor i32 %55, %51
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %node.06.i.i, i32 -56
  %56 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i.i = xor i16 %57, %53
  %xor3.i.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %xor.i.i.i.i.i.i, %xor3.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.end.i.i.i, label %for.body.i.i.for.cond.backedge.i.i_crit_edge

for.body.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %vid.i1.i.i = getelementptr i8, ptr %node.06.i.i, i32 -54
  %58 = ptrtoint ptr %vid.i1.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vid.i1.i.i, align 2
  %60 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vid.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %cmp.not.i.i.i = icmp eq i16 %59, %61
  br i1 %cmp.not.i.i.i, label %if.end.i.i, label %if.end.i.i.i.for.cond.backedge.i.i_crit_edge

if.end.i.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %if.end.i.i.i.for.cond.backedge.i.i_crit_edge, %for.body.i.i.for.cond.backedge.i.i_crit_edge
  %62 = ptrtoint ptr %node.06.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %node.0.i.i = load ptr, ptr %node.06.i.i, align 4
  %tobool.not.i23.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i23.i, label %for.cond.backedge.i.i.batadv_hash_remove.exit.i_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond.backedge.i.i.batadv_hash_remove.exit.i_crit_edge: ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hash_remove.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %63 = ptrtoint ptr %node.06.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %node.06.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %node.06.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %64, ptr %66, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.end.i.i.hlist_del_rcu.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %64, i32 0, i32 1
  %68 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.end.i.i.hlist_del_rcu.exit.i.i_crit_edge
  %69 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %generation.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %26, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %generation.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %generation.i.i, i32 1, i32 3, i32 1) #11
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %generation.i.i, ptr %generation.i.i, i32 1, ptr elementtype(i32) %generation.i.i) #11, !srcloc !155
  br label %batadv_hash_remove.exit.i

batadv_hash_remove.exit.i:                        ; preds = %hlist_del_rcu.exit.i.i, %for.cond.backedge.i.i.batadv_hash_remove.exit.i_crit_edge, %if.end7.i.batadv_hash_remove.exit.i_crit_edge
  %node.03.i.i = phi ptr [ %node.06.i.i, %hlist_del_rcu.exit.i.i ], [ null, %if.end7.i.batadv_hash_remove.exit.i_crit_edge ], [ null, %for.cond.backedge.i.i.batadv_hash_remove.exit.i_crit_edge ]
  %71 = ptrtoint ptr %list_locks.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %list_locks.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.spinlock, ptr %72, i32 %rem.i.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx4.i.i) #11
  %tobool9.not.i = icmp eq ptr %node.03.i.i, null
  br i1 %tobool9.not.i, label %batadv_hash_remove.exit.i.free_claim.i_crit_edge, label %if.end11.i

batadv_hash_remove.exit.i.free_claim.i_crit_edge: ; preds = %batadv_hash_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_claim.i

if.end11.i:                                       ; preds = %batadv_hash_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %node.03.i.i, i32 -60
  tail call fastcc void @batadv_claim_put(ptr noundef %add.ptr.i) #11
  br label %free_claim.i

free_claim.i:                                     ; preds = %if.end11.i, %batadv_hash_remove.exit.i.free_claim.i_crit_edge
  tail call fastcc void @batadv_claim_put(ptr noundef nonnull %call.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %free_claim.i, %if.end10.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %search_claim.i) #11
  %refcount.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_bla_claim_dump(ptr noundef %msg, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i50.i.i = alloca i16, align 2
  %tmp.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %portid2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %portid2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %arrayidx4 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %call5 = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %15, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @dev_get_by_index(ptr noundef %8, i32 noundef %call5) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call6) #11
  br i1 %call8, label %if.end10, label %lor.lhs.false.do.body1.i_crit_edge

lor.lhs.false.do.body1.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.end10:                                         ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %call6, i32 2304
  %claim_hash = getelementptr i8, ptr %call6, i32 2696
  %16 = ptrtoint ptr %claim_hash to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %claim_hash, align 4
  %call12 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.do.body1.i_crit_edge, label %lor.lhs.false14

if.end10.do.body1.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

lor.lhs.false14:                                  ; preds = %if.end10
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %call12, i32 0, i32 1
  %18 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.not = icmp eq i8 %19, 3
  br i1 %cmp.not, label %while.cond.preheader, label %lor.lhs.false14.if.end.i58_crit_edge

lor.lhs.false14.if.end.i58_crit_edge:             ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i58

while.cond.preheader:                             ; preds = %lor.lhs.false14
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %21)
  %cmp1881 = icmp ult i32 %11, %21
  br i1 %cmp1881, label %while.body.lr.ph, label %while.cond.preheader.out_crit_edge

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %17, i32 0, i32 1
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %17, i32 0, i32 3
  %seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %net_dev.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call12, i32 0, i32 4
  %prev_seq.i.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %bucket.083 = phi i32 [ %11, %while.body.lr.ph ], [ %inc, %if.end23.while.body_crit_edge ]
  %idx.082 = phi i32 [ %13, %while.body.lr.ph ], [ 0, %if.end23.while.body_crit_edge ]
  %22 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list_locks.i, align 4
  %arrayidx.i = getelementptr %struct.spinlock, ptr %23, i32 %bucket.083
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %generation.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %generation.i, align 4
  %shl.i = shl i32 %25, 1
  %or.i = or i32 %shl.i, 1
  %26 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %seq.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %17, align 4
  %arrayidx1.i = getelementptr %struct.hlist_head, ptr %28, i32 %bucket.083
  %29 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  %add.ptr.i55 = getelementptr i8, ptr %30, i32 -60
  %tobool3.not4451.i = icmp eq ptr %add.ptr.i55, null
  %tobool3.not44.i = or i1 %tobool.not.i, %tobool3.not4451.i
  br i1 %tobool3.not44.i, label %while.body.if.end23_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %claim.046.i = phi ptr [ %add.ptr14.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i55, %while.body.for.body.i_crit_edge ]
  %idx.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.body.for.body.i_crit_edge ]
  %inc.i = add i32 %idx.045.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.045.i, i32 %idx.082)
  %cmp.i = icmp slt i32 %idx.045.i, %idx.082
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %31 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net_dev.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr.i.i, align 64
  %35 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nlh, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nlmsg_seq.i.i, align 4
  %call.i.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %3, i32 noundef %38, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 11) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.batadv_bla_claim_dump_bucket.exit.thread_crit_edge, label %if.end.i.i

if.end.i.batadv_bla_claim_dump_bucket.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_claim_dump_bucket.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %39 = ptrtoint ptr %prev_seq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prev_seq.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.genl_dump_check_consistent.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genl_dump_check_consistent.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i
  %41 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp.not.i.i.i.i = icmp eq i32 %42, %40
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genl_dump_check_consistent.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %nlmsg_flags.i.i.i.i = getelementptr i8, ptr %call.i.i, i32 -14
  %43 = ptrtoint ptr %nlmsg_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nlmsg_flags.i.i.i.i, align 2
  %45 = or i16 %44, 16
  store i16 %45, ptr %nlmsg_flags.i.i.i.i, align 2
  br label %genl_dump_check_consistent.exit.i.i

genl_dump_check_consistent.exit.i.i:              ; preds = %if.then.i.i.i.i, %land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, %if.end.i.i.genl_dump_check_consistent.exit.i.i_crit_edge
  %46 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %seq.i, align 4
  %48 = ptrtoint ptr %prev_seq.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %prev_seq.i.i.i.i, align 4
  %backbone_gw.i.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.046.i, i32 0, i32 2
  %49 = ptrtoint ptr %backbone_gw.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %backbone_gw.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %34, align 4
  %xor.i.i.i.i.i = xor i32 %54, %52
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %50, i32 4
  %55 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %34, i32 4
  %57 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i = xor i16 %58, %56
  %xor3.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %xor.i.i.i.i.i, %xor3.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  %crc_lock.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %50, i32 0, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %crc_lock.i.i) #11
  %59 = ptrtoint ptr %backbone_gw.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %backbone_gw.i.i, align 4
  %crc.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %crc.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %crc.i.i, align 4
  %crc_lock5.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %60, i32 0, i32 8
  call void @_raw_spin_unlock_bh(ptr noundef %crc_lock5.i.i) #11
  br i1 %cmp.i.i.i.i.i, label %if.then7.i.i, label %genl_dump_check_consistent.exit.i.i.if.end12.i.i_crit_edge

genl_dump_check_consistent.exit.i.i.if.end12.i.i_crit_edge: ; preds = %genl_dump_check_consistent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then7.i.i:                                     ; preds = %genl_dump_check_consistent.exit.i.i
  %call.i.i36.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 30, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.i)
  %tobool9.not.i.i = icmp eq i32 %call.i.i36.i, 0
  br i1 %tobool9.not.i.i, label %if.then7.i.i.if.end12.i.i_crit_edge, label %if.then.i.i.i

if.then7.i.i.if.end12.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then.i.i.i:                                    ; preds = %if.then7.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr1.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.batadv_bla_claim_dump_bucket.exit.thread_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.batadv_bla_claim_dump_bucket.exit.thread_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_claim_dump_bucket.exit.thread

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  %63 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i48.i.i = icmp ugt ptr %64, %add.ptr1.i.i.i
  br i1 %cmp.i.i.i48.i.i, label %if.then.i.i.i.i.i.unlock.sink.split.sink.split.i_crit_edge, label %if.then.i.i.i.i.i.unlock.sink.split.i_crit_edge, !prof !143

if.then.i.i.i.i.i.unlock.sink.split.i_crit_edge:  ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.sink.split.i

if.then.i.i.i.i.i.unlock.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.sink.split.sink.split.i

if.end12.i.i:                                     ; preds = %if.then7.i.i.if.end12.i.i_crit_edge, %genl_dump_check_consistent.exit.i.i.if.end12.i.i_crit_edge
  %call14.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 31, i32 noundef 6, ptr noundef nonnull %claim.046.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %lor.lhs.false.i.i, label %if.end12.i.i.if.then.i55.i.i_crit_edge

if.end12.i.i.if.then.i55.i.i_crit_edge:           ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i55.i.i

lor.lhs.false.i.i:                                ; preds = %if.end12.i.i
  %vid.i.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.046.i, i32 0, i32 1
  %65 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vid.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #11
  %67 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %tmp.i.i.i, align 2
  %call.i49.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 32, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i.i)
  %tobool17.not.i.i = icmp eq i32 %call.i49.i.i, 0
  br i1 %tobool17.not.i.i, label %lor.lhs.false18.i.i, label %lor.lhs.false.i.i.if.then.i55.i.i_crit_edge

lor.lhs.false.i.i.if.then.i55.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i55.i.i

lor.lhs.false18.i.i:                              ; preds = %lor.lhs.false.i.i
  %68 = ptrtoint ptr %backbone_gw.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %backbone_gw.i.i, align 4
  %call22.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 33, i32 noundef 6, ptr noundef %69) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %lor.lhs.false24.i.i, label %lor.lhs.false18.i.i.if.then.i55.i.i_crit_edge

lor.lhs.false18.i.i.if.then.i55.i.i_crit_edge:    ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i55.i.i

lor.lhs.false24.i.i:                              ; preds = %lor.lhs.false18.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i50.i.i) #11
  %70 = ptrtoint ptr %tmp.i50.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %62, ptr %tmp.i50.i.i, align 2
  %call.i51.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 34, i32 noundef 2, ptr noundef nonnull %tmp.i50.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i50.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i.i)
  %tobool26.not.i.i = icmp eq i32 %call.i51.i.i, 0
  br i1 %tobool26.not.i.i, label %batadv_bla_claim_dump_entry.exit.i, label %lor.lhs.false24.i.i.if.then.i55.i.i_crit_edge

lor.lhs.false24.i.i.if.then.i55.i.i_crit_edge:    ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i55.i.i

if.then.i55.i.i:                                  ; preds = %lor.lhs.false24.i.i.if.then.i55.i.i_crit_edge, %lor.lhs.false18.i.i.if.then.i55.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i55.i.i_crit_edge, %if.end12.i.i.if.then.i55.i.i_crit_edge
  %add.ptr1.i53.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i54.i.i = icmp eq ptr %add.ptr1.i53.i.i, null
  br i1 %tobool.not.i.i.i54.i.i, label %if.then.i55.i.i.batadv_bla_claim_dump_bucket.exit.thread_crit_edge, label %if.then.i.i.i58.i.i

if.then.i55.i.i.batadv_bla_claim_dump_bucket.exit.thread_crit_edge: ; preds = %if.then.i55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_claim_dump_bucket.exit.thread

if.then.i.i.i58.i.i:                              ; preds = %if.then.i55.i.i
  %71 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i57.i.i = icmp ugt ptr %72, %add.ptr1.i53.i.i
  br i1 %cmp.i.i.i57.i.i, label %if.then.i.i.i58.i.i.unlock.sink.split.sink.split.i_crit_edge, label %if.then.i.i.i58.i.i.unlock.sink.split.i_crit_edge, !prof !143

if.then.i.i.i58.i.i.unlock.sink.split.i_crit_edge: ; preds = %if.then.i.i.i58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.sink.split.i

if.then.i.i.i58.i.i.unlock.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i.i.i58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.sink.split.sink.split.i

batadv_bla_claim_dump_entry.exit.i:               ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr1.i65.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %73 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i65.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %75 = ptrtoint ptr %add.ptr1.i65.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %add.ptr1.i65.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %batadv_bla_claim_dump_entry.exit.i, %for.body.i.for.inc.i_crit_edge
  %hash_entry.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.046.i, i32 0, i32 5
  %76 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hash_entry.i, align 4
  %tobool10.not.i = icmp eq ptr %77, null
  %add.ptr14.i = getelementptr i8, ptr %77, i32 -60
  %tobool3.not58.i = icmp eq ptr %add.ptr14.i, null
  %tobool3.not.i = or i1 %tobool10.not.i, %tobool3.not58.i
  br i1 %tobool3.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

unlock.sink.split.sink.split.i:                   ; preds = %if.then.i.i.i58.i.i.unlock.sink.split.sink.split.i_crit_edge, %if.then.i.i.i.i.i.unlock.sink.split.sink.split.i_crit_edge
  %add.ptr1.i53.i.sink.ph.i = phi ptr [ %add.ptr1.i.i.i, %if.then.i.i.i.i.i.unlock.sink.split.sink.split.i_crit_edge ], [ %add.ptr1.i53.i.i, %if.then.i.i.i58.i.i.unlock.sink.split.sink.split.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %unlock.sink.split.i

unlock.sink.split.i:                              ; preds = %unlock.sink.split.sink.split.i, %if.then.i.i.i58.i.i.unlock.sink.split.i_crit_edge, %if.then.i.i.i.i.i.unlock.sink.split.i_crit_edge
  %add.ptr1.i53.i.sink.i = phi ptr [ %add.ptr1.i.i.i, %if.then.i.i.i.i.i.unlock.sink.split.i_crit_edge ], [ %add.ptr1.i53.i.i, %if.then.i.i.i58.i.i.unlock.sink.split.i_crit_edge ], [ %add.ptr1.i53.i.sink.ph.i, %unlock.sink.split.sink.split.i ]
  %78 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i60.i.i = ptrtoint ptr %add.ptr1.i53.i.sink.i to i32
  %sub.ptr.rhs.cast.i.i.i61.i.i = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i.i.i62.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i60.i.i, %sub.ptr.rhs.cast.i.i.i61.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i62.i.i) #11
  br label %batadv_bla_claim_dump_bucket.exit.thread

batadv_bla_claim_dump_bucket.exit.thread:         ; preds = %unlock.sink.split.i, %if.then.i55.i.i.batadv_bla_claim_dump_bucket.exit.thread_crit_edge, %if.then.i.i.i.batadv_bla_claim_dump_bucket.exit.thread_crit_edge, %if.end.i.batadv_bla_claim_dump_bucket.exit.thread_crit_edge
  %80 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %list_locks.i, align 4
  %arrayidx19.i94 = getelementptr %struct.spinlock, ptr %81, i32 %bucket.083
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx19.i94) #11
  br label %out

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %while.body.if.end23_crit_edge
  %82 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %list_locks.i, align 4
  %arrayidx19.i = getelementptr %struct.spinlock, ptr %83, i32 %bucket.083
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx19.i) #11
  %inc = add nuw i32 %bucket.083, 1
  %84 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size, align 4
  %cmp18 = icmp ult i32 %inc, %85
  br i1 %cmp18, label %if.end23.while.body_crit_edge, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

out:                                              ; preds = %if.end23.out_crit_edge, %batadv_bla_claim_dump_bucket.exit.thread, %while.cond.preheader.out_crit_edge
  %bucket.0.lcssa = phi i32 [ %11, %while.cond.preheader.out_crit_edge ], [ %bucket.083, %batadv_bla_claim_dump_bucket.exit.thread ], [ %inc, %if.end23.out_crit_edge ]
  %idx.1 = phi i32 [ %13, %while.cond.preheader.out_crit_edge ], [ %idx.045.i, %batadv_bla_claim_dump_bucket.exit.thread ], [ 0, %if.end23.out_crit_edge ]
  %86 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %bucket.0.lcssa, ptr %9, align 4
  %87 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %idx.1, ptr %arrayidx4, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  br label %if.end.i58

if.end.i58:                                       ; preds = %out, %lor.lhs.false14.if.end.i58_crit_edge
  %ret.071 = phi i32 [ %89, %out ], [ -2, %lor.lhs.false14.if.end.i58_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call12, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %90 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i57, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.body1.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.do.body1.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %do.body1.i

if.then.i.i:                                      ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @batadv_hardif_release(ptr noundef %refcount.i) #11, !callees !149
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.body1.i_crit_edge, %if.end10.do.body1.i_crit_edge, %lor.lhs.false.do.body1.i_crit_edge
  %ret.06573 = phi i32 [ -19, %lor.lhs.false.do.body1.i_crit_edge ], [ -2, %if.end10.do.body1.i_crit_edge ], [ %ret.071, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %ret.071, %if.then10.i.i.i.i.i ], [ %ret.071, %if.then.i.i ]
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 118
  %92 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pcpu_refcnt.i, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cpu.i, align 4
  %arrayidx.i60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i60, align 4
  %add.i = add i32 %100, %94
  %101 = inttoptr i32 %add.i to ptr
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add13.i = add i32 %103, -1
  store i32 %add13.i, ptr %101, align 4
  %104 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !158
  %and.i.i.i = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !143

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #11, !srcloc !159
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.06573, %do.end30.i ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_netlink_get_ifindex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_softif_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_bla_backbone_dump(ptr noundef %msg, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i48.i.i = alloca i32, align 4
  %tmp.i46.i.i = alloca i16, align 2
  %tmp.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %portid2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %portid2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %arrayidx4 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %call5 = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %15, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @dev_get_by_index(ptr noundef %8, i32 noundef %call5) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call6) #11
  br i1 %call8, label %if.end10, label %lor.lhs.false.do.body1.i_crit_edge

lor.lhs.false.do.body1.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.end10:                                         ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %call6, i32 2304
  %backbone_hash = getelementptr i8, ptr %call6, i32 2700
  %16 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %backbone_hash, align 4
  %call12 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.do.body1.i_crit_edge, label %lor.lhs.false14

if.end10.do.body1.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

lor.lhs.false14:                                  ; preds = %if.end10
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %call12, i32 0, i32 1
  %18 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.not = icmp eq i8 %19, 3
  br i1 %cmp.not, label %while.cond.preheader, label %lor.lhs.false14.if.end.i58_crit_edge

lor.lhs.false14.if.end.i58_crit_edge:             ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i58

while.cond.preheader:                             ; preds = %lor.lhs.false14
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %21)
  %cmp1881 = icmp ult i32 %11, %21
  br i1 %cmp1881, label %while.body.lr.ph, label %while.cond.preheader.out_crit_edge

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %17, i32 0, i32 1
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %17, i32 0, i32 3
  %seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %net_dev.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call12, i32 0, i32 4
  %prev_seq.i.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %bucket.083 = phi i32 [ %11, %while.body.lr.ph ], [ %inc, %if.end23.while.body_crit_edge ]
  %idx.082 = phi i32 [ %13, %while.body.lr.ph ], [ 0, %if.end23.while.body_crit_edge ]
  %22 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list_locks.i, align 4
  %arrayidx.i = getelementptr %struct.spinlock, ptr %23, i32 %bucket.083
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %generation.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %generation.i, align 4
  %shl.i = shl i32 %25, 1
  %or.i = or i32 %shl.i, 1
  %26 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %seq.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %17, align 4
  %arrayidx1.i = getelementptr %struct.hlist_head, ptr %28, i32 %bucket.083
  %29 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  %add.ptr.i55 = getelementptr i8, ptr %30, i32 -8
  %tobool3.not4451.i = icmp eq ptr %add.ptr.i55, null
  %tobool3.not44.i = or i1 %tobool.not.i, %tobool3.not4451.i
  br i1 %tobool3.not44.i, label %while.body.if.end23_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %backbone_gw.046.i = phi ptr [ %add.ptr14.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i55, %while.body.for.body.i_crit_edge ]
  %idx.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.body.for.body.i_crit_edge ]
  %inc.i = add i32 %idx.045.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.045.i, i32 %idx.082)
  %cmp.i = icmp slt i32 %idx.045.i, %idx.082
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %31 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net_dev.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr.i.i, align 64
  %35 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nlh, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nlmsg_seq.i.i, align 4
  %call.i.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %3, i32 noundef %38, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 12) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.batadv_bla_backbone_dump_bucket.exit.thread_crit_edge, label %if.end.i.i

if.end.i.batadv_bla_backbone_dump_bucket.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_backbone_dump_bucket.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %39 = ptrtoint ptr %prev_seq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prev_seq.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.genl_dump_check_consistent.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genl_dump_check_consistent.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i
  %41 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp.not.i.i.i.i = icmp eq i32 %42, %40
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genl_dump_check_consistent.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %nlmsg_flags.i.i.i.i = getelementptr i8, ptr %call.i.i, i32 -14
  %43 = ptrtoint ptr %nlmsg_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nlmsg_flags.i.i.i.i, align 2
  %45 = or i16 %44, 16
  store i16 %45, ptr %nlmsg_flags.i.i.i.i, align 2
  br label %genl_dump_check_consistent.exit.i.i

genl_dump_check_consistent.exit.i.i:              ; preds = %if.then.i.i.i.i, %land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, %if.end.i.i.genl_dump_check_consistent.exit.i.i_crit_edge
  %46 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %seq.i, align 4
  %48 = ptrtoint ptr %prev_seq.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %prev_seq.i.i.i.i, align 4
  %49 = ptrtoint ptr %backbone_gw.046.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %backbone_gw.046.i, align 4
  %51 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %34, align 4
  %xor.i.i.i.i.i = xor i32 %52, %50
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %backbone_gw.046.i, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %34, i32 4
  %55 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i = xor i16 %56, %54
  %xor3.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %xor.i.i.i.i.i, %xor3.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  %crc_lock.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.046.i, i32 0, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %crc_lock.i.i) #11
  %crc.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.046.i, i32 0, i32 7
  %57 = ptrtoint ptr %crc.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %crc.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %crc_lock.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %lasttime.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.046.i, i32 0, i32 4
  %60 = ptrtoint ptr %lasttime.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lasttime.i.i, align 4
  %sub.i.i = sub i32 %59, %61
  %call3.i.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i.i) #11
  br i1 %cmp.i.i.i.i.i, label %if.then5.i.i, label %genl_dump_check_consistent.exit.i.i.if.end10.i.i_crit_edge

genl_dump_check_consistent.exit.i.i.if.end10.i.i_crit_edge: ; preds = %genl_dump_check_consistent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.then5.i.i:                                     ; preds = %genl_dump_check_consistent.exit.i.i
  %call.i.i36.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 30, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.i)
  %tobool7.not.i.i = icmp eq i32 %call.i.i36.i, 0
  br i1 %tobool7.not.i.i, label %if.then5.i.i.if.end10.i.i_crit_edge, label %if.then.i.i.i

if.then5.i.i.if.end10.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.then.i.i.i:                                    ; preds = %if.then5.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr1.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.batadv_bla_backbone_dump_bucket.exit.thread_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.batadv_bla_backbone_dump_bucket.exit.thread_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_backbone_dump_bucket.exit.thread

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  %62 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i44.i.i = icmp ugt ptr %63, %add.ptr1.i.i.i
  br i1 %cmp.i.i.i44.i.i, label %if.then.i.i.i.i.i.unlock.sink.split.sink.split.i_crit_edge, label %if.then.i.i.i.i.i.unlock.sink.split.i_crit_edge, !prof !143

if.then.i.i.i.i.i.unlock.sink.split.i_crit_edge:  ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.sink.split.i

if.then.i.i.i.i.i.unlock.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.sink.split.sink.split.i

if.end10.i.i:                                     ; preds = %if.then5.i.i.if.end10.i.i_crit_edge, %genl_dump_check_consistent.exit.i.i.if.end10.i.i_crit_edge
  %call13.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 33, i32 noundef 6, ptr noundef nonnull %backbone_gw.046.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %lor.lhs.false.i.i, label %if.end10.i.i.if.then.i53.i.i_crit_edge

if.end10.i.i.if.then.i53.i.i_crit_edge:           ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i53.i.i

lor.lhs.false.i.i:                                ; preds = %if.end10.i.i
  %vid.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.046.i, i32 0, i32 1
  %64 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vid.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #11
  %66 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %tmp.i.i.i, align 2
  %call.i45.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 32, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i.i)
  %tobool16.not.i.i = icmp eq i32 %call.i45.i.i, 0
  br i1 %tobool16.not.i.i, label %lor.lhs.false17.i.i, label %lor.lhs.false.i.i.if.then.i53.i.i_crit_edge

lor.lhs.false.i.i.if.then.i53.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i53.i.i

lor.lhs.false17.i.i:                              ; preds = %lor.lhs.false.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i46.i.i) #11
  %67 = ptrtoint ptr %tmp.i46.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %58, ptr %tmp.i46.i.i, align 2
  %call.i47.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 34, i32 noundef 2, ptr noundef nonnull %tmp.i46.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i46.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i.i)
  %tobool19.not.i.i = icmp eq i32 %call.i47.i.i, 0
  br i1 %tobool19.not.i.i, label %lor.lhs.false20.i.i, label %lor.lhs.false17.i.i.if.then.i53.i.i_crit_edge

lor.lhs.false17.i.i.if.then.i53.i.i_crit_edge:    ; preds = %lor.lhs.false17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i53.i.i

lor.lhs.false20.i.i:                              ; preds = %lor.lhs.false17.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i48.i.i) #11
  %68 = ptrtoint ptr %tmp.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call3.i.i, ptr %tmp.i48.i.i, align 4
  %call.i49.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %tmp.i48.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i48.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i.i)
  %tobool22.not.i.i = icmp eq i32 %call.i49.i.i, 0
  br i1 %tobool22.not.i.i, label %batadv_bla_backbone_dump_entry.exit.i, label %lor.lhs.false20.i.i.if.then.i53.i.i_crit_edge

lor.lhs.false20.i.i.if.then.i53.i.i_crit_edge:    ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i53.i.i

if.then.i53.i.i:                                  ; preds = %lor.lhs.false20.i.i.if.then.i53.i.i_crit_edge, %lor.lhs.false17.i.i.if.then.i53.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i53.i.i_crit_edge, %if.end10.i.i.if.then.i53.i.i_crit_edge
  %add.ptr1.i51.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i52.i.i = icmp eq ptr %add.ptr1.i51.i.i, null
  br i1 %tobool.not.i.i.i52.i.i, label %if.then.i53.i.i.batadv_bla_backbone_dump_bucket.exit.thread_crit_edge, label %if.then.i.i.i56.i.i

if.then.i53.i.i.batadv_bla_backbone_dump_bucket.exit.thread_crit_edge: ; preds = %if.then.i53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_bla_backbone_dump_bucket.exit.thread

if.then.i.i.i56.i.i:                              ; preds = %if.then.i53.i.i
  %69 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i55.i.i = icmp ugt ptr %70, %add.ptr1.i51.i.i
  br i1 %cmp.i.i.i55.i.i, label %if.then.i.i.i56.i.i.unlock.sink.split.sink.split.i_crit_edge, label %if.then.i.i.i56.i.i.unlock.sink.split.i_crit_edge, !prof !143

if.then.i.i.i56.i.i.unlock.sink.split.i_crit_edge: ; preds = %if.then.i.i.i56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.sink.split.i

if.then.i.i.i56.i.i.unlock.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i.i.i56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.sink.split.sink.split.i

batadv_bla_backbone_dump_entry.exit.i:            ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr1.i63.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %71 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i63.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %73 = ptrtoint ptr %add.ptr1.i63.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %add.ptr1.i63.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %batadv_bla_backbone_dump_entry.exit.i, %for.body.i.for.inc.i_crit_edge
  %hash_entry.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw.046.i, i32 0, i32 2
  %74 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hash_entry.i, align 4
  %tobool10.not.i = icmp eq ptr %75, null
  %add.ptr14.i = getelementptr i8, ptr %75, i32 -8
  %tobool3.not58.i = icmp eq ptr %add.ptr14.i, null
  %tobool3.not.i = or i1 %tobool10.not.i, %tobool3.not58.i
  br i1 %tobool3.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

unlock.sink.split.sink.split.i:                   ; preds = %if.then.i.i.i56.i.i.unlock.sink.split.sink.split.i_crit_edge, %if.then.i.i.i.i.i.unlock.sink.split.sink.split.i_crit_edge
  %add.ptr1.i51.i.sink.ph.i = phi ptr [ %add.ptr1.i.i.i, %if.then.i.i.i.i.i.unlock.sink.split.sink.split.i_crit_edge ], [ %add.ptr1.i51.i.i, %if.then.i.i.i56.i.i.unlock.sink.split.sink.split.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %unlock.sink.split.i

unlock.sink.split.i:                              ; preds = %unlock.sink.split.sink.split.i, %if.then.i.i.i56.i.i.unlock.sink.split.i_crit_edge, %if.then.i.i.i.i.i.unlock.sink.split.i_crit_edge
  %add.ptr1.i51.i.sink.i = phi ptr [ %add.ptr1.i.i.i, %if.then.i.i.i.i.i.unlock.sink.split.i_crit_edge ], [ %add.ptr1.i51.i.i, %if.then.i.i.i56.i.i.unlock.sink.split.i_crit_edge ], [ %add.ptr1.i51.i.sink.ph.i, %unlock.sink.split.sink.split.i ]
  %76 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i58.i.i = ptrtoint ptr %add.ptr1.i51.i.sink.i to i32
  %sub.ptr.rhs.cast.i.i.i59.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i.i60.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i58.i.i, %sub.ptr.rhs.cast.i.i.i59.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i60.i.i) #11
  br label %batadv_bla_backbone_dump_bucket.exit.thread

batadv_bla_backbone_dump_bucket.exit.thread:      ; preds = %unlock.sink.split.i, %if.then.i53.i.i.batadv_bla_backbone_dump_bucket.exit.thread_crit_edge, %if.then.i.i.i.batadv_bla_backbone_dump_bucket.exit.thread_crit_edge, %if.end.i.batadv_bla_backbone_dump_bucket.exit.thread_crit_edge
  %78 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %list_locks.i, align 4
  %arrayidx19.i94 = getelementptr %struct.spinlock, ptr %79, i32 %bucket.083
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx19.i94) #11
  br label %out

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %while.body.if.end23_crit_edge
  %80 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %list_locks.i, align 4
  %arrayidx19.i = getelementptr %struct.spinlock, ptr %81, i32 %bucket.083
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx19.i) #11
  %inc = add nuw i32 %bucket.083, 1
  %82 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size, align 4
  %cmp18 = icmp ult i32 %inc, %83
  br i1 %cmp18, label %if.end23.while.body_crit_edge, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

out:                                              ; preds = %if.end23.out_crit_edge, %batadv_bla_backbone_dump_bucket.exit.thread, %while.cond.preheader.out_crit_edge
  %bucket.0.lcssa = phi i32 [ %11, %while.cond.preheader.out_crit_edge ], [ %bucket.083, %batadv_bla_backbone_dump_bucket.exit.thread ], [ %inc, %if.end23.out_crit_edge ]
  %idx.1 = phi i32 [ %13, %while.cond.preheader.out_crit_edge ], [ %idx.045.i, %batadv_bla_backbone_dump_bucket.exit.thread ], [ 0, %if.end23.out_crit_edge ]
  %84 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %bucket.0.lcssa, ptr %9, align 4
  %85 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %idx.1, ptr %arrayidx4, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %86 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len, align 4
  br label %if.end.i58

if.end.i58:                                       ; preds = %out, %lor.lhs.false14.if.end.i58_crit_edge
  %ret.071 = phi i32 [ %87, %out ], [ -2, %lor.lhs.false14.if.end.i58_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call12, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i57, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.body1.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.do.body1.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %do.body1.i

if.then.i.i:                                      ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @batadv_hardif_release(ptr noundef %refcount.i) #11, !callees !149
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.body1.i_crit_edge, %if.end10.do.body1.i_crit_edge, %lor.lhs.false.do.body1.i_crit_edge
  %ret.06573 = phi i32 [ -19, %lor.lhs.false.do.body1.i_crit_edge ], [ -2, %if.end10.do.body1.i_crit_edge ], [ %ret.071, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %ret.071, %if.then10.i.i.i.i.i ], [ %ret.071, %if.then.i.i ]
  %89 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 118
  %90 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pcpu_refcnt.i, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i, align 4
  %arrayidx.i60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i60, align 4
  %add.i = add i32 %98, %92
  %99 = inttoptr i32 %add.i to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add13.i = add i32 %101, -1
  store i32 %add13.i, ptr %99, align 4
  %102 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !158
  %and.i.i.i = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !143

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %89) #11, !srcloc !159
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.06573, %do.end30.i ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_bla_check_claim(ptr noundef %bat_priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %search_claim = alloca %struct.batadv_bla_claim, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %search_claim) #11
  %0 = getelementptr inbounds i8, ptr %search_claim, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 72)
  %bridge_loop_avoidance = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #11
  %2 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bridge_loop_avoidance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = ptrtoint ptr %search_claim to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %search_claim, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %search_claim, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 4
  %vid8 = getelementptr inbounds %struct.batadv_bla_claim, ptr %search_claim, i32 0, i32 1
  %10 = ptrtoint ptr %vid8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %vid, ptr %vid8, align 2
  %call9 = call fastcc ptr @batadv_claim_hash_find(ptr noundef %bat_priv, ptr noundef nonnull %search_claim)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end6.if.end.i_crit_edge, label %if.then11

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %backbone_gw = getelementptr inbounds %struct.batadv_bla_claim, ptr %call9, i32 0, i32 2
  %11 = ptrtoint ptr %backbone_gw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %backbone_gw, align 4
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call2, i32 0, i32 4
  %13 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %xor.i.i.i = xor i32 %20, %18
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %16, i32 4
  %23 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %24, %22
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  tail call fastcc void @batadv_claim_put(ptr noundef nonnull %call9)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then11, %if.end6.if.end.i_crit_edge
  %ret.1.off0 = phi i1 [ %cmp.i.i.i, %if.then11 ], [ true, %if.end6.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call2, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #11, !callees !149
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %ret.1.off0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.1.off0, %if.then10.i.i.i.i.i ], [ %ret.1.off0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %search_claim) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_bla_del_backbone_claims(ptr noundef %backbone_gw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_priv = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw, i32 0, i32 3
  %0 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_priv, align 4
  %claim_hash = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 33, i32 1
  %2 = ptrtoint ptr %claim_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %claim_hash, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp56.not = icmp eq i32 %5, 0
  br i1 %cmp56.not, label %for.cond.preheader.for.end25_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end25_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end25

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %7, i32 %i.057
  %8 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list_locks, align 4
  %arrayidx1 = getelementptr %struct.spinlock, ptr %9, i32 %i.057
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1) #11
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %11, null
  %add.ptr = getelementptr i8, ptr %11, i32 -60
  %tobool5.not5458 = icmp eq ptr %add.ptr, null
  %tobool5.not54 = or i1 %tobool2.not, %tobool5.not5458
  br i1 %tobool5.not54, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %claim.055 = phi ptr [ %add.ptr20, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.055, i32 0, i32 5
  %12 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hash_entry, align 4
  %backbone_gw9 = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.055, i32 0, i32 2
  %14 = ptrtoint ptr %backbone_gw9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %backbone_gw9, align 4
  %cmp10.not = icmp eq ptr %15, %backbone_gw
  br i1 %cmp10.not, label %if.end12, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end12:                                         ; preds = %land.rhs
  tail call fastcc void @batadv_claim_put(ptr noundef nonnull %claim.055)
  %16 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hash_entry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.055, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev2.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %17, ptr %19, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end12.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end12.hlist_del_rcu.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end12.hlist_del_rcu.exit_crit_edge
  %22 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %hlist_del_rcu.exit, %land.rhs.for.inc_crit_edge
  %tobool16.not = icmp eq ptr %13, null
  %add.ptr20 = getelementptr i8, ptr %13, i32 -60
  %tobool5.not59 = icmp eq ptr %add.ptr20, null
  %tobool5.not = or i1 %tobool16.not, %tobool5.not59
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1) #11
  %inc = add nuw i32 %i.057, 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end25_crit_edge

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end25

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end25:                                        ; preds = %for.end.for.end25_crit_edge, %for.cond.preheader.for.end25_crit_edge
  %crc_lock = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %crc_lock) #11
  %crc = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %backbone_gw, i32 0, i32 7
  %25 = ptrtoint ptr %crc to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %crc, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %crc_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_bla_send_claim(ptr noundef %bat_priv, ptr noundef %mac, i16 noundef zeroext %vid, i32 noundef %claimtype) unnamed_addr #0 align 64 {
entry:
  %local_claim_dest = alloca %struct.batadv_bla_claim_dst, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %local_claim_dest) #11
  %call = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.batadv_bla_claim_dst, ptr %local_claim_dest, i32 0, i32 1
  %claim_dest = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 9
  %1 = call ptr @memcpy(ptr %local_claim_dest, ptr %claim_dest, i32 6)
  %conv = trunc i32 %claimtype to i8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %0, align 1
  %soft_iface1 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %soft_iface1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_iface1, align 4
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %call3 = call ptr @arp_create(i32 noundef 2, i32 noundef 2054, i32 noundef 0, ptr noundef %4, i32 noundef 0, ptr noundef null, ptr noundef %8, ptr noundef nonnull %local_claim_dest) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end.i_crit_edge, label %if.end6

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr7 = getelementptr i8, ptr %10, i32 22
  %11 = zext i32 %claimtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %claimtype, label %if.end6.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb27
    i32 3, label %sw.bb42
    i32 4, label %sw.bb60
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac, align 4
  %14 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %h_source, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ethhdr, ptr %10, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %add.ptr1.i, align 2
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %18 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %sw.bb.sw.epilog_crit_edge, label %if.then10

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %vid to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %call12 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.batadv_bla_send_claim, ptr noundef %mac, i32 noundef %retval.0.i) #11
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end6
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac, align 4
  %22 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr7, align 4
  %add.ptr.i153 = getelementptr i8, ptr %mac, i32 4
  %23 = ptrtoint ptr %add.ptr.i153 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i153, align 2
  %add.ptr1.i154 = getelementptr i8, ptr %10, i32 26
  %25 = ptrtoint ptr %add.ptr1.i154 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr1.i154, align 2
  %log_level17 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i149 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level17, i32 noundef 4) #11
  %26 = ptrtoint ptr %log_level17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %log_level17, align 4
  %and19 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %sw.bb14.sw.epilog_crit_edge, label %if.then21

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then21:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i155 = zext i16 %vid to i32
  %and.i156 = and i32 %conv.i155, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156)
  %tobool.not.i157 = icmp eq i32 %and.i156, 0
  %and2.i158 = and i32 %conv.i155, 4095
  %retval.0.i159 = select i1 %tobool.not.i157, i32 -1, i32 %and2.i158
  %call23 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.batadv_bla_send_claim, ptr noundef %mac, i32 noundef %retval.0.i159) #11
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end6
  %28 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mac, align 4
  %30 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %add.ptr7, align 4
  %add.ptr.i160 = getelementptr i8, ptr %mac, i32 4
  %31 = ptrtoint ptr %add.ptr.i160 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i160, align 2
  %add.ptr1.i161 = getelementptr i8, ptr %10, i32 26
  %33 = ptrtoint ptr %add.ptr1.i161 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %add.ptr1.i161, align 2
  %log_level30 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i150 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level30, i32 noundef 4) #11
  %34 = ptrtoint ptr %log_level30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %log_level30, align 4
  %and32 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %sw.bb27.sw.epilog_crit_edge, label %if.then34

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #13
  %h_source35 = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 1
  %conv.i162 = zext i16 %vid to i32
  %and.i163 = and i32 %conv.i162, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool.not.i164 = icmp eq i32 %and.i163, 0
  %and2.i165 = and i32 %conv.i162, 4095
  %retval.0.i166 = select i1 %tobool.not.i164, i32 -1, i32 %and2.i165
  %call38 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.batadv_bla_send_claim, ptr noundef %h_source35, i32 noundef %retval.0.i166) #11
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end6
  %36 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mac, align 4
  %38 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %add.ptr7, align 4
  %add.ptr.i167 = getelementptr i8, ptr %mac, i32 4
  %39 = ptrtoint ptr %add.ptr.i167 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i167, align 2
  %add.ptr1.i168 = getelementptr i8, ptr %10, i32 26
  %41 = ptrtoint ptr %add.ptr1.i168 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %add.ptr1.i168, align 2
  %42 = load i32, ptr %mac, align 4
  %43 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %10, align 4
  %44 = load i16, ptr %add.ptr.i167, align 2
  %add.ptr1.i170 = getelementptr i8, ptr %10, i32 4
  %45 = ptrtoint ptr %add.ptr1.i170 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr1.i170, align 2
  %log_level46 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i151 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level46, i32 noundef 4) #11
  %46 = ptrtoint ptr %log_level46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %log_level46, align 4
  %and48 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %sw.bb42.sw.epilog_crit_edge, label %if.then50

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then50:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  %h_source51 = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 1
  %conv.i171 = zext i16 %vid to i32
  %and.i172 = and i32 %conv.i171, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool.not.i173 = icmp eq i32 %and.i172, 0
  %and2.i174 = and i32 %conv.i171, 4095
  %retval.0.i175 = select i1 %tobool.not.i173, i32 -1, i32 %and2.i174
  %call56 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.batadv_bla_send_claim, ptr noundef %h_source51, ptr noundef %10, i32 noundef %retval.0.i175) #11
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end6
  %h_source61 = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 1
  %48 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mac, align 4
  %50 = ptrtoint ptr %h_source61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %h_source61, align 4
  %add.ptr.i176 = getelementptr i8, ptr %mac, i32 4
  %51 = ptrtoint ptr %add.ptr.i176 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr.i176, align 2
  %add.ptr1.i177 = getelementptr %struct.ethhdr, ptr %10, i32 0, i32 1, i32 4
  %53 = ptrtoint ptr %add.ptr1.i177 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %add.ptr1.i177, align 2
  %log_level65 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i152 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level65, i32 noundef 4) #11
  %54 = ptrtoint ptr %log_level65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %log_level65, align 4
  %and67 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %sw.bb60.sw.epilog_crit_edge, label %if.then69

sw.bb60.sw.epilog_crit_edge:                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then69:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i178 = zext i16 %vid to i32
  %and.i179 = and i32 %conv.i178, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.not.i180 = icmp eq i32 %and.i179, 0
  %and2.i181 = and i32 %conv.i178, 4095
  %retval.0.i182 = select i1 %tobool.not.i180, i32 -1, i32 %and2.i181
  %call75 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.batadv_bla_send_claim, ptr noundef %h_source61, ptr noundef %10, i32 noundef %retval.0.i182) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then69, %sw.bb60.sw.epilog_crit_edge, %if.then50, %sw.bb42.sw.epilog_crit_edge, %if.then34, %sw.bb27.sw.epilog_crit_edge, %if.then21, %sw.bb14.sw.epilog_crit_edge, %if.then10, %sw.bb.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vid)
  %tobool81.not = icmp sgt i16 %vid, -1
  br i1 %tobool81.not, label %sw.epilog.if.end90_crit_edge, label %if.then82

sw.epilog.if.end90_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then82:                                        ; preds = %sw.epilog
  %and84 = and i16 %vid, 4095
  %cloned.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 12
  %56 = ptrtoint ptr %cloned.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i.i.i.i.i = load i8, ptr %cloned.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i

skb_header_cloned.exit.i.i.i.i:                   ; preds = %if.then82
  %end.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 17
  %57 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %end.i.i.i.i.i.i, align 4
  %dataref1.i.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %58, i32 0, i32 10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i.i, i32 noundef 4) #11
  %59 = ptrtoint ptr %dataref1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %dataref1.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %head.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 18
  %63 = ptrtoint ptr %head.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %head.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i.i.i.i.i)
  %cmp.i1.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i.i.i, 4
  br i1 %cmp.i1.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge, label %if.end.i2.i.i.i.i

skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread.i.i.i.i.i

skb_header_cloned.exit.thread.i.i.i.i:            ; preds = %if.then82
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %head.i.i6.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 18
  %67 = ptrtoint ptr %head.i.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head.i.i6.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i.i.i = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast.i.i8.i.i.i.i = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i.i9.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i.i.i, %sub.ptr.rhs.cast.i.i8.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i9.i.i.i.i)
  %cmp.i110.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i.i.i, 4
  br i1 %cmp.i110.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.i.i.vlan_insert_tag.exit_crit_edge

skb_header_cloned.exit.thread.i.i.i.i.vlan_insert_tag.exit_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_insert_tag.exit

skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread.i.i.i.i.i

if.end.thread.i.i.i.i.i:                          ; preds = %skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i.i.i, %skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i.i.i, %skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge ]
  %phi.bo.i.i.i.i.i = sub nuw nsw i32 131, %sub.ptr.sub.i.i12.i.i.i.i
  %phi.bo11.i.i.i.i.i = and i32 %phi.bo.i.i.i.i.i, -128
  br label %skb_cow_head.exit.i.i.i

if.end.i2.i.i.i.i:                                ; preds = %skb_header_cloned.exit.i.i.i.i
  %and.i.i.i.i.i = and i32 %60, 65535
  %shr.i.i.i.i.i = ashr i32 %60, 16
  %sub.i.i.i.i.i = sub nsw i32 %and.i.i.i.i.i, %shr.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i.i)
  %cmp.i.not.i.i.i.i = icmp eq i32 %sub.i.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i.i, label %if.end.i2.i.i.i.i.vlan_insert_tag.exit_crit_edge, label %if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge

if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge: ; preds = %if.end.i2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_cow_head.exit.i.i.i

if.end.i2.i.i.i.i.vlan_insert_tag.exit_crit_edge: ; preds = %if.end.i2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_insert_tag.exit

skb_cow_head.exit.i.i.i:                          ; preds = %if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge, %if.end.thread.i.i.i.i.i
  %delta.010.i.i.i.i.i = phi i32 [ %phi.bo11.i.i.i.i.i, %if.end.thread.i.i.i.i.i ], [ 0, %if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge ]
  %call4.i.i.i.i.i = call i32 @pskb_expand_head(ptr noundef nonnull %call3, i32 noundef %delta.010.i.i.i.i.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call4.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %vlan_insert_tag.exit.thread, label %skb_cow_head.exit.i.i.i.vlan_insert_tag.exit_crit_edge

skb_cow_head.exit.i.i.i.vlan_insert_tag.exit_crit_edge: ; preds = %skb_cow_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vlan_insert_tag.exit

vlan_insert_tag.exit.thread:                      ; preds = %skb_cow_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call3, i32 noundef 1) #11
  br label %if.end.i

vlan_insert_tag.exit:                             ; preds = %skb_cow_head.exit.i.i.i.vlan_insert_tag.exit_crit_edge, %if.end.i2.i.i.i.i.vlan_insert_tag.exit_crit_edge, %skb_header_cloned.exit.thread.i.i.i.i.vlan_insert_tag.exit_crit_edge
  %call1.i.i.i = call ptr @skb_push(ptr noundef nonnull %call3, i32 noundef 4) #11
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 4
  %71 = call ptr @memmove(ptr %70, ptr %add.ptr.i.i.i, i32 12)
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 21
  %72 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mac_header.i.i.i, align 2
  %sub7.i.i.i = add i16 %73, -4
  store i16 %sub7.i.i.i, ptr %mac_header.i.i.i, align 2
  %74 = load ptr, ptr %data, align 4
  %h_vlan_proto.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %h_vlan_proto.i.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -32512, ptr %h_vlan_proto.i.i.i, align 2
  %h_vlan_TCI.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %74, i32 0, i32 2
  %76 = ptrtoint ptr %h_vlan_TCI.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %and84, ptr %h_vlan_TCI.i.i.i, align 2
  br label %if.end90

if.end90:                                         ; preds = %vlan_insert_tag.exit, %sw.epilog.if.end90_crit_edge
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 18
  %79 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i183 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 21
  %81 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i183, ptr %mac_header.i, align 2
  %call91 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call3, ptr noundef %4) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 18
  %82 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %call91, ptr %protocol, align 8
  %83 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %bat_counters.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %84 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %85, i32 3
  %86 = ptrtoint ptr %arrayidx.i to i32
  %87 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %92, %86
  %93 = inttoptr i32 %add.i to ptr
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %93, align 8
  %add15.i = add i64 %95, 1
  store i64 %add15.i, ptr %93, align 8
  %96 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !158
  %and.i.i.i = and i32 %96, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i184 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i184, label %if.then.i, label %if.end90.batadv_add_counter.exit_crit_edge, !prof !143

if.end90.batadv_add_counter.exit_crit_edge:       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.end90.batadv_add_counter.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %83) #11, !srcloc !159
  %len = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 6
  %97 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len, align 4
  %add = add i32 %98, 14
  %99 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %conv6.i = zext i32 %add to i64
  %100 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i186 = getelementptr i64, ptr %101, i32 4
  %102 = ptrtoint ptr %arrayidx.i186 to i32
  %103 = call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i187 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i187 to ptr
  %cpu.i188 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %cpu.i188 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cpu.i188, align 4
  %arrayidx14.i189 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %106
  %107 = ptrtoint ptr %arrayidx14.i189 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx14.i189, align 4
  %add.i190 = add i32 %108, %102
  %109 = inttoptr i32 %add.i190 to ptr
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %109, align 8
  %add15.i191 = add i64 %111, %conv6.i
  store i64 %add15.i191, ptr %109, align 8
  %112 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !158
  %and.i.i.i192 = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i192)
  %tobool.not.i193 = icmp eq i32 %and.i.i.i192, 0
  br i1 %tobool.not.i193, label %if.then.i194, label %batadv_add_counter.exit.batadv_add_counter.exit195_crit_edge, !prof !143

batadv_add_counter.exit.batadv_add_counter.exit195_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit195

if.then.i194:                                     ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit195

batadv_add_counter.exit195:                       ; preds = %if.then.i194, %batadv_add_counter.exit.batadv_add_counter.exit195_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %99) #11, !srcloc !159
  %call92 = call i32 @netif_rx_any_context(ptr noundef nonnull %call3) #11
  br label %if.end.i

if.end.i:                                         ; preds = %batadv_add_counter.exit195, %vlan_insert_tag.exit.thread, %if.end.if.end.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i197 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %113 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i198, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i198:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @batadv_hardif_release(ptr noundef %refcount.i) #11, !callees !149
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i198, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %local_claim_dest) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arp_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_any_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_skb_crc32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_bla_get_backbone_gw(ptr noundef %bat_priv, ptr noundef %orig, i16 noundef zeroext %vid, i1 noundef zeroext %own_backbone) unnamed_addr #0 align 64 {
entry:
  %mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @batadv_backbone_hash_find(ptr noundef %bat_priv, ptr noundef %orig, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %0 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.end7_crit_edge, label %if.then4

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %vid to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %call6 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.batadv_bla_get_backbone_gw, ptr noundef %orig, i32 noundef %retval.0.i) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.body.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 136) #14
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %vid12 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %vid12 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %vid, ptr %vid12, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %lasttime = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %lasttime to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %lasttime, align 4
  %crc = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %crc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %crc, align 8
  %bat_priv13 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %bat_priv13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bat_priv, ptr %bat_priv13, align 8
  %crc_lock = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %crc_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @batadv_bla_get_backbone_gw.__key, i16 noundef signext 3) #11
  %request_sent = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 6
  %call.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %request_sent, i32 noundef 4) #11
  %8 = ptrtoint ptr %request_sent to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %request_sent, align 4
  %wait_periods = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 5
  %call.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %wait_periods, i32 noundef 4) #11
  %9 = ptrtoint ptr %wait_periods to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %wait_periods, align 8
  %10 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call7.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %orig, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 4
  %report_work = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %report_work, i32 noundef 0) #11
  %16 = ptrtoint ptr %report_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %report_work, align 8
  %lockdep_map = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.31, ptr noundef nonnull @batadv_bla_get_backbone_gw.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry23 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry23, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @batadv_bla_loopdetect_report, ptr %func, align 4
  %refcount = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %20 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %refcount, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !142
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !143

if.end11.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %bla = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33
  %backbone_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 2
  %23 = ptrtoint ptr %backbone_hash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %backbone_hash, align 4
  %hash_entry = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 2
  %tobool.not.i90 = icmp eq ptr %24, null
  br i1 %tobool.not.i90, label %kref_get.exit.if.then31_crit_edge, label %if.end.i

kref_get.exit.if.then31_crit_edge:                ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.end.i:                                         ; preds = %kref_get.exit
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  %arrayidx58.i.i = getelementptr i8, ptr %call7.i.i, i32 5
  %27 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %28 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %29 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr1.i, align 4
  %conv64.i.i = zext i8 %30 to i32
  %add65.i.i = add nuw nsw i32 %add61.i.i, %conv64.i.i
  %arrayidx67.i.i = getelementptr i8, ptr %call7.i.i, i32 3
  %31 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %32 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038731
  %arrayidx72.i.i = getelementptr i8, ptr %call7.i.i, i32 2
  %33 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx72.i.i, align 2
  %conv73.i.i = zext i8 %34 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr i8, ptr %call7.i.i, i32 1
  %35 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %36 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %call7.i.i, align 8
  %conv83.i.i = zext i8 %38 to i32
  %add84.i.i = add i32 %add80.i.i, %conv83.i.i
  %xor85.i.i = xor i32 %add65.i.i, -559038731
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #11
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i.i = xor i32 %add84.i.i, %sub87.i.i
  %or.i201.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #11
  %sub90.i.i = sub i32 %xor88.i.i, %or.i201.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add65.i.i
  %or.i202.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #11
  %sub93.i.i = sub i32 %xor91.i.i, %or.i202.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i203.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #11
  %sub96.i.i = sub i32 %xor94.i.i, %or.i203.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i204.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #11
  %sub99.i.i = sub i32 %xor97.i.i, %or.i204.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i205.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #11
  %sub102.i.i = sub i32 %xor100.i.i, %or.i205.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i206.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #11
  %sub105.i.i = sub i32 %xor103.i.i, %or.i206.i.i
  %add1.i.i = add i32 %sub105.i.i, -559038735
  %arrayidx77.i5.i = getelementptr i8, ptr %vid12, i32 1
  %39 = ptrtoint ptr %arrayidx77.i5.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx77.i5.i, align 1
  %conv78.i6.i = zext i8 %40 to i32
  %shl79.i7.i = shl nuw nsw i32 %conv78.i6.i, 8
  %41 = ptrtoint ptr %vid12 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %vid12, align 2
  %conv83.i9.i = zext i8 %42 to i32
  %add80.i8.i = or i32 %shl79.i7.i, %conv83.i9.i
  %add84.i10.i = add i32 %add1.i.i, %add80.i8.i
  %or.i.i12.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #11
  %sub87.i13.i = sub i32 0, %or.i.i12.i
  %xor88.i14.i = xor i32 %add84.i10.i, %sub87.i13.i
  %or.i201.i15.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i13.i, i32 %sub87.i13.i, i32 11) #11
  %sub90.i16.i = sub i32 %xor88.i14.i, %or.i201.i15.i
  %xor91.i17.i = xor i32 %sub90.i16.i, %add1.i.i
  %or.i202.i18.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i16.i, i32 %sub90.i16.i, i32 25) #11
  %sub93.i19.i = sub i32 %xor91.i17.i, %or.i202.i18.i
  %xor94.i20.i = xor i32 %sub93.i19.i, %sub87.i13.i
  %or.i203.i21.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i19.i, i32 %sub93.i19.i, i32 16) #11
  %sub96.i22.i = sub i32 %xor94.i20.i, %or.i203.i21.i
  %xor97.i23.i = xor i32 %sub96.i22.i, %sub90.i16.i
  %or.i204.i24.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i22.i, i32 %sub96.i22.i, i32 4) #11
  %sub99.i25.i = sub i32 %xor97.i23.i, %or.i204.i24.i
  %xor100.i26.i = xor i32 %sub99.i25.i, %sub93.i19.i
  %or.i205.i27.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i25.i, i32 %sub99.i25.i, i32 14) #11
  %sub102.i28.i = sub i32 %xor100.i26.i, %or.i205.i27.i
  %xor103.i29.i = xor i32 %sub102.i28.i, %sub96.i22.i
  %or.i206.i30.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i28.i, i32 %sub102.i28.i, i32 24) #11
  %sub105.i31.i = sub i32 %xor103.i29.i, %or.i206.i30.i
  %rem.i = urem i32 %sub105.i31.i, %26
  %43 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %24, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %44, i32 %rem.i
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %24, i32 0, i32 1
  %45 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %list_locks.i, align 4
  %arrayidx1.i = getelementptr %struct.spinlock, ptr %46, i32 %rem.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1.i) #11
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %node.0.i103 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i104 = icmp eq ptr %node.0.i103, null
  br i1 %tobool2.not.i104, label %if.end.i.for.end.i_crit_edge, label %for.body.i.lr.ph

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.lr.ph:                                 ; preds = %if.end.i
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call7.i.i, align 8
  %50 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.backedge.for.body.i_crit_edge, %for.body.i.lr.ph
  %node.0.i105 = phi ptr [ %node.0.i103, %for.body.i.lr.ph ], [ %node.0.i, %for.cond.i.backedge.for.body.i_crit_edge ]
  %add.ptr.i93 = getelementptr i8, ptr %node.0.i105, i32 -8
  %52 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i93, align 4
  %xor.i.i.i.i = xor i32 %49, %53
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node.0.i105, i32 -4
  %54 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %51, %55
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i95, label %for.body.i.for.cond.i.backedge_crit_edge

for.body.i.for.cond.i.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.backedge

if.end.i95:                                       ; preds = %for.body.i
  %vid.i94 = getelementptr i8, ptr %node.0.i105, i32 -2
  %56 = ptrtoint ptr %vid.i94 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vid.i94, align 2
  %58 = ptrtoint ptr %vid12 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vid12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp.not.i = icmp eq i16 %57, %59
  br i1 %cmp.not.i, label %batadv_hash_add.exit, label %if.end.i95.for.cond.i.backedge_crit_edge

if.end.i95.for.cond.i.backedge_crit_edge:         ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.end.i95.for.cond.i.backedge_crit_edge, %for.body.i.for.cond.i.backedge_crit_edge
  %60 = ptrtoint ptr %node.0.i105 to i32
  call void @__asan_load4_noabort(i32 %60)
  %node.0.i = load ptr, ptr %node.0.i105, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %for.end.ithread-pre-split, label %for.cond.i.backedge.for.body.i_crit_edge

for.cond.i.backedge.for.body.i_crit_edge:         ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.ithread-pre-split:                        ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr = load ptr, ptr %arrayidx.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.ithread-pre-split, %if.end.i.for.end.i_crit_edge
  %62 = phi ptr [ %.pr, %for.end.ithread-pre-split ], [ null, %if.end.i.for.end.i_crit_edge ]
  %63 = ptrtoint ptr %hash_entry to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %hash_entry, align 8
  %pprev.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call7.i.i, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %hash_entry, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %for.end.i.if.end32_crit_edge, label %do.body49.i.i

for.end.i.if.end32_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

do.body49.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %66 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %hash_entry, ptr %pprev51.i.i, align 4
  br label %if.end32

batadv_hash_add.exit:                             ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #11
  br label %if.then31

if.then31:                                        ; preds = %batadv_hash_add.exit, %kref_get.exit.if.then31_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end32:                                         ; preds = %do.body49.i.i, %for.end.i.if.end32_crit_edge
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %24, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %generation.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %generation.i, i32 1, i32 3, i32 1) #11
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %generation.i, ptr %generation.i, i32 1, ptr elementtype(i32) %generation.i) #11, !srcloc !155
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #11
  %call33 = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %orig) #11
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.if.end36_crit_edge, label %if.end.i92

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end.i92:                                       ; preds = %if.end32
  %conv = zext i16 %vid to i32
  tail call void @batadv_tt_global_del_orig(ptr noundef %bat_priv, ptr noundef nonnull %call33, i32 noundef %conv, ptr noundef nonnull @.str.32) #11
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call33, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end36_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.if.end36_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %if.end36

if.then.i.i:                                      ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #11, !callees !149
  br label %if.end36

if.end36:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end36_crit_edge, %if.end32.if.end36_crit_edge
  br i1 %own_backbone, label %if.then38, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #11
  %69 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %70 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1124418309, ptr %mac.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %crc_lock) #11
  %71 = ptrtoint ptr %crc to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %crc, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %crc_lock) #11
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %69, align 4
  %74 = ptrtoint ptr %vid12 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %vid12, align 2
  call fastcc void @batadv_bla_send_claim(ptr noundef %bat_priv, ptr noundef nonnull %mac.i, i16 noundef zeroext %75, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #11
  %call.i.i87 = call zeroext i1 @__kasan_check_write(ptr noundef %request_sent, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %request_sent, i32 1, i32 3, i32 1) #11
  %76 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %request_sent, ptr %request_sent, i32 1, ptr elementtype(i32) %request_sent) #11, !srcloc !155
  %call.i.i88 = call zeroext i1 @__kasan_check_write(ptr noundef %wait_periods, i32 noundef 4) #11
  %77 = ptrtoint ptr %wait_periods to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 3, ptr %wait_periods, align 8
  %call.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef %bla, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %bla, i32 1, i32 3, i32 1) #11
  %78 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bla, ptr %bla, i32 1, ptr elementtype(i32) %bla) #11, !srcloc !155
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %if.then31, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then31 ], [ %call, %entry.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ %call7.i.i, %if.then38 ], [ %call7.i.i, %if.end36.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_bla_loopdetect_report(ptr noundef %work) #0 align 64 {
entry:
  %vid_str = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %vid_str) #11
  %0 = call ptr @memset(ptr %vid_str, i32 0, i32 5)
  %bat_priv1 = getelementptr i8, ptr %work, i32 -64
  %1 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bat_priv1, align 4
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_iface, align 4
  %log_level = getelementptr i8, ptr %4, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %5 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %4, i32 2304
  %vid = getelementptr i8, ptr %work, i32 -74
  %7 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vid, align 2
  %conv.i = zext i16 %8 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %call5 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -80
  %vid10 = getelementptr i8, ptr %work, i32 -74
  %9 = ptrtoint ptr %vid10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vid10, align 2
  %conv.i28 = zext i16 %10 to i32
  %and.i29 = and i32 %conv.i28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  %and2.i31 = and i32 %conv.i28, 4095
  %retval.0.i32 = select i1 %tobool.not.i30, i32 -1, i32 %and2.i31
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %4, i32 noundef %retval.0.i32) #16
  %11 = ptrtoint ptr %vid10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid10, align 2
  %conv.i33 = zext i16 %12 to i32
  %and.i34 = and i32 %conv.i33, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  %and2.i36 = and i32 %conv.i33, 4095
  %retval.0.i37 = select i1 %tobool.not.i35, i32 -1, i32 %and2.i36
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vid_str, i32 noundef 6, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i37)
  %arrayidx = getelementptr inbounds [6 x i8], ptr %vid_str, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %call20 = call i32 @batadv_throw_uevent(ptr noundef %2, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %vid_str) #11
  %tobool.not.i38 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i38, label %if.end.batadv_backbone_gw_put.exit_crit_edge, label %if.end.i

if.end.batadv_backbone_gw_put.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit

if.end.i:                                         ; preds = %if.end
  %refcount.i = getelementptr i8, ptr %work, i32 44
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_backbone_gw_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_backbone_gw_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr i8, ptr %work, i32 48
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %batadv_backbone_gw_put.exit

batadv_backbone_gw_put.exit:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_backbone_gw_put.exit_crit_edge, %if.end.batadv_backbone_gw_put.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %vid_str) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tt_global_del_orig(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_throw_uevent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_check_claim_group(ptr noundef %bat_priv, ptr nocapture noundef readonly %primary_if, ptr noundef %hw_src, ptr nocapture noundef readonly %hw_dst, ptr noundef %ethhdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.batadv_bla_claim_dst, ptr %hw_dst, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 3, label %entry.sw.bb1_crit_edge
    i8 2, label %entry.sw.bb1_crit_edge42
    i8 1, label %entry.sw.bb1_crit_edge43
  ]

entry.sw.bb1_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge42, %entry.sw.bb1_crit_edge43
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %ethhdr, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %backbone_addr.0 = phi ptr [ %h_source, %sw.bb1 ], [ %hw_src, %entry.sw.epilog_crit_edge ]
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if, i32 0, i32 4
  %3 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %7 = ptrtoint ptr %backbone_addr.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %backbone_addr.0, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %xor.i.i.i = xor i32 %10, %8
  %add.ptr.i.i.i = getelementptr i8, ptr %backbone_addr.0, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %6, i32 4
  %13 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %14, %12
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %group = getelementptr inbounds %struct.batadv_bla_claim_dst, ptr %hw_dst, i32 0, i32 2
  %15 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %group, align 2
  %group3 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 9, i32 2
  %17 = ptrtoint ptr %group3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %group3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp = icmp eq i16 %16, %18
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %backbone_addr.0) #11
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %19 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %group, align 2
  %21 = ptrtoint ptr %group3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %group3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp15 = icmp ugt i16 %20, %22
  br i1 %cmp15, label %do.body, label %if.end10.if.end.i_crit_edge

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body:                                          ; preds = %if.end10
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %23 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body.if.end24_crit_edge, label %if.then20

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %group, align 2
  %conv22 = zext i16 %26 to i32
  %call23 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.42, i32 noundef %conv22) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %do.body.if.end24_crit_edge
  %27 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %group, align 2
  %29 = ptrtoint ptr %group3 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %group3, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.end24, %if.end10.if.end.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call8, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #11, !callees !149
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 2, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 2, %if.then10.i.i.i.i.i ], [ 2, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @batadv_handle_announce(ptr noundef %bat_priv, ptr nocapture noundef readonly %an_addr, ptr noundef %backbone_addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %an_addr, ptr noundef nonnull dereferenceable(4) @batadv_announce_mac, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @batadv_bla_get_backbone_gw(ptr noundef %bat_priv, ptr noundef %backbone_addr, i16 noundef zeroext %vid, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6, !prof !143

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %lasttime = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 4
  %1 = ptrtoint ptr %lasttime to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %lasttime, align 4
  %arrayidx = getelementptr i8, ptr %an_addr, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %4 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i16 %3 to i32
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %vid to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %conv = zext i16 %3 to i32
  %call11 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.batadv_handle_announce, i32 noundef %retval.0.i, ptr noundef nonnull %call1, i32 noundef %conv) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %conv16.pre-phi = phi i32 [ %.pre, %if.end6.if.end12_crit_edge ], [ %conv, %if.then9 ]
  %crc_lock = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %crc_lock) #11
  %crc13 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %crc13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %crc13, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %crc_lock) #11
  %conv15 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %3)
  %cmp17.not = icmp eq i16 %7, %3
  br i1 %cmp17.not, label %if.else, label %do.body20

do.body20:                                        ; preds = %if.end12
  %bat_priv22 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 3
  %8 = ptrtoint ptr %bat_priv22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bat_priv22, align 4
  %log_level23 = getelementptr inbounds %struct.batadv_priv, ptr %9, i32 0, i32 14
  %call.i.i68 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level23, i32 noundef 4) #11
  %10 = ptrtoint ptr %log_level23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %log_level23, align 4
  %and25 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body20.if.end35_crit_edge, label %if.then27

do.body20.if.end35_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %vid30 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %vid30 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid30, align 2
  %conv.i72 = zext i16 %13 to i32
  %and.i73 = and i32 %conv.i72, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74 = icmp eq i32 %and.i73, 0
  %and2.i75 = and i32 %conv.i72, 4095
  %retval.0.i76 = select i1 %tobool.not.i74, i32 -1, i32 %and2.i75
  %call34 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %9, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.batadv_handle_announce, ptr noundef nonnull %call1, i32 noundef %retval.0.i76, i32 noundef %conv15, i32 noundef %conv16.pre-phi) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %do.body20.if.end35_crit_edge
  tail call fastcc void @batadv_bla_del_backbone_claims(ptr noundef nonnull %call1) #11
  %14 = ptrtoint ptr %bat_priv22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bat_priv22, align 4
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %15, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %16 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %log_level.i, align 4
  %and.i77 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %if.end35.if.end.i_crit_edge, label %if.then.i

if.end35.if.end.i_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %15, ptr noundef nonnull @.str.45, ptr noundef nonnull %call1) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end35.if.end.i_crit_edge
  %18 = ptrtoint ptr %bat_priv22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bat_priv22, align 4
  %vid.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 1
  %20 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid.i, align 2
  tail call fastcc void @batadv_bla_send_claim(ptr noundef %19, ptr noundef nonnull %call1, i16 noundef zeroext %21, i32 noundef 3) #11
  %request_sent.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 6
  %call.i.i20.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %request_sent.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %request_sent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %request_sent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not.i = icmp eq i32 %23, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end.i.if.end.i80_crit_edge

if.end.i.if.end.i80_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i80

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %bat_priv22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bat_priv22, align 4
  %bla.i = getelementptr inbounds %struct.batadv_priv, ptr %25, i32 0, i32 33
  %call.i.i21.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bla.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %bla.i, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bla.i, ptr %bla.i, i32 1, ptr elementtype(i32) %bla.i) #11, !srcloc !155
  %call.i.i22.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %request_sent.i, i32 noundef 4) #11
  %27 = ptrtoint ptr %request_sent.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %request_sent.i, align 4
  br label %if.end.i80

if.else:                                          ; preds = %if.end12
  %request_sent = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 6
  %call.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %request_sent, i32 noundef 4) #11
  %28 = ptrtoint ptr %request_sent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %request_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool39.not = icmp eq i32 %29, 0
  br i1 %tobool39.not, label %if.else.if.end.i80_crit_edge, label %if.then40

if.else.if.end.i80_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i80

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %bat_priv41 = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 3
  %30 = ptrtoint ptr %bat_priv41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bat_priv41, align 4
  %bla = getelementptr inbounds %struct.batadv_priv, ptr %31, i32 0, i32 33
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bla, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %bla, i32 1, i32 3, i32 1) #11
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bla, ptr %bla, i32 1, ptr elementtype(i32) %bla) #11, !srcloc !148
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %request_sent, i32 noundef 4) #11
  %33 = ptrtoint ptr %request_sent to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %request_sent, align 4
  br label %if.end.i80

if.end.i80:                                       ; preds = %if.then40, %if.else.if.end.i80_crit_edge, %if.then7.i, %if.end.i.if.end.i80_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %call1, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @batadv_handle_request(ptr noundef %bat_priv, ptr nocapture noundef readonly %primary_if, ptr nocapture noundef readonly %backbone_addr, ptr noundef %ethhdr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  %mac.i.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %backbone_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %backbone_addr, align 4
  %2 = ptrtoint ptr %ethhdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ethhdr, align 4
  %xor.i.i.i = xor i32 %3, %1
  %add.ptr.i.i.i = getelementptr i8, ptr %backbone_addr, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %ethhdr, i32 4
  %6 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %7, %5
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %xor.i.i.i18 = xor i32 %13, %3
  %add.ptr1.i.i.i20 = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %add.ptr1.i.i.i20 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i.i.i20, align 2
  %xor37.i.i.i21 = xor i16 %15, %7
  %xor3.i.i.i22 = zext i16 %xor37.i.i.i21 to i32
  %or.i.i.i23 = or i32 %xor.i.i.i18, %xor3.i.i.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i23)
  %cmp.i.i.i24 = icmp eq i32 %or.i.i.i23, 0
  br i1 %cmp.i.i.i24, label %do.body, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %if.end
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %16 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end11_crit_edge, label %if.then7

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %vid to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %ethhdr, i32 0, i32 1
  %call10 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.batadv_handle_request, i32 noundef %retval.0.i, ptr noundef %h_source) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.body.if.end11_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %18 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %log_level, align 4
  %and.i25 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %if.end11.if.end.i_crit_edge, label %if.then.i

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.batadv_bla_answer_request) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end11.if.end.i_crit_edge
  %20 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr.i, align 64
  %call2.i = tail call fastcc ptr @batadv_backbone_hash_find(ptr noundef %bat_priv, ptr noundef %23, i16 noundef zeroext %vid) #11
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.return_crit_edge, label %if.end5.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end5.i:                                        ; preds = %if.end.i
  %claim_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 1
  %24 = ptrtoint ptr %claim_hash.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %claim_hash.i, align 4
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp87.not.i = icmp eq i32 %27, 0
  br i1 %cmp87.not.i, label %if.end5.i.if.end.i.i_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.if.end.i.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

for.body.i:                                       ; preds = %rcu_read_unlock.exit.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %i.088.i = phi i32 [ %inc.i, %rcu_read_unlock.exit.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %29, i32 %i.088.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i27 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i27, label %for.body.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.i.rcu_read_lock.exit.i_crit_edge
  %call7.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end16.i_crit_edge

rcu_read_lock.exit.i.do.end16.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.do.end16.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.do.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b71.i = load i1, ptr @batadv_bla_answer_request.__warned, align 1
  br i1 %.b71.i, label %land.lhs.true11.i.do.end16.i_crit_edge, label %if.then13.i

land.lhs.true11.i.do.end16.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16.i

if.then13.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_bla_answer_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 614, ptr noundef nonnull @.str.1) #11
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then13.i, %land.lhs.true11.i.do.end16.i_crit_edge, %land.lhs.true.i.do.end16.i_crit_edge, %rcu_read_lock.exit.i.do.end16.i_crit_edge
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool22.not.i = icmp eq ptr %35, null
  %add.ptr.i = getelementptr i8, ptr %35, i32 -60
  %tobool25.not8589.i = icmp eq ptr %add.ptr.i, null
  %tobool25.not85.i = or i1 %tobool22.not.i, %tobool25.not8589.i
  br i1 %tobool25.not85.i, label %do.end16.i.for.end.i_crit_edge, label %do.end16.i.for.body26.i_crit_edge

do.end16.i.for.body26.i_crit_edge:                ; preds = %do.end16.i
  br label %for.body26.i

do.end16.i.for.end.i_crit_edge:                   ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body26.i:                                     ; preds = %for.inc.i.for.body26.i_crit_edge, %do.end16.i.for.body26.i_crit_edge
  %claim.086.i = phi ptr [ %add.ptr43.i, %for.inc.i.for.body26.i_crit_edge ], [ %add.ptr.i, %do.end16.i.for.body26.i_crit_edge ]
  %backbone_gw27.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.086.i, i32 0, i32 2
  %36 = ptrtoint ptr %backbone_gw27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %backbone_gw27.i, align 4
  %cmp28.not.i = icmp eq ptr %37, %call2.i
  br i1 %cmp28.not.i, label %if.end30.i, label %for.body26.i.for.inc.i_crit_edge

for.body26.i.for.inc.i_crit_edge:                 ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end30.i:                                       ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  %vid31.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.086.i, i32 0, i32 1
  %38 = ptrtoint ptr %vid31.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid31.i, align 2
  tail call fastcc void @batadv_bla_send_claim(ptr noundef %bat_priv, ptr noundef nonnull %claim.086.i, i16 noundef zeroext %39, i32 noundef 0) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end30.i, %for.body26.i.for.inc.i_crit_edge
  %hash_entry.i = getelementptr inbounds %struct.batadv_bla_claim, ptr %claim.086.i, i32 0, i32 5
  %40 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %hash_entry.i, align 4
  %tobool39.not.i = icmp eq ptr %41, null
  %add.ptr43.i = getelementptr i8, ptr %41, i32 -60
  %tobool25.not90.i = icmp eq ptr %add.ptr43.i, null
  %tobool25.not.i = or i1 %tobool39.not.i, %tobool25.not90.i
  br i1 %tobool25.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body26.i_crit_edge

for.inc.i.for.body26.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end16.i.for.end.i_crit_edge
  %call.i73.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i73.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i76.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i76.i:                              ; preds = %for.end.i
  %call1.i74.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call1.i74.i, 0
  br i1 %tobool.not.i75.i, label %land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i78.i

land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i78.i:                             ; preds = %land.lhs.true.i76.i
  %.b4.i77.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77.i, label %land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i79.i

land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i79.i:                                    ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i79.i, %land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %42 = tail call i32 @llvm.read_register.i32(metadata !130) #11
  %and.i.i.i.i.i80.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i80.i to ptr
  %preempt_count.i.i.i.i81.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i81.i, align 4
  %sub.i.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i81.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc.i = add nuw i32 %i.088.i, 1
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %47
  br i1 %cmp.i, label %rcu_read_unlock.exit.i.for.body.i_crit_edge, label %rcu_read_unlock.exit.i.if.end.i.i_crit_edge

rcu_read_unlock.exit.i.if.end.i.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

rcu_read_unlock.exit.i.for.body.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.i:                                       ; preds = %rcu_read_unlock.exit.i.if.end.i.i_crit_edge, %if.end5.i.if.end.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i.i) #11
  %48 = getelementptr inbounds [6 x i8], ptr %mac.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1124418309, ptr %mac.i.i, align 4
  %crc_lock.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call2.i, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %crc_lock.i.i) #11
  %crc1.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call2.i, i32 0, i32 7
  %50 = ptrtoint ptr %crc1.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %crc1.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %crc_lock.i.i) #11
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %48, align 4
  %vid.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call2.i, i32 0, i32 1
  %53 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vid.i.i, align 2
  call fastcc void @batadv_bla_send_claim(ptr noundef %bat_priv, ptr noundef nonnull %mac.i.i, i16 noundef zeroext %54, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i.i) #11
  %refcount.i.i = getelementptr inbounds %struct.batadv_bla_backbone_gw, ptr %call2.i, i32 0, i32 10
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.i.return_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %return

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %rcu.i.i.i = getelementptr %struct.batadv_bla_backbone_gw, ptr %call2.i, i32 0, i32 11
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  br label %return

return:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i1 %cmp.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !37, !39, !41, !42, !44, !45, !46, !48, !50, !51, !53, !55, !57, !59, !61, !62, !64, !65, !66, !68, !70, !72, !74, !75, !77, !78, !80, !81, !83, !85, !86, !87, !88, !89, !91, !93, !95, !96, !98, !99, !101, !103, !104, !106, !108, !110, !111, !113, !115, !117, !118, !120, !121, !123, !125, !126, !128}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1359, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @batadv_bla_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1534, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1536, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1577, i32 2}
!11 = !{ptr @batadv_bla_init.__key.5, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1579, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @batadv_bla_init.__key.7, !12, !"__key", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1749, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1952, i32 3}
!20 = !{ptr @__func__.batadv_bla_rx, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 2079, i32 4}
!25 = !{ptr @__func__.batadv_bla_tx, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 2086, i32 4}
!28 = !{ptr @batadv_claim_hash_lock_class_key, !29, !"batadv_claim_hash_lock_class_key", i1 false, i1 false}
!29 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1517, i32 30}
!30 = !{ptr @batadv_backbone_hash_lock_class_key, !31, !"batadv_backbone_hash_lock_class_key", i1 false, i1 false}
!31 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1518, i32 30}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1289, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1302, i32 4}
!36 = !{ptr @__func__.batadv_bla_purge_claims, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1306, i32 4}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1244, i32 4}
!41 = !{ptr @__func__.batadv_bla_purge_backbone_gw, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @batadv_announce_mac, !47, !"batadv_announce_mac", i1 false, i1 false}
!47 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 51, i32 17}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 389, i32 3}
!50 = !{ptr @__func__.batadv_bla_send_claim, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 398, i32 3}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 407, i32 3}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 418, i32 3}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 425, i32 3}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1473, i32 3}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1390, i32 2}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 276, i32 2}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 503, i32 2}
!74 = !{ptr @__func__.batadv_bla_get_backbone_gw, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @batadv_bla_get_backbone_gw.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 515, i32 2}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @batadv_bla_get_backbone_gw.__key.30, !79, !"__key", i1 false, i1 false}
!79 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 519, i32 2}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 538, i32 8}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 468, i32 2}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @batadv_bla_loopdetect_report._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @batadv_bla_loopdetect_report._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 471, i32 37}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 233, i32 2}
!93 = !{ptr @batadv_bla_add_claim.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 706, i32 3}
!95 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 713, i32 3}
!98 = !{ptr @__func__.batadv_bla_add_claim, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 734, i32 3}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1166, i32 3}
!103 = !{ptr @__func__.batadv_bla_process_claim, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1202, i32 2}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 1056, i32 3}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 854, i32 2}
!110 = !{ptr @__func__.batadv_handle_announce, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 863, i32 3}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 643, i32 2}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 909, i32 2}
!117 = !{ptr @__func__.batadv_handle_request, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 599, i32 2}
!120 = !{ptr @__func__.batadv_bla_answer_request, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 614, i32 3}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 946, i32 2}
!125 = !{ptr @__func__.batadv_handle_unclaim, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @__func__.batadv_bla_del_claim, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/batman-adv/bridge_loop_avoidance.c", i32 807, i32 2}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/net/netlink.h", i32 991, i32 3}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 2149749390}
!141 = !{i64 2149749656}
!142 = !{i64 2148204925, i64 2148204957, i64 2148204986, i64 2148205020, i64 2148205051, i64 2148205074}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2148292926}
!146 = !{i64 2148207390, i64 2148207422, i64 2148207451, i64 2148207485, i64 2148207516, i64 2148207539}
!147 = !{i64 2150623937}
!148 = !{i64 2148205860, i64 2148205886, i64 2148205915, i64 2148205949, i64 2148205980, i64 2148206003}
!149 = distinct !{null, null, ptr @batadv_hardif_release, ptr @batadv_orig_node_release}
!150 = !{i64 578229, i64 578253, i64 578274, i64 578291, i64 578308}
!151 = !{i64 2148291847}
!152 = !{i64 2148206580, i64 2148206612, i64 2148206641, i64 2148206675, i64 2148206706, i64 2148206729}
!153 = !{i64 2148292076}
!154 = !{i64 2149851001}
!155 = !{i64 2148203395, i64 2148203421, i64 2148203450, i64 2148203484, i64 2148203515, i64 2148203538}
!156 = !{!"auto-init"}
!157 = !{i64 656722, i64 656783}
!158 = !{i64 659454}
!159 = !{i64 659739}
