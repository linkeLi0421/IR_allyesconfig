; ModuleID = '/llk/IR_all_yes/net/batman-adv/main.c_pt.bc'
source_filename = "../net/batman-adv/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_ethhdr = type { %union.anon.145, i16, i16, i16 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { [6 x i8], [6 x i8] }
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
%struct.batadv_ogm_packet = type { i8, i8, i8, i8, i32, [6 x i8], [6 x i8], i8, i8, i16 }
%struct.skb_seq_state = type { i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.batadv_softif_vlan = type { ptr, i16, %struct.atomic_t, %struct.batadv_vlan_tt, %struct.hlist_node, %struct.kref, %struct.callback_head }
%struct.batadv_vlan_tt = type { i32, %struct.atomic_t }

@batadv_broadcast_addr = dso_local global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@batadv_link_ops = external dso_local global %struct.rtnl_link_ops, align 4
@batadv_hard_if_notifier = external dso_local global %struct.notifier_block, align 4
@batadv_event_workqueue = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@batadv_mesh_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&bat_priv->forw_bat_list_lock\00", [34 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&bat_priv->forw_bcast_list_lock\00", [32 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&bat_priv->tt.changes_list_lock\00", [32 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&bat_priv->tt.req_list_lock\00", [36 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&bat_priv->tt.roam_list_lock\00", [35 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&bat_priv->tt.last_changeset_lock\00", [62 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&bat_priv->tt.commit_lock\00", [38 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&bat_priv->gw.list_lock\00", [40 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&bat_priv->mcast.mla_lock\00", [38 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&bat_priv->mcast.want_lists_lock\00", [63 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&bat_priv->tvlv.container_list_lock\00", [60 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&bat_priv->tvlv.handler_list_lock\00", [62 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&bat_priv->softif_vlan_list_lock\00", [63 x i8] zeroinitializer }, align 32
@batadv_mesh_init.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&bat_priv->tp_list_lock\00", [40 x i8] zeroinitializer }, align 32
@batadv_is_my_mac.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/batman-adv/main.c\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@batadv_hardif_list = dso_local global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Drop packet: incompatible batman version (%i)\0A\00", [49 x i8] zeroinitializer }, align 32
@batadv_rx_handler = internal global { [256 x ptr], [256 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BATTYPE=\00", [23 x i8] zeroinitializer }, align 32
@batadv_uev_type_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.43, ptr @.str.44], [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BATACTION=\00", [21 x i8] zeroinitializer }, align 32
@batadv_uev_action_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BATDATA=\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Impossible to send uevent for (%s,%s,%s) event (err: %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@__initcall__kmod_batman_adv__517_722_batadv_init6 = internal global ptr @batadv_init, section ".initcall6.init", align 4
@__exitcall_batadv_exit = internal global ptr @batadv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file518 = internal constant [42 x i8] c"batman_adv.file=net/batman-adv/batman-adv\00", section ".modinfo", align 1
@__UNIQUE_ID_license519 = internal constant [23 x i8] c"batman_adv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author520 = internal constant [103 x i8] c"batman_adv.author=Marek Lindner <mareklindner@neomailbox.ch>, Simon Wunderlich <sw@simonwunderlich.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description521 = internal constant [45 x i8] c"batman_adv.description=B.A.T.M.A.N. advanced\00", section ".modinfo", align 1
@__UNIQUE_ID_version522 = internal constant [26 x i8] c"batman_adv.version=2022.0\00", section ".modinfo", align 1
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"batman_adv\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2022.0\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.37, ptr @.str.38 }, section "__modver", align 4
@__UNIQUE_ID_alias523 = internal constant [34 x i8] c"batman_adv.alias=rtnl-link-batadv\00", section ".modinfo", align 1
@__UNIQUE_ID_alias524 = internal constant [50 x i8] c"batman_adv.alias=net-pf-16-proto-16-family-batadv\00", section ".modinfo", align 1
@batadv_hardif_generation = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"gw\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bla\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"del\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"change\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"loopdetect\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bat_events\00", [21 x i8] zeroinitializer }, align 32
@batadv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.27, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016batman_adv: B.A.T.M.A.N. advanced %s (compatibility version %i) loaded\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"batadv_init\00", [20 x i8] zeroinitializer }, align 32
@batadv_init._entry_ptr = internal global ptr @batadv_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 33024, i64 34525]
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"batadv_broadcast_addr\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 70, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"batadv_event_workqueue\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 72, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 155, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 156, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 157, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 158, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 159, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 160, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 161, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 162, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 164, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 165, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 167, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 168, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 169, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 170, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 310, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"batadv_hardif_list\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 65, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 474, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"batadv_rx_handler\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 67, i32 14 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 688, i32 7 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 688, i32 15 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c"batadv_uev_type_str\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 87, i32 14 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 694, i32 15 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"batadv_uev_action_str\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 80, i32 14 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 702, i32 16 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 714, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 729, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant [25 x i8] c"batadv_hardif_generation\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 66, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 695, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 723, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 88, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 89, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 81, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 82, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 83, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 84, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 110, i32 27 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [25 x i8] c"../net/batman-adv/main.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 118, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_alias523, ptr @__UNIQUE_ID_alias524, ptr @__UNIQUE_ID_author520, ptr @__UNIQUE_ID_description521, ptr @__UNIQUE_ID_file518, ptr @__UNIQUE_ID_license519, ptr @__UNIQUE_ID_version522, ptr @__exitcall_batadv_exit, ptr @__initcall__kmod_batman_adv__517_722_batadv_init6, ptr @__modver_attr, ptr @batadv_exit, ptr @batadv_init._entry, ptr @batadv_init._entry_ptr, ptr @batadv_broadcast_addr, ptr @batadv_event_workqueue, ptr @batadv_mesh_init.__key, ptr @.str, ptr @batadv_mesh_init.__key.1, ptr @.str.2, ptr @batadv_mesh_init.__key.3, ptr @.str.4, ptr @batadv_mesh_init.__key.5, ptr @.str.6, ptr @batadv_mesh_init.__key.7, ptr @.str.8, ptr @batadv_mesh_init.__key.9, ptr @.str.10, ptr @batadv_mesh_init.__key.11, ptr @.str.12, ptr @batadv_mesh_init.__key.13, ptr @.str.14, ptr @batadv_mesh_init.__key.15, ptr @.str.16, ptr @batadv_mesh_init.__key.17, ptr @.str.18, ptr @batadv_mesh_init.__key.19, ptr @.str.20, ptr @batadv_mesh_init.__key.21, ptr @.str.22, ptr @batadv_mesh_init.__key.23, ptr @.str.24, ptr @batadv_mesh_init.__key.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @batadv_hardif_list, ptr @.str.29, ptr @batadv_rx_handler, ptr @.str.30, ptr @.str.31, ptr @batadv_uev_type_str, ptr @.str.32, ptr @batadv_uev_action_str, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @batadv_hardif_generation, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_broadcast_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_event_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_mesh_init.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_rx_handler to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_uev_type_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_uev_action_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_generation to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @batadv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_netlink_unregister() #11
  tail call void @rtnl_link_unregister(ptr noundef nonnull @batadv_link_ops) #11
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @batadv_hard_if_notifier) #11
  %0 = load ptr, ptr @batadv_event_workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %0) #11
  %1 = load ptr, ptr @batadv_event_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #11
  store ptr null, ptr @batadv_event_workqueue, align 4
  tail call void @rcu_barrier() #11
  tail call void @batadv_tt_cache_destroy() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_netlink_unregister() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tt_cache_destroy() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_mesh_init(ptr noundef %soft_iface) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %soft_iface, i32 2304
  %forw_bat_list_lock = getelementptr i8, ptr %soft_iface, i32 2400
  tail call void @__raw_spin_lock_init(ptr noundef %forw_bat_list_lock, ptr noundef nonnull @.str, ptr noundef nonnull @batadv_mesh_init.__key, i16 noundef signext 3) #11
  %forw_bcast_list_lock = getelementptr i8, ptr %soft_iface, i32 2444
  tail call void @__raw_spin_lock_init(ptr noundef %forw_bcast_list_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @batadv_mesh_init.__key.1, i16 noundef signext 3) #11
  %changes_list_lock = getelementptr i8, ptr %soft_iface, i32 3252
  tail call void @__raw_spin_lock_init(ptr noundef %changes_list_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @batadv_mesh_init.__key.3, i16 noundef signext 3) #11
  %req_list_lock = getelementptr i8, ptr %soft_iface, i32 3296
  tail call void @__raw_spin_lock_init(ptr noundef %req_list_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @batadv_mesh_init.__key.5, i16 noundef signext 3) #11
  %roam_list_lock = getelementptr i8, ptr %soft_iface, i32 3340
  tail call void @__raw_spin_lock_init(ptr noundef %roam_list_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @batadv_mesh_init.__key.7, i16 noundef signext 3) #11
  %last_changeset_lock = getelementptr i8, ptr %soft_iface, i32 3392
  tail call void @__raw_spin_lock_init(ptr noundef %last_changeset_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @batadv_mesh_init.__key.9, i16 noundef signext 3) #11
  %commit_lock = getelementptr i8, ptr %soft_iface, i32 3436
  tail call void @__raw_spin_lock_init(ptr noundef %commit_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @batadv_mesh_init.__key.11, i16 noundef signext 3) #11
  %gw = getelementptr i8, ptr %soft_iface, i32 3136
  %list_lock = getelementptr i8, ptr %soft_iface, i32 3140
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @batadv_mesh_init.__key.13, i16 noundef signext 3) #11
  %mcast = getelementptr i8, ptr %soft_iface, i32 3784
  %mla_lock = getelementptr i8, ptr %soft_iface, i32 3812
  tail call void @__raw_spin_lock_init(ptr noundef %mla_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @batadv_mesh_init.__key.15, i16 noundef signext 3) #11
  %want_lists_lock = getelementptr i8, ptr %soft_iface, i32 3876
  tail call void @__raw_spin_lock_init(ptr noundef %want_lists_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @batadv_mesh_init.__key.17, i16 noundef signext 3) #11
  %tvlv = getelementptr i8, ptr %soft_iface, i32 3580
  %container_list_lock = getelementptr i8, ptr %soft_iface, i32 3588
  tail call void @__raw_spin_lock_init(ptr noundef %container_list_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_mesh_init.__key.19, i16 noundef signext 3) #11
  %handler_list_lock = getelementptr i8, ptr %soft_iface, i32 3632
  tail call void @__raw_spin_lock_init(ptr noundef %handler_list_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @batadv_mesh_init.__key.21, i16 noundef signext 3) #11
  %softif_vlan_list_lock = getelementptr i8, ptr %soft_iface, i32 2648
  tail call void @__raw_spin_lock_init(ptr noundef %softif_vlan_list_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @batadv_mesh_init.__key.23, i16 noundef signext 3) #11
  %tp_list_lock = getelementptr i8, ptr %soft_iface, i32 2488
  tail call void @__raw_spin_lock_init(ptr noundef %tp_list_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @batadv_mesh_init.__key.25, i16 noundef signext 3) #11
  %forw_bat_list = getelementptr i8, ptr %soft_iface, i32 2384
  %0 = ptrtoint ptr %forw_bat_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %forw_bat_list, align 4
  %forw_bcast_list = getelementptr i8, ptr %soft_iface, i32 2388
  %1 = ptrtoint ptr %forw_bcast_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %forw_bcast_list, align 4
  %2 = ptrtoint ptr %gw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gw, align 4
  %want_all_unsnoopables_list = getelementptr i8, ptr %soft_iface, i32 3788
  %3 = ptrtoint ptr %want_all_unsnoopables_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %want_all_unsnoopables_list, align 4
  %want_all_ipv4_list = getelementptr i8, ptr %soft_iface, i32 3792
  %4 = ptrtoint ptr %want_all_ipv4_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %want_all_ipv4_list, align 4
  %want_all_ipv6_list = getelementptr i8, ptr %soft_iface, i32 3796
  %5 = ptrtoint ptr %want_all_ipv6_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %want_all_ipv6_list, align 4
  %changes_list = getelementptr i8, ptr %soft_iface, i32 3224
  %6 = ptrtoint ptr %changes_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %changes_list, ptr %changes_list, align 4
  %prev.i = getelementptr i8, ptr %soft_iface, i32 3228
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %changes_list, ptr %prev.i, align 4
  %req_list = getelementptr i8, ptr %soft_iface, i32 3240
  %8 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %req_list, align 4
  %roam_list = getelementptr i8, ptr %soft_iface, i32 3244
  %9 = ptrtoint ptr %roam_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %roam_list, ptr %roam_list, align 4
  %prev.i177 = getelementptr i8, ptr %soft_iface, i32 3248
  %10 = ptrtoint ptr %prev.i177 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %roam_list, ptr %prev.i177, align 4
  %11 = ptrtoint ptr %mcast to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mcast, align 4
  %12 = ptrtoint ptr %tvlv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tvlv, align 4
  %handler_list = getelementptr i8, ptr %soft_iface, i32 3584
  %13 = ptrtoint ptr %handler_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %handler_list, align 4
  %softif_vlan_list = getelementptr i8, ptr %soft_iface, i32 2644
  %14 = ptrtoint ptr %softif_vlan_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %softif_vlan_list, align 4
  %tp_list = getelementptr i8, ptr %soft_iface, i32 2392
  %15 = ptrtoint ptr %tp_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tp_list, align 4
  %generation = getelementptr i8, ptr %soft_iface, i32 3188
  %16 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %generation, align 4
  %call82 = tail call i32 @batadv_originator_init(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp = icmp slt i32 %call82, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 2, ptr %add.ptr.i, align 4
  br label %err_orig

if.end:                                           ; preds = %entry
  %call83 = tail call i32 @batadv_tt_init(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i169 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 2, ptr %add.ptr.i, align 4
  br label %err_tt

if.end87:                                         ; preds = %if.end
  %call88 = tail call i32 @batadv_v_mesh_init(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i170 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %add.ptr.i, align 4
  br label %err_v

if.end92:                                         ; preds = %if.end87
  %call93 = tail call i32 @batadv_bla_init(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i171 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 2, ptr %add.ptr.i, align 4
  br label %err_bla

if.end97:                                         ; preds = %if.end92
  %call98 = tail call i32 @batadv_dat_init(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i172 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 2, ptr %add.ptr.i, align 4
  br label %err_dat

if.end102:                                        ; preds = %if.end97
  %call103 = tail call i32 @batadv_nc_mesh_init(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i173 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 2, ptr %add.ptr.i, align 4
  tail call void @batadv_dat_free(ptr noundef %add.ptr.i) #11
  br label %err_dat

if.end107:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_gw_init(ptr noundef %add.ptr.i) #11
  tail call void @batadv_mcast_init(ptr noundef %add.ptr.i) #11
  %reselect = getelementptr i8, ptr %soft_iface, i32 3208
  %call.i.i174 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reselect, i32 noundef 4) #11
  %23 = ptrtoint ptr %reselect to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %reselect, align 4
  br label %cleanup

err_dat:                                          ; preds = %if.then105, %if.then100
  %ret.0 = phi i32 [ %call98, %if.then100 ], [ %call103, %if.then105 ]
  tail call void @batadv_bla_free(ptr noundef %add.ptr.i) #11
  br label %err_bla

err_bla:                                          ; preds = %err_dat, %if.then95
  %ret.1 = phi i32 [ %call93, %if.then95 ], [ %ret.0, %err_dat ]
  tail call void @batadv_v_mesh_free(ptr noundef %add.ptr.i) #11
  br label %err_v

err_v:                                            ; preds = %err_bla, %if.then90
  %ret.2 = phi i32 [ %call88, %if.then90 ], [ %ret.1, %err_bla ]
  tail call void @batadv_tt_free(ptr noundef %add.ptr.i) #11
  br label %err_tt

err_tt:                                           ; preds = %err_v, %if.then85
  %ret.3 = phi i32 [ %call83, %if.then85 ], [ %ret.2, %err_v ]
  tail call void @batadv_originator_free(ptr noundef %add.ptr.i) #11
  br label %err_orig

err_orig:                                         ; preds = %err_tt, %if.then
  %ret.4 = phi i32 [ %call82, %if.then ], [ %ret.3, %err_tt ]
  tail call void @batadv_purge_outstanding_packets(ptr noundef %add.ptr.i, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %err_orig, %if.end107
  %.sink = phi i32 [ 0, %err_orig ], [ 1, %if.end107 ]
  %retval.0 = phi i32 [ %ret.4, %err_orig ], [ 0, %if.end107 ]
  %call.i.i176 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %.sink, ptr %add.ptr.i, align 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_originator_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_tt_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_v_mesh_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_bla_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_dat_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_nc_mesh_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_mcast_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_dat_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_bla_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_mesh_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tt_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_originator_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_purge_outstanding_packets(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_mesh_free(ptr noundef %soft_iface) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %soft_iface, i32 2304
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 2, ptr %add.ptr.i, align 4
  tail call void @batadv_purge_outstanding_packets(ptr noundef %add.ptr.i, ptr noundef null) #11
  tail call void @batadv_gw_node_free(ptr noundef %add.ptr.i) #11
  tail call void @batadv_v_mesh_free(ptr noundef %add.ptr.i) #11
  tail call void @batadv_nc_mesh_free(ptr noundef %add.ptr.i) #11
  tail call void @batadv_dat_free(ptr noundef %add.ptr.i) #11
  tail call void @batadv_bla_free(ptr noundef %add.ptr.i) #11
  tail call void @batadv_mcast_free(ptr noundef %add.ptr.i) #11
  tail call void @batadv_tt_free(ptr noundef %add.ptr.i) #11
  tail call void @batadv_originator_free(ptr noundef %add.ptr.i) #11
  tail call void @batadv_gw_free(ptr noundef %add.ptr.i) #11
  %bat_counters = getelementptr i8, ptr %soft_iface, i32 2312
  %1 = ptrtoint ptr %bat_counters to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bat_counters, align 4
  tail call void @free_percpu(ptr noundef %2) #11
  %3 = ptrtoint ptr %bat_counters to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bat_counters, align 4
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_node_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_nc_mesh_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_mcast_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_is_my_mac(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #11
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
  %.b34 = load i1, ptr @batadv_is_my_mac.__warned, align 1
  br i1 %.b34, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_is_my_mac.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 310, ptr noundef nonnull @.str.28) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %hard_iface.044 = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not45 = icmp eq ptr %hard_iface.044, @batadv_hardif_list
  br i1 %cmp.not45, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %soft_iface13 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %add.ptr1.i.i.i = getelementptr i8, ptr %addr, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hard_iface.046 = phi ptr [ %hard_iface.044, %for.body.lr.ph ], [ %hard_iface.0, %for.inc.for.body_crit_edge ]
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.046, i32 0, i32 1
  %4 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp9.not = icmp eq i8 %5, 3
  br i1 %cmp9.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.046, i32 0, i32 7
  %6 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soft_iface, align 4
  %8 = ptrtoint ptr %soft_iface13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soft_iface13, align 4
  %cmp14.not = icmp eq ptr %7, %9
  br i1 %cmp14.not, label %if.end17, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end17:                                         ; preds = %if.end12
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.046, i32 0, i32 4
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %xor.i.i.i = xor i32 %17, %15
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i.i, align 2
  %20 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %21, %19
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end17.for.end_crit_edge, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end17.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %hard_iface.046 to i32
  call void @__asan_load4_noabort(i32 %22)
  %hard_iface.0 = load volatile ptr, ptr %hard_iface.046, align 4
  %cmp.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end17.for.end_crit_edge, %do.end.for.end_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ true, %if.end17.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i35, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %for.end
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !134
  %23 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i42 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i1 %cmp.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @batadv_max_header_len() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 60
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_skb_set_priority(ptr noundef %skb, i32 noundef %offset) local_unnamed_addr #2 align 64 {
entry:
  %ip_hdr_tmp = alloca %struct.iphdr, align 4
  %ip6_hdr_tmp = alloca %struct.ipv6hdr, align 4
  %ethhdr_tmp = alloca %struct.ethhdr, align 1
  %vhdr_tmp = alloca %struct.vlan_ethhdr, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ip_hdr_tmp) #11
  %0 = call ptr @memset(ptr %ip_hdr_tmp, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ip6_hdr_tmp) #11
  %1 = call ptr @memset(ptr %ip6_hdr_tmp, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %ethhdr_tmp) #11
  %2 = call ptr @memset(ptr %ethhdr_tmp, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %vhdr_tmp) #11
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %3 = call ptr @memset(ptr %vhdr_tmp, i32 255, i32 18)
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority, align 4
  %6 = and i32 %5, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %6)
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %11, %offset
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 14
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !135

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef nonnull %ethhdr_tmp, i32 noundef 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end4_crit_edge

lor.lhs.false.i.i.if.end4_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %offset
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end4_crit_edge

skb_header_pointer.exit.if.end4_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %skb_header_pointer.exit.if.end4_crit_edge, %lor.lhs.false.i.i.if.end4_crit_edge
  %retval.0.i.i104 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end4_crit_edge ], [ %ethhdr_tmp, %lor.lhs.false.i.i.if.end4_crit_edge ]
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %retval.0.i.i104, i32 0, i32 2
  %15 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %h_proto, align 1
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %if.end4.cleanup_crit_edge [
    i16 -32512, label %sw.bb
    i16 2048, label %sw.bb10
    i16 -31011, label %sw.bb20
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %add = add i32 %offset, 18
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %20 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i, align 8
  %22 = add i32 %19, -18
  %23 = add i32 %21, %offset
  %sub.i4.i56 = sub i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.i4.i56)
  %cmp.not.i.i57 = icmp slt i32 %sub.i4.i56, 18
  br i1 %cmp.not.i.i57, label %if.end.i.i62, label %skb_header_pointer.exit68, !prof !135

if.end.i.i62:                                     ; preds = %sw.bb
  %tobool2.not.i.i61 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i61, label %if.end.i.i62.cleanup_crit_edge, label %lor.lhs.false.i.i66

if.end.i.i62.cleanup_crit_edge:                   ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.i66:                              ; preds = %if.end.i.i62
  %call.i.i63 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %vhdr_tmp, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %cmp3.i.i64 = icmp slt i32 %call.i.i63, 0
  br i1 %cmp3.i.i64, label %lor.lhs.false.i.i66.cleanup_crit_edge, label %lor.lhs.false.i.i66.if.end8_crit_edge

lor.lhs.false.i.i66.if.end8_crit_edge:            ; preds = %lor.lhs.false.i.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

lor.lhs.false.i.i66.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_header_pointer.exit68:                        ; preds = %sw.bb
  %data.i58 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data.i58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i58, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %25, i32 %add
  %tobool6.not = icmp eq ptr %add.ptr.i.i59, null
  br i1 %tobool6.not, label %skb_header_pointer.exit68.cleanup_crit_edge, label %skb_header_pointer.exit68.if.end8_crit_edge

skb_header_pointer.exit68.if.end8_crit_edge:      ; preds = %skb_header_pointer.exit68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

skb_header_pointer.exit68.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %skb_header_pointer.exit68.if.end8_crit_edge, %lor.lhs.false.i.i66.if.end8_crit_edge
  %retval.0.i.i67111 = phi ptr [ %add.ptr.i.i59, %skb_header_pointer.exit68.if.end8_crit_edge ], [ %vhdr_tmp, %lor.lhs.false.i.i66.if.end8_crit_edge ]
  %h_vlan_TCI = getelementptr inbounds %struct.vlan_ethhdr, ptr %retval.0.i.i67111, i32 0, i32 2
  %26 = ptrtoint ptr %h_vlan_TCI to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %h_vlan_TCI, align 2
  %28 = lshr i16 %27, 13
  %shr = zext i16 %28 to i32
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end4
  %add11 = add i32 %offset, 14
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %31 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i, align 8
  %33 = add i32 %30, -14
  %34 = add i32 %32, %offset
  %sub.i4.i71 = sub i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i71)
  %cmp.not.i.i72 = icmp slt i32 %sub.i4.i71, 20
  br i1 %cmp.not.i.i72, label %if.end.i.i77, label %skb_header_pointer.exit83, !prof !135

if.end.i.i77:                                     ; preds = %sw.bb10
  %tobool2.not.i.i76 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i76, label %if.end.i.i77.cleanup_crit_edge, label %lor.lhs.false.i.i81

if.end.i.i77.cleanup_crit_edge:                   ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.i81:                              ; preds = %if.end.i.i77
  %call.i.i78 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add11, ptr noundef nonnull %ip_hdr_tmp, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %cmp3.i.i79 = icmp slt i32 %call.i.i78, 0
  br i1 %cmp3.i.i79, label %lor.lhs.false.i.i81.cleanup_crit_edge, label %lor.lhs.false.i.i81.if.end15_crit_edge

lor.lhs.false.i.i81.if.end15_crit_edge:           ; preds = %lor.lhs.false.i.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

lor.lhs.false.i.i81.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_header_pointer.exit83:                        ; preds = %sw.bb10
  %data.i73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data.i73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i73, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %36, i32 %add11
  %tobool13.not = icmp eq ptr %add.ptr.i.i74, null
  br i1 %tobool13.not, label %skb_header_pointer.exit83.cleanup_crit_edge, label %skb_header_pointer.exit83.if.end15_crit_edge

skb_header_pointer.exit83.if.end15_crit_edge:     ; preds = %skb_header_pointer.exit83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

skb_header_pointer.exit83.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %skb_header_pointer.exit83.if.end15_crit_edge, %lor.lhs.false.i.i81.if.end15_crit_edge
  %retval.0.i.i82118 = phi ptr [ %add.ptr.i.i74, %skb_header_pointer.exit83.if.end15_crit_edge ], [ %ip_hdr_tmp, %lor.lhs.false.i.i81.if.end15_crit_edge ]
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i82118, i32 0, i32 1
  %37 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tos.i, align 1
  %39 = lshr i8 %38, 5
  %40 = zext i8 %39 to i32
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end4
  %add21 = add i32 %offset, 14
  %41 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i, align 4
  %43 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i, align 8
  %45 = add i32 %42, -14
  %46 = add i32 %44, %offset
  %sub.i4.i86 = sub i32 %45, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i86)
  %cmp.not.i.i87 = icmp slt i32 %sub.i4.i86, 40
  br i1 %cmp.not.i.i87, label %if.end.i.i92, label %skb_header_pointer.exit98, !prof !135

if.end.i.i92:                                     ; preds = %sw.bb20
  %tobool2.not.i.i91 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i91, label %if.end.i.i92.cleanup_crit_edge, label %lor.lhs.false.i.i96

if.end.i.i92.cleanup_crit_edge:                   ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.i96:                              ; preds = %if.end.i.i92
  %call.i.i93 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add21, ptr noundef nonnull %ip6_hdr_tmp, i32 noundef 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %cmp3.i.i94 = icmp slt i32 %call.i.i93, 0
  br i1 %cmp3.i.i94, label %lor.lhs.false.i.i96.cleanup_crit_edge, label %lor.lhs.false.i.i96.if.end25_crit_edge

lor.lhs.false.i.i96.if.end25_crit_edge:           ; preds = %lor.lhs.false.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

lor.lhs.false.i.i96.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_header_pointer.exit98:                        ; preds = %sw.bb20
  %data.i88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %47 = ptrtoint ptr %data.i88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i88, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %48, i32 %add21
  %tobool23.not = icmp eq ptr %add.ptr.i.i89, null
  br i1 %tobool23.not, label %skb_header_pointer.exit98.cleanup_crit_edge, label %skb_header_pointer.exit98.if.end25_crit_edge

skb_header_pointer.exit98.if.end25_crit_edge:     ; preds = %skb_header_pointer.exit98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

skb_header_pointer.exit98.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %skb_header_pointer.exit98.if.end25_crit_edge, %lor.lhs.false.i.i96.if.end25_crit_edge
  %retval.0.i.i97125 = phi ptr [ %add.ptr.i.i89, %skb_header_pointer.exit98.if.end25_crit_edge ], [ %ip6_hdr_tmp, %lor.lhs.false.i.i96.if.end25_crit_edge ]
  %49 = ptrtoint ptr %retval.0.i.i97125 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %retval.0.i.i97125, align 2
  %sum.shift = lshr i16 %50, 9
  %51 = and i16 %sum.shift, 7
  %52 = zext i16 %51 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25, %if.end15, %if.end8
  %prio.0 = phi i32 [ %52, %if.end25 ], [ %40, %if.end15 ], [ %shr, %if.end8 ]
  %add30 = add nuw nsw i32 %prio.0, 256
  %53 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add30, ptr %priority, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %skb_header_pointer.exit98.cleanup_crit_edge, %lor.lhs.false.i.i96.cleanup_crit_edge, %if.end.i.i92.cleanup_crit_edge, %skb_header_pointer.exit83.cleanup_crit_edge, %lor.lhs.false.i.i81.cleanup_crit_edge, %if.end.i.i77.cleanup_crit_edge, %skb_header_pointer.exit68.cleanup_crit_edge, %lor.lhs.false.i.i66.cleanup_crit_edge, %if.end.i.i62.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %vhdr_tmp) #11
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %ethhdr_tmp) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ip6_hdr_tmp) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ip_hdr_tmp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_batman_skb_recv(ptr noundef %skb, ptr nocapture noundef readnone %dev, ptr noundef %ptype, ptr nocapture noundef readnone %orig_dev) local_unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptype, i32 -24
  %refcount = getelementptr i8, ptr %ptype, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !136
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !137

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !137

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %11 = phi i32 [ %8, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.cleanup_crit_edge, label %if.end

kref_get_unless_zero.exit.cleanup_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kref_get_unless_zero.exit
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end
  %call7.i = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread92, !prof !135

skb_share_check.exit.thread92:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @consume_skb(ptr noundef %skb) #11
  br label %if.end4

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %err_put

skb_share_check.exit:                             ; preds = %if.end
  %tobool2.not = icmp eq ptr %skb, null
  br i1 %tobool2.not, label %skb_share_check.exit.err_put_crit_edge, label %skb_share_check.exit.if.end4_crit_edge

skb_share_check.exit.if.end4_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

skb_share_check.exit.err_put_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end4:                                          ; preds = %skb_share_check.exit.if.end4_crit_edge, %skb_share_check.exit.thread92
  %skb.addr.0.i95 = phi ptr [ %call7.i, %skb_share_check.exit.thread92 ], [ %skb, %skb_share_check.exit.if.end4_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i95, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i95, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end4.if.end10_crit_edge, !prof !135

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp3.i = icmp ult i32 %15, 2
  br i1 %cmp3.i, label %if.end.i.err_free_crit_edge, label %pskb_may_pull.exit, !prof !135

if.end.i.err_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 2, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i95, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.err_free_crit_edge, label %pskb_may_pull.exit.if.end10_crit_edge, !prof !135

pskb_may_pull.exit.if.end10_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

pskb_may_pull.exit.err_free_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end10:                                         ; preds = %pskb_may_pull.exit.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i95, i32 0, i32 8
  %18 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mac_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %19)
  %cmp.not = icmp eq i16 %19, 14
  br i1 %cmp.not, label %lor.rhs, label %if.end10.err_free_crit_edge, !prof !137

if.end10.err_free_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

lor.rhs:                                          ; preds = %if.end10
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i95, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i95, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i, align 2
  %conv.i74 = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv.i74
  %tobool13.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool13.not, label %lor.rhs.err_free_crit_edge, label %if.end23, !prof !135

lor.rhs.err_free_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end23:                                         ; preds = %lor.rhs
  %soft_iface = getelementptr i8, ptr %ptype, i32 40
  %24 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soft_iface, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %if.end23.err_free_crit_edge, label %if.end26

if.end23.err_free_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end26:                                         ; preds = %if.end23
  %add.ptr.i75 = getelementptr i8, ptr %25, i32 2304
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i75, i32 noundef 4) #11
  %26 = ptrtoint ptr %add.ptr.i75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %add.ptr.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp30.not = icmp eq i32 %27, 1
  br i1 %cmp30.not, label %if.end33, label %if.end26.err_free_crit_edge

if.end26.err_free_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end33:                                         ; preds = %if.end26
  %if_status = getelementptr i8, ptr %ptype, i32 -16
  %28 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp35.not = icmp eq i8 %29, 3
  br i1 %cmp35.not, label %if.end38, label %if.end33.err_free_crit_edge

if.end33.err_free_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end38:                                         ; preds = %if.end33
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i95, i32 0, i32 19
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %version = getelementptr inbounds %struct.batadv_ogm_packet, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %33)
  %cmp40.not = icmp eq i8 %33, 15
  br i1 %cmp40.not, label %if.end50, label %do.body

do.body:                                          ; preds = %if.end38
  %log_level = getelementptr i8, ptr %25, i32 2360
  %call.i.i73 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %34 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %do.body.err_free_crit_edge, label %if.then45

do.body.err_free_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %version, align 1
  %conv47 = zext i8 %37 to i32
  %call48 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i75, ptr noundef nonnull @.str.29, i32 noundef %conv47) #11
  br label %err_free

if.end50:                                         ; preds = %if.end38
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i95, i32 0, i32 3
  %38 = ptrtoint ptr %cb to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %cb, align 8
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %31, align 2
  %idxprom = zext i8 %40 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @batadv_rx_handler, i32 0, i32 %idxprom
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %call51 = call i32 %42(ptr noundef nonnull %skb.addr.0.i95, ptr noundef %add.ptr) #11
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end50.cleanup_crit_edge, label %if.end.i77

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i77:                                       ; preds = %if.end50
  %call.i.i.i.i.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !139
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !137

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !140
  call void @batadv_hardif_release(ptr noundef %refcount) #11, !callees !141
  br label %cleanup

err_free:                                         ; preds = %if.then45, %do.body.err_free_crit_edge, %if.end33.err_free_crit_edge, %if.end26.err_free_crit_edge, %if.end23.err_free_crit_edge, %lor.rhs.err_free_crit_edge, %if.end10.err_free_crit_edge, %pskb_may_pull.exit.err_free_crit_edge, %if.end.i.err_free_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i95, i32 noundef 0) #11
  br label %err_put

err_put:                                          ; preds = %err_free, %skb_share_check.exit.err_put_crit_edge, %skb_share_check.exit.thread
  %tobool.not.i78 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i78, label %err_put.cleanup_crit_edge, label %if.end.i83

err_put.cleanup_crit_edge:                        ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i83:                                       ; preds = %err_put
  %call.i.i.i.i.i.i.i80 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !139
  %asmresult.i.i.i.i.i.i.i.i81 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i81)
  %cmp.i.i.i.i.i82 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i81, 1
  br i1 %cmp.i.i.i.i.i82, label %if.then.i.i87, label %if.end5.i.i.i.i.i85

if.end5.i.i.i.i.i85:                              ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i81)
  %.not.i.i.i.i.i84 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i81, 0
  br i1 %.not.i.i.i.i.i84, label %if.end5.i.i.i.i.i85.cleanup_crit_edge, label %if.then10.i.i.i.i.i86, !prof !137

if.end5.i.i.i.i.i85.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i86:                            ; preds = %if.end5.i.i.i.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %cleanup

if.then.i.i87:                                    ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !140
  call void @batadv_hardif_release(ptr noundef %refcount) #11, !callees !141
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i87, %if.then10.i.i.i.i.i86, %if.end5.i.i.i.i.i85.cleanup_crit_edge, %err_put.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %kref_get_unless_zero.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %kref_get_unless_zero.exit.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ], [ 1, %err_put.cleanup_crit_edge ], [ 1, %if.end5.i.i.i.i.i85.cleanup_crit_edge ], [ 1, %if.then10.i.i.i.i.i86 ], [ 1, %if.then.i.i87 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @batadv_recv_handler_register(i8 noundef zeroext %packet_type, ptr noundef %recv_handler) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %packet_type to i32
  %arrayidx = getelementptr [256 x ptr], ptr @batadv_rx_handler, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %1, @batadv_recv_unhandled_packet
  %cmp1.not = icmp eq ptr %1, @batadv_recv_unhandled_unicast_packet
  %or.cond = or i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %recv_handler, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_recv_unhandled_packet(ptr noundef %skb, ptr nocapture noundef readnone %recv_if) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_unhandled_unicast_packet(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @batadv_recv_handler_unregister(i8 noundef zeroext %packet_type) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %packet_type to i32
  %arrayidx = getelementptr [256 x ptr], ptr @batadv_rx_handler, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @batadv_recv_unhandled_packet, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_skb_crc32(ptr noundef %skb, ptr noundef %payload_ptr) local_unnamed_addr #2 align 64 {
entry:
  %st = alloca %struct.skb_seq_state, align 4
  %data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %st) #11
  %2 = call ptr @memset(ptr %st, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %data, align 4, !annotation !142
  %data2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %payload_ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @skb_prepare_seq_read(ptr noundef %skb, i32 noundef %sub.ptr.sub, i32 noundef %1, ptr noundef nonnull %st) #11
  %call9 = call i32 @skb_seq_read(i32 noundef 0, ptr noundef nonnull %data, ptr noundef nonnull %st) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not10 = icmp eq i32 %call9, 0
  br i1 %cmp.not10, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call13 = phi i32 [ %call, %while.body.while.body_crit_edge ], [ %call9, %entry.while.body_crit_edge ]
  %consumed.012 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %crc.011 = phi i32 [ %call3, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call3 = call i32 @crc32c(i32 noundef %crc.011, ptr noundef %7, i32 noundef %call13) #11
  %add = add i32 %call13, %consumed.012
  %call = call i32 @skb_seq_read(i32 noundef %add, ptr noundef nonnull %data, ptr noundef nonnull %st) #11
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %crc.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %call3, %while.body.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %st) #11
  ret i32 %crc.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_prepare_seq_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_seq_read(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef %header_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %header_len
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %3)
  %cmp.not = icmp eq i16 %3, -32512
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %header_len, 18
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
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge, !prof !135

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp3.i = icmp ult i32 %5, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !135

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
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 %header_len
  %h_vlan_TCI = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr5, i32 0, i32 2
  %10 = ptrtoint ptr %h_vlan_TCI to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %h_vlan_TCI, align 2
  %12 = and i16 %11, 4095
  %13 = or i16 %12, -32768
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %13, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %pskb_may_pull.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_vlan_ap_isola_get(ptr noundef %bat_priv, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_softif_vlan_get(ptr noundef %bat_priv, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %ap_isolation = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ap_isolation, i32 noundef 4) #11
  %0 = ptrtoint ptr %ap_isolation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ap_isolation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2 = icmp ne i32 %1, 0
  %refcount.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !138
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !139
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !137

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !140
  tail call void @batadv_softif_vlan_release(ptr noundef %refcount.i) #11, !callees !141
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ap_isolation_enabled.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %tobool2, %if.end5.i.i.i.i.i.if.end_crit_edge ], [ %tobool2, %if.then10.i.i.i.i.i ], [ %tobool2, %if.then.i.i ]
  ret i1 %ap_isolation_enabled.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_softif_vlan_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_throw_uevent(ptr noundef %bat_priv, i32 noundef %type, i32 noundef %action, ptr noundef %data) local_unnamed_addr #2 align 64 {
entry:
  %uevent_env = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uevent_env) #11
  %0 = getelementptr inbounds i8, ptr %uevent_env, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %2 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_iface, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  %arrayidx = getelementptr [2 x ptr], ptr @batadv_uev_type_str, i32 0, i32 %type
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 2592, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef %5) #11
  %6 = ptrtoint ptr %uevent_env to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %uevent_env, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr [4 x ptr], ptr @batadv_uev_action_str, i32 0, i32 %action
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 2592, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.32, ptr noundef %8) #11
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr %uevent_env, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %arrayidx5, align 4
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp.not = icmp eq i32 %action, 1
  br i1 %cmp.not, label %if.end9.if.end17_crit_edge, label %if.then10

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then10:                                        ; preds = %if.end9
  %call11 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 2592, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.33, ptr noundef %data) #11
  %arrayidx12 = getelementptr inbounds [4 x ptr], ptr %uevent_env, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %arrayidx12, align 4
  %tobool14.not = icmp eq ptr %call11, null
  br i1 %tobool14.not, label %if.then10.out_crit_edge, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end17:                                         ; preds = %if.then10.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %call18 = call i32 @kobject_uevent_env(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %uevent_env) #11
  br label %out

out:                                              ; preds = %if.end17, %if.then10.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call18, %if.end17 ], [ -12, %if.then10.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  %11 = ptrtoint ptr %uevent_env to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uevent_env, align 4
  call void @kfree(ptr noundef %12) #11
  %arrayidx20 = getelementptr inbounds [4 x ptr], ptr %uevent_env, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx20, align 4
  call void @kfree(ptr noundef %14) #11
  %arrayidx21 = getelementptr inbounds [4 x ptr], ptr %uevent_env, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx21, align 4
  call void @kfree(ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %out.if.end32_crit_edge, label %do.body

out.if.end32_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

do.body:                                          ; preds = %out
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %17 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %do.body.if.end32_crit_edge, label %if.then26

do.body.if.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx28 = getelementptr [4 x ptr], ptr @batadv_uev_action_str, i32 0, i32 %action
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp29 = icmp eq i32 %action, 1
  %spec.select = select i1 %cmp29, ptr @.str.35, ptr %data
  %call30 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.34, ptr noundef %5, ptr noundef %20, ptr noundef %spec.select, i32 noundef %ret.0) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %do.body.if.end32_crit_edge, %out.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uevent_env) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_tt_cache_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  store volatile ptr @batadv_hardif_list, ptr @batadv_hardif_list, align 4
  store ptr @batadv_hardif_list, ptr getelementptr inbounds (%struct.list_head, ptr @batadv_hardif_list, i32 0, i32 1), align 4
  tail call void @batadv_algo_init() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.063.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x ptr], ptr @batadv_rx_handler, i32 0, i32 %i.063.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @batadv_recv_unhandled_packet, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.body3.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %i.164.i = phi i32 [ %inc6.i, %for.body3.i.for.body3.i_crit_edge ], [ 64, %for.body.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr [256 x ptr], ptr @batadv_rx_handler, i32 0, i32 %i.164.i
  %1 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @batadv_recv_unhandled_unicast_packet, ptr %arrayidx4.i, align 4
  %inc6.i = add nuw nsw i32 %i.164.i, 1
  %exitcond65.not.i = icmp eq i32 %inc6.i, 128
  br i1 %exitcond65.not.i, label %batadv_recv_handler_init.exit, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

batadv_recv_handler_init.exit:                    ; preds = %for.body3.i
  store ptr @batadv_recv_bcast_packet, ptr getelementptr inbounds ([256 x ptr], ptr @batadv_rx_handler, i32 0, i32 1), align 4
  store ptr @batadv_recv_unicast_packet, ptr getelementptr inbounds ([256 x ptr], ptr @batadv_rx_handler, i32 0, i32 66), align 4
  store ptr @batadv_recv_unicast_packet, ptr getelementptr inbounds ([256 x ptr], ptr @batadv_rx_handler, i32 0, i32 64), align 4
  store ptr @batadv_recv_unicast_tvlv, ptr getelementptr inbounds ([256 x ptr], ptr @batadv_rx_handler, i32 0, i32 68), align 4
  store ptr @batadv_recv_icmp_packet, ptr getelementptr inbounds ([256 x ptr], ptr @batadv_rx_handler, i32 0, i32 67), align 4
  store ptr @batadv_recv_frag_packet, ptr getelementptr inbounds ([256 x ptr], ptr @batadv_rx_handler, i32 0, i32 65), align 4
  %call1 = tail call i32 @batadv_v_init() #11
  %call2 = tail call i32 @batadv_iv_init() #11
  %call3 = tail call i32 @batadv_nc_init() #11
  tail call void @batadv_tp_meter_init() #11
  %call4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.49, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.50) #11
  store ptr %call4, ptr @batadv_event_workqueue, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %err_create_wq, label %if.end6

if.end6:                                          ; preds = %batadv_recv_handler_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @batadv_hard_if_notifier) #11
  %call8 = tail call i32 @rtnl_link_register(ptr noundef nonnull @batadv_link_ops) #11
  tail call void @batadv_netlink_register() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.38, i32 noundef 15) #14
  br label %cleanup

err_create_wq:                                    ; preds = %batadv_recv_handler_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_tt_cache_destroy() #11
  br label %cleanup

cleanup:                                          ; preds = %err_create_wq, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %err_create_wq ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_softif_vlan_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_tt_cache_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_algo_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_v_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_iv_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_nc_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tp_meter_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_netlink_register() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_bcast_packet(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_unicast_packet(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_unicast_tvlv(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_icmp_packet(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_frag_packet(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !68, !70, !72, !74, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !121, !122}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @batadv_broadcast_addr, !1, !"batadv_broadcast_addr", i1 false, i1 false}
!1 = !{!"../net/batman-adv/main.c", i32 70, i32 15}
!2 = !{ptr @batadv_mesh_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/batman-adv/main.c", i32 155, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @batadv_mesh_init.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../net/batman-adv/main.c", i32 156, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @batadv_mesh_init.__key.3, !9, !"__key", i1 false, i1 false}
!9 = !{!"../net/batman-adv/main.c", i32 157, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @batadv_mesh_init.__key.5, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/batman-adv/main.c", i32 158, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @batadv_mesh_init.__key.7, !15, !"__key", i1 false, i1 false}
!15 = !{!"../net/batman-adv/main.c", i32 159, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @batadv_mesh_init.__key.9, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/batman-adv/main.c", i32 160, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @batadv_mesh_init.__key.11, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/batman-adv/main.c", i32 161, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @batadv_mesh_init.__key.13, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/batman-adv/main.c", i32 162, i32 2}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @batadv_mesh_init.__key.15, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/batman-adv/main.c", i32 164, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @batadv_mesh_init.__key.17, !30, !"__key", i1 false, i1 false}
!30 = !{!"../net/batman-adv/main.c", i32 165, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @batadv_mesh_init.__key.19, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/batman-adv/main.c", i32 167, i32 2}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @batadv_mesh_init.__key.21, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/batman-adv/main.c", i32 168, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @batadv_mesh_init.__key.23, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/batman-adv/main.c", i32 169, i32 2}
!40 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @batadv_mesh_init.__key.25, !42, !"__key", i1 false, i1 false}
!42 = !{!"../net/batman-adv/main.c", i32 170, i32 2}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../net/batman-adv/main.c", i32 310, i32 2}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/batman-adv/main.c", i32 474, i32 3}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/batman-adv/main.c", i32 688, i32 7}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/batman-adv/main.c", i32 688, i32 15}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/batman-adv/main.c", i32 694, i32 15}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/batman-adv/main.c", i32 702, i32 16}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/batman-adv/main.c", i32 714, i32 3}
!60 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @__initcall__kmod_batman_adv__517_722_batadv_init6, !62, !"__initcall__kmod_batman_adv__517_722_batadv_init6", i1 false, i1 false}
!62 = !{!"../net/batman-adv/main.c", i32 722, i32 1}
!63 = !{ptr @__exitcall_batadv_exit, !64, !"__exitcall_batadv_exit", i1 false, i1 false}
!64 = !{!"../net/batman-adv/main.c", i32 723, i32 1}
!65 = !{ptr @__UNIQUE_ID_file518, !66, !"__UNIQUE_ID_file518", i1 false, i1 false}
!66 = !{!"../net/batman-adv/main.c", i32 725, i32 1}
!67 = !{ptr @__UNIQUE_ID_license519, !66, !"__UNIQUE_ID_license519", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_author520, !69, !"__UNIQUE_ID_author520", i1 false, i1 false}
!69 = !{!"../net/batman-adv/main.c", i32 727, i32 1}
!70 = !{ptr @__UNIQUE_ID_description521, !71, !"__UNIQUE_ID_description521", i1 false, i1 false}
!71 = !{!"../net/batman-adv/main.c", i32 728, i32 1}
!72 = !{ptr @__UNIQUE_ID_version522, !73, !"__UNIQUE_ID_version522", i1 false, i1 false}
!73 = !{!"../net/batman-adv/main.c", i32 729, i32 1}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__modver_attr, !73, !"__modver_attr", i1 false, i1 false}
!78 = !{ptr @__UNIQUE_ID_alias523, !79, !"__UNIQUE_ID_alias523", i1 false, i1 false}
!79 = !{!"../net/batman-adv/main.c", i32 730, i32 1}
!80 = !{ptr @__UNIQUE_ID_alias524, !81, !"__UNIQUE_ID_alias524", i1 false, i1 false}
!81 = !{!"../net/batman-adv/main.c", i32 731, i32 1}
!82 = !{ptr @batadv_hardif_list, !83, !"batadv_hardif_list", i1 false, i1 false}
!83 = !{!"../net/batman-adv/main.c", i32 65, i32 18}
!84 = !{ptr @batadv_hardif_generation, !85, !"batadv_hardif_generation", i1 false, i1 false}
!85 = !{!"../net/batman-adv/main.c", i32 66, i32 14}
!86 = !{ptr @batadv_rx_handler, !87, !"batadv_rx_handler", i1 false, i1 false}
!87 = !{!"../net/batman-adv/main.c", i32 67, i32 14}
!88 = !{ptr @batadv_event_workqueue, !89, !"batadv_event_workqueue", i1 false, i1 false}
!89 = !{!"../net/batman-adv/main.c", i32 72, i32 26}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!92 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/batman-adv/main.c", i32 88, i32 2}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/batman-adv/main.c", i32 89, i32 2}
!103 = !{ptr @batadv_uev_type_str, !104, !"batadv_uev_type_str", i1 false, i1 false}
!104 = !{!"../net/batman-adv/main.c", i32 87, i32 14}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/batman-adv/main.c", i32 81, i32 2}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/batman-adv/main.c", i32 82, i32 2}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/batman-adv/main.c", i32 83, i32 2}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/batman-adv/main.c", i32 84, i32 2}
!113 = !{ptr @batadv_uev_action_str, !114, !"batadv_uev_action_str", i1 false, i1 false}
!114 = !{!"../net/batman-adv/main.c", i32 80, i32 14}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/batman-adv/main.c", i32 110, i32 27}
!117 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/batman-adv/main.c", i32 118, i32 2}
!120 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @batadv_init._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @batadv_init._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2149695182}
!134 = !{i64 2149695448}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 524021, i64 524045, i64 524066, i64 524083, i64 524100}
!137 = !{!"branch_weights", i32 2000, i32 1}
!138 = !{i64 2148238718}
!139 = !{i64 2148153182, i64 2148153214, i64 2148153243, i64 2148153277, i64 2148153308, i64 2148153331}
!140 = !{i64 2150569729}
!141 = !{ptr @batadv_hardif_release, ptr @batadv_softif_vlan_release}
!142 = !{!"auto-init"}
