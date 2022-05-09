; ModuleID = '/llk/IR_all_yes/net/batman-adv/translation-table.c_pt.bc'
source_filename = "../net/batman-adv/translation-table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.batadv_tt_common_entry = type { [6 x i8], i16, %struct.hlist_node, i16, i32, %struct.kref, %struct.callback_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.batadv_tt_orig_list_entry = type { ptr, i8, i8, %struct.hlist_node, %struct.kref, %struct.callback_head }
%struct.batadv_tt_global_entry = type { %struct.batadv_tt_common_entry, %struct.hlist_head, %struct.atomic_t, %struct.spinlock, i32 }
%struct.batadv_tvlv_roam_adv = type { [6 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
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
%struct.batadv_tt_local_entry = type { %struct.batadv_tt_common_entry, i32, ptr }
%struct.batadv_tt_roam_node = type { [6 x i8], %struct.atomic_t, i32, %struct.list_head }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.batadv_softif_vlan = type { ptr, i16, %struct.atomic_t, %struct.batadv_vlan_tt, %struct.hlist_node, %struct.kref, %struct.callback_head }
%struct.batadv_vlan_tt = type { i32, %struct.atomic_t }
%struct.batadv_tt_change_node = type { %struct.list_head, %struct.batadv_tvlv_tt_change }
%struct.batadv_tvlv_tt_change = type { i8, [3 x i8], [6 x i8], i16 }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sock_common = type { %union.anon.7, %union.anon.9, %union.anon.10, i16, i8, i8, i32, %union.anon.12, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.7 = type { i64 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.12 = type { %struct.hlist_node }
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
%struct.batadv_orig_node_vlan = type { i16, %struct.batadv_vlan_tt, %struct.hlist_node, %struct.kref, %struct.callback_head }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.batadv_tt_req_node = type { [6 x i8], i32, %struct.kref, %struct.hlist_node }
%struct.batadv_tvlv_tt_data = type { i8, i8, i16 }
%struct.batadv_tvlv_tt_vlan_data = type { i32, i16, i16 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Re-adding pending client %pM (vid: %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Roaming client %pM (vid: %d) came back to its original location\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"Local translation table size (%i) exceeds maximum packet size (%i); Ignoring new local tt entry: %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@batadv_tt_local_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"\016batman_adv: %s: Local translation table size (%i) exceeds maximum packet size (%i); Ignoring new local tt entry: %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"batadv_tt_local_add\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/batman-adv/translation-table.c\00", [61 x i8] zeroinitializer }, align 32
@batadv_tt_local_add._entry_ptr = internal global ptr @batadv_tt_local_add._entry, section ".printk_index", align 4
@batadv_tl_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"adding TT local entry %pM to non-existent VLAN %d\0A\00", [45 x i8] zeroinitializer }, align 32
@batadv_tt_local_add._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016batman_adv: %s: adding TT local entry %pM to non-existent VLAN %d\0A\00", [59 x i8] zeroinitializer }, align 32
@batadv_tt_local_add._entry_ptr.9 = internal global ptr @batadv_tt_local_add._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Creating new local tt entry: %pM (vid: %d, ttvn: %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@batadv_tt_local_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Roaming canceled\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Deleting global tt entry %pM (vid: %d): %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Added temporary global client (addr: %pM, vid: %d, orig: %pM)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Forced to purge local tt entries to fit new maximum fragment MTU (%i)\0A\00", [57 x i8] zeroinitializer }, align 32
@batadv_tt_local_resize_to_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 3964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016batman_adv: %s: Forced to purge local tt entries to fit new maximum fragment MTU (%i)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"batadv_tt_local_resize_to_mtu\00", [34 x i8] zeroinitializer }, align 32
@batadv_tt_local_resize_to_mtu._entry_ptr = internal global ptr @batadv_tt_local_resize_to_mtu._entry, section ".printk_index", align 4
@batadv_tt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&bat_priv->tt.work)->work)\00", [49 x i8] zeroinitializer }, align 32
@batadv_tt_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&bat_priv->tt.work)->timer\00", [35 x i8] zeroinitializer }, align 32
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"batadv_tl_cache\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"batadv_tg_cache\00", [16 x i8] zeroinitializer }, align 32
@batadv_tg_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"batadv_tt_orig_cache\00", [43 x i8] zeroinitializer }, align 32
@batadv_tt_orig_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"batadv_tt_change_cache\00", [41 x i8] zeroinitializer }, align 32
@batadv_tt_change_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"batadv_tt_req_cache\00", [44 x i8] zeroinitializer }, align 32
@batadv_tt_req_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"batadv_tt_roam_cache\00", [43 x i8] zeroinitializer }, align 32
@batadv_tt_roam_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@batadv_tt_hash_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_tt_local_table_transmit_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@batadv_netlink_family = external dso_local global %struct.genl_family, align 4
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Local tt entry (%pM, vid: %d) pending to be removed: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@batadv_tt_global_dump_bucket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_tt_global_dump_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Deleting %pM from global tt entry %pM (vid: %d): %s\0A\00", [43 x i8] zeroinitializer }, align 32
@batadv_transtable_best_orig.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Sending ROAMING_ADV to %pM (client %pM, vid: %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Local changes committed, updating to ttvn %u\0A\00", [50 x i8] zeroinitializer }, align 32
@batadv_tt_local_set_flags.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_tt_local_update_crc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_tt_local_crc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_tt_global_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&tt_global_entry->list_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Creating new global tt entry: %pM (vid: %d, via %pM)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"global tt received\00", [45 x i8] zeroinitializer }, align 32
@batadv_tt_global_orig_entry_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_tt_global_sync_flags.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timed out\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Deleting local tt entry (%pM, vid: %d): pending\0A\00", [47 x i8] zeroinitializer }, align 32
@batadv_tt_local_hash_lock_class_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@batadv_tt_global_hash_lock_class_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"TT inconsistency for %pM. Need to retrieve the correct information (ttvn: %u last_ttvn: %u num_changes: %u)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tt removed by changes\00", [42 x i8] zeroinitializer }, align 32
@batadv_tt_global_del_roaming.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_tt_global_update_crc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_tt_global_crc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_tt_global_check_crc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Sending TT_REQUEST to %pM [%c]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Routing TT_REQUEST to %pM [%c]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Routing TT_RESPONSE to %pM [%c]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Received TT_REQUEST from %pM for ttvn: %u (me) [%c]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Sending TT_RESPONSE to %pM [%c] (ttvn: %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@batadv_tt_tvlv_generate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Received TT_REQUEST from %pM for ttvn: %u (%pM) [%c]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Ignoring TT_REQUEST from %pM; Response size exceeds max packet size.\0A\00", [58 x i8] zeroinitializer }, align 32
@batadv_send_other_tt_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 3084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016batman_adv: %s: Ignoring TT_REQUEST from %pM; Response size exceeds max packet size.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"batadv_send_other_tt_response\00", [34 x i8] zeroinitializer }, align 32
@batadv_send_other_tt_response._entry_ptr = internal global ptr @batadv_send_other_tt_response._entry, section ".printk_index", align 4
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Sending TT_RESPONSE %pM for %pM [%c] (ttvn: %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Received TT_RESPONSE from %pM for ttvn %d t_size: %d [%c]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Received full table\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Received ROAMING_ADV from %pM (client %pM)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Roaming timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Temporary client timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 667, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 680, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 699, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 712, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 720, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 768, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 776, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 2230, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3928, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3962, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4178, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4225, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4230, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4235, i32 43 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4241, i32 45 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4247, i32 42 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4253, i32 43 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 695, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 723, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 110, i32 15 }
@___asan_gen_.162 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 991, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1231, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 2067, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3534, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3702, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1643, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1714, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1729, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1333, i32 32 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3661, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [36 x i8] c"batadv_tt_local_hash_lock_class_key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 62, i32 30 }
@___asan_gen_.197 = private unnamed_addr constant [37 x i8] c"batadv_tt_global_hash_lock_class_key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 63, i32 30 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3839, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3267, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 2960, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4066, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4087, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3140, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3211, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3011, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3082, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3094, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3376, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3299, i32 7 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4134, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 2253, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [38 x i8] c"../net/batman-adv/translation-table.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 2259, i32 10 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @batadv_send_other_tt_response._entry, ptr @batadv_send_other_tt_response._entry_ptr, ptr @batadv_tt_local_add._entry, ptr @batadv_tt_local_add._entry.7, ptr @batadv_tt_local_add._entry_ptr, ptr @batadv_tt_local_add._entry_ptr.9, ptr @batadv_tt_local_resize_to_mtu._entry, ptr @batadv_tt_local_resize_to_mtu._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @batadv_tt_init.__key, ptr @.str.18, ptr @batadv_tt_init.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @batadv_tt_global_add.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @batadv_tt_local_hash_lock_class_key, ptr @batadv_tt_global_hash_lock_class_key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tt_local_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tt_local_add._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tt_local_resize_to_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tt_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tt_global_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tt_local_hash_lock_class_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tt_global_hash_lock_class_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_send_other_tt_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_tt_global_hash_find(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %global_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %global_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_hash, align 4
  %call = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vid)
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_tt_hash_find(ptr noundef readonly %hash, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hash, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %to_search.sroa.0.sroa.0.0.extract.shift = lshr i32 %1, 24
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i, align 2
  %to_search.sroa.8.sroa.0.0.extract.shift = lshr i16 %3, 8
  %to_search.sroa.8.sroa.0.0.extract.trunc = zext i16 %to_search.sroa.8.sroa.0.0.extract.shift to i32
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %6 = shl i16 %3, 8
  %shl60.i.i = zext i16 %6 to i32
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %add65.i.i = add nuw nsw i32 %add61.i.i, %to_search.sroa.8.sroa.0.0.extract.trunc
  %conv68.i.i = shl i32 %1, 24
  %add70.i.i = add i32 %conv68.i.i, -559038731
  %7 = shl i32 %1, 8
  %shl74.i.i = and i32 %7, 16711680
  %8 = lshr i32 %1, 8
  %shl79.i.i = and i32 %8, 65280
  %add75.i.i = add nuw nsw i32 %add70.i.i, %to_search.sroa.0.sroa.0.0.extract.shift
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
  %rem.i = urem i32 %sub105.i31.i, %5
  %9 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %10, i32 %rem.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @batadv_tt_hash_find.__warned, align 1
  br i1 %.b62, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_hash_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 143, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %16, null
  %add.ptr = getelementptr i8, ptr %16, i32 -8
  %tobool18.not7680 = icmp eq ptr %add.ptr, null
  %tobool18.not76 = or i1 %tobool16.not, %tobool18.not7680
  br i1 %tobool18.not76, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %tt.077 = phi ptr [ %add.ptr42, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %17 = ptrtoint ptr %tt.077 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tt.077, align 4
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr, align 4
  %xor.i.i.i = xor i32 %20, %18
  %add.ptr.i.i.i = getelementptr i8, ptr %tt.077, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i.i, align 2
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i, align 2
  %xor37.i.i.i = xor i16 %24, %22
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i64 = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i64)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i64, 0
  br i1 %cmp.i.i.i, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %vid22 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt.077, i32 0, i32 1
  %25 = ptrtoint ptr %vid22 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid22, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %vid)
  %cmp.not = icmp eq i16 %26, %vid
  br i1 %cmp.not, label %if.end26, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end26:                                         ; preds = %if.end21
  %refcount = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt.077, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %27 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end26
  %29 = phi i32 [ %28, %if.end26 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %29, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %31 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %33 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %32, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %32
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !174

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %34 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %35, 1
  %36 = or i32 %add5.i.i.i.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %37 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %38 = phi i32 [ %35, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool12.i.i.i.i.not = icmp eq i32 %38, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hash_entry = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt.077, i32 0, i32 2
  %39 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %hash_entry, align 4
  %tobool38.not = icmp eq ptr %40, null
  %add.ptr42 = getelementptr i8, ptr %40, i32 -8
  %tobool18.not81 = icmp eq ptr %add.ptr42, null
  %tobool18.not = or i1 %tobool38.not, %tobool18.not81
  br i1 %tobool18.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %tt.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tt.077, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i65 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i65, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %for.end
  %call1.i66 = call i32 @debug_lockdep_rcu_enabled() #11
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %41 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i72 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %tt.0.lcssa, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tt_global_entry_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -24
  %list_lock.i = getelementptr i8, ptr %ref, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i) #11
  %orig_list.i = getelementptr i8, ptr %ref, i32 12
  %0 = ptrtoint ptr %orig_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_list.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %tobool2.not2628.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not26.i = or i1 %tobool.not.i, %tobool2.not2628.i
  br i1 %tobool2.not26.i, label %entry.batadv_tt_global_del_orig_list.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.batadv_tt_global_del_orig_list.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %orig_entry.027.i = phi ptr [ %add.ptr11.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %entry.land.rhs.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i, i32 0, i32 3
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef %add.ptr, ptr noundef nonnull %orig_entry.027.i) #11
  %tobool7.not.i = icmp eq ptr %3, null
  %add.ptr11.i = getelementptr i8, ptr %3, i32 -8
  %tobool2.not29.i = icmp eq ptr %add.ptr11.i, null
  %tobool2.not.i = or i1 %tobool7.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %land.rhs.i.batadv_tt_global_del_orig_list.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.rhs.i.batadv_tt_global_del_orig_list.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit

batadv_tt_global_del_orig_list.exit:              ; preds = %land.rhs.i.batadv_tt_global_del_orig_list.exit_crit_edge, %entry.batadv_tt_global_del_orig_list.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i) #11
  %rcu = getelementptr i8, ptr %ref, i32 4
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @batadv_tt_global_entry_free_rcu) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_tt_global_entry_free_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -28
  %0 = load ptr, ptr @batadv_tg_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_tt_global_hash_count(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %global_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_hash.i, align 4
  %call.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %orig_list_count = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %orig_list_count, i32 noundef 4) #11
  %2 = ptrtoint ptr %orig_list_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %orig_list_count, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %list_lock.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i.i) #11
  %orig_list.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i, i32 1
  %5 = ptrtoint ptr %orig_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %orig_list.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 -8
  %tobool2.not2628.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not26.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not2628.i.i.i
  br i1 %tobool2.not26.i.i.i, label %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %if.then.i.i.land.rhs.i.i.i_crit_edge

if.then.i.i.land.rhs.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %land.rhs.i.i.i

if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

land.rhs.i.i.i:                                   ; preds = %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge, %if.then.i.i.land.rhs.i.i.i_crit_edge
  %orig_entry.027.i.i.i = phi ptr [ %add.ptr11.i.i.i, %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.then.i.i.land.rhs.i.i.i_crit_edge ]
  %list.i.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list.i.i.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %call.i, ptr noundef nonnull %orig_entry.027.i.i.i) #11
  %tobool7.not.i.i.i = icmp eq ptr %8, null
  %add.ptr11.i.i.i = getelementptr i8, ptr %8, i32 -8
  %tobool2.not29.i.i.i = icmp eq ptr %add.ptr11.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool7.not.i.i.i, %tobool2.not29.i.i.i
  br i1 %tobool2.not.i.i.i, label %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge

land.rhs.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i

land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

batadv_tt_global_entry_release.exit.i:            ; preds = %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i.i) #11
  %rcu.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @batadv_tt_global_entry_free_rcu) #11
  br label %cleanup

cleanup:                                          ; preds = %batadv_tt_global_entry_release.exit.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %3, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %3, %if.then10.i.i.i.i.i ], [ %3, %batadv_tt_global_entry_release.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_global_entry_put(ptr noundef %tt_global_entry) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %tt_global_entry, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_global_entry, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %list_lock.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_global_entry, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i) #11
  %orig_list.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_global_entry, i32 1
  %1 = ptrtoint ptr %orig_list.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %orig_list.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 -8
  %tobool2.not2628.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not26.i.i = or i1 %tobool.not.i.i, %tobool2.not2628.i.i
  br i1 %tobool2.not26.i.i, label %if.then.i.batadv_tt_global_entry_release.exit_crit_edge, label %if.then.i.land.rhs.i.i_crit_edge

if.then.i.land.rhs.i.i_crit_edge:                 ; preds = %if.then.i
  br label %land.rhs.i.i

if.then.i.batadv_tt_global_entry_release.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.land.rhs.i.i_crit_edge, %if.then.i.land.rhs.i.i_crit_edge
  %orig_entry.027.i.i = phi ptr [ %add.ptr11.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %add.ptr.i.i, %if.then.i.land.rhs.i.i_crit_edge ]
  %list.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list.i.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %tt_global_entry, ptr noundef nonnull %orig_entry.027.i.i) #11
  %tobool7.not.i.i = icmp eq ptr %4, null
  %add.ptr11.i.i = getelementptr i8, ptr %4, i32 -8
  %tobool2.not29.i.i = icmp eq ptr %add.ptr11.i.i, null
  %tobool2.not.i.i = or i1 %tobool7.not.i.i, %tobool2.not29.i.i
  br i1 %tobool2.not.i.i, label %land.rhs.i.i.batadv_tt_global_entry_release.exit_crit_edge, label %land.rhs.i.i.land.rhs.i.i_crit_edge

land.rhs.i.i.land.rhs.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

land.rhs.i.i.batadv_tt_global_entry_release.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit

batadv_tt_global_entry_release.exit:              ; preds = %land.rhs.i.i.batadv_tt_global_entry_release.exit_crit_edge, %if.then.i.batadv_tt_global_entry_release.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i) #11
  %rcu.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_global_entry, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @batadv_tt_global_entry_free_rcu) #11
  br label %return

return:                                           ; preds = %batadv_tt_global_entry_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_tt_local_add(ptr noundef %soft_iface, ptr noundef %addr, i16 noundef zeroext %vid, i32 noundef %ifindex, i32 noundef %mark) local_unnamed_addr #0 align 64 {
entry:
  %tvlv_roam.i = alloca %struct.batadv_tvlv_roam_adv, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %soft_iface, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %cmp.not = icmp eq i32 %ifindex, 0
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %soft_iface, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call2 = tail call ptr @dev_get_by_index(ptr noundef %1, i32 noundef %ifindex) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call ptr @batadv_hardif_get_by_netdev(ptr noundef nonnull %call2) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %tobool.not468 = phi i1 [ false, %if.then3 ], [ true, %if.end.if.end5_crit_edge ], [ true, %entry.if.end5_crit_edge ]
  %in_dev.0467 = phi ptr [ %call2, %if.then3 ], [ null, %if.end.if.end5_crit_edge ], [ null, %entry.if.end5_crit_edge ]
  %in_hardif.0 = phi ptr [ %call4, %if.then3 ], [ null, %if.end.if.end5_crit_edge ], [ null, %entry.if.end5_crit_edge ]
  %local_hash.i = getelementptr i8, ptr %soft_iface, i32 3232
  %2 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local_hash.i, align 4
  %call.i400 = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %3, ptr noundef %addr, i16 noundef zeroext %vid) #11
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.then8, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %global_hash.i = getelementptr i8, ptr %soft_iface, i32 3236
  %7 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %global_hash.i, align 4
  %call.i401 = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %8, ptr noundef %addr, i16 noundef zeroext %vid) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %tt_global.0 = phi ptr [ null, %if.end5.if.end10_crit_edge ], [ %call.i401, %if.then8 ]
  %tobool11.not = icmp eq ptr %call.i400, null
  br i1 %tobool11.not, label %if.end52, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %last_seen = getelementptr inbounds %struct.batadv_tt_local_entry, ptr %call.i400, i32 0, i32 1
  %10 = ptrtoint ptr %last_seen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_seen, align 4
  %flags = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i400, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 4
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end27, label %do.body

do.body:                                          ; preds = %if.then12
  %log_level = getelementptr i8, ptr %soft_iface, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %13 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %log_level, align 4
  %and16 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.if.end21_crit_edge, label %if.then18

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %vid to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i402 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i402, i32 -1, i32 %and2.i
  %call20 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str, ptr noundef %addr, i32 noundef %retval.0.i) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %do.body.if.end21_crit_edge
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 4
  %17 = and i16 %16, -1025
  store i16 %17, ptr %flags, align 4
  br label %add_event

if.end27:                                         ; preds = %if.then12
  %and31 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end27.check_roaming_crit_edge, label %do.body34

if.end27.check_roaming_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_roaming

do.body34:                                        ; preds = %if.end27
  %log_level36 = getelementptr i8, ptr %soft_iface, i32 2360
  %call.i.i394 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level36, i32 noundef 4) #11
  %18 = ptrtoint ptr %log_level36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %log_level36, align 4
  %and38 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body34.if.end43_crit_edge, label %if.then40

do.body34.if.end43_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i403 = zext i16 %vid to i32
  %and.i404 = and i32 %conv.i403, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i404)
  %tobool.not.i405 = icmp eq i32 %and.i404, 0
  %and2.i406 = and i32 %conv.i403, 4095
  %retval.0.i407 = select i1 %tobool.not.i405, i32 -1, i32 %and2.i406
  %call42 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.1, ptr noundef %addr, i32 noundef %retval.0.i407) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %do.body34.if.end43_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 4
  %22 = and i16 %21, -3
  store i16 %22, ptr %flags, align 4
  br label %check_roaming

if.end52:                                         ; preds = %if.end10
  %call53 = tail call fastcc i32 @batadv_tt_local_table_transmit_size(ptr noundef %add.ptr.i)
  %add = add i32 %call53, 12
  %packet_size_max55 = getelementptr i8, ptr %soft_iface, i32 2328
  %call.i.i395 = tail call zeroext i1 @__kasan_check_read(ptr noundef %packet_size_max55, i32 noundef 4) #11
  %23 = ptrtoint ptr %packet_size_max55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %packet_size_max55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp57 = icmp sgt i32 %add, %24
  br i1 %cmp57, label %do.body60, label %if.end86

do.body60:                                        ; preds = %if.end52
  %call61 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body60.out_crit_edge, label %do.body64

do.body60.out_crit_edge:                          ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body64:                                        ; preds = %do.body60
  %log_level68 = getelementptr i8, ptr %soft_iface, i32 2360
  %call.i.i396 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level68, i32 noundef 4) #11
  %25 = ptrtoint ptr %log_level68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %log_level68, align 4
  %and70 = and i32 %26, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body64.if.end74_crit_edge, label %if.then72

do.body64.if.end74_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then72:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.2, i32 noundef %add, i32 noundef %24, ptr noundef %addr) #11
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %do.body64.if.end74_crit_edge
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %soft_iface, i32 noundef %add, i32 noundef %24, ptr noundef %addr) #14
  br label %out

if.end86:                                         ; preds = %if.end52
  %27 = load ptr, ptr @batadv_tl_cache, align 4
  %call87 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %27, i32 noundef 2592) #11
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.end86.out_crit_edge, label %if.end90

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end90:                                         ; preds = %if.end86
  %call91 = tail call ptr @batadv_softif_vlan_get(ptr noundef %add.ptr.i, i16 noundef zeroext %vid) #11
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %do.body94, label %do.body128

do.body94:                                        ; preds = %if.end90
  %call95 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %do.body94.do.end126_crit_edge, label %do.body98

do.body94.do.end126_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end126

do.body98:                                        ; preds = %do.body94
  %log_level104 = getelementptr i8, ptr %soft_iface, i32 2360
  %call.i.i397 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level104, i32 noundef 4) #11
  %28 = ptrtoint ptr %log_level104 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %log_level104, align 4
  %and106 = and i32 %29, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %.pre = zext i16 %vid to i32
  %.pre476 = and i32 %.pre, 32768
  br i1 %tobool107.not, label %do.body98.if.end111_crit_edge, label %if.then108

do.body98.if.end111_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  %.pre477 = and i32 %.pre, 4095
  br label %if.end111

if.then108:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre476)
  %tobool.not.i412 = icmp eq i32 %.pre476, 0
  %and2.i413 = and i32 %.pre, 4095
  %retval.0.i414 = select i1 %tobool.not.i412, i32 -1, i32 %and2.i413
  %call110 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.6, ptr noundef %addr, i32 noundef %retval.0.i414) #11
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %do.body98.if.end111_crit_edge
  %and2.i418.pre-phi = phi i32 [ %.pre477, %do.body98.if.end111_crit_edge ], [ %and2.i413, %if.then108 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre476)
  %tobool.not.i417 = icmp eq i32 %.pre476, 0
  %retval.0.i419 = select i1 %tobool.not.i417, i32 -1, i32 %and2.i418.pre-phi
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %soft_iface, ptr noundef %addr, i32 noundef %retval.0.i419) #14
  br label %do.end126

do.end126:                                        ; preds = %if.end111, %do.body94.do.end126_crit_edge
  %30 = load ptr, ptr @batadv_tl_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef nonnull %call87) #11
  br label %out

do.body128:                                       ; preds = %if.end90
  %log_level130 = getelementptr i8, ptr %soft_iface, i32 2360
  %call.i.i398 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level130, i32 noundef 4) #11
  %31 = ptrtoint ptr %log_level130 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %log_level130, align 4
  %and132 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %do.body128.if.end140_crit_edge, label %if.then134

do.body128.if.end140_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then134:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i420 = zext i16 %vid to i32
  %and.i421 = and i32 %conv.i420, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i421)
  %tobool.not.i422 = icmp eq i32 %and.i421, 0
  %and2.i423 = and i32 %conv.i420, 4095
  %retval.0.i424 = select i1 %tobool.not.i422, i32 -1, i32 %and2.i423
  %tt = getelementptr i8, ptr %soft_iface, i32 3212
  %call.i.i399 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tt, i32 noundef 4) #11
  %33 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %tt, align 4
  %conv138 = and i32 %34, 255
  %call139 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.10, ptr noundef %addr, i32 noundef %retval.0.i424, i32 noundef %conv138) #11
  br label %if.end140

if.end140:                                        ; preds = %if.then134, %do.body128.if.end140_crit_edge
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr, align 4
  %37 = ptrtoint ptr %call87 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %call87, align 8
  %add.ptr.i425 = getelementptr i8, ptr %addr, i32 4
  %38 = ptrtoint ptr %add.ptr.i425 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i425, align 2
  %add.ptr1.i = getelementptr i8, ptr %call87, i32 4
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add.ptr1.i, align 4
  %flags147 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call87, i32 0, i32 3
  %41 = ptrtoint ptr %flags147 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 512, ptr %flags147, align 8
  %vid149 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call87, i32 0, i32 1
  %42 = ptrtoint ptr %vid149 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %vid, ptr %vid149, align 2
  %call150 = tail call zeroext i1 @batadv_is_wifi_hardif(ptr noundef %in_hardif.0) #11
  br i1 %call150, label %if.then151, label %if.end140.if.end156_crit_edge

if.end140.if.end156_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.then151:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %flags147 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags147, align 8
  %45 = or i16 %44, 16
  store i16 %45, ptr %flags147, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.then151, %if.end140.if.end156_crit_edge
  %refcount = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call87, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %46 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %refcount, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %last_seen158 = getelementptr inbounds %struct.batadv_tt_local_entry, ptr %call87, i32 0, i32 1
  %48 = ptrtoint ptr %last_seen158 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_seen158, align 4
  %added_at = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call87, i32 0, i32 4
  %49 = ptrtoint ptr %added_at to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %added_at, align 4
  %vlan161 = getelementptr inbounds %struct.batadv_tt_local_entry, ptr %call87, i32 0, i32 2
  %50 = ptrtoint ptr %vlan161 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call91, ptr %vlan161, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %soft_iface, i32 0, i32 86
  %51 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr, align 64
  %53 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 4
  %xor.i.i.i = xor i32 %56, %54
  %57 = ptrtoint ptr %add.ptr.i425 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i425, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %52, i32 4
  %59 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %60, %58
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  %61 = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i426 = icmp ne i32 %61, 0
  %or.cond = select i1 %cmp.i.i.i, i1 true, i1 %tobool.i426
  br i1 %or.cond, label %if.then166, label %if.end156.if.end172_crit_edge

if.end156.if.end172_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

if.then166:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %flags147 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags147, align 8
  %64 = or i16 %63, 256
  store i16 %64, ptr %flags147, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then166, %if.end156.if.end172_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end172.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !180

if.end172.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end172
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %66 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !174

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end172.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end172.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %67 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %local_hash.i, align 4
  %hash_entry = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call87, i32 0, i32 2
  %call178 = tail call fastcc i32 @batadv_hash_add(ptr noundef %68, ptr noundef nonnull %call87, ptr noundef %hash_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179.not = icmp eq i32 %call178, 0
  br i1 %cmp179.not, label %kref_get.exit.add_event_crit_edge, label %if.then183, !prof !174

kref_get.exit.add_event_crit_edge:                ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_event

if.then183:                                       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef nonnull %call87)
  br label %out

add_event:                                        ; preds = %kref_get.exit.add_event_crit_edge, %if.end21
  %tt_local.0 = phi ptr [ %call.i400, %if.end21 ], [ %call87, %kref_get.exit.add_event_crit_edge ]
  tail call fastcc void @batadv_tt_local_event(ptr noundef %add.ptr.i, ptr noundef nonnull %tt_local.0, i8 noundef zeroext 0)
  br label %check_roaming

check_roaming:                                    ; preds = %add_event, %if.end43, %if.end27.check_roaming_crit_edge
  %roamed_back.0.off0 = phi i1 [ false, %add_event ], [ true, %if.end43 ], [ false, %if.end27.check_roaming_crit_edge ]
  %tt_local.1 = phi ptr [ %tt_local.0, %add_event ], [ %call.i400, %if.end43 ], [ %call.i400, %if.end27.check_roaming_crit_edge ]
  %tobool185.not = icmp eq ptr %tt_global.0, null
  br i1 %tobool185.not, label %check_roaming.if.end241_crit_edge, label %land.lhs.true

check_roaming.if.end241_crit_edge:                ; preds = %check_roaming
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

land.lhs.true:                                    ; preds = %check_roaming
  %flags187 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_global.0, i32 0, i32 3
  %69 = ptrtoint ptr %flags187 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %flags187, align 4
  %71 = and i16 %70, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool190.not = icmp eq i16 %71, 0
  br i1 %tobool190.not, label %if.then191, label %land.lhs.true.if.end241_crit_edge

land.lhs.true.if.end241_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

if.then191:                                       ; preds = %land.lhs.true
  %orig_list = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %tt_global.0, i32 0, i32 1
  %72 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %75, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then191.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then191.rcu_read_lock.exit_crit_edge:          ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then191
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then191.rcu_read_lock.exit_crit_edge
  %call193 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %land.lhs.true195, label %rcu_read_lock.exit.do.end203_crit_edge

rcu_read_lock.exit.do.end203_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end203

land.lhs.true195:                                 ; preds = %rcu_read_lock.exit
  %call196 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %land.lhs.true195.do.end203_crit_edge, label %land.lhs.true198

land.lhs.true195.do.end203_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end203

land.lhs.true198:                                 ; preds = %land.lhs.true195
  %.b392 = load i1, ptr @batadv_tt_local_add.__warned, align 1
  br i1 %.b392, label %land.lhs.true198.do.end203_crit_edge, label %if.then200

land.lhs.true198.do.end203_crit_edge:             ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end203

if.then200:                                       ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_local_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 768, ptr noundef nonnull @.str.11) #11
  br label %do.end203

do.end203:                                        ; preds = %if.then200, %land.lhs.true198.do.end203_crit_edge, %land.lhs.true195.do.end203_crit_edge, %rcu_read_lock.exit.do.end203_crit_edge
  %76 = ptrtoint ptr %orig_list to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %orig_list, align 4
  %tobool210.not = icmp eq ptr %77, null
  %add.ptr = getelementptr i8, ptr %77, i32 -8
  %tobool212.not472474 = icmp eq ptr %add.ptr, null
  %tobool212.not472 = or i1 %tobool210.not, %tobool212.not472474
  br i1 %tobool212.not472, label %do.end203.for.end_crit_edge, label %for.body.lr.ph

do.end203.for.end_crit_edge:                      ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end203
  %vid217 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_global.0, i32 0, i32 1
  %78 = getelementptr inbounds %struct.batadv_tvlv_roam_adv, ptr %tvlv_roam.i, i32 0, i32 1
  %roam_list_lock.i.i = getelementptr i8, ptr %soft_iface, i32 3340
  %roam_list.i.i = getelementptr i8, ptr %soft_iface, i32 3244
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %tt_global.0, i32 4
  %log_level.i = getelementptr i8, ptr %soft_iface, i32 2360
  %bat_counters.i.i = getelementptr i8, ptr %soft_iface, i32 2312
  br label %for.body

for.body:                                         ; preds = %batadv_send_roam_adv.exit.for.body_crit_edge, %for.body.lr.ph
  %orig_entry.0473 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr229, %batadv_send_roam_adv.exit.for.body_crit_edge ]
  %79 = ptrtoint ptr %vid217 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vid217, align 2
  %81 = ptrtoint ptr %orig_entry.0473 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %orig_entry.0473, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tvlv_roam.i) #11
  %83 = ptrtoint ptr %tvlv_roam.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 -1, ptr %tvlv_roam.i, align 8
  %call.i427 = call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i) #11
  %tobool.not.i428 = icmp eq ptr %call.i427, null
  br i1 %tobool.not.i428, label %for.body.batadv_send_roam_adv.exit_crit_edge, label %if.end.i

for.body.batadv_send_roam_adv.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_send_roam_adv.exit

if.end.i:                                         ; preds = %for.body
  call void @_raw_spin_lock_bh(ptr noundef %roam_list_lock.i.i) #11
  %84 = ptrtoint ptr %roam_list.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn52.i.i = load ptr, ptr %roam_list.i.i, align 4
  %cmp.not53.i.i = icmp eq ptr %.pn52.i.i, %roam_list.i.i
  br i1 %cmp.not53.i.i, label %if.end.i.if.then15.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.then15.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %85 = ptrtoint ptr %tt_global.0 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tt_global.0, align 4
  %87 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn54.i.i = phi ptr [ %.pn52.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %tt_roam_node.0.i.i = getelementptr i8, ptr %.pn54.i.i, i32 -16
  %89 = ptrtoint ptr %tt_roam_node.0.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tt_roam_node.0.i.i, align 4
  %xor.i.i.i.i.i = xor i32 %90, %86
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %.pn54.i.i, i32 -12
  %91 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i = xor i16 %92, %88
  %xor3.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %xor.i.i.i.i.i, %xor3.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %first_time.i.i = getelementptr i8, ptr %.pn54.i.i, i32 -4
  %93 = ptrtoint ptr %first_time.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %first_time.i.i, align 4
  %add.i.i.i429 = add i32 %94, 2000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i429, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i430 = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i430, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %counter.i.i = getelementptr i8, ptr %.pn54.i.i, i32 -8
  %call.i.i.i.i431 = call zeroext i1 @__kasan_check_write(ptr noundef %counter.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !181
  call void @llvm.prefetch.p0(ptr %counter.i.i, i32 1, i32 3, i32 1) #11
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %counter.i.i, ptr %counter.i.i, i32 0, i32 -1, ptr elementtype(i32) %counter.i.i) #11, !srcloc !182
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end6.i.i.batadv_tt_check_roam_count.exit.i_crit_edge, label %for.end.i.i

if.end6.i.i.batadv_tt_check_roam_count.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_check_roam_count.exit.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %97 = ptrtoint ptr %.pn54.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn.i.i = load ptr, ptr %.pn54.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %roam_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.then15.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then15.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i.i

for.end.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !183
  br label %do.body.i

if.then15.i.i:                                    ; preds = %for.inc.i.i.if.then15.i.i_crit_edge, %if.end.i.if.then15.i.i_crit_edge
  %98 = load ptr, ptr @batadv_tt_roam_cache, align 4
  %call16.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %98, i32 noundef 2592) #11
  %tobool17.not.i.i = icmp eq ptr %call16.i.i, null
  br i1 %tobool17.not.i.i, label %if.then15.i.i.batadv_tt_check_roam_count.exit.i_crit_edge, label %if.end19.i.i

if.then15.i.i.batadv_tt_check_roam_count.exit.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_check_roam_count.exit.i

if.end19.i.i:                                     ; preds = %if.then15.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %99 = load volatile i32, ptr @jiffies, align 128
  %first_time20.i.i = getelementptr inbounds %struct.batadv_tt_roam_node, ptr %call16.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %first_time20.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %first_time20.i.i, align 4
  %counter21.i.i = getelementptr inbounds %struct.batadv_tt_roam_node, ptr %call16.i.i, i32 0, i32 1
  %call.i.i47.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %counter21.i.i, i32 noundef 4) #11
  %101 = ptrtoint ptr %counter21.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 4, ptr %counter21.i.i, align 8
  %102 = ptrtoint ptr %tt_global.0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tt_global.0, align 4
  %104 = ptrtoint ptr %call16.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %call16.i.i, align 8
  %105 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %add.ptr1.i.i.i433 = getelementptr i8, ptr %call16.i.i, i32 4
  %107 = ptrtoint ptr %add.ptr1.i.i.i433 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %add.ptr1.i.i.i433, align 4
  %list24.i.i = getelementptr inbounds %struct.batadv_tt_roam_node, ptr %call16.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %roam_list.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %roam_list.i.i, align 4
  %call.i.i48.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list24.i.i, ptr noundef %roam_list.i.i, ptr noundef %109) #11
  br i1 %call.i.i48.i.i, label %if.end.i.i.i.i, label %if.end19.i.i.do.body.i_crit_edge

if.end19.i.i.do.body.i_crit_edge:                 ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i.i.i.i:                                   ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %list24.i.i, ptr %prev1.i.i.i.i, align 4
  %111 = ptrtoint ptr %list24.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %109, ptr %list24.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.batadv_tt_roam_node, ptr %call16.i.i, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %roam_list.i.i, ptr %prev3.i.i.i.i, align 4
  %113 = ptrtoint ptr %roam_list.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %list24.i.i, ptr %roam_list.i.i, align 4
  br label %do.body.i

batadv_tt_check_roam_count.exit.i:                ; preds = %if.then15.i.i.batadv_tt_check_roam_count.exit.i_crit_edge, %if.end6.i.i.batadv_tt_check_roam_count.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %roam_list_lock.i.i) #11
  br label %if.end.i28.i

do.body.i:                                        ; preds = %if.end.i.i.i.i, %if.end19.i.i.do.body.i_crit_edge, %for.end.i.i
  call void @_raw_spin_unlock_bh(ptr noundef %roam_list_lock.i.i) #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %114 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %log_level.i, align 4
  %and.i434 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i434)
  %tobool5.not.i = icmp eq i32 %and.i434, 0
  br i1 %tobool5.not.i, label %do.body.i.if.end9.i_crit_edge, label %if.then6.i

do.body.i.if.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i16 %80 to i32
  %and.i.i = and i32 %conv.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 4095
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 -1, i32 %and2.i.i
  %call8.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.35, ptr noundef %82, ptr noundef nonnull %tt_global.0, i32 noundef %retval.0.i.i) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %do.body.i.if.end9.i_crit_edge
  %116 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %117 = ptrtoint ptr %bat_counters.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bat_counters.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %118, i32 21
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  %120 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cpu.i.i, align 4
  %arrayidx14.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %123
  %124 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx14.i.i, align 4
  %add.i.i = add i32 %125, %119
  %126 = inttoptr i32 %add.i.i to ptr
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %126, align 8
  %add15.i.i = add i64 %128, 1
  store i64 %add15.i.i, ptr %126, align 8
  %129 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i.i = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i26.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i26.i, label %if.then.i.i, label %if.end9.i.batadv_add_counter.exit.i_crit_edge, !prof !180

if.end9.i.batadv_add_counter.exit.i_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit.i

batadv_add_counter.exit.i:                        ; preds = %if.then.i.i, %if.end9.i.batadv_add_counter.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %116) #11, !srcloc !186
  %130 = call ptr @memcpy(ptr %tvlv_roam.i, ptr %tt_global.0, i32 6)
  %131 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %80, ptr %78, align 2
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call.i427, i32 0, i32 4
  %132 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 86
  %134 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_addr.i, align 64
  call void @batadv_tvlv_unicast_send(ptr noundef %add.ptr.i, ptr noundef %135, ptr noundef %82, i8 noundef zeroext 5, i8 noundef zeroext 1, ptr noundef nonnull %tvlv_roam.i, i16 noundef zeroext 8) #11
  br label %if.end.i28.i

if.end.i28.i:                                     ; preds = %batadv_add_counter.exit.i, %batadv_tt_check_roam_count.exit.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call.i427, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %136 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_send_roam_adv.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.batadv_send_roam_adv.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_send_roam_adv.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %batadv_send_roam_adv.exit

if.then.i.i.i:                                    ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @batadv_hardif_release(ptr noundef %refcount.i.i) #11
  br label %batadv_send_roam_adv.exit

batadv_send_roam_adv.exit:                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_send_roam_adv.exit_crit_edge, %for.body.batadv_send_roam_adv.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tvlv_roam.i) #11
  %list = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.0473, i32 0, i32 3
  %137 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile ptr, ptr %list, align 4
  %tobool225.not = icmp eq ptr %138, null
  %add.ptr229 = getelementptr i8, ptr %138, i32 -8
  %tobool212.not479 = icmp eq ptr %add.ptr229, null
  %tobool212.not = or i1 %tobool225.not, %tobool212.not479
  br i1 %tobool212.not, label %batadv_send_roam_adv.exit.for.end_crit_edge, label %batadv_send_roam_adv.exit.for.body_crit_edge

batadv_send_roam_adv.exit.for.body_crit_edge:     ; preds = %batadv_send_roam_adv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

batadv_send_roam_adv.exit.for.end_crit_edge:      ; preds = %batadv_send_roam_adv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %batadv_send_roam_adv.exit.for.end_crit_edge, %do.end203.for.end_crit_edge
  %call.i435 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i435, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i438

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i438:                               ; preds = %for.end
  %call1.i436 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i436)
  %tobool.not.i437 = icmp eq i32 %call1.i436, 0
  br i1 %tobool.not.i437, label %land.lhs.true.i438.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i440

land.lhs.true.i438.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i438
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i440:                              ; preds = %land.lhs.true.i438
  %.b4.i439 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i439, label %land.lhs.true2.i440.rcu_read_unlock.exit_crit_edge, label %if.then.i441

land.lhs.true2.i440.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i440
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i441:                                     ; preds = %land.lhs.true2.i440
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i441, %land.lhs.true2.i440.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i438.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %139 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i442 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i442 to ptr
  %preempt_count.i.i.i.i443 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i443 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i443, align 4
  %sub.i.i.i444 = add i32 %142, -1
  store volatile i32 %sub.i.i.i444, ptr %preempt_count.i.i.i.i443, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %roamed_back.0.off0, label %if.then234, label %if.else

if.then234:                                       ; preds = %rcu_read_unlock.exit
  %log_level.i445 = getelementptr i8, ptr %soft_iface, i32 2360
  %call.i.i.i446 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i445, i32 noundef 4) #11
  %143 = ptrtoint ptr %log_level.i445 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %log_level.i445, align 4
  %and.i447 = and i32 %144, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i447)
  %tobool.not.i448 = icmp eq i32 %and.i447, 0
  br i1 %tobool.not.i448, label %if.then234.if.end.i456_crit_edge, label %if.then.i454

if.then234.if.end.i456_crit_edge:                 ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i456

if.then.i454:                                     ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #13
  %vid.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_global.0, i32 0, i32 1
  %145 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %vid.i, align 2
  %conv.i.i449 = zext i16 %146 to i32
  %and.i.i450 = and i32 %conv.i.i449, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i450)
  %tobool.not.i.i451 = icmp eq i32 %and.i.i450, 0
  %and2.i.i452 = and i32 %conv.i.i449, 4095
  %retval.0.i.i453 = select i1 %tobool.not.i.i451, i32 -1, i32 %and2.i.i452
  %call3.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %tt_global.0, i32 noundef %retval.0.i.i453, ptr noundef nonnull @.str.12) #11
  br label %if.end.i456

if.end.i456:                                      ; preds = %if.then.i454, %if.then234.if.end.i456_crit_edge
  %global_hash.i455 = getelementptr i8, ptr %soft_iface, i32 3236
  %147 = ptrtoint ptr %global_hash.i455 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %global_hash.i455, align 4
  %call5.i = call fastcc ptr @batadv_hash_remove(ptr noundef %148, ptr noundef nonnull %tt_global.0) #11
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i456.if.end241_crit_edge, label %if.end8.i

if.end.i456.if.end241_crit_edge:                  ; preds = %if.end.i456
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

if.end8.i:                                        ; preds = %if.end.i456
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i457 = getelementptr i8, ptr %call5.i, i32 -8
  call fastcc void @batadv_tt_global_entry_put(ptr noundef %add.ptr.i457) #11
  br label %if.end241

if.else:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %flags187 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %flags187, align 4
  %151 = or i16 %150, 2
  store i16 %151, ptr %flags187, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %152 = load volatile i32, ptr @jiffies, align 128
  %roam_at = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %tt_global.0, i32 0, i32 4
  %153 = ptrtoint ptr %roam_at to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %roam_at, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.else, %if.end8.i, %if.end.i456.if.end241_crit_edge, %land.lhs.true.if.end241_crit_edge, %check_roaming.if.end241_crit_edge
  %tt_global.1 = phi ptr [ %tt_global.0, %land.lhs.true.if.end241_crit_edge ], [ %tt_global.0, %if.else ], [ null, %check_roaming.if.end241_crit_edge ], [ null, %if.end.i456.if.end241_crit_edge ], [ null, %if.end8.i ]
  %flags243 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_local.1, i32 0, i32 3
  %154 = ptrtoint ptr %flags243 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %flags243, align 4
  %call247 = call zeroext i1 @batadv_is_wifi_hardif(ptr noundef %in_hardif.0) #11
  %156 = ptrtoint ptr %flags243 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %flags243, align 4
  %158 = and i16 %157, -17
  %masksel = select i1 %call247, i16 16, i16 0
  %storemerge = or i16 %158, %masksel
  store i16 %storemerge, ptr %flags243, align 4
  %isolation_mark_mask = getelementptr i8, ptr %soft_iface, i32 2368
  %159 = ptrtoint ptr %isolation_mark_mask to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %isolation_mark_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool263.not = icmp eq i32 %160, 0
  br i1 %tobool263.not, label %if.end241.if.else273_crit_edge, label %land.lhs.true264

if.end241.if.else273_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else273

land.lhs.true264:                                 ; preds = %if.end241
  %and261 = and i32 %160, %mark
  %isolation_mark = getelementptr i8, ptr %soft_iface, i32 2364
  %161 = ptrtoint ptr %isolation_mark to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %isolation_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and261, i32 %162)
  %cmp265 = icmp eq i32 %and261, %162
  br i1 %cmp265, label %if.then267, label %land.lhs.true264.if.else273_crit_edge

land.lhs.true264.if.else273_crit_edge:            ; preds = %land.lhs.true264
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else273

if.then267:                                       ; preds = %land.lhs.true264
  call void @__sanitizer_cov_trace_pc() #13
  %163 = or i16 %storemerge, 32
  br label %if.end279

if.else273:                                       ; preds = %land.lhs.true264.if.else273_crit_edge, %if.end241.if.else273_crit_edge
  %164 = and i16 %storemerge, -33
  br label %if.end279

if.end279:                                        ; preds = %if.else273, %if.then267
  %storemerge390 = phi i16 [ %164, %if.else273 ], [ %163, %if.then267 ]
  %165 = ptrtoint ptr %flags243 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %storemerge390, ptr %flags243, align 4
  %166 = xor i16 %storemerge390, %155
  %xor391 = and i16 %166, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor391)
  %tobool285.not = icmp eq i16 %xor391, 0
  br i1 %tobool285.not, label %if.end279.out_crit_edge, label %if.then286

if.end279.out_crit_edge:                          ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then286:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @batadv_tt_local_event(ptr noundef %add.ptr.i, ptr noundef %tt_local.1, i8 noundef zeroext 0)
  br label %out

out:                                              ; preds = %if.then286, %if.end279.out_crit_edge, %if.then183, %do.end126, %if.end86.out_crit_edge, %if.end74, %do.body60.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %if.end74 ], [ false, %do.body60.out_crit_edge ], [ false, %if.then183 ], [ false, %do.end126 ], [ false, %if.end86.out_crit_edge ], [ true, %if.then286 ], [ true, %if.end279.out_crit_edge ]
  %tt_global.2 = phi ptr [ %tt_global.0, %if.end74 ], [ %tt_global.0, %do.body60.out_crit_edge ], [ %tt_global.0, %if.then183 ], [ %tt_global.0, %do.end126 ], [ %tt_global.0, %if.end86.out_crit_edge ], [ %tt_global.1, %if.then286 ], [ %tt_global.1, %if.end279.out_crit_edge ]
  %tt_local.2 = phi ptr [ null, %if.end74 ], [ null, %do.body60.out_crit_edge ], [ %call87, %if.then183 ], [ null, %do.end126 ], [ null, %if.end86.out_crit_edge ], [ %tt_local.1, %if.then286 ], [ %tt_local.1, %if.end279.out_crit_edge ]
  %tobool.not.i458 = icmp eq ptr %in_hardif.0, null
  br i1 %tobool.not.i458, label %out.batadv_hardif_put.exit_crit_edge, label %if.end.i460

out.batadv_hardif_put.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.end.i460:                                      ; preds = %out
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %in_hardif.0, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %167 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %167, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i459 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i459, label %if.then.i.i461, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i460
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_hardif_put.exit

if.then.i.i461:                                   ; preds = %if.end.i460
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @batadv_hardif_release(ptr noundef %refcount.i) #11
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %if.then.i.i461, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %out.batadv_hardif_put.exit_crit_edge
  br i1 %tobool.not468, label %batadv_hardif_put.exit.dev_put.exit_crit_edge, label %do.body1.i

batadv_hardif_put.exit.dev_put.exit_crit_edge:    ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i:                                       ; preds = %batadv_hardif_put.exit
  %168 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %in_dev.0467, i32 0, i32 118
  %169 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pcpu_refcnt.i, align 4
  %171 = ptrtoint ptr %170 to i32
  %172 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i463 = and i32 %172, -16384
  %173 = inttoptr i32 %and.i.i463 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 3
  %174 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %175
  %176 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %177, %171
  %178 = inttoptr i32 %add.i to ptr
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  %add13.i = add i32 %180, -1
  store i32 %add13.i, ptr %178, align 4
  %181 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i464 = and i32 %181, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i464)
  %tobool24.not.i = icmp eq i32 %and.i.i.i464, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !180

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %168) #11, !srcloc !186
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %batadv_hardif_put.exit.dev_put.exit_crit_edge
  call fastcc void @batadv_tt_local_entry_put(ptr noundef %tt_local.2)
  call fastcc void @batadv_tt_global_entry_put(ptr noundef %tt_global.2)
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hardif_get_by_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_tt_local_table_transmit_size(ptr noundef %bat_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
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
  %.b47 = load i1, ptr @batadv_tt_local_table_transmit_size.__warned, align 1
  br i1 %.b47, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_local_table_transmit_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 565, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %softif_vlan_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 31
  %4 = ptrtoint ptr %softif_vlan_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %softif_vlan_list, align 4
  %tobool10.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -20
  %tobool12.not6065 = icmp eq ptr %add.ptr, null
  %tobool12.not60 = or i1 %tobool10.not, %tobool12.not6065
  br i1 %tobool12.not60, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %num_vlan.063 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %tt_local_entries.062 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %vlan.061 = phi ptr [ %add.ptr26, %for.body.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %inc = add i16 %num_vlan.063, 1
  %num_entries = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.061, i32 0, i32 3, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_entries, i32 noundef 4) #11
  %6 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %num_entries, align 4
  %add = add i32 %7, %tt_local_entries.062
  %list = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.061, i32 0, i32 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %list, align 4
  %tobool22.not = icmp eq ptr %9, null
  %add.ptr26 = getelementptr i8, ptr %9, i32 -20
  %phi.cast = and i32 %add, 65535
  %tobool12.not69 = icmp eq ptr %add.ptr26, null
  %tobool12.not = or i1 %tobool22.not, %tobool12.not69
  br i1 %tobool12.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast66 = zext i16 %inc to i32
  %phi.bo = shl nuw nsw i32 %phi.cast66, 3
  %phi.bo67 = mul nuw nsw i32 %phi.cast, 12
  %phi.bo68 = add nuw nsw i32 %phi.bo67, 28
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end.for.end_crit_edge
  %tt_local_entries.0.lcssa = phi i32 [ 28, %do.end.for.end_crit_edge ], [ %phi.bo68, %for.end.loopexit ]
  %num_vlan.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i49, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %for.end
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %10 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i56 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %add36 = add nuw nsw i32 %tt_local_entries.0.lcssa, %num_vlan.0.lcssa
  ret i32 %add36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_softif_vlan_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_wifi_hardif(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_hash_add(ptr noundef %hash, ptr nocapture noundef readonly %data, ptr noundef %data_node) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %hash, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %arrayidx58.i.i = getelementptr i8, ptr %data, i32 5
  %2 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %3 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %arrayidx63.i.i = getelementptr i8, ptr %data, i32 4
  %4 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %5 to i32
  %add65.i.i = add nuw nsw i32 %add61.i.i, %conv64.i.i
  %arrayidx67.i.i = getelementptr i8, ptr %data, i32 3
  %6 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %7 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038731
  %arrayidx72.i.i = getelementptr i8, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %9 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr i8, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %11 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  %conv83.i.i = zext i8 %13 to i32
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
  %vid.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %data, i32 0, i32 1
  %add1.i.i = add i32 %sub105.i.i, -559038735
  %arrayidx77.i5.i = getelementptr i8, ptr %vid.i, i32 1
  %14 = ptrtoint ptr %arrayidx77.i5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx77.i5.i, align 1
  %conv78.i6.i = zext i8 %15 to i32
  %shl79.i7.i = shl nuw nsw i32 %conv78.i6.i, 8
  %16 = ptrtoint ptr %vid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vid.i, align 1
  %conv83.i9.i = zext i8 %17 to i32
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
  %rem.i = urem i32 %sub105.i31.i, %1
  %18 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %19, i32 %rem.i
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 1
  %20 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list_locks, align 4
  %arrayidx1 = getelementptr %struct.spinlock, ptr %21, i32 %rem.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1) #11
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.02 = load ptr, ptr %arrayidx, align 4
  %tobool2.not3 = icmp eq ptr %node.02, null
  br i1 %tobool2.not3, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %23 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid.i, align 2
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %node.04 = phi ptr [ %node.02, %for.body.lr.ph ], [ %node.0, %for.cond.backedge.for.body_crit_edge ]
  %vid.i1 = getelementptr i8, ptr %node.04, i32 -2
  %25 = ptrtoint ptr %vid.i1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid.i1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %24)
  %cmp.i = icmp eq i16 %26, %24
  br i1 %cmp.i, label %land.rhs.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

land.rhs.i:                                       ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %node.04, i32 -8
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %xor.i.i.i.i = xor i32 %30, %28
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node.04, i32 -4
  %31 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %33 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx63.i.i, align 2
  %xor37.i.i.i.i = xor i16 %34, %32
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.unlock_crit_edge, label %land.rhs.i.for.cond.backedge_crit_edge

land.rhs.i.for.cond.backedge_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

land.rhs.i.unlock_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.cond.backedge:                                ; preds = %land.rhs.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %35 = ptrtoint ptr %node.04 to i32
  call void @__asan_load4_noabort(i32 %35)
  %node.0 = load ptr, ptr %node.04, align 4
  %tobool2.not = icmp eq ptr %node.0, null
  br i1 %tobool2.not, label %for.endthread-pre-split, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load ptr, ptr %arrayidx, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end.for.end_crit_edge
  %37 = phi ptr [ %.pr, %for.endthread-pre-split ], [ null, %if.end.for.end_crit_edge ]
  %38 = ptrtoint ptr %data_node to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %data_node, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %data_node, i32 0, i32 1
  %39 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !187
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %data_node, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %for.end.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

for.end.hlist_add_head_rcu.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %data_node, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %for.end.hlist_add_head_rcu.exit_crit_edge
  %generation = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %generation, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %generation, i32 1, i32 3, i32 1) #11
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %generation, ptr %generation, i32 1, ptr elementtype(i32) %generation) #11, !srcloc !188
  br label %unlock

unlock:                                           ; preds = %hlist_add_head_rcu.exit, %land.rhs.i.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %hlist_add_head_rcu.exit ], [ 1, %land.rhs.i.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1) #11
  br label %out

out:                                              ; preds = %unlock, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %unlock ], [ -1, %entry.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_local_entry_put(ptr noundef %tt_local_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tt_local_entry, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_local_entry, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %vlan.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_local_entry, i32 1, i32 0, i32 4
  %1 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vlan.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.batadv_tt_local_entry_release.exit_crit_edge, label %if.end.i.i

if.then.i.batadv_tt_local_entry_release.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_entry_release.exit

if.end.i.i:                                       ; preds = %if.then.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %2, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_tt_local_entry_release.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.batadv_tt_local_entry_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_entry_release.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %batadv_tt_local_entry_release.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_softif_vlan_release(ptr noundef %refcount.i.i) #11
  br label %batadv_tt_local_entry_release.exit

batadv_tt_local_entry_release.exit:               ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_tt_local_entry_release.exit_crit_edge, %if.then.i.batadv_tt_local_entry_release.exit_crit_edge
  %rcu.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_local_entry, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @batadv_tt_local_entry_free_rcu) #11
  br label %return

return:                                           ; preds = %batadv_tt_local_entry_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_local_event(ptr noundef %bat_priv, ptr nocapture noundef readonly %tt_local_entry, i8 noundef zeroext %event_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags3 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_local_entry, i32 0, i32 3
  %0 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags3, align 4
  %conv = trunc i16 %1 to i8
  %or = or i8 %conv, %event_flags
  %2 = load ptr, ptr @batadv_tt_change_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %change = getelementptr inbounds %struct.batadv_tt_change_node, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %change to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or, ptr %change, align 8
  %reserved = getelementptr inbounds %struct.batadv_tt_change_node, ptr %call, i32 0, i32 1, i32 1
  %4 = call ptr @memset(ptr %reserved, i32 0, i32 3)
  %addr = getelementptr inbounds %struct.batadv_tt_change_node, ptr %call, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %tt_local_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tt_local_entry, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %tt_local_entry, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.batadv_tt_change_node, ptr %call, i32 0, i32 1, i32 2, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr1.i, align 8
  %vid = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_local_entry, i32 0, i32 1
  %11 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid, align 2
  %vid13 = getelementptr inbounds %struct.batadv_tt_change_node, ptr %call, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %vid13 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %vid13, align 2
  %14 = and i8 %or, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  %changes_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %changes_list_lock) #11
  %changes_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 3
  %15 = ptrtoint ptr %changes_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %changes_list, align 4
  %cmp.not121 = icmp eq ptr %16, %changes_list
  br i1 %cmp.not121, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tobool15.not.not = xor i1 %tobool15.not, true
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.0122 = phi ptr [ %16, %for.body.lr.ph ], [ %safe.0123, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %entry1.0122 to i32
  call void @__asan_load4_noabort(i32 %17)
  %safe.0123 = load ptr, ptr %entry1.0122, align 4
  %change25 = getelementptr inbounds %struct.batadv_tt_change_node, ptr %entry1.0122, i32 0, i32 1
  %addr26 = getelementptr inbounds %struct.batadv_tt_change_node, ptr %entry1.0122, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %addr26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr26, align 4
  %20 = ptrtoint ptr %tt_local_entry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tt_local_entry, align 4
  %xor.i.i.i = xor i32 %21, %19
  %add.ptr.i.i.i = getelementptr %struct.batadv_tt_change_node, ptr %entry1.0122, i32 0, i32 1, i32 2, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i.i, align 2
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i, align 2
  %xor37.i.i.i = xor i16 %25, %23
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end32, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %26 = ptrtoint ptr %change25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %change25, align 4
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool37.not = icmp eq i8 %28, 0
  %brmerge = select i1 %tobool15.not.not, i1 true, i1 %tobool37.not
  %tobool37.not.not = xor i1 %tobool37.not, true
  %brmerge109 = select i1 %tobool15.not, i1 true, i1 %tobool37.not.not
  %or.cond = select i1 %brmerge, i1 %brmerge109, i1 false
  br i1 %or.cond, label %if.end49, label %del

if.end49:                                         ; preds = %if.end32
  %brmerge112 = select i1 %tobool15.not.not, i1 true, i1 %tobool37.not.not
  br i1 %brmerge112, label %if.end49.for.inc_crit_edge, label %if.then53

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %change25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or, ptr %change25, align 4
  br label %for.inc

del:                                              ; preds = %if.end32
  %call.i.i114 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0122) #11
  br i1 %call.i.i114, label %if.end.i.i, label %del.list_del.exit_crit_edge

del.list_del.exit_crit_edge:                      ; preds = %del
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %del
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0122, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %entry1.0122 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %entry1.0122, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %del.list_del.exit_crit_edge
  %36 = ptrtoint ptr %entry1.0122 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0122, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.0122, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %38 = load ptr, ptr @batadv_tt_change_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %entry1.0122) #11
  %39 = load ptr, ptr @batadv_tt_change_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %39, ptr noundef nonnull %call) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %changes_list_lock) #11
  %local_changes = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_changes, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %local_changes, i32 1, i32 3, i32 1) #11
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_changes, ptr %local_changes, i32 1, ptr elementtype(i32) %local_changes) #11, !srcloc !189
  br label %cleanup

for.inc:                                          ; preds = %if.then53, %if.end49.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %safe.0123, %changes_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %prev.i115 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 3, i32 1
  %41 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i115, align 4
  %call.i.i116 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %42, ptr noundef %changes_list) #11
  br i1 %call.i.i116, label %if.end.i.i117, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i117:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call, ptr %prev.i115, align 4
  %44 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %changes_list, ptr %call, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i117, %for.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %changes_list_lock) #11
  %local_changes72 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 2
  %call.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_changes72, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %local_changes72, i32 1, i32 3, i32 1) #11
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_changes72, ptr %local_changes72, i32 1, ptr elementtype(i32) %local_changes72) #11, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_tt_local_dump(ptr noundef %msg, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i54.i.i = alloca i32, align 4
  %tmp.i52.i.i = alloca i32, align 4
  %tmp.i50.i.i = alloca i16, align 2
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  %portid4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %portid4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %portid4, align 4
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
  %call6 = tail call ptr @dev_get_by_index(ptr noundef %6, i32 noundef %call5) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.dev_put.exit_crit_edge, label %lor.lhs.false

if.end.dev_put.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call6) #11
  br i1 %call8, label %if.end10, label %lor.lhs.false.do.body1.i_crit_edge

lor.lhs.false.do.body1.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.end10:                                         ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %call6, i32 2304
  %call12 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.do.body1.i_crit_edge, label %lor.lhs.false14

if.end10.do.body1.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

lor.lhs.false14:                                  ; preds = %if.end10
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %call12, i32 0, i32 1
  %16 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp.not = icmp eq i8 %17, 3
  br i1 %cmp.not, label %if.end17, label %lor.lhs.false14.if.end.i58_crit_edge

lor.lhs.false14.if.end.i58_crit_edge:             ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i58

if.end17:                                         ; preds = %lor.lhs.false14
  %local_hash = getelementptr i8, ptr %call6, i32 3232
  %18 = ptrtoint ptr %local_hash to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local_hash, align 4
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %21)
  %cmp1894 = icmp ult i32 %9, %21
  br i1 %cmp1894, label %while.body.lr.ph, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %if.end17
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %19, i32 0, i32 1
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %19, i32 0, i32 3
  %seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %prev_seq.i.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %bucket.096 = phi i32 [ %9, %while.body.lr.ph ], [ %inc, %if.end23.while.body_crit_edge ]
  %idx.095 = phi i32 [ %11, %while.body.lr.ph ], [ 0, %if.end23.while.body_crit_edge ]
  %22 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list_locks.i, align 4
  %arrayidx.i = getelementptr %struct.spinlock, ptr %23, i32 %bucket.096
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
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %19, align 4
  %arrayidx1.i = getelementptr %struct.hlist_head, ptr %28, i32 %bucket.096
  %29 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  %add.ptr.i55 = getelementptr i8, ptr %30, i32 -8
  %tobool3.not4953.i = icmp eq ptr %add.ptr.i55, null
  %tobool3.not49.i = or i1 %tobool.not.i, %tobool3.not4953.i
  br i1 %tobool3.not49.i, label %while.body.if.end23_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %common.051.i = phi ptr [ %add.ptr16.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i55, %while.body.for.body.i_crit_edge ]
  %idx.050.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.body.for.body.i_crit_edge ]
  %inc.i = add i32 %idx.050.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.050.i, i32 %idx.095)
  %cmp.i = icmp slt i32 %idx.050.i, %idx.095
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %last_seen.i.i = getelementptr inbounds %struct.batadv_tt_local_entry, ptr %common.051.i, i32 0, i32 1
  %32 = ptrtoint ptr %last_seen.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %last_seen.i.i, align 4
  %sub.i.i = sub i32 %31, %33
  %call.i.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i.i) #11
  %vid.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %common.051.i, i32 0, i32 1
  %34 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vid.i.i, align 2
  %call1.i.i = call ptr @batadv_softif_vlan_get(ptr noundef %add.ptr.i, i16 noundef zeroext %35) #11
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.i.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %tt.i.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call1.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %tt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tt.i.i, align 4
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call1.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.batadv_softif_vlan_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.i.batadv_softif_vlan_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_softif_vlan_put.exit.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #11
  br label %batadv_softif_vlan_put.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @batadv_softif_vlan_release(ptr noundef %refcount.i.i.i) #11
  br label %batadv_softif_vlan_put.exit.i.i

batadv_softif_vlan_put.exit.i.i:                  ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.batadv_softif_vlan_put.exit.i.i_crit_edge
  %39 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nlh, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nlmsg_seq.i.i, align 4
  %call3.i.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %13, i32 noundef %42, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 6) #11
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %batadv_softif_vlan_put.exit.i.i.batadv_tt_local_dump_bucket.exit.thread_crit_edge, label %if.end6.i.i

batadv_softif_vlan_put.exit.i.i.batadv_tt_local_dump_bucket.exit.thread_crit_edge: ; preds = %batadv_softif_vlan_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_dump_bucket.exit.thread

if.end6.i.i:                                      ; preds = %batadv_softif_vlan_put.exit.i.i
  %43 = ptrtoint ptr %prev_seq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prev_seq.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i.i.i, label %if.end6.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end6.i.i.genl_dump_check_consistent.exit.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genl_dump_check_consistent.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end6.i.i
  %45 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.not.i.i.i.i = icmp eq i32 %46, %44
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, label %if.then.i.i49.i.i

land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genl_dump_check_consistent.exit.i.i

if.then.i.i49.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %nlmsg_flags.i.i.i.i = getelementptr i8, ptr %call3.i.i, i32 -14
  %47 = ptrtoint ptr %nlmsg_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %nlmsg_flags.i.i.i.i, align 2
  %49 = or i16 %48, 16
  store i16 %49, ptr %nlmsg_flags.i.i.i.i, align 2
  br label %genl_dump_check_consistent.exit.i.i

genl_dump_check_consistent.exit.i.i:              ; preds = %if.then.i.i49.i.i, %land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, %if.end6.i.i.genl_dump_check_consistent.exit.i.i_crit_edge
  %50 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %seq.i, align 4
  %52 = ptrtoint ptr %prev_seq.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %prev_seq.i.i.i.i, align 4
  %call7.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %common.051.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false.i.i, label %genl_dump_check_consistent.exit.i.i.if.then.i.i.i_crit_edge

genl_dump_check_consistent.exit.i.i.if.then.i.i.i_crit_edge: ; preds = %genl_dump_check_consistent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false.i.i:                                ; preds = %genl_dump_check_consistent.exit.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #11
  %53 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %37, ptr %tmp.i.i.i, align 4
  %call.i.i40.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 19, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i40.i, 0
  br i1 %tobool10.not.i.i, label %lor.lhs.false11.i.i, label %lor.lhs.false.i.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false11.i.i:                              ; preds = %lor.lhs.false.i.i
  %54 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vid.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i50.i.i) #11
  %56 = ptrtoint ptr %tmp.i50.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %tmp.i50.i.i, align 2
  %call.i51.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 20, i32 noundef 2, ptr noundef nonnull %tmp.i50.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i50.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i51.i.i, 0
  br i1 %tobool14.not.i.i, label %lor.lhs.false15.i.i, label %lor.lhs.false11.i.i.if.then.i.i.i_crit_edge

lor.lhs.false11.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false15.i.i:                              ; preds = %lor.lhs.false11.i.i
  %flags.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %common.051.i, i32 0, i32 3
  %57 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flags.i.i, align 4
  %conv.i.i = zext i16 %58 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i52.i.i) #11
  %59 = ptrtoint ptr %tmp.i52.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv.i.i, ptr %tmp.i52.i.i, align 4
  %call.i53.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i52.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i52.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i.i)
  %tobool17.not.i.i = icmp eq i32 %call.i53.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end19.i.i, label %lor.lhs.false15.i.i.if.then.i.i.i_crit_edge

lor.lhs.false15.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end19.i.i:                                     ; preds = %lor.lhs.false15.i.i
  %60 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags.i.i, align 4
  %62 = and i16 %61, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool22.not.i.i = icmp eq i16 %62, 0
  br i1 %tobool22.not.i.i, label %land.lhs.true.i.i, label %if.end19.i.i.if.end26.i.i_crit_edge

if.end19.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i

land.lhs.true.i.i:                                ; preds = %if.end19.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i54.i.i) #11
  %63 = ptrtoint ptr %tmp.i54.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call.i.i, ptr %tmp.i54.i.i, align 4
  %call.i55.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %tmp.i54.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i54.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i.i)
  %tobool24.not.i.i = icmp eq i32 %call.i55.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true.i.i.if.end26.i.i_crit_edge, label %land.lhs.true.i.i.if.then.i.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

land.lhs.true.i.i.if.end26.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %land.lhs.true.i.i.if.end26.i.i_crit_edge, %if.end19.i.i.if.end26.i.i_crit_edge
  %add.ptr1.i.i.i = getelementptr i8, ptr %call3.i.i, i32 -20
  %64 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %66 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %add.ptr1.i.i.i, align 4
  br label %for.inc.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.if.then.i.i.i_crit_edge, %lor.lhs.false15.i.i.if.then.i.i.i_crit_edge, %lor.lhs.false11.i.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i.i.i_crit_edge, %genl_dump_check_consistent.exit.i.i.if.then.i.i.i_crit_edge
  %add.ptr1.i57.i.i = getelementptr i8, ptr %call3.i.i, i32 -20
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr1.i57.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.batadv_tt_local_dump_bucket.exit.thread_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.batadv_tt_local_dump_bucket.exit.thread_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_dump_bucket.exit.thread

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  %67 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %68, %add.ptr1.i57.i.i
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, !prof !180

if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %69 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i57.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i.i) #11
  br label %batadv_tt_local_dump_bucket.exit.thread

for.inc.i:                                        ; preds = %if.end26.i.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %hash_entry.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %common.051.i, i32 0, i32 2
  %71 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hash_entry.i, align 4
  %tobool12.not.i = icmp eq ptr %72, null
  %add.ptr16.i = getelementptr i8, ptr %72, i32 -8
  %tobool3.not62.i = icmp eq ptr %add.ptr16.i, null
  %tobool3.not.i = or i1 %tobool12.not.i, %tobool3.not62.i
  br i1 %tobool3.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

batadv_tt_local_dump_bucket.exit.thread:          ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.batadv_tt_local_dump_bucket.exit.thread_crit_edge, %batadv_softif_vlan_put.exit.i.i.batadv_tt_local_dump_bucket.exit.thread_crit_edge
  %73 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %list_locks.i, align 4
  %arrayidx21.i103 = getelementptr %struct.spinlock, ptr %74, i32 %bucket.096
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx21.i103) #11
  br label %out

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %while.body.if.end23_crit_edge
  %75 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %list_locks.i, align 4
  %arrayidx21.i = getelementptr %struct.spinlock, ptr %76, i32 %bucket.096
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx21.i) #11
  %inc = add nuw i32 %bucket.096, 1
  %77 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size, align 4
  %cmp18 = icmp ult i32 %inc, %78
  br i1 %cmp18, label %if.end23.while.body_crit_edge, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

out:                                              ; preds = %if.end23.out_crit_edge, %batadv_tt_local_dump_bucket.exit.thread, %if.end17.out_crit_edge
  %bucket.0.lcssa = phi i32 [ %9, %if.end17.out_crit_edge ], [ %bucket.096, %batadv_tt_local_dump_bucket.exit.thread ], [ %inc, %if.end23.out_crit_edge ]
  %idx.1 = phi i32 [ %11, %if.end17.out_crit_edge ], [ %idx.050.i, %batadv_tt_local_dump_bucket.exit.thread ], [ 0, %if.end23.out_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  br label %if.end.i58

if.end.i58:                                       ; preds = %out, %lor.lhs.false14.if.end.i58_crit_edge
  %bucket.179 = phi i32 [ %bucket.0.lcssa, %out ], [ %9, %lor.lhs.false14.if.end.i58_crit_edge ]
  %ret.078 = phi i32 [ %80, %out ], [ -2, %lor.lhs.false14.if.end.i58_crit_edge ]
  %idx.276 = phi i32 [ %idx.1, %out ], [ %11, %lor.lhs.false14.if.end.i58_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call12, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i57, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.body1.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.do.body1.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %do.body1.i

if.then.i.i:                                      ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @batadv_hardif_release(ptr noundef %refcount.i) #11
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.body1.i_crit_edge, %if.end10.do.body1.i_crit_edge, %lor.lhs.false.do.body1.i_crit_edge
  %idx.26787 = phi i32 [ %11, %if.end10.do.body1.i_crit_edge ], [ %11, %lor.lhs.false.do.body1.i_crit_edge ], [ %idx.276, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %idx.276, %if.then10.i.i.i.i.i ], [ %idx.276, %if.then.i.i ]
  %ret.06885 = phi i32 [ -2, %if.end10.do.body1.i_crit_edge ], [ -19, %lor.lhs.false.do.body1.i_crit_edge ], [ %ret.078, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %ret.078, %if.then10.i.i.i.i.i ], [ %ret.078, %if.then.i.i ]
  %bucket.16983 = phi i32 [ %9, %if.end10.do.body1.i_crit_edge ], [ %9, %lor.lhs.false.do.body1.i_crit_edge ], [ %bucket.179, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %bucket.179, %if.then10.i.i.i.i.i ], [ %bucket.179, %if.then.i.i ]
  %82 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 118
  %83 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcpu_refcnt.i, align 4
  %85 = ptrtoint ptr %84 to i32
  %86 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cpu.i, align 4
  %arrayidx.i60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i60, align 4
  %add.i = add i32 %91, %85
  %92 = inttoptr i32 %add.i to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %add13.i = add i32 %94, -1
  store i32 %add13.i, ptr %92, align 4
  %95 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i = and i32 %95, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !180

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #11, !srcloc !186
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end.dev_put.exit_crit_edge
  %idx.26788 = phi i32 [ %idx.26787, %do.end30.i ], [ %11, %if.end.dev_put.exit_crit_edge ]
  %ret.06886 = phi i32 [ %ret.06885, %do.end30.i ], [ -19, %if.end.dev_put.exit_crit_edge ]
  %bucket.16984 = phi i32 [ %bucket.16983, %do.end30.i ], [ %9, %if.end.dev_put.exit_crit_edge ]
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %bucket.16984, ptr %7, align 4
  %97 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %idx.26788, ptr %arrayidx1, align 4
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.06886, %dev_put.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_netlink_get_ifindex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_softif_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 110, ptr noundef nonnull @.str.31) #11
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
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !174

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
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !174

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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %18 = call i32 @llvm.read_register.i32(metadata !162) #11
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
define dso_local zeroext i16 @batadv_tt_local_remove(ptr noundef %bat_priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid, ptr noundef %message, i1 noundef zeroext %roaming) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %local_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_hash.i, align 4
  %call.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags1, align 4
  br i1 %roaming, label %if.then3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = or i16 %3, 2
  %5 = ptrtoint ptr %flags1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %flags1, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end.if.end10_crit_edge
  %flags.0.off0 = phi i8 [ 3, %if.then3 ], [ 1, %if.end.if.end10_crit_edge ]
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags1, align 4
  %8 = and i16 %7, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool14.not = icmp eq i16 %8, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  tail call fastcc void @batadv_tt_local_event(ptr noundef %bat_priv, ptr noundef nonnull %call.i, i8 noundef zeroext %flags.0.off0) #11
  %9 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags1, align 4
  %11 = or i16 %10, 1024
  store i16 %11, ptr %flags1, align 4
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then15.out_crit_edge, label %if.then.i

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %vid.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %and.i.i = and i32 %conv.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 4095
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 -1, i32 %and2.i.i
  %call7.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.33, ptr noundef nonnull %call.i, i32 noundef %retval.0.i.i, ptr noundef %message) #11
  br label %out

if.end16:                                         ; preds = %if.end10
  tail call fastcc void @batadv_tt_local_event(ptr noundef %bat_priv, ptr noundef nonnull %call.i, i8 noundef zeroext 1)
  %16 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %local_hash.i, align 4
  %call18 = tail call fastcc ptr @batadv_hash_remove(ptr noundef %17, ptr noundef nonnull %call.i)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end16.out_crit_edge, label %if.end21

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call18, i32 -8
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %if.end21, %if.end16.out_crit_edge, %if.then.i, %if.then15.out_crit_edge, %entry.out_crit_edge
  %curr_flags.0 = phi i16 [ %3, %if.end21 ], [ %3, %if.end16.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ %3, %if.then15.out_crit_edge ], [ %3, %if.then.i ]
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef %call.i)
  ret i16 %curr_flags.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_hash_remove(ptr noundef %hash, ptr nocapture noundef readonly %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %arrayidx58.i.i = getelementptr i8, ptr %data, i32 5
  %2 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %3 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %arrayidx63.i.i = getelementptr i8, ptr %data, i32 4
  %4 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %5 to i32
  %add65.i.i = add nuw nsw i32 %add61.i.i, %conv64.i.i
  %arrayidx67.i.i = getelementptr i8, ptr %data, i32 3
  %6 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %7 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038731
  %arrayidx72.i.i = getelementptr i8, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %9 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr i8, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %11 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  %conv83.i.i = zext i8 %13 to i32
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
  %vid.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %data, i32 0, i32 1
  %add1.i.i = add i32 %sub105.i.i, -559038735
  %arrayidx77.i5.i = getelementptr i8, ptr %vid.i, i32 1
  %14 = ptrtoint ptr %arrayidx77.i5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx77.i5.i, align 1
  %conv78.i6.i = zext i8 %15 to i32
  %shl79.i7.i = shl nuw nsw i32 %conv78.i6.i, 8
  %16 = ptrtoint ptr %vid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vid.i, align 1
  %conv83.i9.i = zext i8 %17 to i32
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
  %rem.i = urem i32 %sub105.i31.i, %1
  %18 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %19, i32 %rem.i
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 1
  %20 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list_locks, align 4
  %arrayidx1 = getelementptr %struct.spinlock, ptr %21, i32 %rem.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1) #11
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.04 = load ptr, ptr %arrayidx, align 4
  %tobool.not5 = icmp eq ptr %node.04, null
  br i1 %tobool.not5, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %23 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid.i, align 2
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %node.06 = phi ptr [ %node.04, %for.body.lr.ph ], [ %node.0, %for.cond.backedge.for.body_crit_edge ]
  %vid.i1 = getelementptr i8, ptr %node.06, i32 -2
  %25 = ptrtoint ptr %vid.i1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid.i1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %24)
  %cmp.i = icmp eq i16 %26, %24
  br i1 %cmp.i, label %land.rhs.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

land.rhs.i:                                       ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %node.06, i32 -8
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %xor.i.i.i.i = xor i32 %30, %28
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node.06, i32 -4
  %31 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %33 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx63.i.i, align 2
  %xor37.i.i.i.i = xor i16 %34, %32
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end, label %land.rhs.i.for.cond.backedge_crit_edge

land.rhs.i.for.cond.backedge_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.rhs.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %35 = ptrtoint ptr %node.06 to i32
  call void @__asan_load4_noabort(i32 %35)
  %node.0 = load ptr, ptr %node.06, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %land.rhs.i
  %36 = ptrtoint ptr %node.06 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %node.06, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %node.06, i32 0, i32 1
  %38 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev2.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %37, ptr %39, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end.hlist_del_rcu.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end.hlist_del_rcu.exit_crit_edge
  %42 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %generation = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %generation, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %generation, i32 1, i32 3, i32 1) #11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %generation, ptr %generation, i32 1, ptr elementtype(i32) %generation) #11, !srcloc !188
  br label %for.end

for.end:                                          ; preds = %hlist_del_rcu.exit, %for.cond.backedge.for.end_crit_edge, %entry.for.end_crit_edge
  %node.03 = phi ptr [ %node.06, %hlist_del_rcu.exit ], [ null, %entry.for.end_crit_edge ], [ null, %for.cond.backedge.for.end_crit_edge ]
  %44 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list_locks, align 4
  %arrayidx4 = getelementptr %struct.spinlock, ptr %45, i32 %rem.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx4) #11
  ret ptr %node.03
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_tt_global_dump(ptr noundef %msg, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i77.i.i.i = alloca i32, align 4
  %tmp.i75.i.i.i = alloca i16, align 2
  %tmp.i73.i.i.i = alloca i32, align 4
  %tmp.i71.i.i.i = alloca i8, align 1
  %tmp.i.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
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
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  %portid5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %portid5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %portid5, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %16 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlh, align 4
  %call6 = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %17, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @dev_get_by_index(ptr noundef %6, i32 noundef %call6) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.dev_put.exit_crit_edge, label %lor.lhs.false

if.end.dev_put.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

lor.lhs.false:                                    ; preds = %if.end
  %call9 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call7) #11
  br i1 %call9, label %if.end11, label %lor.lhs.false.do.body1.i_crit_edge

lor.lhs.false.do.body1.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.end11:                                         ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %call7, i32 2304
  %call13 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.do.body1.i_crit_edge, label %lor.lhs.false15

if.end11.do.body1.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

lor.lhs.false15:                                  ; preds = %if.end11
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %call13, i32 0, i32 1
  %18 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.not = icmp eq i8 %19, 3
  br i1 %cmp.not, label %if.end18, label %lor.lhs.false15.if.end.i_crit_edge

lor.lhs.false15.if.end.i_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end18:                                         ; preds = %lor.lhs.false15
  %global_hash = getelementptr i8, ptr %call7, i32 3236
  %20 = ptrtoint ptr %global_hash to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %global_hash, align 4
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %23)
  %cmp19129 = icmp ult i32 %9, %23
  br i1 %cmp19129, label %while.body.lr.ph, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %if.end18
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  %bucket.0132 = phi i32 [ %9, %while.body.lr.ph ], [ %inc, %if.end26.while.body_crit_edge ]
  %sub.0131 = phi i32 [ %13, %while.body.lr.ph ], [ 0, %if.end26.while.body_crit_edge ]
  %idx.0130 = phi i32 [ %11, %while.body.lr.ph ], [ 0, %if.end26.while.body_crit_edge ]
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %arrayidx21 = getelementptr %struct.hlist_head, ptr %25, i32 %bucket.0132
  %26 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlmsg_seq, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
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
  %.b45.i = load i1, ptr @batadv_tt_global_dump_bucket.__warned, align 1
  br i1 %.b45.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_global_dump_bucket.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1915, ptr noundef nonnull @.str.11) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx21, align 4
  %tobool10.not.i = icmp eq ptr %35, null
  %add.ptr.i63 = getelementptr i8, ptr %35, i32 -8
  %tobool12.not8691.i = icmp eq ptr %add.ptr.i63, null
  %tobool12.not86.i = or i1 %tobool10.not.i, %tobool12.not8691.i
  br i1 %tobool12.not86.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %sub.1 = phi i32 [ %sub.2, %for.inc.i.for.body.i_crit_edge ], [ %sub.0131, %do.end.i.for.body.i_crit_edge ]
  %common.088.i = phi ptr [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i63, %do.end.i.for.body.i_crit_edge ]
  %idx.087.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %inc.i = add i32 %idx.087.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.087.i, i32 %idx.0130)
  %cmp.i = icmp slt i32 %idx.087.i, %idx.0130
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %if.end14.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %call.i47.i = call fastcc ptr @batadv_transtable_best_orig(ptr noundef %add.ptr.i, ptr noundef nonnull %common.088.i) #11
  %orig_list.i.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %common.088.i, i32 0, i32 1
  %call1.i48.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call1.i48.i, 0
  br i1 %tobool.not.i49.i, label %land.lhs.true.i50.i, label %if.end14.i.do.end.i.i_crit_edge

if.end14.i.do.end.i.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i50.i:                              ; preds = %if.end14.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i50.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i50.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i50.i
  %.b57.i.i = load i1, ptr @batadv_tt_global_dump_entry.__warned, align 1
  br i1 %.b57.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i51.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i51.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_global_dump_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1877, ptr noundef nonnull @.str.11) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i51.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i50.i.do.end.i.i_crit_edge, %if.end14.i.do.end.i.i_crit_edge
  %36 = ptrtoint ptr %orig_list.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %orig_list.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %37, null
  %add.ptr15.i.i = getelementptr i8, ptr %37, i32 -8
  %tobool16.not6471.i.i = icmp eq ptr %add.ptr15.i.i, null
  %tobool16.not64.i.i = or i1 %tobool12.not.i.i, %tobool16.not6471.i.i
  br i1 %tobool16.not64.i.i, label %do.end.i.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.i

do.end.i.i.for.inc.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %do.end.i.i
  %flags1.i.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %common.088.i, i32 0, i32 3
  %vid.i.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %common.088.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %orig_entry.066.i.i = phi ptr [ %add.ptr15.i.i, %for.body.lr.ph.i.i ], [ %add.ptr37.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sub.065.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %sub.065.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.065.i.i, i32 %sub.1)
  %cmp.i.i = icmp slt i32 %sub.065.i.i, %sub.1
  br i1 %cmp.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end18.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end18.i.i:                                     ; preds = %for.body.i.i
  %cmp19.i.i = icmp eq ptr %orig_entry.066.i.i, %call.i47.i
  %38 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags1.i.i.i, align 4
  %40 = and i16 %39, -241
  %flags2.i.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.066.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %flags2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags2.i.i.i, align 1
  %conv3.i.i.i = zext i8 %42 to i16
  %or.i.i.i = or i16 %40, %conv3.i.i.i
  %43 = ptrtoint ptr %orig_entry.066.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %orig_entry.066.i.i, align 4
  %45 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vid.i.i.i, align 2
  %call.i.i.i = call ptr @batadv_orig_node_vlan_get(ptr noundef %44, i16 noundef zeroext %46) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end18.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i.i

if.end18.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i.i.i:                                   ; preds = %if.end18.i.i
  %tt.i.i.i = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %tt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tt.i.i.i, align 4
  %refcount.i.i.i.i = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i.i, ptr %refcount.i.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.batadv_orig_node_vlan_put.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.i.i.batadv_orig_node_vlan_put.exit.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_vlan_put.exit.i.i.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i.i, i32 noundef 3) #11
  br label %batadv_orig_node_vlan_put.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @batadv_orig_node_vlan_release(ptr noundef %refcount.i.i.i.i) #11
  br label %batadv_orig_node_vlan_put.exit.i.i.i

batadv_orig_node_vlan_put.exit.i.i.i:             ; preds = %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.batadv_orig_node_vlan_put.exit.i.i.i_crit_edge
  %call6.i.i.i = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %15, i32 noundef %29, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 7) #11
  %tobool7.not.i.i.i = icmp eq ptr %call6.i.i.i, null
  br i1 %tobool7.not.i.i.i, label %batadv_orig_node_vlan_put.exit.i.i.i.if.then17.i_crit_edge, label %if.end9.i.i.i

batadv_orig_node_vlan_put.exit.i.i.i.if.then17.i_crit_edge: ; preds = %batadv_orig_node_vlan_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i

if.end9.i.i.i:                                    ; preds = %batadv_orig_node_vlan_put.exit.i.i.i
  %50 = ptrtoint ptr %orig_entry.066.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %orig_entry.066.i.i, align 4
  %last_ttvn11.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %51, i32 0, i32 15
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn11.i.i.i, i32 noundef 4) #11
  %52 = ptrtoint ptr %last_ttvn11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %last_ttvn11.i.i.i, align 4
  %conv13.i.i.i = trunc i32 %53 to i8
  %call14.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %common.088.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %call14.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end9.i.i.i.if.then.i.i.i.i_crit_edge

if.end9.i.i.i.if.then.i.i.i.i_crit_edge:          ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end9.i.i.i
  %54 = ptrtoint ptr %orig_entry.066.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %orig_entry.066.i.i, align 4
  %call19.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 9, i32 noundef 6, ptr noundef %55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %lor.lhs.false21.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then.i.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false21.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %ttvn.i.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.066.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %ttvn.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ttvn.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i.i) #11
  %58 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %tmp.i.i.i.i, align 1
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 17, i32 noundef 1, ptr noundef nonnull %tmp.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %lor.lhs.false24.i.i.i, label %lor.lhs.false21.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false21.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false21.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false24.i.i.i:                            ; preds = %lor.lhs.false21.i.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i71.i.i.i) #11
  %59 = ptrtoint ptr %tmp.i71.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv13.i.i.i, ptr %tmp.i71.i.i.i, align 1
  %call.i72.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 18, i32 noundef 1, ptr noundef nonnull %tmp.i71.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i71.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %call.i72.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %lor.lhs.false27.i.i.i, label %lor.lhs.false24.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false24.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false27.i.i.i:                            ; preds = %lor.lhs.false24.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i73.i.i.i) #11
  %60 = ptrtoint ptr %tmp.i73.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %48, ptr %tmp.i73.i.i.i, align 4
  %call.i74.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 19, i32 noundef 4, ptr noundef nonnull %tmp.i73.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i73.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %call.i74.i.i.i, 0
  br i1 %tobool29.not.i.i.i, label %lor.lhs.false30.i.i.i, label %lor.lhs.false27.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false27.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false30.i.i.i:                            ; preds = %lor.lhs.false27.i.i.i
  %61 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vid.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i75.i.i.i) #11
  %63 = ptrtoint ptr %tmp.i75.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %tmp.i75.i.i.i, align 2
  %call.i76.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 20, i32 noundef 2, ptr noundef nonnull %tmp.i75.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i75.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i.i.i)
  %tobool33.not.i.i.i = icmp eq i32 %call.i76.i.i.i, 0
  br i1 %tobool33.not.i.i.i, label %lor.lhs.false34.i.i.i, label %lor.lhs.false30.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false30.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false30.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

lor.lhs.false34.i.i.i:                            ; preds = %lor.lhs.false30.i.i.i
  %conv35.i.i.i = zext i16 %or.i.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i77.i.i.i) #11
  %64 = ptrtoint ptr %tmp.i77.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv35.i.i.i, ptr %tmp.i77.i.i.i, align 4
  %call.i78.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i77.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i77.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %call.i78.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %if.end39.i.i.i, label %lor.lhs.false34.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false34.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false34.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

if.end39.i.i.i:                                   ; preds = %lor.lhs.false34.i.i.i
  br i1 %cmp19.i.i, label %land.lhs.true.i.i.i, label %if.end39.i.i.i.if.end45.i.i.i_crit_edge

if.end39.i.i.i.if.end45.i.i.i_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end39.i.i.i
  %call.i79.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 22, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i.i.i)
  %tobool43.not.i.i.i = icmp eq i32 %call.i79.i.i.i, 0
  br i1 %tobool43.not.i.i.i, label %land.lhs.true.i.i.i.if.end45.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.then.i.i.i.i_crit_edge

land.lhs.true.i.i.i.if.then.i.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

land.lhs.true.i.i.i.if.end45.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i.i.i

if.end45.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end45.i.i.i_crit_edge, %if.end39.i.i.i.if.end45.i.i.i_crit_edge
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %call6.i.i.i, i32 -20
  %65 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %67 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub.ptr.sub.i.i.i.i.i, ptr %add.ptr1.i.i.i.i, align 4
  br label %for.inc.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false34.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false30.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false27.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false24.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false21.i.i.i.if.then.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then.i.i.i.i_crit_edge, %if.end9.i.i.i.if.then.i.i.i.i_crit_edge
  %add.ptr1.i81.i.i.i = getelementptr i8, ptr %call6.i.i.i, i32 -20
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %add.ptr1.i81.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.if.then17.i_crit_edge, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.if.then17.i_crit_edge:            ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %68 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp ugt ptr %69, %add.ptr1.i81.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge, !prof !180

if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %70 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %add.ptr1.i81.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i.i.i) #11
  br label %if.then17.i

for.inc.i.i:                                      ; preds = %if.end45.i.i.i, %if.end18.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %list.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.066.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %list.i.i, align 4
  %tobool33.not.i.i = icmp eq ptr %73, null
  %add.ptr37.i.i = getelementptr i8, ptr %73, i32 -8
  %tobool16.not74.i.i = icmp eq ptr %add.ptr37.i.i, null
  %tobool16.not.i.i = or i1 %tobool33.not.i.i, %tobool16.not74.i.i
  br i1 %tobool16.not.i.i, label %for.inc.i.i.for.inc.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.if.then17.i_crit_edge, %batadv_orig_node_vlan_put.exit.i.i.i.if.then17.i_crit_edge
  %call.i52.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i52.i, label %if.then17.i.batadv_tt_global_dump_bucket.exit_crit_edge, label %land.lhs.true.i55.i

if.then17.i.batadv_tt_global_dump_bucket.exit_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_dump_bucket.exit

land.lhs.true.i55.i:                              ; preds = %if.then17.i
  %call1.i53.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.batadv_tt_global_dump_bucket.exit_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.batadv_tt_global_dump_bucket.exit_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_dump_bucket.exit

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.batadv_tt_global_dump_bucket.exit_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.batadv_tt_global_dump_bucket.exit_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_dump_bucket.exit

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %batadv_tt_global_dump_bucket.exit

for.inc.i:                                        ; preds = %for.inc.i.i.for.inc.i_crit_edge, %do.end.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sub.2 = phi i32 [ %sub.1, %for.body.i.for.inc.i_crit_edge ], [ 0, %do.end.i.i.for.inc.i_crit_edge ], [ 0, %for.inc.i.i.for.inc.i_crit_edge ]
  %hash_entry.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %common.088.i, i32 0, i32 2
  %74 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %hash_entry.i, align 4
  %tobool27.not.i = icmp eq ptr %75, null
  %add.ptr31.i = getelementptr i8, ptr %75, i32 -8
  %tobool12.not106.i = icmp eq ptr %add.ptr31.i, null
  %tobool12.not.i = or i1 %tobool27.not.i, %tobool12.not106.i
  br i1 %tobool12.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i62.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i62.i, label %for.end.i.if.end26_crit_edge, label %land.lhs.true.i65.i

for.end.i.if.end26_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true.i65.i:                              ; preds = %for.end.i
  %call1.i63.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63.i)
  %tobool.not.i64.i = icmp eq i32 %call1.i63.i, 0
  br i1 %tobool.not.i64.i, label %land.lhs.true.i65.i.if.end26_crit_edge, label %land.lhs.true2.i67.i

land.lhs.true.i65.i.if.end26_crit_edge:           ; preds = %land.lhs.true.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true2.i67.i:                             ; preds = %land.lhs.true.i65.i
  %.b4.i66.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66.i, label %land.lhs.true2.i67.i.if.end26_crit_edge, label %if.then.i68.i

land.lhs.true2.i67.i.if.end26_crit_edge:          ; preds = %land.lhs.true2.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then.i68.i:                                    ; preds = %land.lhs.true2.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %if.end26

batadv_tt_global_dump_bucket.exit:                ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.batadv_tt_global_dump_bucket.exit_crit_edge, %land.lhs.true.i55.i.batadv_tt_global_dump_bucket.exit_crit_edge, %if.then17.i.batadv_tt_global_dump_bucket.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %76 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i59.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i.i = add i32 %79, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i60.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %out

if.end26:                                         ; preds = %if.then.i68.i, %land.lhs.true2.i67.i.if.end26_crit_edge, %land.lhs.true.i65.i.if.end26_crit_edge, %for.end.i.if.end26_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %80 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i69.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i69.i to ptr
  %preempt_count.i.i.i.i70.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i70.i, align 4
  %sub.i.i.i71.i = add i32 %83, -1
  store volatile i32 %sub.i.i.i71.i, ptr %preempt_count.i.i.i.i70.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc = add nuw i32 %bucket.0132, 1
  %84 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size, align 4
  %cmp19 = icmp ult i32 %inc, %85
  br i1 %cmp19, label %if.end26.while.body_crit_edge, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

out:                                              ; preds = %if.end26.out_crit_edge, %batadv_tt_global_dump_bucket.exit, %if.end18.out_crit_edge
  %bucket.0123 = phi i32 [ %bucket.0132, %batadv_tt_global_dump_bucket.exit ], [ %9, %if.end18.out_crit_edge ], [ %inc, %if.end26.out_crit_edge ]
  %idx.2 = phi i32 [ %idx.087.i, %batadv_tt_global_dump_bucket.exit ], [ %11, %if.end18.out_crit_edge ], [ 0, %if.end26.out_crit_edge ]
  %sub.4 = phi i32 [ %sub.065.i.i, %batadv_tt_global_dump_bucket.exit ], [ %13, %if.end18.out_crit_edge ], [ 0, %if.end26.out_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %86 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %out, %lor.lhs.false15.if.end.i_crit_edge
  %bucket.196 = phi i32 [ %bucket.0123, %out ], [ %9, %lor.lhs.false15.if.end.i_crit_edge ]
  %ret.095 = phi i32 [ %87, %out ], [ -2, %lor.lhs.false15.if.end.i_crit_edge ]
  %sub.593 = phi i32 [ %sub.4, %out ], [ %13, %lor.lhs.false15.if.end.i_crit_edge ]
  %idx.392 = phi i32 [ %idx.2, %out ], [ %11, %lor.lhs.false15.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call13, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i65, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.do.body1.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.do.body1.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %do.body1.i

if.then.i.i65:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @batadv_hardif_release(ptr noundef %refcount.i) #11
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i.i65, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.do.body1.i_crit_edge, %if.end11.do.body1.i_crit_edge, %lor.lhs.false.do.body1.i_crit_edge
  %idx.381107 = phi i32 [ %11, %if.end11.do.body1.i_crit_edge ], [ %11, %lor.lhs.false.do.body1.i_crit_edge ], [ %idx.392, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %idx.392, %if.then10.i.i.i.i.i ], [ %idx.392, %if.then.i.i65 ]
  %sub.582105 = phi i32 [ %13, %if.end11.do.body1.i_crit_edge ], [ %13, %lor.lhs.false.do.body1.i_crit_edge ], [ %sub.593, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %sub.593, %if.then10.i.i.i.i.i ], [ %sub.593, %if.then.i.i65 ]
  %ret.083103 = phi i32 [ -2, %if.end11.do.body1.i_crit_edge ], [ -19, %lor.lhs.false.do.body1.i_crit_edge ], [ %ret.095, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %ret.095, %if.then10.i.i.i.i.i ], [ %ret.095, %if.then.i.i65 ]
  %bucket.184101 = phi i32 [ %9, %if.end11.do.body1.i_crit_edge ], [ %9, %lor.lhs.false.do.body1.i_crit_edge ], [ %bucket.196, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %bucket.196, %if.then10.i.i.i.i.i ], [ %bucket.196, %if.then.i.i65 ]
  %89 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 118
  %90 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pcpu_refcnt.i, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %98, %92
  %99 = inttoptr i32 %add.i to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add13.i = add i32 %101, -1
  store i32 %add13.i, ptr %99, align 4
  %102 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !180

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %89) #11, !srcloc !186
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end.dev_put.exit_crit_edge
  %idx.381108 = phi i32 [ %idx.381107, %do.end30.i ], [ %11, %if.end.dev_put.exit_crit_edge ]
  %sub.582106 = phi i32 [ %sub.582105, %do.end30.i ], [ %13, %if.end.dev_put.exit_crit_edge ]
  %ret.083104 = phi i32 [ %ret.083103, %do.end30.i ], [ -19, %if.end.dev_put.exit_crit_edge ]
  %bucket.184102 = phi i32 [ %bucket.184101, %do.end30.i ], [ %9, %if.end.dev_put.exit_crit_edge ]
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %bucket.184102, ptr %7, align 4
  %104 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %idx.381108, ptr %arrayidx1, align 4
  %105 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub.582106, ptr %arrayidx2, align 4
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.083104, %dev_put.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tt_global_del_orig(ptr noundef %bat_priv, ptr noundef %orig_node, i32 noundef %match_vid, ptr noundef %message) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %global_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %global_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_hash, align 4
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
  %cmp81.not = icmp eq i32 %3, 0
  br i1 %cmp81.not, label %for.cond.preheader.for.end41_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end41_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %match_vid)
  %cmp9 = icmp sgt i32 %match_vid, -1
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.082
  %6 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_locks, align 4
  %arrayidx1 = getelementptr %struct.spinlock, ptr %7, i32 %i.082
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1) #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -8
  %tobool5.not7983 = icmp eq ptr %add.ptr, null
  %tobool5.not79 = or i1 %tobool2.not, %tobool5.not7983
  br i1 %tobool5.not79, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %tt_common_entry.080 = phi ptr [ %add.ptr36, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.080, i32 0, i32 2
  %10 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_entry, align 4
  br i1 %cmp9, label %land.lhs.true, label %land.rhs.if.end14_crit_edge

land.rhs.if.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

land.lhs.true:                                    ; preds = %land.rhs
  %vid10 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.080, i32 0, i32 1
  %12 = ptrtoint ptr %vid10 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid10, align 2
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %match_vid)
  %cmp11.not = icmp eq i32 %conv, %match_vid
  br i1 %cmp11.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %land.rhs.if.end14_crit_edge
  tail call fastcc void @batadv_tt_global_del_orig_node(ptr noundef %bat_priv, ptr noundef nonnull %tt_common_entry.080, ptr noundef %orig_node, ptr noundef %message)
  %orig_list = getelementptr %struct.batadv_tt_global_entry, ptr %tt_common_entry.080, i32 0, i32 1
  %14 = ptrtoint ptr %orig_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %orig_list, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %if.then19, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then19:                                        ; preds = %if.end14
  %vid20 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.080, i32 0, i32 1
  %16 = ptrtoint ptr %vid20 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vid20, align 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %18 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then19.if.end27_crit_edge, label %if.then23

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %17 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i75 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i75, i32 -1, i32 %and2.i
  %call26 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.13, ptr noundef nonnull %tt_common_entry.080, i32 noundef %retval.0.i, ptr noundef %message) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then19.if.end27_crit_edge
  %20 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hash_entry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.080, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pprev2.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %21, ptr %23, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end27.if.end.i_crit_edge, label %do.body13.i.i

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body13.i.i:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %pprev14.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i, %if.end27.if.end.i_crit_edge
  %26 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.080, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %list_lock.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_common_entry.080, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i.i) #11
  %28 = ptrtoint ptr %orig_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %orig_list, align 4
  %tobool.not.i.i.i = icmp eq ptr %29, null
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 -8
  %tobool2.not2628.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not26.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not2628.i.i.i
  br i1 %tobool2.not26.i.i.i, label %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %if.then.i.i.land.rhs.i.i.i_crit_edge

if.then.i.i.land.rhs.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %land.rhs.i.i.i

if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

land.rhs.i.i.i:                                   ; preds = %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge, %if.then.i.i.land.rhs.i.i.i_crit_edge
  %orig_entry.027.i.i.i = phi ptr [ %add.ptr11.i.i.i, %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.then.i.i.land.rhs.i.i.i_crit_edge ]
  %list.i.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list.i.i.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %tt_common_entry.080, ptr noundef nonnull %orig_entry.027.i.i.i) #11
  %tobool7.not.i.i.i = icmp eq ptr %31, null
  %add.ptr11.i.i.i = getelementptr i8, ptr %31, i32 -8
  %tobool2.not29.i.i.i = icmp eq ptr %add.ptr11.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool7.not.i.i.i, %tobool2.not29.i.i.i
  br i1 %tobool2.not.i.i.i, label %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge

land.rhs.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i

land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

batadv_tt_global_entry_release.exit.i:            ; preds = %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i.i) #11
  %rcu.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_common_entry.080, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @batadv_tt_global_entry_free_rcu) #11
  br label %for.inc

for.inc:                                          ; preds = %batadv_tt_global_entry_release.exit.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %tobool32.not = icmp eq ptr %11, null
  %add.ptr36 = getelementptr i8, ptr %11, i32 -8
  %tobool5.not84 = icmp eq ptr %add.ptr36, null
  %tobool5.not = or i1 %tobool32.not, %tobool5.not84
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1) #11
  %inc = add nuw i32 %i.082, 1
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end41_crit_edge

for.end.for.end41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end41:                                        ; preds = %for.end.for.end41_crit_edge, %for.cond.preheader.for.end41_crit_edge
  %capa_initialized = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %capa_initialized) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end41, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_global_del_orig_node(ptr noundef %bat_priv, ptr noundef %tt_global_entry, ptr noundef %orig_node, ptr noundef %message) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %list_lock = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %tt_global_entry, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #11
  %orig_list = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %tt_global_entry, i32 0, i32 1
  %0 = ptrtoint ptr %orig_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_list, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %tobool2.not4143 = icmp eq ptr %add.ptr, null
  %tobool2.not41 = or i1 %tobool.not, %tobool2.not4143
  br i1 %tobool2.not41, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %vid6 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_global_entry, i32 0, i32 1
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %orig_entry.042 = phi ptr [ %add.ptr, %land.rhs.lr.ph ], [ %add.ptr20, %for.inc.land.rhs_crit_edge ]
  %list = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.042, i32 0, i32 3
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %4 = ptrtoint ptr %orig_entry.042 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_entry.042, align 4
  %cmp = icmp eq ptr %5, %orig_node
  br i1 %cmp, label %if.then, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  %6 = ptrtoint ptr %vid6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid6, align 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %8 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %7 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %call12 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.34, ptr noundef %orig_node, ptr noundef %tt_global_entry, i32 noundef %retval.0.i, ptr noundef %message) #11
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef %tt_global_entry, ptr noundef nonnull %orig_entry.042)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.rhs.for.inc_crit_edge
  %tobool16.not = icmp eq ptr %3, null
  %add.ptr20 = getelementptr i8, ptr %3, i32 -8
  %tobool2.not44 = icmp eq ptr %add.ptr20, null
  %tobool2.not = or i1 %tobool16.not, %tobool2.not44
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_transtable_search(ptr noundef %bat_priv, ptr noundef readonly %src, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %src, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @batadv_vlan_ap_isola_get(ptr noundef %bat_priv, i16 noundef zeroext %vid) #11
  br i1 %call, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %local_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_hash.i, align 4
  %call.i43 = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %1, ptr noundef nonnull %src, i16 noundef zeroext %vid) #11
  %tobool2.not = icmp eq ptr %call.i43, null
  br i1 %tobool2.not, label %if.then.out_crit_edge, label %lor.lhs.false

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %if.then
  %flags = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i43, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool3.not = icmp eq i16 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end5_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %lor.lhs.false.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %tt_local_entry.0 = phi ptr [ %call.i43, %lor.lhs.false.if.end5_crit_edge ], [ null, %land.lhs.true.if.end5_crit_edge ], [ null, %entry.if.end5_crit_edge ]
  %global_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %5 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %global_hash.i, align 4
  %call.i44 = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %6, ptr noundef %addr, i16 noundef zeroext %vid) #11
  %tobool7.not = icmp eq ptr %call.i44, null
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.end5
  %tobool10.not = icmp eq ptr %tt_local_entry.0, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %land.lhs.true11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.end9
  %flags.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_local_entry.0, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i, align 4
  %9 = and i16 %8, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i45 = icmp eq i16 %9, 0
  br i1 %tobool.not.i45, label %land.lhs.true11.if.end.i_crit_edge, label %land.lhs.true.i46

land.lhs.true11.if.end.i_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i46:                                ; preds = %land.lhs.true11
  %flags2.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i44, i32 0, i32 3
  %10 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags2.i, align 4
  %12 = and i16 %11, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool5.not.i = icmp eq i16 %12, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i46.if.end.i_crit_edge, label %land.lhs.true.i46.out_crit_edge

land.lhs.true.i46.out_crit_edge:                  ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.i46.if.end.i_crit_edge:             ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i46.if.end.i_crit_edge, %land.lhs.true11.if.end.i_crit_edge
  %13 = and i16 %8, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool10.not.i = icmp eq i16 %13, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end15_crit_edge, label %land.lhs.true11.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true11.i:                                ; preds = %if.end.i
  %flags13.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i44, i32 0, i32 3
  %14 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags13.i, align 4
  %16 = and i16 %15, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool16.not.i = icmp eq i16 %16, 0
  br i1 %tobool16.not.i, label %land.lhs.true11.i.if.end15_crit_edge, label %land.lhs.true11.i.out_crit_edge

land.lhs.true11.i.out_crit_edge:                  ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true11.i.if.end15_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true11.i.if.end15_crit_edge, %if.end.i.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %17 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end15.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end15.rcu_read_lock.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end15
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end15.rcu_read_lock.exit_crit_edge
  %call16 = tail call fastcc ptr @batadv_transtable_best_orig(ptr noundef %bat_priv, ptr noundef nonnull %call.i44)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %rcu_read_lock.exit.if.end26_crit_edge, label %if.end20

rcu_read_lock.exit.if.end26_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end20:                                         ; preds = %rcu_read_lock.exit
  %21 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call16, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %if.end20.if.end26_crit_edge, label %land.lhs.true22

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true22:                                  ; preds = %if.end20
  %refcount = getelementptr inbounds %struct.batadv_orig_node, ptr %22, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %23 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true22
  %25 = phi i32 [ %24, %land.lhs.true22 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %26 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %25, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %27 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %29 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %28, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %28
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !174

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %30 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %31, 1
  %32 = or i32 %add5.i.i.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %33 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool12.i.i.i.i.not = icmp eq i32 %34, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %22
  br label %if.end26

if.end26:                                         ; preds = %kref_get_unless_zero.exit, %if.end20.if.end26_crit_edge, %rcu_read_lock.exit.if.end26_crit_edge
  %orig_node.1 = phi ptr [ null, %if.end20.if.end26_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ], [ null, %rcu_read_lock.exit.if.end26_crit_edge ]
  %call.i47 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i47, label %if.end26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

if.end26.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %if.end26
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %if.end26.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %35 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i54 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %land.lhs.true11.i.out_crit_edge, %land.lhs.true.i46.out_crit_edge, %if.end5.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then.out_crit_edge
  %tt_local_entry.1 = phi ptr [ %call.i43, %lor.lhs.false.out_crit_edge ], [ %tt_local_entry.0, %rcu_read_unlock.exit ], [ %tt_local_entry.0, %if.end5.out_crit_edge ], [ null, %if.then.out_crit_edge ], [ %tt_local_entry.0, %land.lhs.true.i46.out_crit_edge ], [ %tt_local_entry.0, %land.lhs.true11.i.out_crit_edge ]
  %tt_global_entry.0 = phi ptr [ null, %lor.lhs.false.out_crit_edge ], [ %call.i44, %rcu_read_unlock.exit ], [ null, %if.end5.out_crit_edge ], [ null, %if.then.out_crit_edge ], [ %call.i44, %land.lhs.true.i46.out_crit_edge ], [ %call.i44, %land.lhs.true11.i.out_crit_edge ]
  %orig_node.2 = phi ptr [ null, %lor.lhs.false.out_crit_edge ], [ %orig_node.1, %rcu_read_unlock.exit ], [ null, %if.end5.out_crit_edge ], [ null, %if.then.out_crit_edge ], [ null, %land.lhs.true.i46.out_crit_edge ], [ null, %land.lhs.true11.i.out_crit_edge ]
  call fastcc void @batadv_tt_global_entry_put(ptr noundef %tt_global_entry.0)
  call fastcc void @batadv_tt_local_entry_put(ptr noundef %tt_local_entry.1)
  ret ptr %orig_node.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_vlan_ap_isola_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_transtable_best_orig(ptr nocapture noundef readonly %bat_priv, ptr noundef %tt_global_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 30
  %0 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_ops, align 4
  %orig_list = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %tt_global_entry, i32 0, i32 1
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
  %.b50 = load i1, ptr @batadv_transtable_best_orig.__warned, align 1
  br i1 %.b50, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_transtable_best_orig.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1763, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %orig_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %orig_list, align 4
  %tobool10.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %tobool12.not7682 = icmp eq ptr %add.ptr, null
  %tobool12.not76 = or i1 %tobool10.not, %tobool12.not7682
  br i1 %tobool12.not76, label %do.end.batadv_neigh_node_put.exit73_crit_edge, label %for.body.lr.ph

do.end.batadv_neigh_node_put.exit73_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit73

for.body.lr.ph:                                   ; preds = %do.end
  %cmp = getelementptr inbounds %struct.batadv_algo_ops, ptr %1, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best_router.080 = phi ptr [ null, %for.body.lr.ph ], [ %best_router.1, %for.inc.for.body_crit_edge ]
  %orig_entry.078 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr34, %for.inc.for.body_crit_edge ]
  %best_entry.077 = phi ptr [ null, %for.body.lr.ph ], [ %best_entry.1, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %orig_entry.078 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_entry.078, align 4
  %call13 = tail call ptr @batadv_orig_router_get(ptr noundef %5, ptr noundef null) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.end16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %tobool17.not = icmp eq ptr %best_router.080, null
  br i1 %tobool17.not, label %if.end16.for.inc_crit_edge, label %land.lhs.true18

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true18:                                  ; preds = %if.end16
  %6 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmp, align 4
  %call19 = tail call i32 %7(ptr noundef nonnull %call13, ptr noundef null, ptr noundef nonnull %best_router.080, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.end.i, label %if.end.i57

if.end.i:                                         ; preds = %land.lhs.true18
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call13, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i) #11
  br label %for.inc

if.end.i57:                                       ; preds = %land.lhs.true18
  %refcount.i53 = getelementptr inbounds %struct.batadv_neigh_node, ptr %best_router.080, i32 0, i32 8
  %call.i.i.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i53, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i53, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i53, ptr %refcount.i53, i32 1, ptr elementtype(i32) %refcount.i53) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i55)
  %cmp.i.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i55, 1
  br i1 %cmp.i.i.i.i.i56, label %if.then.i.i61, label %if.end5.i.i.i.i.i59

if.end5.i.i.i.i.i59:                              ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i55)
  %.not.i.i.i.i.i58 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i55, 0
  br i1 %.not.i.i.i.i.i58, label %if.end5.i.i.i.i.i59.for.inc_crit_edge, label %if.then10.i.i.i.i.i60, !prof !174

if.end5.i.i.i.i.i59.for.inc_crit_edge:            ; preds = %if.end5.i.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i.i.i60:                            ; preds = %if.end5.i.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i53, i32 noundef 3) #11
  br label %for.inc

if.then.i.i61:                                    ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i53) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i61, %if.then10.i.i.i.i.i60, %if.end5.i.i.i.i.i59.for.inc_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_entry.1 = phi ptr [ %best_entry.077, %for.body.for.inc_crit_edge ], [ %best_entry.077, %if.end5.i.i.i.i.i.for.inc_crit_edge ], [ %best_entry.077, %if.then10.i.i.i.i.i ], [ %best_entry.077, %if.then.i.i ], [ %orig_entry.078, %if.end5.i.i.i.i.i59.for.inc_crit_edge ], [ %orig_entry.078, %if.then10.i.i.i.i.i60 ], [ %orig_entry.078, %if.then.i.i61 ], [ %orig_entry.078, %if.end16.for.inc_crit_edge ]
  %best_router.1 = phi ptr [ %best_router.080, %for.body.for.inc_crit_edge ], [ %best_router.080, %if.end5.i.i.i.i.i.for.inc_crit_edge ], [ %best_router.080, %if.then10.i.i.i.i.i ], [ %best_router.080, %if.then.i.i ], [ %call13, %if.end5.i.i.i.i.i59.for.inc_crit_edge ], [ %call13, %if.then10.i.i.i.i.i60 ], [ %call13, %if.then.i.i61 ], [ %call13, %if.end16.for.inc_crit_edge ]
  %list = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.078, i32 0, i32 3
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %list, align 4
  %tobool30.not = icmp eq ptr %11, null
  %add.ptr34 = getelementptr i8, ptr %11, i32 -8
  %tobool12.not87 = icmp eq ptr %add.ptr34, null
  %tobool12.not = or i1 %tobool30.not, %tobool12.not87
  br i1 %tobool12.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool.not.i63 = icmp eq ptr %best_router.1, null
  br i1 %tobool.not.i63, label %for.end.batadv_neigh_node_put.exit73_crit_edge, label %if.end.i68

for.end.batadv_neigh_node_put.exit73_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit73

if.end.i68:                                       ; preds = %for.end
  %refcount.i64 = getelementptr inbounds %struct.batadv_neigh_node, ptr %best_router.1, i32 0, i32 8
  %call.i.i.i.i.i.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i64, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i64, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i64, ptr %refcount.i64, i32 1, ptr elementtype(i32) %refcount.i64) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i66 = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i66)
  %cmp.i.i.i.i.i67 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i66, 1
  br i1 %cmp.i.i.i.i.i67, label %if.then.i.i72, label %if.end5.i.i.i.i.i70

if.end5.i.i.i.i.i70:                              ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i66)
  %.not.i.i.i.i.i69 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i66, 0
  br i1 %.not.i.i.i.i.i69, label %if.end5.i.i.i.i.i70.batadv_neigh_node_put.exit73_crit_edge, label %if.then10.i.i.i.i.i71, !prof !174

if.end5.i.i.i.i.i70.batadv_neigh_node_put.exit73_crit_edge: ; preds = %if.end5.i.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_neigh_node_put.exit73

if.then10.i.i.i.i.i71:                            ; preds = %if.end5.i.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i64, i32 noundef 3) #11
  br label %batadv_neigh_node_put.exit73

if.then.i.i72:                                    ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i64) #11
  br label %batadv_neigh_node_put.exit73

batadv_neigh_node_put.exit73:                     ; preds = %if.then.i.i72, %if.then10.i.i.i.i.i71, %if.end5.i.i.i.i.i70.batadv_neigh_node_put.exit73_crit_edge, %for.end.batadv_neigh_node_put.exit73_crit_edge, %do.end.batadv_neigh_node_put.exit73_crit_edge
  %best_entry.0.lcssa86 = phi ptr [ %best_entry.1, %for.end.batadv_neigh_node_put.exit73_crit_edge ], [ %best_entry.1, %if.end5.i.i.i.i.i70.batadv_neigh_node_put.exit73_crit_edge ], [ %best_entry.1, %if.then10.i.i.i.i.i71 ], [ %best_entry.1, %if.then.i.i72 ], [ null, %do.end.batadv_neigh_node_put.exit73_crit_edge ]
  ret ptr %best_entry.0.lcssa86
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_is_my_client(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %local_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_hash.i, align 4
  %call.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 1026
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %5 = icmp eq i16 %4, 0
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %entry.out_crit_edge ], [ %5, %if.end ]
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef %call.i)
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tt_free(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @batadv_tvlv_handler_unregister(ptr noundef %bat_priv, i8 noundef zeroext 5, i8 noundef zeroext 1) #11
  tail call void @batadv_tvlv_container_unregister(ptr noundef %bat_priv, i8 noundef zeroext 4, i8 noundef zeroext 1) #11
  tail call void @batadv_tvlv_handler_unregister(ptr noundef %bat_priv, i8 noundef zeroext 4, i8 noundef zeroext 1) #11
  %work = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 15
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #11
  tail call fastcc void @batadv_tt_local_table_free(ptr noundef %bat_priv)
  %global_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_hash.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.batadv_tt_global_table_free.exit_crit_edge, label %for.cond.preheader.i

entry.batadv_tt_global_table_free.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_table_free.exit

for.cond.preheader.i:                             ; preds = %entry
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not.i = icmp eq i32 %3, 0
  br i1 %cmp55.not.i, label %for.cond.preheader.i.for.end26.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end26.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end26.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %5, i32 %i.056.i
  %6 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_locks.i, align 4
  %arrayidx3.i = getelementptr %struct.spinlock, ptr %7, i32 %i.056.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx3.i) #11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 -8
  %tobool7.not5357.i = icmp eq ptr %add.ptr.i, null
  %tobool7.not53.i = or i1 %tobool4.not.i, %tobool7.not5357.i
  br i1 %tobool7.not53.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

land.rhs.i:                                       ; preds = %batadv_tt_global_entry_put.exit.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %tt_common_entry.054.i = phi ptr [ %add.ptr21.i, %batadv_tt_global_entry_put.exit.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %for.body.i.land.rhs.i_crit_edge ]
  %hash_entry.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.054.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_entry.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.054.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev2.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %11, ptr %13, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.if.end.i.i_crit_edge, label %do.body13.i.i.i

land.rhs.i.if.end.i.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.body13.i.i.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %pprev14.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body13.i.i.i, %land.rhs.i.if.end.i.i_crit_edge
  %16 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.054.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_tt_global_entry_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.batadv_tt_global_entry_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %batadv_tt_global_entry_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %list_lock.i.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_common_entry.054.i, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i.i.i) #11
  %orig_list.i.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_common_entry.054.i, i32 1
  %18 = ptrtoint ptr %orig_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %orig_list.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %19, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 -8
  %tobool2.not2628.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  %tobool2.not26.i.i.i.i = or i1 %tobool.not.i.i.i.i, %tobool2.not2628.i.i.i.i
  br i1 %tobool2.not26.i.i.i.i, label %if.then.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge, label %if.then.i.i.i.land.rhs.i.i.i.i_crit_edge

if.then.i.i.i.land.rhs.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %land.rhs.i.i.i.i

if.then.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %if.then.i.i.i.land.rhs.i.i.i.i_crit_edge
  %orig_entry.027.i.i.i.i = phi ptr [ %add.ptr11.i.i.i.i, %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.then.i.i.i.land.rhs.i.i.i.i_crit_edge ]
  %list.i.i.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list.i.i.i.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %tt_common_entry.054.i, ptr noundef nonnull %orig_entry.027.i.i.i.i) #11
  %tobool7.not.i.i.i.i = icmp eq ptr %21, null
  %add.ptr11.i.i.i.i = getelementptr i8, ptr %21, i32 -8
  %tobool2.not29.i.i.i.i = icmp eq ptr %add.ptr11.i.i.i.i, null
  %tobool2.not.i.i.i.i = or i1 %tobool7.not.i.i.i.i, %tobool2.not29.i.i.i.i
  br i1 %tobool2.not.i.i.i.i, label %land.rhs.i.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge, label %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge

land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i.i

land.rhs.i.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i.i

batadv_tt_global_entry_release.exit.i.i:          ; preds = %land.rhs.i.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge, %if.then.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i.i.i) #11
  %rcu.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_common_entry.054.i, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @batadv_tt_global_entry_free_rcu) #11
  br label %batadv_tt_global_entry_put.exit.i

batadv_tt_global_entry_put.exit.i:                ; preds = %batadv_tt_global_entry_release.exit.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_tt_global_entry_put.exit.i_crit_edge
  %add.ptr21.i = getelementptr i8, ptr %11, i32 -8
  %tobool7.not58.i = icmp eq ptr %add.ptr21.i, null
  %tobool7.not.i = or i1 %tobool.not.i.i.i, %tobool7.not58.i
  br i1 %tobool7.not.i, label %batadv_tt_global_entry_put.exit.i.for.end.i_crit_edge, label %batadv_tt_global_entry_put.exit.i.land.rhs.i_crit_edge

batadv_tt_global_entry_put.exit.i.land.rhs.i_crit_edge: ; preds = %batadv_tt_global_entry_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

batadv_tt_global_entry_put.exit.i.for.end.i_crit_edge: ; preds = %batadv_tt_global_entry_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %batadv_tt_global_entry_put.exit.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx3.i) #11
  %inc.i = add nuw i32 %i.056.i, 1
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.for.end26.i_crit_edge

for.end.i.for.end26.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end26.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end26.i:                                      ; preds = %for.end.i.for.end26.i_crit_edge, %for.cond.preheader.i.for.end26.i_crit_edge
  tail call void @batadv_hash_destroy(ptr noundef nonnull %1) #11
  %24 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %global_hash.i, align 4
  br label %batadv_tt_global_table_free.exit

batadv_tt_global_table_free.exit:                 ; preds = %for.end26.i, %entry.batadv_tt_global_table_free.exit_crit_edge
  %req_list_lock.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %req_list_lock.i) #11
  %req_list.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 6
  %25 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req_list.i, align 4
  %tobool.not.i11 = icmp eq ptr %26, null
  %add.ptr.i12 = getelementptr i8, ptr %26, i32 -16
  %tobool3.not2931.i = icmp eq ptr %add.ptr.i12, null
  %tobool3.not29.i = or i1 %tobool.not.i11, %tobool3.not2931.i
  br i1 %tobool3.not29.i, label %batadv_tt_global_table_free.exit.batadv_tt_req_list_free.exit_crit_edge, label %batadv_tt_global_table_free.exit.land.rhs.i13_crit_edge

batadv_tt_global_table_free.exit.land.rhs.i13_crit_edge: ; preds = %batadv_tt_global_table_free.exit
  br label %land.rhs.i13

batadv_tt_global_table_free.exit.batadv_tt_req_list_free.exit_crit_edge: ; preds = %batadv_tt_global_table_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_req_list_free.exit

land.rhs.i13:                                     ; preds = %batadv_tt_req_node_put.exit.i.land.rhs.i13_crit_edge, %batadv_tt_global_table_free.exit.land.rhs.i13_crit_edge
  %node.030.i = phi ptr [ %add.ptr13.i, %batadv_tt_req_node_put.exit.i.land.rhs.i13_crit_edge ], [ %add.ptr.i12, %batadv_tt_global_table_free.exit.land.rhs.i13_crit_edge ]
  %list.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.030.i, i32 0, i32 3
  %27 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.030.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.not.i.i, label %land.rhs.i13.if.end.i.i20_crit_edge, label %if.then.i.i

land.rhs.i13.if.end.i.i20_crit_edge:              ; preds = %land.rhs.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i20

if.then.i.i:                                      ; preds = %land.rhs.i13
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %28, ptr %30, align 4
  %tobool.not.i3.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i15

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i

do.body13.i.i.i15:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i14 = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %pprev14.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %pprev14.i.i.i14, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i15, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %33 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %list.i, align 4
  %34 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %if.end.i.i20

if.end.i.i20:                                     ; preds = %__hlist_del.exit.i.i, %land.rhs.i13.if.end.i.i20_crit_edge
  %refcount.i.i16 = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.030.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i16, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i16, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i16, ptr %refcount.i.i16, i32 1, ptr elementtype(i32) %refcount.i.i16) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i18 = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i18)
  %cmp.i.i.i.i.i.i19 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i18, 1
  br i1 %cmp.i.i.i.i.i.i19, label %if.then.i.i.i24, label %if.end5.i.i.i.i.i.i22

if.end5.i.i.i.i.i.i22:                            ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i18)
  %.not.i.i.i.i.i.i21 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i18, 0
  br i1 %.not.i.i.i.i.i.i21, label %if.end5.i.i.i.i.i.i22.batadv_tt_req_node_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i23, !prof !174

if.end5.i.i.i.i.i.i22.batadv_tt_req_node_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_req_node_put.exit.i

if.then10.i.i.i.i.i.i23:                          ; preds = %if.end5.i.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i16, i32 noundef 3) #11
  br label %batadv_tt_req_node_put.exit.i

if.then.i.i.i24:                                  ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %36 = load ptr, ptr @batadv_tt_req_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef nonnull %node.030.i) #11
  br label %batadv_tt_req_node_put.exit.i

batadv_tt_req_node_put.exit.i:                    ; preds = %if.then.i.i.i24, %if.then10.i.i.i.i.i.i23, %if.end5.i.i.i.i.i.i22.batadv_tt_req_node_put.exit.i_crit_edge
  %tobool9.not.i = icmp eq ptr %28, null
  %add.ptr13.i = getelementptr i8, ptr %28, i32 -16
  %tobool3.not32.i = icmp eq ptr %add.ptr13.i, null
  %tobool3.not.i = or i1 %tobool9.not.i, %tobool3.not32.i
  br i1 %tobool3.not.i, label %batadv_tt_req_node_put.exit.i.batadv_tt_req_list_free.exit_crit_edge, label %batadv_tt_req_node_put.exit.i.land.rhs.i13_crit_edge

batadv_tt_req_node_put.exit.i.land.rhs.i13_crit_edge: ; preds = %batadv_tt_req_node_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i13

batadv_tt_req_node_put.exit.i.batadv_tt_req_list_free.exit_crit_edge: ; preds = %batadv_tt_req_node_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_req_list_free.exit

batadv_tt_req_list_free.exit:                     ; preds = %batadv_tt_req_node_put.exit.i.batadv_tt_req_list_free.exit_crit_edge, %batadv_tt_global_table_free.exit.batadv_tt_req_list_free.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %req_list_lock.i) #11
  %changes_list_lock.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %changes_list_lock.i) #11
  %changes_list.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 3
  %37 = ptrtoint ptr %changes_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %changes_list.i, align 4
  %cmp.not28.i = icmp eq ptr %38, %changes_list.i
  br i1 %cmp.not28.i, label %batadv_tt_req_list_free.exit.batadv_tt_changes_list_free.exit_crit_edge, label %batadv_tt_req_list_free.exit.for.body.i26_crit_edge

batadv_tt_req_list_free.exit.for.body.i26_crit_edge: ; preds = %batadv_tt_req_list_free.exit
  br label %for.body.i26

batadv_tt_req_list_free.exit.batadv_tt_changes_list_free.exit_crit_edge: ; preds = %batadv_tt_req_list_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_changes_list_free.exit

for.body.i26:                                     ; preds = %list_del.exit.i.for.body.i26_crit_edge, %batadv_tt_req_list_free.exit.for.body.i26_crit_edge
  %entry1.029.i = phi ptr [ %safe.0.i, %list_del.exit.i.for.body.i26_crit_edge ], [ %38, %batadv_tt_req_list_free.exit.for.body.i26_crit_edge ]
  %39 = ptrtoint ptr %entry1.029.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %safe.0.i = load ptr, ptr %entry1.029.i, align 4
  %call.i.i27.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.029.i) #11
  br i1 %call.i.i27.i, label %if.end.i.i.i, label %for.body.i26.list_del.exit.i_crit_edge

for.body.i26.list_del.exit.i_crit_edge:           ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.029.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %entry1.029.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %entry1.029.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i26.list_del.exit.i_crit_edge
  %46 = ptrtoint ptr %entry1.029.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.029.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %48 = load ptr, ptr @batadv_tt_change_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %48, ptr noundef %entry1.029.i) #11
  %cmp.not.i = icmp eq ptr %safe.0.i, %changes_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.batadv_tt_changes_list_free.exit_crit_edge, label %list_del.exit.i.for.body.i26_crit_edge

list_del.exit.i.for.body.i26_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i26

list_del.exit.i.batadv_tt_changes_list_free.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_changes_list_free.exit

batadv_tt_changes_list_free.exit:                 ; preds = %list_del.exit.i.batadv_tt_changes_list_free.exit_crit_edge, %batadv_tt_req_list_free.exit.batadv_tt_changes_list_free.exit_crit_edge
  %local_changes.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_changes.i, i32 noundef 4) #11
  %49 = ptrtoint ptr %local_changes.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %local_changes.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %changes_list_lock.i) #11
  %roam_list_lock.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %roam_list_lock.i) #11
  %roam_list.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 7
  %50 = ptrtoint ptr %roam_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %roam_list.i, align 4
  %cmp.not25.i = icmp eq ptr %51, %roam_list.i
  br i1 %cmp.not25.i, label %batadv_tt_changes_list_free.exit.batadv_tt_roam_list_free.exit_crit_edge, label %batadv_tt_changes_list_free.exit.for.body.i29_crit_edge

batadv_tt_changes_list_free.exit.for.body.i29_crit_edge: ; preds = %batadv_tt_changes_list_free.exit
  br label %for.body.i29

batadv_tt_changes_list_free.exit.batadv_tt_roam_list_free.exit_crit_edge: ; preds = %batadv_tt_changes_list_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_roam_list_free.exit

for.body.i29:                                     ; preds = %list_del.exit.i35.for.body.i29_crit_edge, %batadv_tt_changes_list_free.exit.for.body.i29_crit_edge
  %.pn.in26.i = phi ptr [ %.pn.i, %list_del.exit.i35.for.body.i29_crit_edge ], [ %51, %batadv_tt_changes_list_free.exit.for.body.i29_crit_edge ]
  %node.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -16
  %52 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  %call.i.i.i28 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #11
  br i1 %call.i.i.i28, label %if.end.i.i.i32, label %for.body.i29.list_del.exit.i35_crit_edge

for.body.i29.list_del.exit.i35_crit_edge:         ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i35

if.end.i.i.i32:                                   ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i30 = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i30, align 4
  %55 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i31, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit.i35

list_del.exit.i35:                                ; preds = %if.end.i.i.i32, %for.body.i29.list_del.exit.i35_crit_edge
  %59 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26.i, align 4
  %prev.i.i33 = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i33, align 4
  %61 = load ptr, ptr @batadv_tt_roam_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %61, ptr noundef %node.0.i) #11
  %cmp.not.i34 = icmp eq ptr %.pn.i, %roam_list.i
  br i1 %cmp.not.i34, label %list_del.exit.i35.batadv_tt_roam_list_free.exit_crit_edge, label %list_del.exit.i35.for.body.i29_crit_edge

list_del.exit.i35.for.body.i29_crit_edge:         ; preds = %list_del.exit.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i29

list_del.exit.i35.batadv_tt_roam_list_free.exit_crit_edge: ; preds = %list_del.exit.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_roam_list_free.exit

batadv_tt_roam_list_free.exit:                    ; preds = %list_del.exit.i35.batadv_tt_roam_list_free.exit_crit_edge, %batadv_tt_changes_list_free.exit.batadv_tt_roam_list_free.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %roam_list_lock.i) #11
  %last_changeset = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 11
  %62 = ptrtoint ptr %last_changeset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %last_changeset, align 4
  tail call void @kfree(ptr noundef %63) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_local_table_free(ptr nocapture noundef %bat_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %local_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %local_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_hash, align 4
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
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %for.cond.preheader.for.end26_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end26_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end26

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.056
  %6 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_locks, align 4
  %arrayidx3 = getelementptr %struct.spinlock, ptr %7, i32 %i.056
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx3) #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -8
  %tobool7.not5357 = icmp eq ptr %add.ptr, null
  %tobool7.not53 = or i1 %tobool4.not, %tobool7.not5357
  br i1 %tobool7.not53, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond6.backedge.thread:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef nonnull %tt_common_entry.054)
  br label %for.end

for.cond6.backedge:                               ; preds = %land.rhs
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %16, ptr %pprev14.i.i, align 4
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef nonnull %tt_common_entry.054)
  %add.ptr21 = getelementptr i8, ptr %14, i32 -8
  %tobool7.not = icmp eq ptr %add.ptr21, null
  br i1 %tobool7.not, label %for.cond6.backedge.for.end_crit_edge, label %for.cond6.backedge.land.rhs_crit_edge

for.cond6.backedge.land.rhs_crit_edge:            ; preds = %for.cond6.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.cond6.backedge.for.end_crit_edge:             ; preds = %for.cond6.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.cond6.backedge.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %tt_common_entry.054 = phi ptr [ %add.ptr21, %for.cond6.backedge.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.054, i32 0, i32 2
  %13 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hash_entry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.054, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev2.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %14, ptr %16, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %for.cond6.backedge.thread, label %for.cond6.backedge

for.end:                                          ; preds = %for.cond6.backedge.for.end_crit_edge, %for.cond6.backedge.thread, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx3) #11
  %inc = add nuw i32 %i.056, 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end26_crit_edge

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end26

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end26:                                        ; preds = %for.end.for.end26_crit_edge, %for.cond.preheader.for.end26_crit_edge
  tail call void @batadv_hash_destroy(ptr noundef nonnull %1) #11
  %20 = ptrtoint ptr %local_hash to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %local_hash, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tt_local_commit_changes(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %commit_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %commit_lock) #11
  tail call fastcc void @batadv_tt_local_commit_changes_nolock(ptr noundef %bat_priv)
  tail call void @_raw_spin_unlock_bh(ptr noundef %commit_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_local_commit_changes_nolock(ptr noundef %bat_priv) unnamed_addr #0 align 64 {
entry:
  %flags.i.i = alloca i8, align 1
  %tmp_vid.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !180

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3687, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tt24 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36
  %local_changes = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %local_changes, i32 noundef 4) #11
  %1 = ptrtoint ptr %local_changes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %local_changes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp26 = icmp slt i32 %2, 1
  br i1 %cmp26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end
  %ogm_append_cnt = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 1
  %call.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ogm_append_cnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %ogm_append_cnt, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %ogm_append_cnt, ptr %ogm_append_cnt, i32 0, i32 -1, ptr elementtype(i32) %ogm_append_cnt) #11, !srcloc !182
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then30, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !183
  br label %return

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_tt_tvlv_container_update(ptr noundef %bat_priv)
  br label %return

if.end32:                                         ; preds = %if.end
  %local_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %4 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_hash.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end32.batadv_tt_local_set_flags.exit_crit_edge, label %for.cond.preheader.i

if.end32.batadv_tt_local_set_flags.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_set_flags.exit

for.cond.preheader.i:                             ; preds = %if.end32
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not.i = icmp eq i32 %7, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.batadv_tt_local_set_flags.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.batadv_tt_local_set_flags.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_set_flags.exit

for.body.i:                                       ; preds = %rcu_read_unlock.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %rcu_read_unlock.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %9, i32 %i.017.i
  %10 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i66 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i66, label %for.body.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.i.rcu_read_lock.exit.i_crit_edge
  %call.i67 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool2.not.i = icmp eq i32 %call.i67, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @batadv_tt_local_set_flags.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_local_set_flags.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 3616, ptr noundef nonnull @.str.11) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool14.not.i = icmp eq ptr %15, null
  %add.ptr.i = getelementptr i8, ptr %15, i32 -8
  %tobool17.not1418.i = icmp eq ptr %add.ptr.i, null
  %tobool17.not14.i = or i1 %tobool14.not.i, %tobool17.not1418.i
  br i1 %tobool17.not14.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.if.else.i_crit_edge

do.end.i.if.else.i_crit_edge:                     ; preds = %do.end.i
  br label %if.else.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.else.i:                                        ; preds = %for.inc.i.if.else.i_crit_edge, %do.end.i.if.else.i_crit_edge
  %tt_common_entry.015.i = phi ptr [ %add.ptr59.i, %for.inc.i.if.else.i_crit_edge ], [ %add.ptr.i, %do.end.i.if.else.i_crit_edge ]
  %flags32.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.015.i, i32 0, i32 3
  %16 = ptrtoint ptr %flags32.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags32.i, align 4
  %18 = and i16 %17, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool36.not.i = icmp eq i16 %18, 0
  br i1 %tobool36.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.end38.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end38.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %and42.i = and i16 %17, -513
  %19 = ptrtoint ptr %flags32.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %and42.i, ptr %flags32.i, align 4
  %vid.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.015.i, i32 0, i32 1
  %20 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid.i, align 2
  tail call fastcc void @batadv_tt_local_size_mod(ptr noundef %bat_priv, i16 noundef zeroext %21, i32 noundef 1) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end38.i, %if.else.i.for.inc.i_crit_edge
  %hash_entry.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.015.i, i32 0, i32 2
  %22 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hash_entry.i, align 4
  %tobool55.not.i = icmp eq ptr %23, null
  %add.ptr59.i = getelementptr i8, ptr %23, i32 -8
  %tobool17.not19.i = icmp eq ptr %add.ptr59.i, null
  %tobool17.not.i = or i1 %tobool55.not.i, %tobool17.not19.i
  br i1 %tobool17.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.if.else.i_crit_edge

for.inc.i.if.else.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i3.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i6.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i6.i:                               ; preds = %for.end.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %24 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i10.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc.i = add nuw i32 %i.017.i, 1
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %rcu_read_unlock.exit.i.for.body.i_crit_edge, label %rcu_read_unlock.exit.i.batadv_tt_local_set_flags.exit_crit_edge

rcu_read_unlock.exit.i.batadv_tt_local_set_flags.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_set_flags.exit

rcu_read_unlock.exit.i.for.body.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

batadv_tt_local_set_flags.exit:                   ; preds = %rcu_read_unlock.exit.i.batadv_tt_local_set_flags.exit_crit_edge, %for.cond.preheader.i.batadv_tt_local_set_flags.exit_crit_edge, %if.end32.batadv_tt_local_set_flags.exit_crit_edge
  tail call fastcc void @batadv_tt_local_purge_pending_clients(ptr noundef %bat_priv)
  %30 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i.i68 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i69, align 4
  %add.i.i.i.i70 = add i32 %33, 1
  store volatile i32 %add.i.i.i.i70, ptr %preempt_count.i.i.i.i.i69, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i71 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i71, label %batadv_tt_local_set_flags.exit.rcu_read_lock.exit.i80_crit_edge, label %land.lhs.true.i.i74

batadv_tt_local_set_flags.exit.rcu_read_lock.exit.i80_crit_edge: ; preds = %batadv_tt_local_set_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i80

land.lhs.true.i.i74:                              ; preds = %batadv_tt_local_set_flags.exit
  %call1.i.i72 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i72)
  %tobool.not.i.i73 = icmp eq i32 %call1.i.i72, 0
  br i1 %tobool.not.i.i73, label %land.lhs.true.i.i74.rcu_read_lock.exit.i80_crit_edge, label %land.lhs.true2.i.i76

land.lhs.true.i.i74.rcu_read_lock.exit.i80_crit_edge: ; preds = %land.lhs.true.i.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i80

land.lhs.true2.i.i76:                             ; preds = %land.lhs.true.i.i74
  %.b4.i.i75 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i75, label %land.lhs.true2.i.i76.rcu_read_lock.exit.i80_crit_edge, label %if.then.i.i77

land.lhs.true2.i.i76.rcu_read_lock.exit.i80_crit_edge: ; preds = %land.lhs.true2.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i80

if.then.i.i77:                                    ; preds = %land.lhs.true2.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i80

rcu_read_lock.exit.i80:                           ; preds = %if.then.i.i77, %land.lhs.true2.i.i76.rcu_read_lock.exit.i80_crit_edge, %land.lhs.true.i.i74.rcu_read_lock.exit.i80_crit_edge, %batadv_tt_local_set_flags.exit.rcu_read_lock.exit.i80_crit_edge
  %call.i78 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i82, label %rcu_read_lock.exit.i80.do.end.i84_crit_edge

rcu_read_lock.exit.i80.do.end.i84_crit_edge:      ; preds = %rcu_read_lock.exit.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i84

land.lhs.true.i82:                                ; preds = %rcu_read_lock.exit.i80
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i81 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i81, label %land.lhs.true.i82.do.end.i84_crit_edge, label %land.lhs.true3.i

land.lhs.true.i82.do.end.i84_crit_edge:           ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i84

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i82
  %.b36.i = load i1, ptr @batadv_tt_local_update_crc.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true3.i.do.end.i84_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i84_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i84

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_local_update_crc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2867, ptr noundef nonnull @.str.11) #11
  br label %do.end.i84

do.end.i84:                                       ; preds = %if.then.i, %land.lhs.true3.i.do.end.i84_crit_edge, %land.lhs.true.i82.do.end.i84_crit_edge, %rcu_read_lock.exit.i80.do.end.i84_crit_edge
  %softif_vlan_list.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 31
  %34 = ptrtoint ptr %softif_vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %softif_vlan_list.i, align 4
  %tobool10.not.i = icmp eq ptr %35, null
  %add.ptr.i83 = getelementptr i8, ptr %35, i32 -20
  %tobool12.not5557.i = icmp eq ptr %add.ptr.i83, null
  %tobool12.not55.i = or i1 %tobool10.not.i, %tobool12.not5557.i
  br i1 %tobool12.not55.i, label %do.end.i84.for.end.i88_crit_edge, label %do.end.i84.for.body.i86_crit_edge

do.end.i84.for.body.i86_crit_edge:                ; preds = %do.end.i84
  br label %for.body.i86

do.end.i84.for.end.i88_crit_edge:                 ; preds = %do.end.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i88

for.body.i86:                                     ; preds = %batadv_tt_local_crc.exit.i.for.body.i86_crit_edge, %do.end.i84.for.body.i86_crit_edge
  %vlan.056.i = phi ptr [ %add.ptr25.i, %batadv_tt_local_crc.exit.i.for.body.i86_crit_edge ], [ %add.ptr.i83, %do.end.i84.for.body.i86_crit_edge ]
  %vid.i85 = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.056.i, i32 0, i32 1
  %36 = ptrtoint ptr %vid.i85 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vid.i85, align 4
  %38 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %local_hash.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags.i.i) #11
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %flags.i.i, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp_vid.i.i) #11
  %41 = ptrtoint ptr %tmp_vid.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %tmp_vid.i.i, align 2, !annotation !190
  %size.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp81.not.i.i = icmp eq i32 %43, 0
  br i1 %cmp81.not.i.i, label %for.body.i86.batadv_tt_local_crc.exit.i_crit_edge, label %for.body.i86.for.body.i.i_crit_edge

for.body.i86.for.body.i.i_crit_edge:              ; preds = %for.body.i86
  br label %for.body.i.i

for.body.i86.batadv_tt_local_crc.exit.i_crit_edge: ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_crc.exit.i

for.body.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge, %for.body.i86.for.body.i.i_crit_edge
  %i.083.i.i = phi i32 [ %inc.i.i, %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i86.for.body.i.i_crit_edge ]
  %crc.082.i.i = phi i32 [ %crc.1.lcssa.i.i, %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i86.for.body.i.i_crit_edge ]
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %45, i32 %i.083.i.i
  %46 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %for.body.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %for.body.i.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i38.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i41.i, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i41.i:                              ; preds = %rcu_read_lock.exit.i.i
  %call1.i40.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i40.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i41.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i41.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i41.i
  %.b65.i.i = load i1, ptr @batadv_tt_local_crc.__warned, align 1
  br i1 %.b65.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i42.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i42.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_local_crc.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2533, ptr noundef nonnull @.str.11) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i42.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i41.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %51, null
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 -8
  %tobool13.not7885.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool13.not78.i.i = or i1 %tobool10.not.i.i, %tobool13.not7885.i.i
  br i1 %tobool13.not78.i.i, label %do.end.i.i.for.end.i.i_crit_edge, label %do.end.i.i.for.body14.i.i_crit_edge

do.end.i.i.for.body14.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %for.body14.i.i

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body14.i.i:                                   ; preds = %for.inc.i.i.for.body14.i.i_crit_edge, %do.end.i.i.for.body14.i.i_crit_edge
  %tt_common.080.i.i = phi ptr [ %add.ptr45.i.i, %for.inc.i.i.for.body14.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body14.i.i_crit_edge ]
  %crc.179.i.i = phi i32 [ %crc.2.i.i, %for.inc.i.i.for.body14.i.i_crit_edge ], [ %crc.082.i.i, %do.end.i.i.for.body14.i.i_crit_edge ]
  %vid15.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.080.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %vid15.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vid15.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %37)
  %cmp17.not.i.i = icmp eq i16 %53, %37
  br i1 %cmp17.not.i.i, label %if.end20.i.i, label %for.body14.i.i.for.inc.i.i_crit_edge

for.body14.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end20.i.i:                                     ; preds = %for.body14.i.i
  %flags21.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.080.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %flags21.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flags21.i.i, align 4
  %56 = and i16 %55, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool23.not.i.i = icmp eq i16 %56, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %if.end20.i.i.for.inc.i.i_crit_edge

if.end20.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end25.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %tmp_vid.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %37, ptr %tmp_vid.i.i, align 2
  %call27.i.i = call i32 @crc32c(i32 noundef 0, ptr noundef nonnull %tmp_vid.i.i, i32 noundef 2) #11
  %58 = ptrtoint ptr %flags21.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %flags21.i.i, align 4
  %60 = trunc i16 %59 to i8
  %conv31.i.i = and i8 %60, -16
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv31.i.i, ptr %flags.i.i, align 1
  %call32.i.i = call i32 @crc32c(i32 noundef %call27.i.i, ptr noundef nonnull %flags.i.i, i32 noundef 1) #11
  %call33.i.i = call i32 @crc32c(i32 noundef %call32.i.i, ptr noundef nonnull %tt_common.080.i.i, i32 noundef 6) #11
  %xor.i.i = xor i32 %call33.i.i, %crc.179.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end25.i.i, %if.end20.i.i.for.inc.i.i_crit_edge, %for.body14.i.i.for.inc.i.i_crit_edge
  %crc.2.i.i = phi i32 [ %crc.179.i.i, %for.body14.i.i.for.inc.i.i_crit_edge ], [ %crc.179.i.i, %if.end20.i.i.for.inc.i.i_crit_edge ], [ %xor.i.i, %if.end25.i.i ]
  %hash_entry.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.080.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %hash_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %hash_entry.i.i, align 4
  %tobool41.not.i.i = icmp eq ptr %63, null
  %add.ptr45.i.i = getelementptr i8, ptr %63, i32 -8
  %tobool13.not86.i.i = icmp eq ptr %add.ptr45.i.i, null
  %tobool13.not.i.i = or i1 %tobool41.not.i.i, %tobool13.not86.i.i
  br i1 %tobool13.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body14.i.i_crit_edge

for.inc.i.i.for.body14.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end.i.i.for.end.i.i_crit_edge
  %crc.1.lcssa.i.i = phi i32 [ %crc.082.i.i, %do.end.i.i.for.end.i.i_crit_edge ], [ %crc.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %call.i67.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i67.i.i, label %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i70.i.i

for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i70.i.i:                            ; preds = %for.end.i.i
  %call1.i68.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68.i.i)
  %tobool.not.i69.i.i = icmp eq i32 %call1.i68.i.i, 0
  br i1 %tobool.not.i69.i.i, label %land.lhs.true.i70.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i72.i.i

land.lhs.true.i70.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i70.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i72.i.i:                           ; preds = %land.lhs.true.i70.i.i
  %.b4.i71.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71.i.i, label %land.lhs.true2.i72.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i73.i.i

land.lhs.true2.i72.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i72.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

if.then.i73.i.i:                                  ; preds = %land.lhs.true2.i72.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i73.i.i, %land.lhs.true2.i72.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i70.i.i.rcu_read_unlock.exit.i.i_crit_edge, %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %64 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i74.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i74.i.i to ptr
  %preempt_count.i.i.i.i75.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i75.i.i, align 4
  %sub.i.i.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i75.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc.i.i = add nuw i32 %i.083.i.i, 1
  %68 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size.i.i, align 4
  %cmp.i.i87 = icmp ult i32 %inc.i.i, %69
  br i1 %cmp.i.i87, label %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge, label %rcu_read_unlock.exit.i.i.batadv_tt_local_crc.exit.i_crit_edge

rcu_read_unlock.exit.i.i.batadv_tt_local_crc.exit.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_crc.exit.i

rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge:  ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

batadv_tt_local_crc.exit.i:                       ; preds = %rcu_read_unlock.exit.i.i.batadv_tt_local_crc.exit.i_crit_edge, %for.body.i86.batadv_tt_local_crc.exit.i_crit_edge
  %crc.0.lcssa.i.i = phi i32 [ 0, %for.body.i86.batadv_tt_local_crc.exit.i_crit_edge ], [ %crc.1.lcssa.i.i, %rcu_read_unlock.exit.i.i.batadv_tt_local_crc.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp_vid.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags.i.i) #11
  %tt.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.056.i, i32 0, i32 3
  %70 = ptrtoint ptr %tt.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %crc.0.lcssa.i.i, ptr %tt.i, align 4
  %list.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.056.i, i32 0, i32 4
  %71 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %list.i, align 4
  %tobool21.not.i = icmp eq ptr %72, null
  %add.ptr25.i = getelementptr i8, ptr %72, i32 -20
  %tobool12.not58.i = icmp eq ptr %add.ptr25.i, null
  %tobool12.not.i = or i1 %tobool21.not.i, %tobool12.not58.i
  br i1 %tobool12.not.i, label %batadv_tt_local_crc.exit.i.for.end.i88_crit_edge, label %batadv_tt_local_crc.exit.i.for.body.i86_crit_edge

batadv_tt_local_crc.exit.i.for.body.i86_crit_edge: ; preds = %batadv_tt_local_crc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i86

batadv_tt_local_crc.exit.i.for.end.i88_crit_edge: ; preds = %batadv_tt_local_crc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i88

for.end.i88:                                      ; preds = %batadv_tt_local_crc.exit.i.for.end.i88_crit_edge, %do.end.i84.for.end.i88_crit_edge
  %call.i43.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i43.i, label %for.end.i88.batadv_tt_local_update_crc.exit_crit_edge, label %land.lhs.true.i46.i

for.end.i88.batadv_tt_local_update_crc.exit_crit_edge: ; preds = %for.end.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_update_crc.exit

land.lhs.true.i46.i:                              ; preds = %for.end.i88
  %call1.i44.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call1.i44.i, 0
  br i1 %tobool.not.i45.i, label %land.lhs.true.i46.i.batadv_tt_local_update_crc.exit_crit_edge, label %land.lhs.true2.i48.i

land.lhs.true.i46.i.batadv_tt_local_update_crc.exit_crit_edge: ; preds = %land.lhs.true.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_update_crc.exit

land.lhs.true2.i48.i:                             ; preds = %land.lhs.true.i46.i
  %.b4.i47.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47.i, label %land.lhs.true2.i48.i.batadv_tt_local_update_crc.exit_crit_edge, label %if.then.i49.i

land.lhs.true2.i48.i.batadv_tt_local_update_crc.exit_crit_edge: ; preds = %land.lhs.true2.i48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_update_crc.exit

if.then.i49.i:                                    ; preds = %land.lhs.true2.i48.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %batadv_tt_local_update_crc.exit

batadv_tt_local_update_crc.exit:                  ; preds = %if.then.i49.i, %land.lhs.true2.i48.i.batadv_tt_local_update_crc.exit_crit_edge, %land.lhs.true.i46.i.batadv_tt_local_update_crc.exit_crit_edge, %for.end.i88.batadv_tt_local_update_crc.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %73 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i50.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i50.i to ptr
  %preempt_count.i.i.i.i51.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i51.i, align 4
  %sub.i.i.i.i89 = add i32 %76, -1
  store volatile i32 %sub.i.i.i.i89, ptr %preempt_count.i.i.i.i51.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i62 = call zeroext i1 @__kasan_check_write(ptr noundef %tt24, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tt24, i32 1, i32 3, i32 1) #11
  %77 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tt24, ptr %tt24, i32 1, ptr elementtype(i32) %tt24) #11, !srcloc !188
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i63 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %78 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %batadv_tt_local_update_crc.exit.if.end43_crit_edge, label %if.then37

batadv_tt_local_update_crc.exit.if.end43_crit_edge: ; preds = %batadv_tt_local_update_crc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then37:                                        ; preds = %batadv_tt_local_update_crc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i64 = call zeroext i1 @__kasan_check_read(ptr noundef %tt24, i32 noundef 4) #11
  %80 = ptrtoint ptr %tt24 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %tt24, align 4
  %conv41 = and i32 %81, 255
  %call42 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.36, i32 noundef %conv41) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %batadv_tt_local_update_crc.exit.if.end43_crit_edge
  %ogm_append_cnt47 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 1
  %call.i.i65 = call zeroext i1 @__kasan_check_write(ptr noundef %ogm_append_cnt47, i32 noundef 4) #11
  %82 = ptrtoint ptr %ogm_append_cnt47 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 3, ptr %ogm_append_cnt47, align 4
  call fastcc void @batadv_tt_tvlv_container_update(ptr noundef %bat_priv)
  br label %return

return:                                           ; preds = %if.end43, %if.then30, %atomic_add_unless.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_is_ap_isolated(ptr noundef %bat_priv, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_softif_vlan_get(ptr noundef %bat_priv, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ap_isolation = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ap_isolation, i32 noundef 4) #11
  %0 = ptrtoint ptr %ap_isolation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ap_isolation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end.if.end.i38_crit_edge, label %if.end4

if.end.if.end.i38_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i38

if.end4:                                          ; preds = %if.end
  %local_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %2 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local_hash.i, align 4
  %call.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %3, ptr noundef %dst, i16 noundef zeroext %vid) #11
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end4.if.end.i38_crit_edge, label %if.end8

if.end4.if.end.i38_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i38

if.end8:                                          ; preds = %if.end4
  %global_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %4 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %global_hash.i, align 4
  %call.i30 = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %5, ptr noundef %src, i16 noundef zeroext %vid) #11
  %tobool10.not = icmp eq ptr %call.i30, null
  br i1 %tobool10.not, label %if.end8.local_entry_put_crit_edge, label %if.end12

if.end8.local_entry_put_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %local_entry_put

if.end12:                                         ; preds = %if.end8
  %flags.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 4
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %if.end12.if.end.i_crit_edge, label %land.lhs.true.i

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end12
  %flags2.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i30, i32 0, i32 3
  %9 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags2.i, align 4
  %11 = and i16 %10, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool5.not.i = icmp eq i16 %11, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end.i32_crit_edge

land.lhs.true.i.if.end.i32_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i32

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end12.if.end.i_crit_edge
  %12 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool10.not.i = icmp eq i16 %12, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end18.i_crit_edge, label %land.lhs.true11.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

land.lhs.true11.i:                                ; preds = %if.end.i
  %flags13.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i30, i32 0, i32 3
  %13 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags13.i, align 4
  %15 = and i16 %14, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool16.not.i = icmp eq i16 %15, 0
  br i1 %tobool16.not.i, label %land.lhs.true11.i.if.end18.i_crit_edge, label %land.lhs.true11.i.if.end.i32_crit_edge

land.lhs.true11.i.if.end.i32_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i32

land.lhs.true11.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.end18.i:                                       ; preds = %land.lhs.true11.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.end18.i, %land.lhs.true11.i.if.end.i32_crit_edge, %land.lhs.true.i.if.end.i32_crit_edge
  %retval.0.i = phi i1 [ false, %if.end18.i ], [ true, %land.lhs.true.i.if.end.i32_crit_edge ], [ true, %land.lhs.true11.i.if.end.i32_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i30, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.local_entry_put_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.local_entry_put_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %local_entry_put

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %local_entry_put

if.then.i.i:                                      ; preds = %if.end.i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %list_lock.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i30, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i.i) #11
  %orig_list.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i30, i32 1
  %17 = ptrtoint ptr %orig_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %orig_list.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %18, null
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 -8
  %tobool2.not2628.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not26.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not2628.i.i.i
  br i1 %tobool2.not26.i.i.i, label %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %if.then.i.i.land.rhs.i.i.i_crit_edge

if.then.i.i.land.rhs.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %land.rhs.i.i.i

if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

land.rhs.i.i.i:                                   ; preds = %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge, %if.then.i.i.land.rhs.i.i.i_crit_edge
  %orig_entry.027.i.i.i = phi ptr [ %add.ptr11.i.i.i, %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.then.i.i.land.rhs.i.i.i_crit_edge ]
  %list.i.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list.i.i.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %call.i30, ptr noundef nonnull %orig_entry.027.i.i.i) #11
  %tobool7.not.i.i.i = icmp eq ptr %20, null
  %add.ptr11.i.i.i = getelementptr i8, ptr %20, i32 -8
  %tobool2.not29.i.i.i = icmp eq ptr %add.ptr11.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool7.not.i.i.i, %tobool2.not29.i.i.i
  br i1 %tobool2.not.i.i.i, label %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge

land.rhs.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i

land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

batadv_tt_global_entry_release.exit.i:            ; preds = %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i.i) #11
  %rcu.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i30, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @batadv_tt_global_entry_free_rcu) #11
  br label %local_entry_put

local_entry_put:                                  ; preds = %batadv_tt_global_entry_release.exit.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.local_entry_put_crit_edge, %if.end8.local_entry_put_crit_edge
  %ret.1 = phi i1 [ false, %if.end8.local_entry_put_crit_edge ], [ %retval.0.i, %if.end5.i.i.i.i.i.local_entry_put_crit_edge ], [ %retval.0.i, %if.then10.i.i.i.i.i ], [ %retval.0.i, %batadv_tt_global_entry_release.exit.i ]
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef nonnull %call.i)
  br label %if.end.i38

if.end.i38:                                       ; preds = %local_entry_put, %if.end4.if.end.i38_crit_edge, %if.end.if.end.i38_crit_edge
  %ret.2.off0 = phi i1 [ %ret.1, %local_entry_put ], [ false, %if.end4.if.end.i38_crit_edge ], [ false, %if.end.if.end.i38_crit_edge ]
  %refcount.i34 = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i34, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i34, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i34, ptr %refcount.i34, i32 1, ptr elementtype(i32) %refcount.i34) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i36 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i36)
  %cmp.i.i.i.i.i37 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i36, 1
  br i1 %cmp.i.i.i.i.i37, label %if.then.i.i42, label %if.end5.i.i.i.i.i40

if.end5.i.i.i.i.i40:                              ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i36)
  %.not.i.i.i.i.i39 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i36, 0
  br i1 %.not.i.i.i.i.i39, label %if.end5.i.i.i.i.i40.cleanup_crit_edge, label %if.then10.i.i.i.i.i41, !prof !174

if.end5.i.i.i.i.i40.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i41:                            ; preds = %if.end5.i.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i34, i32 noundef 3) #11
  br label %cleanup

if.then.i.i42:                                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_softif_vlan_release(ptr noundef %refcount.i34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i42, %if.then10.i.i.i.i.i41, %if.end5.i.i.i.i.i40.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %ret.2.off0, %if.end5.i.i.i.i.i40.cleanup_crit_edge ], [ %ret.2.off0, %if.then10.i.i.i.i.i41 ], [ %ret.2.off0, %if.then.i.i42 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_tt_global_client_is_roaming(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %global_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_hash.i, align 4
  %call.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool1 = icmp ne i16 %4, 0
  %refcount.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %out

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %list_lock.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i.i) #11
  %orig_list.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i, i32 1
  %6 = ptrtoint ptr %orig_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %orig_list.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -8
  %tobool2.not2628.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not26.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not2628.i.i.i
  br i1 %tobool2.not26.i.i.i, label %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %if.then.i.i.land.rhs.i.i.i_crit_edge

if.then.i.i.land.rhs.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %land.rhs.i.i.i

if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

land.rhs.i.i.i:                                   ; preds = %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge, %if.then.i.i.land.rhs.i.i.i_crit_edge
  %orig_entry.027.i.i.i = phi ptr [ %add.ptr11.i.i.i, %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.then.i.i.land.rhs.i.i.i_crit_edge ]
  %list.i.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list.i.i.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %call.i, ptr noundef nonnull %orig_entry.027.i.i.i) #11
  %tobool7.not.i.i.i = icmp eq ptr %9, null
  %add.ptr11.i.i.i = getelementptr i8, ptr %9, i32 -8
  %tobool2.not29.i.i.i = icmp eq ptr %add.ptr11.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool7.not.i.i.i, %tobool2.not29.i.i.i
  br i1 %tobool2.not.i.i.i, label %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge

land.rhs.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i

land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

batadv_tt_global_entry_release.exit.i:            ; preds = %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i.i) #11
  %rcu.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @batadv_tt_global_entry_free_rcu) #11
  br label %out

out:                                              ; preds = %batadv_tt_global_entry_release.exit.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %entry.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %entry.out_crit_edge ], [ %tobool1, %if.end5.i.i.i.i.i.out_crit_edge ], [ %tobool1, %if.then10.i.i.i.i.i ], [ %tobool1, %batadv_tt_global_entry_release.exit.i ]
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_tt_local_client_is_roaming(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %local_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_hash.i, align 4
  %call.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool1 = icmp ne i16 %4, 0
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef nonnull %call.i)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0.off0 = phi i1 [ %tobool1, %if.end ], [ false, %entry.out_crit_edge ]
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_tt_add_temporary_global_entry(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -70, i8 %1)
  %cmp.i = icmp eq i8 %1, -70
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %3)
  %cmp4.i = icmp eq i8 %3, -66
  br i1 %cmp4.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %last_ttvn = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn, i32 noundef 4) #11
  %4 = ptrtoint ptr %last_ttvn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %last_ttvn, align 4
  %conv = trunc i32 %5 to i8
  %call2 = tail call fastcc zeroext i1 @batadv_tt_global_add(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %addr, i16 noundef zeroext %vid, i16 noundef zeroext 2048, i8 noundef zeroext %conv)
  br i1 %call2, label %do.body, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %if.end
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %6 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then6

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %vid to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i18 = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %call8 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.14, ptr noundef %addr, i32 noundef %retval.0.i18, ptr noundef %orig_node) #11
  br label %return

return:                                           ; preds = %if.then6, %do.body.return_crit_edge, %if.end.return_crit_edge, %land.lhs.true.i.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end.return_crit_edge ], [ true, %if.then6 ], [ true, %do.body.return_crit_edge ], [ false, %land.lhs.true.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @batadv_tt_global_add(ptr noundef %bat_priv, ptr noundef %orig_node, ptr nocapture noundef readonly %tt_addr, i16 noundef zeroext %vid, i16 noundef zeroext %flags, i8 noundef zeroext %ttvn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %bat_priv, ptr noundef %orig_node, i16 noundef zeroext %vid) #11
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %global_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_hash.i, align 4
  %call.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %1, ptr noundef %tt_addr, i16 noundef zeroext %vid) #11
  %local_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %2 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local_hash.i, align 4
  %call.i205 = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %3, ptr noundef %tt_addr, i16 noundef zeroext %vid) #11
  %conv = zext i16 %flags to i32
  %and = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool3.not = icmp eq ptr %call.i205, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.if.end11_crit_edge, label %land.lhs.true4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true4:                                   ; preds = %if.end
  %flags6 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i205, i32 0, i32 3
  %4 = ptrtoint ptr %flags6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags6, align 4
  %6 = and i16 %5, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool9.not = icmp eq i16 %6, 0
  br i1 %tobool9.not, label %land.lhs.true4.out_crit_edge, label %land.lhs.true4.if.end11_crit_edge

land.lhs.true4.if.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true4.out_crit_edge:                     ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %land.lhs.true4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %7 = load ptr, ptr @batadv_tg_cache, align 4
  %call.i206 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 2848) #11
  %tobool15.not = icmp eq ptr %call.i206, null
  br i1 %tobool15.not, label %if.then13.out_crit_edge, label %if.end17

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end17:                                         ; preds = %if.then13
  %8 = ptrtoint ptr %tt_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tt_addr, align 4
  %10 = ptrtoint ptr %call.i206 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i206, align 8
  %add.ptr.i = getelementptr i8, ptr %tt_addr, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call.i206, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 4
  %vid20 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i206, i32 0, i32 1
  %14 = ptrtoint ptr %vid20 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %vid, ptr %vid20, align 2
  %15 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %if.then24, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %and26 = and i16 %flags, -241
  %flags28 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i206, i32 0, i32 3
  %16 = ptrtoint ptr %flags28 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %and26, ptr %flags28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end17.if.end29_crit_edge
  %roam_at = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i206, i32 0, i32 4
  %17 = ptrtoint ptr %roam_at to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %roam_at, align 8
  %and31 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end35_crit_edge, label %if.then33

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %roam_at to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %roam_at, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end29.if.end35_crit_edge
  %refcount = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i206, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %20 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %refcount, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %added_at = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i206, i32 0, i32 4
  %22 = ptrtoint ptr %added_at to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %added_at, align 4
  %orig_list = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i206, i32 0, i32 1
  %23 = ptrtoint ptr %orig_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %orig_list, align 4
  %orig_list_count = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i206, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %orig_list_count, i32 noundef 4) #11
  %24 = ptrtoint ptr %orig_list_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %orig_list_count, align 8
  %list_lock = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i206, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @batadv_tt_global_add.__key, i16 noundef signext 3) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end35.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !180

if.end35.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end35
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !174

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end35.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end35.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %27 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %global_hash.i, align 4
  %hash_entry = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i206, i32 0, i32 2
  %call38 = tail call fastcc i32 @batadv_hash_add(ptr noundef %28, ptr noundef nonnull %call.i206, ptr noundef %hash_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp.not = icmp eq i32 %call38, 0
  br i1 %cmp.not, label %kref_get.exit.add_orig_entry_crit_edge, label %if.then42, !prof !174

kref_get.exit.add_orig_entry_crit_edge:           ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_orig_entry

if.then42:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_tt_global_entry_put(ptr noundef nonnull %call.i206)
  br label %out_remove

if.else:                                          ; preds = %if.end11
  %flags59 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %flags59 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags59, align 4
  %31 = and i16 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool62.not = icmp eq i16 %31, 0
  br i1 %tobool.not, label %if.end58, label %if.then48

if.then48:                                        ; preds = %if.else
  br i1 %tobool62.not, label %if.then48.out_crit_edge, label %if.end54

if.then48.out_crit_edge:                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end54:                                         ; preds = %if.then48
  %call.i207 = tail call fastcc ptr @batadv_tt_global_orig_entry_find(ptr noundef nonnull %call.i, ptr noundef %orig_node) #11
  %tobool.not.i = icmp eq ptr %call.i207, null
  br i1 %tobool.not.i, label %if.end57, label %batadv_tt_global_entry_has_orig.exit.thread

batadv_tt_global_entry_has_orig.exit.thread:      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_tt_orig_list_entry_put(ptr noundef nonnull %call.i207) #11
  br label %out_remove

if.end57:                                         ; preds = %if.end54
  %list_lock.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i) #11
  %orig_list.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %orig_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %orig_list.i, align 4
  %tobool.not.i208 = icmp eq ptr %33, null
  %add.ptr.i209 = getelementptr i8, ptr %33, i32 -8
  %tobool2.not2628.i = icmp eq ptr %add.ptr.i209, null
  %tobool2.not26.i = or i1 %tobool.not.i208, %tobool2.not2628.i
  br i1 %tobool2.not26.i, label %if.end57.batadv_tt_global_del_orig_list.exit_crit_edge, label %if.end57.land.rhs.i_crit_edge

if.end57.land.rhs.i_crit_edge:                    ; preds = %if.end57
  br label %land.rhs.i

if.end57.batadv_tt_global_del_orig_list.exit_crit_edge: ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %if.end57.land.rhs.i_crit_edge
  %orig_entry.027.i = phi ptr [ %add.ptr11.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %add.ptr.i209, %if.end57.land.rhs.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i, i32 0, i32 3
  %34 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %call.i, ptr noundef nonnull %orig_entry.027.i) #11
  %tobool7.not.i = icmp eq ptr %35, null
  %add.ptr11.i = getelementptr i8, ptr %35, i32 -8
  %tobool2.not29.i = icmp eq ptr %add.ptr11.i, null
  %tobool2.not.i = or i1 %tobool7.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %land.rhs.i.batadv_tt_global_del_orig_list.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.rhs.i.batadv_tt_global_del_orig_list.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit

batadv_tt_global_del_orig_list.exit:              ; preds = %land.rhs.i.batadv_tt_global_del_orig_list.exit_crit_edge, %if.end57.batadv_tt_global_del_orig_list.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i) #11
  br label %add_orig_entry

if.end58:                                         ; preds = %if.else
  br i1 %tobool62.not, label %if.end58.if.end68_crit_edge, label %if.then63

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then63:                                        ; preds = %if.end58
  %list_lock.i210 = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i210) #11
  %orig_list.i211 = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %orig_list.i211 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %orig_list.i211, align 4
  %tobool.not.i212 = icmp eq ptr %37, null
  %add.ptr.i213 = getelementptr i8, ptr %37, i32 -8
  %tobool2.not2628.i214 = icmp eq ptr %add.ptr.i213, null
  %tobool2.not26.i215 = or i1 %tobool.not.i212, %tobool2.not2628.i214
  br i1 %tobool2.not26.i215, label %if.then63.batadv_tt_global_del_orig_list.exit223_crit_edge, label %if.then63.land.rhs.i222_crit_edge

if.then63.land.rhs.i222_crit_edge:                ; preds = %if.then63
  br label %land.rhs.i222

if.then63.batadv_tt_global_del_orig_list.exit223_crit_edge: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit223

land.rhs.i222:                                    ; preds = %land.rhs.i222.land.rhs.i222_crit_edge, %if.then63.land.rhs.i222_crit_edge
  %orig_entry.027.i216 = phi ptr [ %add.ptr11.i219, %land.rhs.i222.land.rhs.i222_crit_edge ], [ %add.ptr.i213, %if.then63.land.rhs.i222_crit_edge ]
  %list.i217 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i216, i32 0, i32 3
  %38 = ptrtoint ptr %list.i217 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %list.i217, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %call.i, ptr noundef nonnull %orig_entry.027.i216) #11
  %tobool7.not.i218 = icmp eq ptr %39, null
  %add.ptr11.i219 = getelementptr i8, ptr %39, i32 -8
  %tobool2.not29.i220 = icmp eq ptr %add.ptr11.i219, null
  %tobool2.not.i221 = or i1 %tobool7.not.i218, %tobool2.not29.i220
  br i1 %tobool2.not.i221, label %land.rhs.i222.batadv_tt_global_del_orig_list.exit223_crit_edge, label %land.rhs.i222.land.rhs.i222_crit_edge

land.rhs.i222.land.rhs.i222_crit_edge:            ; preds = %land.rhs.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i222

land.rhs.i222.batadv_tt_global_del_orig_list.exit223_crit_edge: ; preds = %land.rhs.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit223

batadv_tt_global_del_orig_list.exit223:           ; preds = %land.rhs.i222.batadv_tt_global_del_orig_list.exit223_crit_edge, %if.then63.batadv_tt_global_del_orig_list.exit223_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i210) #11
  %40 = ptrtoint ptr %flags59 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags59, align 4
  %42 = and i16 %41, -2049
  store i16 %42, ptr %flags59, align 4
  br label %if.end68

if.end68:                                         ; preds = %batadv_tt_global_del_orig_list.exit223, %if.end58.if.end68_crit_edge
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call.i, align 4
  %45 = and i32 %44, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i224.not = icmp eq i32 %45, 0
  br i1 %tobool.i224.not, label %if.then72, label %if.end68.if.end78_crit_edge

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %and74 = and i16 %flags, -241
  %46 = ptrtoint ptr %flags59 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags59, align 4
  %or = or i16 %47, %and74
  store i16 %or, ptr %flags59, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then72, %if.end68.if.end78_crit_edge
  %48 = ptrtoint ptr %flags59 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags59, align 4
  %50 = and i16 %49, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool82.not = icmp eq i16 %50, 0
  br i1 %tobool82.not, label %if.end78.add_orig_entry_crit_edge, label %if.then83

if.end78.add_orig_entry_crit_edge:                ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_orig_entry

if.then83:                                        ; preds = %if.end78
  %list_lock.i225 = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i225) #11
  %orig_list.i226 = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i, i32 0, i32 1
  %51 = ptrtoint ptr %orig_list.i226 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %orig_list.i226, align 4
  %tobool.not.i227 = icmp eq ptr %52, null
  %add.ptr.i228 = getelementptr i8, ptr %52, i32 -8
  %tobool2.not2628.i229 = icmp eq ptr %add.ptr.i228, null
  %tobool2.not26.i230 = or i1 %tobool.not.i227, %tobool2.not2628.i229
  br i1 %tobool2.not26.i230, label %if.then83.batadv_tt_global_del_orig_list.exit238_crit_edge, label %if.then83.land.rhs.i237_crit_edge

if.then83.land.rhs.i237_crit_edge:                ; preds = %if.then83
  br label %land.rhs.i237

if.then83.batadv_tt_global_del_orig_list.exit238_crit_edge: ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit238

land.rhs.i237:                                    ; preds = %land.rhs.i237.land.rhs.i237_crit_edge, %if.then83.land.rhs.i237_crit_edge
  %orig_entry.027.i231 = phi ptr [ %add.ptr11.i234, %land.rhs.i237.land.rhs.i237_crit_edge ], [ %add.ptr.i228, %if.then83.land.rhs.i237_crit_edge ]
  %list.i232 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i231, i32 0, i32 3
  %53 = ptrtoint ptr %list.i232 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %list.i232, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %call.i, ptr noundef nonnull %orig_entry.027.i231) #11
  %tobool7.not.i233 = icmp eq ptr %54, null
  %add.ptr11.i234 = getelementptr i8, ptr %54, i32 -8
  %tobool2.not29.i235 = icmp eq ptr %add.ptr11.i234, null
  %tobool2.not.i236 = or i1 %tobool7.not.i233, %tobool2.not29.i235
  br i1 %tobool2.not.i236, label %land.rhs.i237.batadv_tt_global_del_orig_list.exit238_crit_edge, label %land.rhs.i237.land.rhs.i237_crit_edge

land.rhs.i237.land.rhs.i237_crit_edge:            ; preds = %land.rhs.i237
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i237

land.rhs.i237.batadv_tt_global_del_orig_list.exit238_crit_edge: ; preds = %land.rhs.i237
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit238

batadv_tt_global_del_orig_list.exit238:           ; preds = %land.rhs.i237.batadv_tt_global_del_orig_list.exit238_crit_edge, %if.then83.batadv_tt_global_del_orig_list.exit238_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i225) #11
  %55 = ptrtoint ptr %flags59 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags59, align 4
  %57 = and i16 %56, -3
  store i16 %57, ptr %flags59, align 4
  %roam_at88 = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i, i32 0, i32 4
  %58 = ptrtoint ptr %roam_at88 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %roam_at88, align 4
  br label %add_orig_entry

add_orig_entry:                                   ; preds = %batadv_tt_global_del_orig_list.exit238, %if.end78.add_orig_entry_crit_edge, %batadv_tt_global_del_orig_list.exit, %kref_get.exit.add_orig_entry_crit_edge
  %common.0 = phi ptr [ %call.i, %batadv_tt_global_del_orig_list.exit ], [ %call.i, %batadv_tt_global_del_orig_list.exit238 ], [ %call.i, %if.end78.add_orig_entry_crit_edge ], [ %call.i206, %kref_get.exit.add_orig_entry_crit_edge ]
  %59 = trunc i16 %flags to i8
  %conv94 = and i8 %59, -16
  %list_lock.i239 = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %common.0, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i239) #11
  %call.i240 = tail call fastcc ptr @batadv_tt_global_orig_entry_find(ptr noundef nonnull %common.0, ptr noundef %orig_node) #11
  %tobool.not.i241 = icmp eq ptr %call.i240, null
  br i1 %tobool.not.i241, label %if.end.i, label %if.then.i242

if.then.i242:                                     ; preds = %add_orig_entry
  call void @__sanitizer_cov_trace_pc() #13
  %ttvn1.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %call.i240, i32 0, i32 1
  %60 = ptrtoint ptr %ttvn1.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %ttvn, ptr %ttvn1.i, align 4
  %flags2.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %call.i240, i32 0, i32 2
  %61 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv94, ptr %flags2.i, align 1
  br label %sync_flags.i

if.end.i:                                         ; preds = %add_orig_entry
  %62 = load ptr, ptr @batadv_tt_orig_cache, align 4
  %call.i.i243 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %62, i32 noundef 2848) #11
  %tobool4.not.i = icmp eq ptr %call.i.i243, null
  br i1 %tobool4.not.i, label %if.end.i.batadv_tt_global_orig_entry_add.exit_crit_edge, label %if.end6.i

if.end.i.batadv_tt_global_orig_entry_add.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_orig_entry_add.exit

if.end6.i:                                        ; preds = %if.end.i
  %list.i244 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %call.i.i243, i32 0, i32 3
  %63 = ptrtoint ptr %list.i244 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %list.i244, align 8
  %pprev.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %call.i.i243, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %pprev.i.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !180

if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end6.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %66 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i.i = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !174

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %vid.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %common.0, i32 0, i32 1
  %67 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vid.i, align 2
  tail call fastcc void @batadv_tt_global_size_mod(ptr noundef %orig_node, i16 noundef zeroext %68, i32 noundef 1) #11
  %69 = ptrtoint ptr %call.i.i243 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %orig_node, ptr %call.i.i243, align 8
  %ttvn9.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %call.i.i243, i32 0, i32 1
  %70 = ptrtoint ptr %ttvn9.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %ttvn, ptr %ttvn9.i, align 4
  %flags10.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %call.i.i243, i32 0, i32 2
  %71 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv94, ptr %flags10.i, align 1
  %refcount11.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %call.i.i243, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount11.i, i32 noundef 4) #11
  %72 = ptrtoint ptr %refcount11.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 1, ptr %refcount11.i, align 8
  %call.i.i.i.i.i.i37.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount11.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount11.i, i32 1, i32 3, i32 1) #11
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount11.i, ptr %refcount11.i, i32 1, ptr elementtype(i32) %refcount11.i) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i38.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i38.i)
  %tobool1.not.i.i.i.i39.i = icmp eq i32 %asmresult.i.i.i.i.i.i38.i, 0
  br i1 %tobool1.not.i.i.i.i39.i, label %kref_get.exit.i.if.end15.sink.split.i.i.i.i44.i_crit_edge, label %if.else.i.i.i.i42.i, !prof !180

kref_get.exit.i.if.end15.sink.split.i.i.i.i44.i_crit_edge: ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i44.i

if.else.i.i.i.i42.i:                              ; preds = %kref_get.exit.i
  %add.i.i.i.i40.i = add i32 %asmresult.i.i.i.i.i.i38.i, 1
  %74 = or i32 %add.i.i.i.i40.i, %asmresult.i.i.i.i.i.i38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %.not.i.i.i.i41.i = icmp sgt i32 %74, -1
  br i1 %.not.i.i.i.i41.i, label %if.else.i.i.i.i42.i.kref_get.exit45.i_crit_edge, label %if.else.i.i.i.i42.i.if.end15.sink.split.i.i.i.i44.i_crit_edge, !prof !174

if.else.i.i.i.i42.i.if.end15.sink.split.i.i.i.i44.i_crit_edge: ; preds = %if.else.i.i.i.i42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i44.i

if.else.i.i.i.i42.i.kref_get.exit45.i_crit_edge:  ; preds = %if.else.i.i.i.i42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit45.i

if.end15.sink.split.i.i.i.i44.i:                  ; preds = %if.else.i.i.i.i42.i.if.end15.sink.split.i.i.i.i44.i_crit_edge, %kref_get.exit.i.if.end15.sink.split.i.i.i.i44.i_crit_edge
  %.sink.i.i.i.i43.i = phi i32 [ 2, %kref_get.exit.i.if.end15.sink.split.i.i.i.i44.i_crit_edge ], [ 1, %if.else.i.i.i.i42.i.if.end15.sink.split.i.i.i.i44.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount11.i, i32 noundef %.sink.i.i.i.i43.i) #11
  br label %kref_get.exit45.i

kref_get.exit45.i:                                ; preds = %if.end15.sink.split.i.i.i.i44.i, %if.else.i.i.i.i42.i.kref_get.exit45.i_crit_edge
  %orig_list.i245 = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %common.0, i32 0, i32 1
  %75 = ptrtoint ptr %orig_list.i245 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %orig_list.i245, align 4
  %77 = ptrtoint ptr %list.i244 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %list.i244, align 8
  %78 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %orig_list.i245, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !187
  %79 = ptrtoint ptr %orig_list.i245 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %list.i244, ptr %orig_list.i245, align 4
  %tobool.not.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i, label %kref_get.exit45.i.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

kref_get.exit45.i.hlist_add_head_rcu.exit.i_crit_edge: ; preds = %kref_get.exit45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %kref_get.exit45.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %76, i32 0, i32 1
  %80 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %list.i244, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %kref_get.exit45.i.hlist_add_head_rcu.exit.i_crit_edge
  %orig_list_count.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %common.0, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %orig_list_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %orig_list_count.i, i32 1, i32 3, i32 1) #11
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %orig_list_count.i, ptr %orig_list_count.i, i32 1, ptr elementtype(i32) %orig_list_count.i) #11, !srcloc !188
  br label %sync_flags.i

sync_flags.i:                                     ; preds = %hlist_add_head_rcu.exit.i, %if.then.i242
  %orig_entry.0.i = phi ptr [ %call.i240, %if.then.i242 ], [ %call.i.i243, %hlist_add_head_rcu.exit.i ]
  %82 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i47.i = add i32 %85, 1
  store volatile i32 %add.i.i.i.i47.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i48.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i48.i, label %sync_flags.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

sync_flags.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %sync_flags.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %sync_flags.i
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %sync_flags.i.rcu_read_lock.exit.i.i_crit_edge
  %orig_list.i.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %common.0, i32 0, i32 1
  %call.i49.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool.not.i50.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b47.i.i = load i1, ptr @batadv_tt_global_sync_flags.__warned, align 1
  br i1 %.b47.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_global_sync_flags.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1513, ptr noundef nonnull @.str.11) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %86 = ptrtoint ptr %orig_list.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %orig_list.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %87, null
  %add.ptr.i.i = getelementptr i8, ptr %87, i32 -8
  %tobool12.not6063.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not60.i.i = or i1 %tobool10.not.i.i, %tobool12.not6063.i.i
  br i1 %tobool12.not60.i.i, label %do.end.i.i.for.end.i.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %orig_entry.062.i.i = phi ptr [ %add.ptr27.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %flags.061.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.i.for.body.i.i_crit_edge ]
  %flags13.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.062.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %flags13.i.i, align 1
  %conv.i.i = zext i8 %89 to i32
  %or.i.i = or i32 %flags.061.i.i, %conv.i.i
  %list.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.062.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %list.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %91, null
  %add.ptr27.i.i = getelementptr i8, ptr %91, i32 -8
  %tobool12.not64.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i.i = or i1 %tobool23.not.i.i, %tobool12.not64.i.i
  br i1 %tobool12.not.i.i, label %for.end.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.i.i = trunc i32 %or.i.i to i16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.loopexit.i.i, %do.end.i.i.for.end.i.i_crit_edge
  %flags.0.lcssa.i.i = phi i16 [ 0, %do.end.i.i.for.end.i.i_crit_edge ], [ %phi.cast.i.i, %for.end.loopexit.i.i ]
  %call.i49.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i49.i.i, label %for.end.i.i.batadv_tt_global_sync_flags.exit.i_crit_edge, label %land.lhs.true.i52.i.i

for.end.i.i.batadv_tt_global_sync_flags.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_sync_flags.exit.i

land.lhs.true.i52.i.i:                            ; preds = %for.end.i.i
  %call1.i50.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i.i)
  %tobool.not.i51.i.i = icmp eq i32 %call1.i50.i.i, 0
  br i1 %tobool.not.i51.i.i, label %land.lhs.true.i52.i.i.batadv_tt_global_sync_flags.exit.i_crit_edge, label %land.lhs.true2.i54.i.i

land.lhs.true.i52.i.i.batadv_tt_global_sync_flags.exit.i_crit_edge: ; preds = %land.lhs.true.i52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_sync_flags.exit.i

land.lhs.true2.i54.i.i:                           ; preds = %land.lhs.true.i52.i.i
  %.b4.i53.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53.i.i, label %land.lhs.true2.i54.i.i.batadv_tt_global_sync_flags.exit.i_crit_edge, label %if.then.i55.i.i

land.lhs.true2.i54.i.i.batadv_tt_global_sync_flags.exit.i_crit_edge: ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_sync_flags.exit.i

if.then.i55.i.i:                                  ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %batadv_tt_global_sync_flags.exit.i

batadv_tt_global_sync_flags.exit.i:               ; preds = %if.then.i55.i.i, %land.lhs.true2.i54.i.i.batadv_tt_global_sync_flags.exit.i_crit_edge, %land.lhs.true.i52.i.i.batadv_tt_global_sync_flags.exit.i_crit_edge, %for.end.i.i.batadv_tt_global_sync_flags.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %92 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i56.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i56.i.i to ptr
  %preempt_count.i.i.i.i57.i.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i57.i.i, align 4
  %sub.i.i.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i57.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %flags31.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %common.0, i32 0, i32 3
  %96 = ptrtoint ptr %flags31.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %flags31.i.i, align 4
  %98 = and i16 %97, -241
  %conv35.i.i = or i16 %98, %flags.0.lcssa.i.i
  store i16 %conv35.i.i, ptr %flags31.i.i, align 4
  br label %batadv_tt_global_orig_entry_add.exit

batadv_tt_global_orig_entry_add.exit:             ; preds = %batadv_tt_global_sync_flags.exit.i, %if.end.i.batadv_tt_global_orig_entry_add.exit_crit_edge
  %orig_entry.1.i = phi ptr [ %orig_entry.0.i, %batadv_tt_global_sync_flags.exit.i ], [ null, %if.end.i.batadv_tt_global_orig_entry_add.exit_crit_edge ]
  tail call fastcc void @batadv_tt_orig_list_entry_put(ptr noundef %orig_entry.1.i) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i239) #11
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i204 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %99 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %log_level, align 4
  %and97 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %batadv_tt_global_orig_entry_add.exit.out_remove_crit_edge, label %if.then99

batadv_tt_global_orig_entry_add.exit.out_remove_crit_edge: ; preds = %batadv_tt_global_orig_entry_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_remove

if.then99:                                        ; preds = %batadv_tt_global_orig_entry_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %vid102 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %common.0, i32 0, i32 1
  %101 = ptrtoint ptr %vid102 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %vid102, align 2
  %conv.i = zext i16 %102 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i246 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i246, i32 -1, i32 %and2.i
  %call106 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.38, ptr noundef nonnull %common.0, i32 noundef %retval.0.i, ptr noundef %orig_node) #11
  br label %out_remove

out_remove:                                       ; preds = %if.then99, %batadv_tt_global_orig_entry_add.exit.out_remove_crit_edge, %batadv_tt_global_entry_has_orig.exit.thread, %if.then42
  %tt_global_entry.1 = phi ptr [ %call.i206, %if.then42 ], [ %common.0, %if.then99 ], [ %common.0, %batadv_tt_global_orig_entry_add.exit.out_remove_crit_edge ], [ %call.i, %batadv_tt_global_entry_has_orig.exit.thread ]
  %ret.0 = phi i1 [ false, %if.then42 ], [ true, %if.then99 ], [ true, %batadv_tt_global_orig_entry_add.exit.out_remove_crit_edge ], [ false, %batadv_tt_global_entry_has_orig.exit.thread ]
  %103 = ptrtoint ptr %tt_addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tt_addr, align 4
  %105 = and i32 %104, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.i247.not = icmp eq i32 %105, 0
  br i1 %tobool.i247.not, label %if.end112, label %out_remove.out_crit_edge

out_remove.out_crit_edge:                         ; preds = %out_remove
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end112:                                        ; preds = %out_remove
  %and114 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115 = icmp ne i32 %and114, 0
  %call116 = tail call zeroext i16 @batadv_tt_local_remove(ptr noundef %bat_priv, ptr noundef %tt_addr, i16 noundef zeroext %vid, ptr noundef nonnull @.str.39, i1 noundef zeroext %tobool115)
  %106 = and i16 %call116, 16
  %flags120 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_global_entry.1, i32 0, i32 3
  %107 = ptrtoint ptr %flags120 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %flags120, align 4
  %or122203 = or i16 %108, %106
  store i16 %or122203, ptr %flags120, align 4
  br i1 %tobool115, label %if.end112.out_crit_edge, label %if.then127

if.end112.out_crit_edge:                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then127:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %109 = and i16 %or122203, -3
  %110 = ptrtoint ptr %flags120 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %flags120, align 4
  br label %out

out:                                              ; preds = %if.then127, %if.end112.out_crit_edge, %out_remove.out_crit_edge, %if.then48.out_crit_edge, %if.then13.out_crit_edge, %land.lhs.true4.out_crit_edge
  %tt_global_entry.2 = phi ptr [ %tt_global_entry.1, %out_remove.out_crit_edge ], [ %tt_global_entry.1, %if.end112.out_crit_edge ], [ %tt_global_entry.1, %if.then127 ], [ %call.i, %if.then48.out_crit_edge ], [ null, %if.then13.out_crit_edge ], [ %call.i, %land.lhs.true4.out_crit_edge ]
  %ret.1.off0 = phi i1 [ %ret.0, %out_remove.out_crit_edge ], [ %ret.0, %if.end112.out_crit_edge ], [ %ret.0, %if.then127 ], [ false, %if.then48.out_crit_edge ], [ false, %if.then13.out_crit_edge ], [ false, %land.lhs.true4.out_crit_edge ]
  tail call fastcc void @batadv_tt_global_entry_put(ptr noundef %tt_global_entry.2)
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef %call.i205)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.1.off0, %out ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tt_local_resize_to_mtu(ptr noundef %soft_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %soft_iface, i32 2304
  %packet_size_max1 = getelementptr i8, ptr %soft_iface, i32 2328
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %packet_size_max1, i32 noundef 4) #11
  %0 = ptrtoint ptr %packet_size_max1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %packet_size_max1, align 4
  %commit_lock = getelementptr i8, ptr %soft_iface, i32 3436
  tail call void @_raw_spin_lock_bh(ptr noundef %commit_lock) #11
  %call342 = tail call fastcc i32 @batadv_tt_local_table_transmit_size(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call342)
  %cmp.not43 = icmp slt i32 %1, %call342
  br i1 %cmp.not43, label %if.end.lr.ph, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.lr.ph:                                     ; preds = %entry
  %log_level = getelementptr i8, ptr %soft_iface, i32 2360
  br label %if.end

if.end:                                           ; preds = %do.end22.if.end_crit_edge, %if.end.lr.ph
  %timeout.044 = phi i32 [ 300000, %if.end.lr.ph ], [ %div, %do.end22.if.end_crit_edge ]
  tail call fastcc void @batadv_tt_local_purge(ptr noundef %add.ptr.i, i32 noundef %timeout.044)
  tail call fastcc void @batadv_tt_local_purge_pending_clients(ptr noundef %add.ptr.i)
  %div = sdiv i32 %timeout.044, 2
  %call4 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.do.end22_crit_edge, label %do.body6

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

do.body6:                                         ; preds = %if.end
  %call.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %2 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body6.if.end13_crit_edge, label %if.then11

do.body6.if.end13_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.15, i32 noundef %1) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body6.if.end13_crit_edge
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %soft_iface, i32 noundef %1) #14
  br label %do.end22

do.end22:                                         ; preds = %if.end13, %if.end.do.end22_crit_edge
  %call3 = tail call fastcc i32 @batadv_tt_local_table_transmit_size(ptr noundef %add.ptr.i)
  %cmp.not = icmp slt i32 %1, %call3
  br i1 %cmp.not, label %do.end22.if.end_crit_edge, label %if.then24

do.end22.if.end_crit_edge:                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then24:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_tt_local_commit_changes_nolock(ptr noundef %add.ptr.i)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %entry.if.end25_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %commit_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_local_purge(ptr noundef %bat_priv, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %local_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %local_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_hash, align 4
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 1
  %log_level.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %batadv_tt_local_purge_list.exit.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %batadv_tt_local_purge_list.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.010
  %6 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_locks, align 4
  %arrayidx1 = getelementptr %struct.spinlock, ptr %7, i32 %i.010
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1) #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 -8
  %tobool2.not4043.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not40.i = or i1 %tobool.not.i, %tobool2.not4043.i
  br i1 %tobool2.not40.i, label %for.body.batadv_tt_local_purge_list.exit_crit_edge, label %for.body.land.rhs.i_crit_edge

for.body.land.rhs.i_crit_edge:                    ; preds = %for.body
  br label %land.rhs.i

for.body.batadv_tt_local_purge_list.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_purge_list.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.land.rhs.i_crit_edge
  %tt_common_entry.041.i = phi ptr [ %add.ptr24.i, %for.inc.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %for.body.land.rhs.i_crit_edge ]
  %hash_entry.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.041.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_entry.i, align 4
  %flags.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.041.i, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 4
  %14 = and i16 %13, 1280
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %if.end15.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end15.i:                                       ; preds = %land.rhs.i
  %last_seen.i = getelementptr inbounds %struct.batadv_tt_local_entry, ptr %tt_common_entry.041.i, i32 0, i32 1
  %16 = ptrtoint ptr %last_seen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_seen.i, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #11
  %add.i.i = add i32 %call2.i.i.i, %17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end17.i, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end17.i:                                       ; preds = %if.end15.i
  tail call fastcc void @batadv_tt_local_event(ptr noundef %bat_priv, ptr noundef nonnull %tt_common_entry.041.i, i8 noundef zeroext 1) #11
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i, align 4
  %21 = or i16 %20, 1024
  store i16 %21, ptr %flags.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %log_level.i.i, align 4
  %and.i.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end17.i.for.inc.i_crit_edge, label %if.then.i.i

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %vid.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.041.i, i32 0, i32 1
  %24 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vid.i.i, align 2
  %conv.i.i.i = zext i16 %25 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and2.i.i.i = and i32 %conv.i.i.i, 4095
  %retval.0.i.i37.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %and2.i.i.i
  %call7.i.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.33, ptr noundef nonnull %tt_common_entry.041.i, i32 noundef %retval.0.i.i37.i, ptr noundef nonnull @.str.40) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.end17.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %tobool20.not.i = icmp eq ptr %11, null
  %add.ptr24.i = getelementptr i8, ptr %11, i32 -8
  %tobool2.not44.i = icmp eq ptr %add.ptr24.i, null
  %tobool2.not.i = or i1 %tobool20.not.i, %tobool2.not44.i
  br i1 %tobool2.not.i, label %for.inc.i.batadv_tt_local_purge_list.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc.i.batadv_tt_local_purge_list.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_local_purge_list.exit

batadv_tt_local_purge_list.exit:                  ; preds = %for.inc.i.batadv_tt_local_purge_list.exit_crit_edge, %for.body.batadv_tt_local_purge_list.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1) #11
  %inc = add nuw i32 %i.010, 1
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %batadv_tt_local_purge_list.exit.for.body_crit_edge, label %batadv_tt_local_purge_list.exit.for.end_crit_edge

batadv_tt_local_purge_list.exit.for.end_crit_edge: ; preds = %batadv_tt_local_purge_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

batadv_tt_local_purge_list.exit.for.body_crit_edge: ; preds = %batadv_tt_local_purge_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %batadv_tt_local_purge_list.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_local_purge_pending_clients(ptr noundef %bat_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %local_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %local_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_hash, align 4
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
  %cmp67.not = icmp eq i32 %3, 0
  br i1 %cmp67.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 1
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.068
  %6 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_locks, align 4
  %arrayidx1 = getelementptr %struct.spinlock, ptr %7, i32 %i.068
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1) #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -8
  %tobool5.not6569 = icmp eq ptr %add.ptr, null
  %tobool5.not65 = or i1 %tobool2.not, %tobool5.not6569
  br i1 %tobool5.not65, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %tt_common.066 = phi ptr [ %add.ptr29, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.066, i32 0, i32 2
  %10 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_entry, align 4
  %flags = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.066, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 4
  %14 = and i16 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool9.not = icmp eq i16 %14, 0
  br i1 %tobool9.not, label %land.rhs.for.inc_crit_edge, label %do.body

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %land.rhs
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %15 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %log_level, align 4
  %and12 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body.if.end17_crit_edge, label %if.then14

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %vid = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.066, i32 0, i32 1
  %17 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vid, align 2
  %conv.i = zext i16 %18 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %call16 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.41, ptr noundef nonnull %tt_common.066, i32 noundef %retval.0.i) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.body.if.end17_crit_edge
  %vid18 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.066, i32 0, i32 1
  %19 = ptrtoint ptr %vid18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vid18, align 2
  tail call fastcc void @batadv_tt_local_size_mod(ptr noundef %bat_priv, i16 noundef zeroext %20, i32 noundef -1) #11
  %21 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hash_entry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.066, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev2.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %22, ptr %24, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end17.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end17.hlist_del_rcu.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end17.hlist_del_rcu.exit_crit_edge
  %27 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef nonnull %tt_common.066)
  br label %for.inc

for.inc:                                          ; preds = %hlist_del_rcu.exit, %land.rhs.for.inc_crit_edge
  %tobool25.not = icmp eq ptr %11, null
  %add.ptr29 = getelementptr i8, ptr %11, i32 -8
  %tobool5.not70 = icmp eq ptr %add.ptr29, null
  %tobool5.not = or i1 %tobool25.not, %tobool5.not70
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1) #11
  %inc = add nuw i32 %i.068, 1
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %29
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_tt_init(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %local_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_hash.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @batadv_hash_new(i32 noundef 1024) #11
  %2 = ptrtoint ptr %local_hash.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %local_hash.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_hash_set_lock_class(ptr noundef nonnull %call.i, ptr noundef nonnull @batadv_tt_local_hash_lock_class_key) #11
  br label %if.end

if.end:                                           ; preds = %if.end7.i, %entry.if.end_crit_edge
  %global_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %3 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %global_hash.i, align 4
  %tobool.not.i48 = icmp eq ptr %4, null
  br i1 %tobool.not.i48, label %if.end.i51, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end.i51:                                       ; preds = %if.end
  %call.i49 = tail call ptr @batadv_hash_new(i32 noundef 1024) #11
  %5 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i49, ptr %global_hash.i, align 4
  %tobool5.not.i50 = icmp eq ptr %call.i49, null
  br i1 %tobool5.not.i50, label %if.then3, label %if.end7.i52

if.end7.i52:                                      ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @batadv_hash_set_lock_class(ptr noundef nonnull %call.i49, ptr noundef nonnull @batadv_tt_global_hash_lock_class_key) #11
  br label %if.end4

if.then3:                                         ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_tt_local_table_free(ptr noundef %bat_priv)
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i52, %if.end.if.end4_crit_edge
  tail call void @batadv_tvlv_handler_register(ptr noundef %bat_priv, ptr noundef nonnull @batadv_tt_tvlv_ogm_handler_v1, ptr noundef nonnull @batadv_tt_tvlv_unicast_handler_v1, i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  tail call void @batadv_tvlv_handler_register(ptr noundef %bat_priv, ptr noundef null, ptr noundef nonnull @batadv_roam_tvlv_unicast_handler_v1, i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %work = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 15
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %6 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @batadv_tt_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry17 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 15, i32 0, i32 1
  %7 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 15, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 15, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @batadv_tt_purge, ptr %func, align 4
  %timer = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @batadv_tt_init.__key.19) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %10 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i54 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 500) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ 1, %if.end4 ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_tt_tvlv_ogm_handler_v1(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %flags, ptr nocapture noundef readonly %tvlv_value, i16 noundef zeroext %tvlv_value_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %tvlv_value_len)
  %cmp = icmp ult i16 %tvlv_value_len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i16 %tvlv_value_len, -4
  %num_vlan4 = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 0, i32 2
  %0 = ptrtoint ptr %num_vlan4 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vlan4, align 2
  %conv5 = zext i16 %sub to i32
  %conv6 = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv6, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv5)
  %cmp7 = icmp ugt i32 %mul, %conv5
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add.ptr = getelementptr %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 1
  %add.ptr12 = getelementptr %struct.batadv_tvlv_tt_vlan_data, ptr %add.ptr, i32 %conv6
  %2 = trunc i32 %mul to i16
  %conv17 = sub i16 %sub, %2
  %div23.i = udiv i16 %conv17, 12
  %ttvn = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 0, i32 1
  %3 = ptrtoint ptr %ttvn to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ttvn, align 1
  %last_ttvn.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %last_ttvn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %last_ttvn.i, align 4
  %capa_initialized.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 14
  %7 = ptrtoint ptr %capa_initialized.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %capa_initialized.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.i = icmp eq i8 %4, 1
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end10.if.then.i_crit_edge, label %lor.lhs.false.i

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end10
  %conv5.i = zext i8 %4 to i32
  %conv6.i = and i32 %6, 255
  %sub.i = sub nsw i32 %conv5.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp7.i = icmp eq i32 %sub.i, 1
  br i1 %cmp7.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %conv17)
  %10 = icmp ult i16 %conv17, 12
  br i1 %10, label %if.then.i.do.body.i_crit_edge, label %if.end.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i:                                         ; preds = %if.then.i
  %tt_lock.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 19
  tail call void @_raw_spin_lock_bh(ptr noundef %tt_lock.i) #11
  tail call fastcc void @batadv_tt_update_changes(ptr noundef %bat_priv, ptr noundef %orig, i16 noundef zeroext %div23.i, i8 noundef zeroext %4, ptr noundef %add.ptr12) #11
  tail call fastcc void @batadv_tt_global_update_crc(ptr noundef %bat_priv, ptr noundef %orig) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %tt_lock.i) #11
  %call12.i = tail call fastcc zeroext i1 @batadv_tt_global_check_crc(ptr noundef %orig, ptr noundef %add.ptr, i16 noundef zeroext %1) #11
  br i1 %call12.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %lor.lhs.false.i
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i, i32 %conv5.i)
  %cmp19.not.i = icmp eq i32 %conv6.i, %conv5.i
  %or.cond66.i = select i1 %tobool.not.not.i, i1 %cmp19.not.i, i1 false
  br i1 %or.cond66.i, label %lor.lhs.false21.i, label %if.else.i.do.body.i_crit_edge

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

lor.lhs.false21.i:                                ; preds = %if.else.i
  %call22.i = tail call fastcc zeroext i1 @batadv_tt_global_check_crc(ptr noundef %orig, ptr noundef %add.ptr, i16 noundef zeroext %1) #11
  br i1 %call22.i, label %lor.lhs.false21.i.cleanup_crit_edge, label %lor.lhs.false21.i.do.body.i_crit_edge

lor.lhs.false21.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

lor.lhs.false21.i.cleanup_crit_edge:              ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i:                                        ; preds = %lor.lhs.false21.i.do.body.i_crit_edge, %if.else.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %full_table.0.off0.i = phi i1 [ true, %if.end.i.do.body.i_crit_edge ], [ true, %lor.lhs.false21.i.do.body.i_crit_edge ], [ true, %if.else.i.do.body.i_crit_edge ], [ false, %if.then.i.do.body.i_crit_edge ]
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i67.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %do.body.i.if.end31.i_crit_edge, label %if.then26.i

do.body.i.if.end31.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then26.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv27.i = zext i8 %4 to i32
  %conv28.i = and i32 %6, 255
  %conv29.i = zext i16 %div23.i to i32
  %call30.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.42, ptr noundef %orig, i32 noundef %conv27.i, i32 noundef %conv28.i, i32 noundef %conv29.i) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %do.body.i.if.end31.i_crit_edge
  %call.i.i = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end31.i.batadv_send_tt_request.exit.i_crit_edge, label %if.end.i.i

if.end31.i.batadv_send_tt_request.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_send_tt_request.exit.i

if.end.i.i:                                       ; preds = %if.end31.i
  %req_list_lock.i.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %req_list_lock.i.i.i) #11
  %req_list.i.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 6
  %13 = ptrtoint ptr %req_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req_list.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -16
  %tobool3.not4649.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool3.not46.i.i.i = or i1 %tobool.not.i.i.i, %tobool3.not4649.i.i.i
  br i1 %tobool3.not46.i.i.i, label %if.end.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.for.end.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %15 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %orig, align 4
  %add.ptr1.i.i.i.i.i.i = getelementptr i8, ptr %orig, i32 4
  %17 = ptrtoint ptr %add.ptr1.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i.i.i.i.i.i, align 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %tt_req_node_tmp.047.i.i.i = phi ptr [ %add.ptr.i.i.i, %for.body.lr.ph.i.i.i ], [ %add.ptr11.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %tt_req_node_tmp.047.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tt_req_node_tmp.047.i.i.i, align 4
  %xor.i.i.i.i.i.i = xor i32 %20, %16
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %tt_req_node_tmp.047.i.i.i, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i.i = xor i16 %22, %18
  %xor3.i.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %xor.i.i.i.i.i.i, %xor3.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %issued_at.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %tt_req_node_tmp.047.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %issued_at.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %issued_at.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i.i = sub i32 %add.i.i.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.batadv_tt_req_node_new.exit.thread.i.i_crit_edge

land.lhs.true.i.i.i.batadv_tt_req_node_new.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_req_node_new.exit.thread.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %list.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %tt_req_node_tmp.047.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %27, null
  %add.ptr11.i.i.i = getelementptr i8, ptr %27, i32 -16
  %tobool3.not50.i.i.i = icmp eq ptr %add.ptr11.i.i.i, null
  %tobool3.not.i.i.i = or i1 %tobool7.not.i.i.i, %tobool3.not50.i.i.i
  br i1 %tobool3.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end.i.i.for.end.i.i.i_crit_edge
  %28 = load ptr, ptr @batadv_tt_req_cache, align 4
  %call15.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %28, i32 noundef 2592) #11
  %tobool16.not.i.i.i = icmp eq ptr %call15.i.i.i, null
  br i1 %tobool16.not.i.i.i, label %for.end.i.i.i.batadv_tt_req_node_new.exit.thread.i.i_crit_edge, label %if.end18.i.i.i

for.end.i.i.i.batadv_tt_req_node_new.exit.thread.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_req_node_new.exit.thread.i.i

if.end18.i.i.i:                                   ; preds = %for.end.i.i.i
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %call15.i.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #11
  %29 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %refcount.i.i.i, align 4
  %30 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %orig, align 4
  %32 = ptrtoint ptr %call15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call15.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %orig, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %call15.i.i.i, i32 4
  %35 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %issued_at20.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %call15.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %issued_at20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %issued_at20.i.i.i, align 8
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end18.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !180

if.end18.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end18.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %39 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.kref_get.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !174

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.kref_get.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end18.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end18.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #11
  br label %kref_get.exit.i.i.i

kref_get.exit.i.i.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.kref_get.exit.i.i.i_crit_edge
  %list22.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %call15.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %req_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %req_list.i.i.i, align 4
  %42 = ptrtoint ptr %list22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %list22.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i.i, label %kref_get.exit.i.i.i.if.end4.i.i_crit_edge, label %do.body12.i.i.i.i

kref_get.exit.i.i.i.if.end4.i.i_crit_edge:        ; preds = %kref_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

do.body12.i.i.i.i:                                ; preds = %kref_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list22.i.i.i, ptr %pprev.i.i.i.i, align 4
  br label %if.end4.i.i

batadv_tt_req_node_new.exit.thread.i.i:           ; preds = %for.end.i.i.i.batadv_tt_req_node_new.exit.thread.i.i_crit_edge, %land.lhs.true.i.i.i.batadv_tt_req_node_new.exit.thread.i.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %req_list_lock.i.i.i) #11
  br label %if.end.i.i.i

if.end4.i.i:                                      ; preds = %do.body12.i.i.i.i, %kref_get.exit.i.i.i.if.end4.i.i_crit_edge
  %44 = ptrtoint ptr %req_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %list22.i.i.i, ptr %req_list.i.i.i, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %call15.i.i.i, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %req_list.i.i.i, ptr %pprev34.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %req_list_lock.i.i.i) #11
  %add.i.i = or i32 %mul, 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 2848) #15
  %tobool6.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.end4.i.i.if.end.i.i.i_crit_edge, label %if.end8.i.i

if.end4.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %46 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %call9.i.i.i.i, align 128
  %ttvn9.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %call9.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %ttvn9.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %4, ptr %ttvn9.i.i, align 1
  %num_vlan10.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %call9.i.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %num_vlan10.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %1, ptr %num_vlan10.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp58.not.i.i = icmp eq i16 %1, 0
  br i1 %cmp58.not.i.i, label %if.end8.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

if.end8.i.i.for.end.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.end8.i.i
  %add.ptr.i.i = getelementptr %struct.batadv_tvlv_tt_data, ptr %call9.i.i.i.i, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.061.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %tt_vlan_req.060.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %tt_vlan.addr.059.i.i = phi ptr [ %incdec.ptr15.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr, %for.body.preheader.i.i ]
  %vid.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan.addr.059.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vid.i.i, align 2
  %vid13.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan_req.060.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %vid13.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %vid13.i.i, align 2
  %52 = ptrtoint ptr %tt_vlan.addr.059.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %tt_vlan.addr.059.i.i, align 2
  %54 = ptrtoint ptr %tt_vlan_req.060.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %tt_vlan_req.060.i.i, align 2
  %incdec.ptr.i.i = getelementptr %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan_req.060.i.i, i32 1
  %incdec.ptr15.i.i = getelementptr %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan.addr.059.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.061.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv6
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end8.i.i.for.end.i.i_crit_edge
  br i1 %full_table.0.off0.i, label %if.then17.i.i, label %for.end.i.i.do.body.i.i_crit_edge

for.end.i.i.do.body.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.then17.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %call9.i.i.i.i, align 128
  %57 = or i8 %56, 16
  store i8 %57, ptr %call9.i.i.i.i, align 128
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then17.i.i, %for.end.i.i.do.body.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %58 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %log_level.i, align 4
  %and.i.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool23.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool23.not.i.i, label %do.body.i.i.if.end28.i.i_crit_edge, label %if.then24.i.i

do.body.i.i.if.end28.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.then24.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond.i.i = select i1 %full_table.0.off0.i, i32 70, i32 46
  %call27.i.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.44, ptr noundef %orig, i32 noundef %cond.i.i) #11
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then24.i.i, %do.body.i.i.if.end28.i.i_crit_edge
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %bat_counters.i.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %61 = ptrtoint ptr %bat_counters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bat_counters.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i64, ptr %62, i32 17
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  %64 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx14.i.i.i, align 4
  %add.i.i.i = add i32 %69, %63
  %70 = inttoptr i32 %add.i.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %70, align 8
  %add15.i.i.i = add i64 %72, 1
  store i64 %add15.i.i.i, ptr %70, align 8
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i.i.i = and i32 %73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i, label %if.then.i.i.i, label %if.end28.i.i.batadv_add_counter.exit.i.i_crit_edge, !prof !180

if.end28.i.i.batadv_add_counter.exit.i.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit.i.i

batadv_add_counter.exit.i.i:                      ; preds = %if.then.i.i.i, %if.end28.i.i.batadv_add_counter.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #11, !srcloc !186
  %net_dev.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net_dev.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 86
  %76 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_addr.i.i, align 64
  %conv31.i.i = trunc i32 %add.i.i to i16
  tail call void @batadv_tvlv_unicast_send(ptr noundef %bat_priv, ptr noundef %77, ptr noundef %orig, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull %call9.i.i.i.i, i16 noundef zeroext %conv31.i.i) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %batadv_add_counter.exit.i.i, %if.end4.i.i.if.end.i.i.i_crit_edge, %batadv_tt_req_node_new.exit.thread.i.i
  %tvlv_tt_data.0.i.i = phi ptr [ %call9.i.i.i.i, %batadv_add_counter.exit.i.i ], [ null, %if.end4.i.i.if.end.i.i.i_crit_edge ], [ null, %batadv_tt_req_node_new.exit.thread.i.i ]
  %tt_req_node.0.i.i = phi ptr [ %call15.i.i.i, %batadv_add_counter.exit.i.i ], [ %call15.i.i.i, %if.end4.i.i.if.end.i.i.i_crit_edge ], [ null, %batadv_tt_req_node_new.exit.thread.i.i ]
  %ret.0.off0.i.i = phi i1 [ false, %batadv_add_counter.exit.i.i ], [ true, %if.end4.i.i.if.end.i.i.i_crit_edge ], [ true, %batadv_tt_req_node_new.exit.thread.i.i ]
  %refcount.i4.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i5.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i4.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i4.i.i, i32 1, i32 3, i32 1) #11
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i4.i.i, ptr %refcount.i4.i.i, i32 1, ptr elementtype(i32) %refcount.i4.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i7.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i6.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i6.i.i, label %if.end5.i.i.i.i.i.i.i.batadv_hardif_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.i.batadv_hardif_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i4.i.i, i32 noundef 3) #11
  br label %batadv_hardif_put.exit.i.i

if.then.i.i7.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_hardif_release(ptr noundef %refcount.i4.i.i) #11
  br label %batadv_hardif_put.exit.i.i

batadv_hardif_put.exit.i.i:                       ; preds = %if.then.i.i7.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.batadv_hardif_put.exit.i.i_crit_edge
  %tobool34.not.i.i = icmp eq ptr %tt_req_node.0.i.i, null
  %or.cond.i.i = select i1 %ret.0.off0.i.i, i1 true, i1 %tobool34.not.i.i
  br i1 %or.cond.i.i, label %if.end43.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %batadv_hardif_put.exit.i.i
  tail call void @_raw_spin_lock_bh(ptr noundef %req_list_lock.i.i.i) #11
  %list.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %tt_req_node.0.i.i, i32 0, i32 3
  %pprev.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %tt_req_node.0.i.i, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i8.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i8.i.i, label %if.then35.i.i.if.end40.i.i_crit_edge, label %if.then.i10.i.i

if.then35.i.i.if.end40.i.i_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.i

if.then.i10.i.i:                                  ; preds = %if.then35.i.i
  %81 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %list.i.i, align 8
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %82, ptr %80, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %82, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i10.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i10.i.i.__hlist_del.exit.i.i.i_crit_edge: ; preds = %if.then.i10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %80, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i10.i.i.__hlist_del.exit.i.i.i_crit_edge
  %85 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %list.i.i, align 8
  %86 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %pprev.i.i.i, align 4
  %refcount.i13.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %tt_req_node.0.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i14.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i13.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i13.i.i, i32 1, i32 3, i32 1) #11
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i13.i.i, ptr %refcount.i13.i.i, i32 1, ptr elementtype(i32) %refcount.i13.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i15.i.i = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i15.i.i)
  %cmp.i.i.i.i.i16.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i15.i.i, 1
  br i1 %cmp.i.i.i.i.i16.i.i, label %if.then.i.i21.i.i, label %if.end5.i.i.i.i.i19.i.i

if.end5.i.i.i.i.i19.i.i:                          ; preds = %__hlist_del.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i15.i.i)
  %.not.i.i.i.i.i18.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i15.i.i, 0
  br i1 %.not.i.i.i.i.i18.i.i, label %if.end5.i.i.i.i.i19.i.i.if.end40.i.i_crit_edge, label %if.then10.i.i.i.i.i20.i.i, !prof !174

if.end5.i.i.i.i.i19.i.i.if.end40.i.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.i

if.then10.i.i.i.i.i20.i.i:                        ; preds = %if.end5.i.i.i.i.i19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i13.i.i, i32 noundef 3) #11
  br label %if.end40.i.i

if.then.i.i21.i.i:                                ; preds = %__hlist_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %88 = load ptr, ptr @batadv_tt_req_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %88, ptr noundef nonnull %tt_req_node.0.i.i) #11
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then.i.i21.i.i, %if.then10.i.i.i.i.i20.i.i, %if.end5.i.i.i.i.i19.i.i.if.end40.i.i_crit_edge, %if.then35.i.i.if.end40.i.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %req_list_lock.i.i.i) #11
  br label %if.end.i27.i.i

if.end43.i.i:                                     ; preds = %batadv_hardif_put.exit.i.i
  br i1 %tobool34.not.i.i, label %if.end43.i.i.batadv_send_tt_request.exit.i_crit_edge, label %if.end43.i.i.if.end.i27.i.i_crit_edge

if.end43.i.i.if.end.i27.i.i_crit_edge:            ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i27.i.i

if.end43.i.i.batadv_send_tt_request.exit.i_crit_edge: ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_send_tt_request.exit.i

if.end.i27.i.i:                                   ; preds = %if.end43.i.i.if.end.i27.i.i_crit_edge, %if.end40.i.i
  %refcount.i23.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %tt_req_node.0.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i24.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i23.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i23.i.i, i32 1, i32 3, i32 1) #11
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i23.i.i, ptr %refcount.i23.i.i, i32 1, ptr elementtype(i32) %refcount.i23.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i25.i.i = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i25.i.i)
  %cmp.i.i.i.i.i26.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i25.i.i, 1
  br i1 %cmp.i.i.i.i.i26.i.i, label %if.then.i.i31.i.i, label %if.end5.i.i.i.i.i29.i.i

if.end5.i.i.i.i.i29.i.i:                          ; preds = %if.end.i27.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i25.i.i)
  %.not.i.i.i.i.i28.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i25.i.i, 0
  br i1 %.not.i.i.i.i.i28.i.i, label %if.end5.i.i.i.i.i29.i.i.batadv_send_tt_request.exit.i_crit_edge, label %if.then10.i.i.i.i.i30.i.i, !prof !174

if.end5.i.i.i.i.i29.i.i.batadv_send_tt_request.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_send_tt_request.exit.i

if.then10.i.i.i.i.i30.i.i:                        ; preds = %if.end5.i.i.i.i.i29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i23.i.i, i32 noundef 3) #11
  br label %batadv_send_tt_request.exit.i

if.then.i.i31.i.i:                                ; preds = %if.end.i27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %90 = load ptr, ptr @batadv_tt_req_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %90, ptr noundef nonnull %tt_req_node.0.i.i) #11
  br label %batadv_send_tt_request.exit.i

batadv_send_tt_request.exit.i:                    ; preds = %if.then.i.i31.i.i, %if.then10.i.i.i.i.i30.i.i, %if.end5.i.i.i.i.i29.i.i.batadv_send_tt_request.exit.i_crit_edge, %if.end43.i.i.batadv_send_tt_request.exit.i_crit_edge, %if.end31.i.batadv_send_tt_request.exit.i_crit_edge
  %tvlv_tt_data.0385055.i.i = phi ptr [ %tvlv_tt_data.0.i.i, %if.end43.i.i.batadv_send_tt_request.exit.i_crit_edge ], [ %tvlv_tt_data.0.i.i, %if.end5.i.i.i.i.i29.i.i.batadv_send_tt_request.exit.i_crit_edge ], [ %tvlv_tt_data.0.i.i, %if.then10.i.i.i.i.i30.i.i ], [ %tvlv_tt_data.0.i.i, %if.then.i.i31.i.i ], [ null, %if.end31.i.batadv_send_tt_request.exit.i_crit_edge ]
  tail call void @kfree(ptr noundef %tvlv_tt_data.0385055.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %batadv_send_tt_request.exit.i, %lor.lhs.false21.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_tt_tvlv_unicast_handler_v1(ptr noundef %bat_priv, ptr noundef %src, ptr noundef %dst, ptr nocapture noundef readonly %tvlv_value, i16 noundef zeroext %tvlv_value_len) #0 align 64 {
entry:
  %tt_change.i8.i = alloca ptr, align 4
  %tvlv_tt_data.i9.i = alloca ptr, align 4
  %tt_len.i10.i = alloca i32, align 4
  %tvlv_tt_data.i.i = alloca ptr, align 4
  %tt_change.i.i = alloca ptr, align 4
  %tt_len.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %tvlv_value_len)
  %cmp = icmp ult i16 %tvlv_value_len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i16 %tvlv_value_len, -4
  %num_vlan = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 0, i32 2
  %0 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vlan, align 2
  %mul = shl i16 %1, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %mul)
  %cmp9 = icmp ult i16 %sub, %mul
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %sub15 = sub i16 %sub, %mul
  %div23.i = udiv i16 %sub15, 12
  %2 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tvlv_value, align 2
  %4 = and i8 %3, 15
  %and = zext i8 %4 to i32
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end12.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb34
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %bat_counters.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %7 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %8, i32 18
  %9 = ptrtoint ptr %arrayidx.i to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !162) #11
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
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.batadv_add_counter.exit_crit_edge, !prof !180

sw.bb.batadv_add_counter.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %sw.bb.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !186
  %call.i = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %bat_priv, ptr noundef %dst) #11
  br i1 %call.i, label %if.then.i88, label %if.end.i

if.then.i88:                                      ; preds = %batadv_add_counter.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tvlv_tt_data.i.i) #11
  %20 = ptrtoint ptr %tvlv_tt_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tvlv_tt_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tt_change.i.i) #11
  %21 = ptrtoint ptr %tt_change.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %tt_change.i.i, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tt_len.i.i) #11
  %log_level.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %log_level.i.i, align 4
  %and.i.i87 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i87)
  %tobool.not.i.i = icmp eq i32 %and.i.i87, 0
  br i1 %tobool.not.i.i, label %if.then.i88.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i88.if.end.i.i_crit_edge:                 ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #13
  %ttvn.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 0, i32 1
  %24 = ptrtoint ptr %ttvn.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ttvn.i.i, align 1
  %conv.i.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tvlv_value, align 2
  %28 = and i8 %27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool3.not.i.i = icmp eq i8 %28, 0
  %cond.i.i = select i1 %tobool3.not.i.i, i32 46, i32 70
  %call4.i.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.47, ptr noundef %src, i32 noundef %conv.i.i, i32 noundef %cond.i.i) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i88.if.end.i.i_crit_edge
  %tt.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36
  %commit_lock.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %commit_lock.i.i) #11
  %call.i.i3.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tt.i.i, i32 noundef 4) #11
  %29 = ptrtoint ptr %tt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %tt.i.i, align 4
  %ttvn8.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 0, i32 1
  %31 = ptrtoint ptr %ttvn8.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ttvn8.i.i, align 1
  %call9.i.i = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %src) #11
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %batadv_orig_node_put.exit.thread.i.i, label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %call13.i.i = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) #11
  %tobool14.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool14.not.i.i, label %if.end12.i.i.if.end.i.i.i_crit_edge, label %if.end16.i.i

if.end12.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end16.i.i:                                     ; preds = %if.end12.i.i
  %33 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tvlv_value, align 2
  %35 = and i8 %34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool20.not.i.i = icmp eq i8 %35, 0
  %36 = trunc i32 %30 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %36)
  %cmp.not.i.i = icmp eq i8 %32, %36
  %or.cond.i.i = select i1 %tobool20.not.i.i, i1 %cmp.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end28.i.i, label %if.end16.i.i.if.else47.i.i_crit_edge

if.end16.i.i.if.else47.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47.i.i

if.end28.i.i:                                     ; preds = %if.end16.i.i
  %last_changeset.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 11
  %37 = ptrtoint ptr %last_changeset.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %last_changeset.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %38, null
  br i1 %tobool26.not.i.i, label %if.end28.i.i.if.else47.i.i_crit_edge, label %if.then30.i.i

if.end28.i.i.if.else47.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47.i.i

if.then30.i.i:                                    ; preds = %if.end28.i.i
  %last_changeset_lock.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %last_changeset_lock.i.i) #11
  %last_changeset_len.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 12
  %39 = ptrtoint ptr %last_changeset_len.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %last_changeset_len.i.i, align 4
  %conv33.i.i = sext i16 %40 to i32
  %41 = ptrtoint ptr %tt_len.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv33.i.i, ptr %tt_len.i.i, align 4
  %call34.i.i = call fastcc zeroext i16 @batadv_tt_prepare_tvlv_local_data(ptr noundef %bat_priv, ptr noundef nonnull %tvlv_tt_data.i.i, ptr noundef nonnull %tt_change.i.i, ptr noundef nonnull %tt_len.i.i) #11
  %42 = ptrtoint ptr %tt_len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tt_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool35.not.i.i = icmp eq i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call34.i.i)
  %tobool37.not.i.i = icmp eq i16 %call34.i.i, 0
  %or.cond1.i.i = select i1 %tobool35.not.i.i, i1 true, i1 %tobool37.not.i.i
  br i1 %or.cond1.i.i, label %unlock.i.i, label %if.end60.i.i

if.else47.i.i:                                    ; preds = %if.end28.i.i.if.else47.i.i_crit_edge, %if.end16.i.i.if.else47.i.i_crit_edge
  %call.i.i4.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tt.i.i, i32 noundef 4) #11
  %44 = ptrtoint ptr %tt.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %tt.i.i, align 4
  %46 = ptrtoint ptr %tt_len.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %tt_len.i.i, align 4
  %call52.i.i = call fastcc zeroext i16 @batadv_tt_prepare_tvlv_local_data(ptr noundef %bat_priv, ptr noundef nonnull %tvlv_tt_data.i.i, ptr noundef nonnull %tt_change.i.i, ptr noundef nonnull %tt_len.i.i) #11
  %47 = ptrtoint ptr %tt_len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tt_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool53.not.i.i = icmp eq i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call52.i.i)
  %tobool55.not.i.i = icmp eq i16 %call52.i.i, 0
  %or.cond2.i.i = select i1 %tobool53.not.i.i, i1 true, i1 %tobool55.not.i.i
  br i1 %or.cond2.i.i, label %if.else47.i.i.if.end.i.i.i_crit_edge, label %if.then64.i.i

if.else47.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end60.i.i:                                     ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %tt_change.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tt_change.i.i, align 4
  %51 = ptrtoint ptr %last_changeset.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %last_changeset.i.i, align 4
  %53 = ptrtoint ptr %last_changeset_len.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %last_changeset_len.i.i, align 4
  %conv44.i.i = sext i16 %54 to i32
  %55 = call ptr @memcpy(ptr %50, ptr %52, i32 %conv44.i.i)
  tail call void @_raw_spin_unlock_bh(ptr noundef %last_changeset_lock.i.i) #11
  %56 = ptrtoint ptr %tvlv_tt_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tvlv_tt_data.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %57, align 2
  %ttvn62.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %ttvn62.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %32, ptr %ttvn62.i.i, align 1
  br label %do.body69.i.i

if.then64.i.i:                                    ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv51.i.i = trunc i32 %45 to i8
  %local_hash.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %60 = ptrtoint ptr %local_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %local_hash.i.i, align 4
  %62 = ptrtoint ptr %tt_change.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tt_change.i.i, align 4
  %conv59.i.i = trunc i32 %48 to i16
  tail call fastcc void @batadv_tt_tvlv_generate(ptr noundef %61, ptr noundef %63, i16 noundef zeroext %conv59.i.i, ptr noundef nonnull @batadv_tt_local_valid, ptr noundef null) #11
  %64 = ptrtoint ptr %tvlv_tt_data.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tvlv_tt_data.i.i, align 4
  %ttvn6223.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %ttvn6223.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv51.i.i, ptr %ttvn6223.i.i, align 1
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 20, ptr %65, align 2
  br label %do.body69.i.i

do.body69.i.i:                                    ; preds = %if.then64.i.i, %if.end60.i.i
  %68 = phi ptr [ %57, %if.end60.i.i ], [ %65, %if.then64.i.i ]
  %tvlv_len.028.i.i = phi i16 [ %call34.i.i, %if.end60.i.i ], [ %call52.i.i, %if.then64.i.i ]
  %req_ttvn.026.i.i = phi i8 [ %32, %if.end60.i.i ], [ %conv51.i.i, %if.then64.i.i ]
  %full_table.0.off01824.i.i = phi i32 [ 46, %if.end60.i.i ], [ 70, %if.then64.i.i ]
  %call.i.i5.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i, i32 noundef 4) #11
  %69 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %log_level.i.i, align 4
  %and73.i.i = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i.i)
  %tobool74.not.i.i = icmp eq i32 %and73.i.i, 0
  br i1 %tobool74.not.i.i, label %do.body69.i.i.if.end81.i.i_crit_edge, label %if.then75.i.i

do.body69.i.i.if.end81.i.i_crit_edge:             ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i.i

if.then75.i.i:                                    ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv79.i.i = zext i8 %req_ttvn.026.i.i to i32
  %call80.i.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.48, ptr noundef nonnull %call9.i.i, i32 noundef %full_table.0.off01824.i.i, i32 noundef %conv79.i.i) #11
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.then75.i.i, %do.body69.i.i.if.end81.i.i_crit_edge
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %72 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i.i.i = getelementptr i64, ptr %73, i32 19
  %74 = ptrtoint ptr %arrayidx.i.i.i to i32
  %75 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx14.i.i.i, align 4
  %add.i.i.i = add i32 %80, %74
  %81 = inttoptr i32 %add.i.i.i to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %81, align 8
  %add15.i.i.i = add i64 %83, 1
  store i64 %add15.i.i.i, ptr %81, align 8
  %84 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i.i.i = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end81.i.i.batadv_add_counter.exit.i.i_crit_edge, !prof !180

if.end81.i.i.batadv_add_counter.exit.i.i_crit_edge: ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit.i.i

batadv_add_counter.exit.i.i:                      ; preds = %if.then.i.i.i, %if.end81.i.i.batadv_add_counter.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #11, !srcloc !186
  %net_dev.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call13.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %net_dev.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 86
  %87 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_addr.i.i, align 64
  tail call void @batadv_tvlv_unicast_send(ptr noundef %bat_priv, ptr noundef %88, ptr noundef %src, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef %68, i16 noundef zeroext %tvlv_len.028.i.i) #11
  br label %if.end.i.i.i

unlock.i.i:                                       ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %last_changeset_lock.i.i) #11
  br label %if.end.i.i.i

batadv_orig_node_put.exit.thread.i.i:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %commit_lock.i.i) #11
  br label %batadv_send_tt_response.exit.thread

if.end.i.i.i:                                     ; preds = %unlock.i.i, %batadv_add_counter.exit.i.i, %if.else47.i.i.if.end.i.i.i_crit_edge, %if.end12.i.i.if.end.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %commit_lock.i.i) #11
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call9.i.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.batadv_orig_node_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.i.batadv_orig_node_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_put.exit.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #11
  br label %batadv_orig_node_put.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i.i.i) #11
  br label %batadv_orig_node_put.exit.i.i

batadv_orig_node_put.exit.i.i:                    ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.batadv_orig_node_put.exit.i.i_crit_edge
  br i1 %tobool14.not.i.i, label %batadv_orig_node_put.exit.i.i.batadv_send_tt_response.exit.thread_crit_edge, label %if.end.i12.i.i

batadv_orig_node_put.exit.i.i.batadv_send_tt_response.exit.thread_crit_edge: ; preds = %batadv_orig_node_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_send_tt_response.exit.thread

if.end.i12.i.i:                                   ; preds = %batadv_orig_node_put.exit.i.i
  %refcount.i8.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call13.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i8.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i8.i.i, i32 1, i32 3, i32 1) #11
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i8.i.i, ptr %refcount.i8.i.i, i32 1, ptr elementtype(i32) %refcount.i8.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i10.i.i = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i10.i.i)
  %cmp.i.i.i.i.i11.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i10.i.i, 1
  br i1 %cmp.i.i.i.i.i11.i.i, label %if.then.i.i16.i.i, label %if.end5.i.i.i.i.i14.i.i

if.end5.i.i.i.i.i14.i.i:                          ; preds = %if.end.i12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i10.i.i)
  %.not.i.i.i.i.i13.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i10.i.i, 0
  br i1 %.not.i.i.i.i.i13.i.i, label %if.end5.i.i.i.i.i14.i.i.batadv_send_tt_response.exit.thread_crit_edge, label %if.then10.i.i.i.i.i15.i.i, !prof !174

if.end5.i.i.i.i.i14.i.i.batadv_send_tt_response.exit.thread_crit_edge: ; preds = %if.end5.i.i.i.i.i14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_send_tt_response.exit.thread

if.then10.i.i.i.i.i15.i.i:                        ; preds = %if.end5.i.i.i.i.i14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i8.i.i, i32 noundef 3) #11
  br label %batadv_send_tt_response.exit.thread

if.then.i.i16.i.i:                                ; preds = %if.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_hardif_release(ptr noundef %refcount.i8.i.i) #11
  br label %batadv_send_tt_response.exit.thread

batadv_send_tt_response.exit.thread:              ; preds = %if.then.i.i16.i.i, %if.then10.i.i.i.i.i15.i.i, %if.end5.i.i.i.i.i14.i.i.batadv_send_tt_response.exit.thread_crit_edge, %batadv_orig_node_put.exit.i.i.batadv_send_tt_response.exit.thread_crit_edge, %batadv_orig_node_put.exit.thread.i.i
  %91 = ptrtoint ptr %tvlv_tt_data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tvlv_tt_data.i.i, align 4
  tail call void @kfree(ptr noundef %92) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_len.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_change.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tvlv_tt_data.i.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %batadv_add_counter.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tt_change.i8.i) #11
  %93 = ptrtoint ptr %tt_change.i8.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 -1 to ptr), ptr %tt_change.i8.i, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tvlv_tt_data.i9.i) #11
  %94 = ptrtoint ptr %tvlv_tt_data.i9.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %tvlv_tt_data.i9.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tt_len.i10.i) #11
  %log_level.i11.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i12.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i11.i, i32 noundef 4) #11
  %95 = ptrtoint ptr %log_level.i11.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %log_level.i11.i, align 4
  %and.i13.i = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.not.i14.i, label %if.end.i.if.end.i21.i_crit_edge, label %if.then.i20.i

if.end.i.if.end.i21.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i21.i

if.then.i20.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %ttvn.i15.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 0, i32 1
  %97 = ptrtoint ptr %ttvn.i15.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ttvn.i15.i, align 1
  %conv.i16.i = zext i8 %98 to i32
  %99 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %tvlv_value, align 2
  %101 = and i8 %100, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool3.not.i17.i = icmp eq i8 %101, 0
  %cond.i18.i = select i1 %tobool3.not.i17.i, i32 46, i32 70
  %call4.i19.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.49, ptr noundef %src, i32 noundef %conv.i16.i, ptr noundef %dst, i32 noundef %cond.i18.i) #11
  br label %if.end.i21.i

if.end.i21.i:                                     ; preds = %if.then.i20.i, %if.end.i.if.end.i21.i_crit_edge
  %call5.i.i = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %dst) #11
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %batadv_send_tt_response.exit.thread124, label %if.end8.i.i

batadv_send_tt_response.exit.thread124:           ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %tvlv_tt_data.i9.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tvlv_tt_data.i9.i, align 4
  tail call void @kfree(ptr noundef %103) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_len.i10.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tvlv_tt_data.i9.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_change.i8.i) #11
  br label %if.then19

if.end8.i.i:                                      ; preds = %if.end.i21.i
  %call9.i22.i = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %src) #11
  %tobool10.not.i23.i = icmp eq ptr %call9.i22.i, null
  br i1 %tobool10.not.i23.i, label %if.end8.i.i.if.end.i169.i.i_crit_edge, label %if.end12.i25.i

if.end8.i.i.if.end.i169.i.i_crit_edge:            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i169.i.i

if.end12.i25.i:                                   ; preds = %if.end8.i.i
  %last_ttvn.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call5.i.i, i32 0, i32 15
  %call.i.i159.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn.i.i, i32 noundef 4) #11
  %104 = ptrtoint ptr %last_ttvn.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %last_ttvn.i.i, align 4
  %ttvn15.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 0, i32 1
  %106 = ptrtoint ptr %ttvn15.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ttvn15.i.i, align 1
  %conv16.i.i = and i32 %105, 255
  %108 = trunc i32 %105 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %108)
  %cmp.not.i24.i = icmp eq i8 %107, %108
  br i1 %cmp.not.i24.i, label %lor.lhs.false.i.i, label %if.end12.i25.i.if.end.i.i43.i_crit_edge

if.end12.i25.i.if.end.i.i43.i_crit_edge:          ; preds = %if.end12.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i43.i

lor.lhs.false.i.i:                                ; preds = %if.end12.i25.i
  %add.ptr.i.i = getelementptr %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 1
  %109 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %num_vlan, align 2
  %call19.i.i = tail call fastcc zeroext i1 @batadv_tt_global_check_crc(ptr noundef nonnull %call5.i.i, ptr noundef %add.ptr.i.i, i16 noundef zeroext %110) #11
  br i1 %call19.i.i, label %if.end21.i.i, label %lor.lhs.false.i.i.if.end.i.i43.i_crit_edge

lor.lhs.false.i.i.if.end.i.i43.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i43.i

if.end21.i.i:                                     ; preds = %lor.lhs.false.i.i
  %111 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %tvlv_value, align 2
  %113 = and i8 %112, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool25.not.i.i = icmp eq i8 %113, 0
  br i1 %tobool25.not.i.i, label %if.end29.i.i, label %if.end21.i.i.if.else41.i.i_crit_edge

if.end21.i.i.if.else41.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else41.i.i

if.end29.i.i:                                     ; preds = %if.end21.i.i
  %tt_buff.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call5.i.i, i32 0, i32 16
  %114 = ptrtoint ptr %tt_buff.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tt_buff.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %115, null
  br i1 %tobool27.not.i.i, label %if.end29.i.i.if.else41.i.i_crit_edge, label %if.then31.i.i

if.end29.i.i.if.else41.i.i_crit_edge:             ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else41.i.i

if.then31.i.i:                                    ; preds = %if.end29.i.i
  %tt_buff_lock.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call5.i.i, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %tt_buff_lock.i.i) #11
  %tt_buff_len.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call5.i.i, i32 0, i32 17
  %116 = ptrtoint ptr %tt_buff_len.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %tt_buff_len.i.i, align 4
  %conv32.i.i = sext i16 %117 to i32
  %118 = ptrtoint ptr %tt_len.i10.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv32.i.i, ptr %tt_len.i10.i, align 4
  %call33.i.i = call fastcc zeroext i16 @batadv_tt_prepare_tvlv_global_data(ptr noundef nonnull %call5.i.i, ptr noundef nonnull %tvlv_tt_data.i9.i, ptr noundef nonnull %tt_change.i8.i, ptr noundef nonnull %tt_len.i10.i) #11
  %119 = ptrtoint ptr %tt_len.i10.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tt_len.i10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool34.not.i.i = icmp eq i32 %120, 0
  br i1 %tobool34.not.i.i, label %unlock.i38.i, label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %tt_change.i8.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tt_change.i8.i, align 4
  %123 = ptrtoint ptr %tt_buff.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tt_buff.i.i, align 4
  %125 = ptrtoint ptr %tt_buff_len.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %tt_buff_len.i.i, align 4
  %conv39.i.i = sext i16 %126 to i32
  %127 = call ptr @memcpy(ptr %122, ptr %124, i32 %conv39.i.i)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tt_buff_lock.i.i) #11
  br label %if.end47.i.i

if.else41.i.i:                                    ; preds = %if.end29.i.i.if.else41.i.i_crit_edge, %if.end21.i.i.if.else41.i.i_crit_edge
  %128 = ptrtoint ptr %tt_len.i10.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %tt_len.i10.i, align 4
  %call42.i.i = call fastcc zeroext i16 @batadv_tt_prepare_tvlv_global_data(ptr noundef nonnull %call5.i.i, ptr noundef nonnull %tvlv_tt_data.i9.i, ptr noundef nonnull %tt_change.i8.i, ptr noundef nonnull %tt_len.i10.i) #11
  %129 = ptrtoint ptr %tt_len.i10.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tt_len.i10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool43.not.i.i = icmp eq i32 %130, 0
  br i1 %tobool43.not.i.i, label %if.else41.i.i.if.end.i.i43.i_crit_edge, label %if.end45.i.i

if.else41.i.i.if.end.i.i43.i_crit_edge:           ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i43.i

if.end45.i.i:                                     ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %global_hash.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %131 = ptrtoint ptr %global_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %global_hash.i.i, align 4
  %133 = ptrtoint ptr %tt_change.i8.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tt_change.i8.i, align 4
  %conv46.i.i = trunc i32 %130 to i16
  tail call fastcc void @batadv_tt_tvlv_generate(ptr noundef %132, ptr noundef %134, i16 noundef zeroext %conv46.i.i, ptr noundef nonnull @batadv_tt_global_valid, ptr noundef nonnull %call5.i.i) #11
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.end45.i.i, %if.end36.i.i
  %full_table.0.off0176.i.i = phi i1 [ true, %if.end45.i.i ], [ false, %if.end36.i.i ]
  %tvlv_len.0.i.i = phi i16 [ %call42.i.i, %if.end45.i.i ], [ %call33.i.i, %if.end36.i.i ]
  %conv48.i.i = zext i16 %tvlv_len.0.i.i to i32
  %add.i.i = add nuw nsw i32 %conv48.i.i, 20
  %135 = ptrtoint ptr %tt_len.i10.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add.i.i, ptr %tt_len.i10.i, align 4
  %packet_size_max.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 6
  %call.i.i160.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %packet_size_max.i.i, i32 noundef 4) #11
  %136 = ptrtoint ptr %packet_size_max.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %packet_size_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %137)
  %cmp50.i.i = icmp sgt i32 %add.i.i, %137
  br i1 %cmp50.i.i, label %do.body53.i.i, label %if.end82.i.i

do.body53.i.i:                                    ; preds = %if.end47.i.i
  %call54.i.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %tobool55.not.i26.i = icmp eq i32 %call54.i.i, 0
  br i1 %tobool55.not.i26.i, label %do.body53.i.i.if.end.i.i43.i_crit_edge, label %do.body57.i.i

do.body53.i.i.if.end.i.i43.i_crit_edge:           ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i43.i

do.body57.i.i:                                    ; preds = %do.body53.i.i
  %soft_iface.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %138 = ptrtoint ptr %soft_iface.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %soft_iface.i.i, align 4
  %log_level61.i.i = getelementptr i8, ptr %139, i32 2360
  %call.i.i161.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level61.i.i, i32 noundef 4) #11
  %140 = ptrtoint ptr %log_level61.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %log_level61.i.i, align 4
  %and63.i.i = and i32 %141, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i)
  %tobool64.not.i.i = icmp eq i32 %and63.i.i, 0
  br i1 %tobool64.not.i.i, label %do.body57.i.i.if.end67.i.i_crit_edge, label %if.then65.i.i

do.body57.i.i.if.end67.i.i_crit_edge:             ; preds = %do.body57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i.i

if.then65.i.i:                                    ; preds = %do.body57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i.i = getelementptr i8, ptr %139, i32 2304
  %call66.i.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull %call9.i22.i) #11
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.then65.i.i, %do.body57.i.i.if.end67.i.i_crit_edge
  %call76.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %139, ptr noundef nonnull %call9.i22.i) #14
  br label %if.end.i.i43.i

if.end82.i.i:                                     ; preds = %if.end47.i.i
  %142 = ptrtoint ptr %tvlv_tt_data.i9.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tvlv_tt_data.i9.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 4, ptr %143, align 2
  %ttvn84.i.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %143, i32 0, i32 1
  %145 = ptrtoint ptr %ttvn84.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %107, ptr %ttvn84.i.i, align 1
  br i1 %full_table.0.off0176.i.i, label %if.then86.i.i, label %if.end82.i.i.do.body91.i.i_crit_edge

if.end82.i.i.do.body91.i.i_crit_edge:             ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body91.i.i

if.then86.i.i:                                    ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 20, ptr %143, align 2
  br label %do.body91.i.i

do.body91.i.i:                                    ; preds = %if.then86.i.i, %if.end82.i.i.do.body91.i.i_crit_edge
  %call.i.i162.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i11.i, i32 noundef 4) #11
  %147 = ptrtoint ptr %log_level.i11.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %log_level.i11.i, align 4
  %and95.i.i = and i32 %148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i.i)
  %tobool96.not.i.i = icmp eq i32 %and95.i.i, 0
  br i1 %tobool96.not.i.i, label %do.body91.i.i.if.end107.i.i_crit_edge, label %if.then97.i.i

do.body91.i.i.if.end107.i.i_crit_edge:            ; preds = %do.body91.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107.i.i

if.then97.i.i:                                    ; preds = %do.body91.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond104.i.i = select i1 %full_table.0.off0176.i.i, i32 70, i32 46
  %call106.i.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.53, ptr noundef nonnull %call9.i22.i, ptr noundef nonnull %call5.i.i, i32 noundef %cond104.i.i, i32 noundef %conv16.i.i) #11
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %if.then97.i.i, %do.body91.i.i.if.end107.i.i_crit_edge
  %149 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %150 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i.i28.i = getelementptr i64, ptr %151, i32 19
  %152 = ptrtoint ptr %arrayidx.i.i28.i to i32
  %153 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i29.i = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i29.i to ptr
  %cpu.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %cpu.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cpu.i.i30.i, align 4
  %arrayidx14.i.i31.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %156
  %157 = ptrtoint ptr %arrayidx14.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx14.i.i31.i, align 4
  %add.i.i32.i = add i32 %158, %152
  %159 = inttoptr i32 %add.i.i32.i to ptr
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %159, align 8
  %add15.i.i33.i = add i64 %161, 1
  store i64 %add15.i.i33.i, ptr %159, align 8
  %162 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i.i34.i = and i32 %162, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i34.i)
  %tobool.not.i.i35.i = icmp eq i32 %and.i.i.i.i34.i, 0
  br i1 %tobool.not.i.i35.i, label %if.then.i.i36.i, label %if.end107.i.i.batadv_add_counter.exit.i37.i_crit_edge, !prof !180

if.end107.i.i.batadv_add_counter.exit.i37.i_crit_edge: ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit.i37.i

if.then.i.i36.i:                                  ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit.i37.i

batadv_add_counter.exit.i37.i:                    ; preds = %if.then.i.i36.i, %if.end107.i.i.batadv_add_counter.exit.i37.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %149) #11, !srcloc !186
  tail call void @batadv_tvlv_unicast_send(ptr noundef %bat_priv, ptr noundef nonnull %call5.i.i, ptr noundef %src, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef %143, i16 noundef zeroext %tvlv_len.0.i.i) #11
  br label %if.end.i.i43.i

unlock.i38.i:                                     ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %tt_buff_lock.i.i) #11
  br label %if.end.i.i43.i

if.end.i.i43.i:                                   ; preds = %unlock.i38.i, %batadv_add_counter.exit.i37.i, %if.end67.i.i, %do.body53.i.i.if.end.i.i43.i_crit_edge, %if.else41.i.i.if.end.i.i43.i_crit_edge, %lor.lhs.false.i.i.if.end.i.i43.i_crit_edge, %if.end12.i25.i.if.end.i.i43.i_crit_edge
  %ret.0.off0.ph.i.i = phi i1 [ false, %lor.lhs.false.i.i.if.end.i.i43.i_crit_edge ], [ false, %unlock.i38.i ], [ false, %if.else41.i.i.if.end.i.i43.i_crit_edge ], [ true, %batadv_add_counter.exit.i37.i ], [ false, %do.body53.i.i.if.end.i.i43.i_crit_edge ], [ false, %if.end67.i.i ], [ false, %if.end12.i25.i.if.end.i.i43.i_crit_edge ]
  %refcount.i.i39.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call9.i22.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i40.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i39.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i39.i, i32 1, i32 3, i32 1) #11
  %163 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i39.i, ptr %refcount.i.i39.i, i32 1, ptr elementtype(i32) %refcount.i.i39.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i41.i = extractvalue { i32, i32, i32 } %163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i41.i)
  %cmp.i.i.i.i.i.i42.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i41.i, 1
  br i1 %cmp.i.i.i.i.i.i42.i, label %if.then.i.i.i47.i, label %if.end5.i.i.i.i.i.i45.i

if.end5.i.i.i.i.i.i45.i:                          ; preds = %if.end.i.i43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i41.i)
  %.not.i.i.i.i.i.i44.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i41.i, 0
  br i1 %.not.i.i.i.i.i.i44.i, label %if.end5.i.i.i.i.i.i45.i.if.end.i169.i.i_crit_edge, label %if.then10.i.i.i.i.i.i46.i, !prof !174

if.end5.i.i.i.i.i.i45.i.if.end.i169.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i169.i.i

if.then10.i.i.i.i.i.i46.i:                        ; preds = %if.end5.i.i.i.i.i.i45.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i39.i, i32 noundef 3) #11
  br label %if.end.i169.i.i

if.then.i.i.i47.i:                                ; preds = %if.end.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i.i39.i) #11
  br label %if.end.i169.i.i

if.end.i169.i.i:                                  ; preds = %if.then.i.i.i47.i, %if.then10.i.i.i.i.i.i46.i, %if.end5.i.i.i.i.i.i45.i.if.end.i169.i.i_crit_edge, %if.end8.i.i.if.end.i169.i.i_crit_edge
  %ret.0.off0182.ph.i.i = phi i1 [ false, %if.end8.i.i.if.end.i169.i.i_crit_edge ], [ %ret.0.off0.ph.i.i, %if.then.i.i.i47.i ], [ %ret.0.off0.ph.i.i, %if.then10.i.i.i.i.i.i46.i ], [ %ret.0.off0.ph.i.i, %if.end5.i.i.i.i.i.i45.i.if.end.i169.i.i_crit_edge ]
  %refcount.i165.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call5.i.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i166.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i165.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i165.i.i, i32 1, i32 3, i32 1) #11
  %164 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i165.i.i, ptr %refcount.i165.i.i, i32 1, ptr elementtype(i32) %refcount.i165.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i167.i.i = extractvalue { i32, i32, i32 } %164, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i167.i.i)
  %cmp.i.i.i.i.i168.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i167.i.i, 1
  br i1 %cmp.i.i.i.i.i168.i.i, label %if.then.i.i173.i.i, label %if.end5.i.i.i.i.i171.i.i

if.end5.i.i.i.i.i171.i.i:                         ; preds = %if.end.i169.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i167.i.i)
  %.not.i.i.i.i.i170.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i167.i.i, 0
  br i1 %.not.i.i.i.i.i170.i.i, label %batadv_send_tt_response.exit, label %if.then10.i.i.i.i.i172.i.i, !prof !174

if.then10.i.i.i.i.i172.i.i:                       ; preds = %if.end5.i.i.i.i.i171.i.i
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i165.i.i, i32 noundef 3) #11
  %165 = ptrtoint ptr %tvlv_tt_data.i9.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tvlv_tt_data.i9.i, align 4
  tail call void @kfree(ptr noundef %166) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_len.i10.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tvlv_tt_data.i9.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_change.i8.i) #11
  br i1 %ret.0.off0182.ph.i.i, label %if.then10.i.i.i.i.i172.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i172.i.i.if.then19_crit_edge

if.then10.i.i.i.i.i172.i.i.if.then19_crit_edge:   ; preds = %if.then10.i.i.i.i.i172.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then10.i.i.i.i.i172.i.i.cleanup_crit_edge:     ; preds = %if.then10.i.i.i.i.i172.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i173.i.i:                               ; preds = %if.end.i169.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i165.i.i) #11
  %167 = ptrtoint ptr %tvlv_tt_data.i9.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tvlv_tt_data.i9.i, align 4
  tail call void @kfree(ptr noundef %168) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_len.i10.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tvlv_tt_data.i9.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_change.i8.i) #11
  br i1 %ret.0.off0182.ph.i.i, label %if.then.i.i173.i.i.cleanup_crit_edge, label %if.then.i.i173.i.i.if.then19_crit_edge

if.then.i.i173.i.i.if.then19_crit_edge:           ; preds = %if.then.i.i173.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then.i.i173.i.i.cleanup_crit_edge:             ; preds = %if.then.i.i173.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

batadv_send_tt_response.exit:                     ; preds = %if.end5.i.i.i.i.i171.i.i
  %169 = ptrtoint ptr %tvlv_tt_data.i9.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tvlv_tt_data.i9.i, align 4
  tail call void @kfree(ptr noundef %170) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_len.i10.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tvlv_tt_data.i9.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_change.i8.i) #11
  br i1 %ret.0.off0182.ph.i.i, label %batadv_send_tt_response.exit.cleanup_crit_edge, label %batadv_send_tt_response.exit.if.then19_crit_edge

batadv_send_tt_response.exit.if.then19_crit_edge: ; preds = %batadv_send_tt_response.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

batadv_send_tt_response.exit.cleanup_crit_edge:   ; preds = %batadv_send_tt_response.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %batadv_send_tt_response.exit.if.then19_crit_edge, %if.then.i.i173.i.i.if.then19_crit_edge, %if.then10.i.i.i.i.i172.i.i.if.then19_crit_edge, %batadv_send_tt_response.exit.thread124
  %171 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %tvlv_value, align 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i11.i, i32 noundef 4) #11
  %173 = ptrtoint ptr %log_level.i11.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %log_level.i11.i, align 4
  %and27 = and i32 %174, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then19.cleanup_crit_edge, label %if.then29

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %175 = and i8 %172, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool23.not = icmp eq i8 %175, 0
  %. = select i1 %tobool23.not, i32 46, i32 70
  %call31 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.45, ptr noundef %dst, i32 noundef %.) #11
  br label %cleanup

sw.bb34:                                          ; preds = %if.end12
  %176 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %bat_counters.i89 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %177 = ptrtoint ptr %bat_counters.i89 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bat_counters.i89, align 4
  %arrayidx.i90 = getelementptr i64, ptr %178, i32 20
  %179 = ptrtoint ptr %arrayidx.i90 to i32
  %180 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i91 = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i91 to ptr
  %cpu.i92 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %cpu.i92 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cpu.i92, align 4
  %arrayidx14.i93 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %183
  %184 = ptrtoint ptr %arrayidx14.i93 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx14.i93, align 4
  %add.i94 = add i32 %185, %179
  %186 = inttoptr i32 %add.i94 to ptr
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %186, align 8
  %add15.i95 = add i64 %188, 1
  store i64 %add15.i95, ptr %186, align 8
  %189 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i96 = and i32 %189, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i96)
  %tobool.not.i97 = icmp eq i32 %and.i.i.i96, 0
  br i1 %tobool.not.i97, label %if.then.i98, label %sw.bb34.batadv_add_counter.exit99_crit_edge, !prof !180

sw.bb34.batadv_add_counter.exit99_crit_edge:      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit99

if.then.i98:                                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit99

batadv_add_counter.exit99:                        ; preds = %if.then.i98, %sw.bb34.batadv_add_counter.exit99_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %176) #11, !srcloc !186
  %call35 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %bat_priv, ptr noundef %dst) #11
  br i1 %call35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %batadv_add_counter.exit99
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %190 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %191, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i100 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i100, label %if.then36.if.end.i102_crit_edge, label %if.then.i101

if.then36.if.end.i102_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i102

if.then.i101:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %ttvn.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 0, i32 1
  %192 = ptrtoint ptr %ttvn.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ttvn.i, align 1
  %conv.i = zext i8 %193 to i32
  %conv1.i = zext i16 %div23.i to i32
  %194 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %tvlv_value, align 2
  %196 = and i8 %195, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool4.not.i = icmp eq i8 %196, 0
  %cond.i = select i1 %tobool4.not.i, i32 46, i32 70
  %call5.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.54, ptr noundef %src, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef %cond.i) #11
  br label %if.end.i102

if.end.i102:                                      ; preds = %if.then.i101, %if.then36.if.end.i102_crit_edge
  %call6.i = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %src) #11
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end.i102.cleanup_crit_edge, label %if.end9.i

if.end.i102.cleanup_crit_edge:                    ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i102
  %tt_lock.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call6.i, i32 0, i32 19
  tail call void @_raw_spin_lock_bh(ptr noundef %tt_lock.i) #11
  %197 = ptrtoint ptr %num_vlan to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %num_vlan, align 2
  %mul.i = shl i16 %198, 3
  %199 = or i16 %mul.i, 4
  %conv15.i = zext i16 %199 to i32
  %add.ptr.i = getelementptr i8, ptr %tvlv_value, i32 %conv15.i
  %200 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %tvlv_value, align 2
  %202 = and i8 %201, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool19.not.i = icmp eq i8 %202, 0
  %ttvn22.i = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %tvlv_value, i32 0, i32 1
  %203 = ptrtoint ptr %ttvn22.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %ttvn22.i, align 1
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end9.i
  %call.i.i103 = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %src) #11
  %tobool.not.i.i104 = icmp eq ptr %call.i.i103, null
  br i1 %tobool.not.i.i104, label %if.then20.i.if.end23.i_crit_edge, label %if.end.i.i.i115

if.then20.i.if.end23.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.end.i.i.i115:                                  ; preds = %if.then20.i
  tail call void @batadv_tt_global_del_orig(ptr noundef %bat_priv, ptr noundef nonnull %call.i.i103, i32 noundef -1, ptr noundef nonnull @.str.55) #11
  tail call fastcc void @_batadv_tt_update_changes(ptr noundef %bat_priv, ptr noundef nonnull %call.i.i103, ptr noundef %add.ptr.i, i16 noundef zeroext %div23.i, i8 noundef zeroext %204) #11
  %tt_buff_lock.i.i105 = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i.i103, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %tt_buff_lock.i.i105) #11
  %tt_buff.i.i106 = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i.i103, i32 0, i32 16
  %205 = ptrtoint ptr %tt_buff.i.i106 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %tt_buff.i.i106, align 4
  tail call void @kfree(ptr noundef %206) #11
  %tt_buff_len.i.i107 = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i.i103, i32 0, i32 17
  %207 = ptrtoint ptr %tt_buff_len.i.i107 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 0, ptr %tt_buff_len.i.i107, align 4
  %208 = ptrtoint ptr %tt_buff.i.i106 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %tt_buff.i.i106, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tt_buff_lock.i.i105) #11
  %last_ttvn.i.i108 = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i.i103, i32 0, i32 15
  %conv.i.i109 = zext i8 %204 to i32
  %call.i.i.i.i110 = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_ttvn.i.i108, i32 noundef 4) #11
  %209 = ptrtoint ptr %last_ttvn.i.i108 to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile i32 %conv.i.i109, ptr %last_ttvn.i.i108, align 4
  %refcount.i.i.i111 = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i.i103, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i.i112 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i111, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i111, i32 1, i32 3, i32 1) #11
  %210 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i111, ptr %refcount.i.i.i111, i32 1, ptr elementtype(i32) %refcount.i.i.i111) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i113 = extractvalue { i32, i32, i32 } %210, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i113)
  %cmp.i.i.i.i.i.i.i114 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i113, 1
  br i1 %cmp.i.i.i.i.i.i.i114, label %if.then.i.i.i.i119, label %if.end5.i.i.i.i.i.i.i117

if.end5.i.i.i.i.i.i.i117:                         ; preds = %if.end.i.i.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i113)
  %.not.i.i.i.i.i.i.i116 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i113, 0
  br i1 %.not.i.i.i.i.i.i.i116, label %if.end5.i.i.i.i.i.i.i117.if.end23.i_crit_edge, label %if.then10.i.i.i.i.i.i.i118, !prof !174

if.end5.i.i.i.i.i.i.i117.if.end23.i_crit_edge:    ; preds = %if.end5.i.i.i.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then10.i.i.i.i.i.i.i118:                       ; preds = %if.end5.i.i.i.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i111, i32 noundef 3) #11
  br label %if.end23.i

if.then.i.i.i.i119:                               ; preds = %if.end.i.i.i115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i.i.i111) #11
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_tt_update_changes(ptr noundef %bat_priv, ptr noundef nonnull %call6.i, i16 noundef zeroext %div23.i, i8 noundef zeroext %204, ptr noundef %add.ptr.i) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then.i.i.i.i119, %if.then10.i.i.i.i.i.i.i118, %if.end5.i.i.i.i.i.i.i117.if.end23.i_crit_edge, %if.then20.i.if.end23.i_crit_edge
  tail call fastcc void @batadv_tt_global_update_crc(ptr noundef %bat_priv, ptr noundef nonnull %call6.i) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %tt_lock.i) #11
  %req_list_lock.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %req_list_lock.i) #11
  %req_list.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 6
  %211 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %req_list.i, align 4
  %tobool26.not.i = icmp eq ptr %212, null
  %add.ptr28.i = getelementptr i8, ptr %212, i32 -16
  %tobool30.not98100.i = icmp eq ptr %add.ptr28.i, null
  %tobool30.not98.i = or i1 %tobool26.not.i, %tobool30.not98100.i
  br i1 %tobool30.not98.i, label %if.end23.i.if.end.i91.i_crit_edge, label %land.rhs.lr.ph.i

if.end23.i.if.end.i91.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i91.i

land.rhs.lr.ph.i:                                 ; preds = %if.end23.i
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %src, i32 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %node.099.i = phi ptr [ %add.ptr28.i, %land.rhs.lr.ph.i ], [ %add.ptr43.i, %for.inc.i.land.rhs.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.099.i, i32 0, i32 3
  %213 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %list.i, align 4
  %215 = ptrtoint ptr %node.099.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %node.099.i, align 4
  %217 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %src, align 4
  %xor.i.i.i.i = xor i32 %218, %216
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node.099.i, i32 4
  %219 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %221 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %222, %220
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end35.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end35.i:                                       ; preds = %land.rhs.i
  %pprev.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.099.i, i32 0, i32 3, i32 1
  %223 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %224, null
  br i1 %tobool.not.i.not.i.i, label %if.end35.i.if.end.i.i121_crit_edge, label %if.then.i.i120

if.end35.i.if.end.i.i121_crit_edge:               ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i121

if.then.i.i120:                                   ; preds = %if.end35.i
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %214, ptr %224, align 4
  %tobool.not.i3.i.i = icmp eq ptr %214, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i120.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i120.__hlist_del.exit.i.i_crit_edge:    ; preds = %if.then.i.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i120
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %214, i32 0, i32 1
  %226 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile ptr %224, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i120.__hlist_del.exit.i.i_crit_edge
  %227 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %list.i, align 4
  %228 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %if.end.i.i121

if.end.i.i121:                                    ; preds = %__hlist_del.exit.i.i, %if.end35.i.if.end.i.i121_crit_edge
  %refcount.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.099.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %229 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %229, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i122, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.for.inc.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %for.inc.i

if.then.i.i.i122:                                 ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %230 = load ptr, ptr @batadv_tt_req_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %230, ptr noundef nonnull %node.099.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i.i122, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %tobool39.not.i = icmp eq ptr %214, null
  %add.ptr43.i = getelementptr i8, ptr %214, i32 -16
  %tobool30.not101.i = icmp eq ptr %add.ptr43.i, null
  %tobool30.not.i = or i1 %tobool39.not.i, %tobool30.not101.i
  br i1 %tobool30.not.i, label %for.inc.i.if.end.i91.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc.i.if.end.i91.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i91.i

if.end.i91.i:                                     ; preds = %for.inc.i.if.end.i91.i_crit_edge, %if.end23.i.if.end.i91.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %req_list_lock.i) #11
  %refcount.i87.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call6.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i88.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i87.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i87.i, i32 1, i32 3, i32 1) #11
  %231 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i87.i, ptr %refcount.i87.i, i32 1, ptr elementtype(i32) %refcount.i87.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i89.i = extractvalue { i32, i32, i32 } %231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i89.i)
  %cmp.i.i.i.i.i90.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i89.i, 1
  br i1 %cmp.i.i.i.i.i90.i, label %if.then.i.i95.i, label %if.end5.i.i.i.i.i93.i

if.end5.i.i.i.i.i93.i:                            ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i89.i)
  %.not.i.i.i.i.i92.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i89.i, 0
  br i1 %.not.i.i.i.i.i92.i, label %if.end5.i.i.i.i.i93.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i94.i, !prof !174

if.end5.i.i.i.i.i93.i.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i94.i:                          ; preds = %if.end5.i.i.i.i.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i87.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i95.i:                                  ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i87.i) #11
  br label %cleanup

if.end37:                                         ; preds = %batadv_add_counter.exit99
  %232 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %tvlv_value, align 2
  %log_level47 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i86 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level47, i32 noundef 4) #11
  %234 = ptrtoint ptr %log_level47 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %log_level47, align 4
  %and49 = and i32 %235, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end37.cleanup_crit_edge, label %if.then51

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %236 = and i8 %233, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool41.not = icmp eq i8 %236, 0
  %.85 = select i1 %tobool41.not, i32 46, i32 70
  %call53 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.46, ptr noundef %dst, i32 noundef %.85) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end37.cleanup_crit_edge, %if.then.i.i95.i, %if.then10.i.i.i.i.i94.i, %if.end5.i.i.i.i.i93.i.cleanup_crit_edge, %if.end.i102.cleanup_crit_edge, %if.then29, %if.then19.cleanup_crit_edge, %batadv_send_tt_response.exit.cleanup_crit_edge, %if.then.i.i173.i.i.cleanup_crit_edge, %if.then10.i.i.i.i.i172.i.i.cleanup_crit_edge, %batadv_send_tt_response.exit.thread, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then29 ], [ 1, %if.then19.cleanup_crit_edge ], [ 1, %if.then51 ], [ 1, %if.end37.cleanup_crit_edge ], [ 0, %batadv_send_tt_response.exit.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %batadv_send_tt_response.exit.thread ], [ 0, %if.then10.i.i.i.i.i172.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i173.i.i.cleanup_crit_edge ], [ 0, %if.end.i102.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i93.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i94.i ], [ 0, %if.then.i.i95.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_roam_tvlv_unicast_handler_v1(ptr noundef %bat_priv, ptr noundef %src, ptr noundef %dst, ptr noundef %tvlv_value, i16 noundef zeroext %tvlv_value_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %bat_priv, ptr noundef %dst) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %tvlv_value_len)
  %cmp = icmp ult i16 %tvlv_value_len, 8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %src) #11
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !184
  %bat_counters.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %1 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %2, i32 22
  %3 = ptrtoint ptr %arrayidx.i to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %9, %3
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %add15.i = add i64 %12, 1
  store i64 %add15.i, ptr %10, align 8
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !185
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.batadv_add_counter.exit_crit_edge, !prof !180

if.end6.batadv_add_counter.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.end6.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !186
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %14 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %batadv_add_counter.exit.if.end.i_crit_edge, label %if.then9

batadv_add_counter.exit.if.end.i_crit_edge:       ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then9:                                         ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.56, ptr noundef %src, ptr noundef %tvlv_value) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9, %batadv_add_counter.exit.if.end.i_crit_edge
  %vid = getelementptr inbounds %struct.batadv_tvlv_roam_adv, ptr %tvlv_value, i32 0, i32 1
  %16 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vid, align 2
  %last_ttvn = getelementptr inbounds %struct.batadv_orig_node, ptr %call4, i32 0, i32 15
  %call.i.i29 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn, i32 noundef 4) #11
  %18 = ptrtoint ptr %last_ttvn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %last_ttvn, align 4
  %20 = trunc i32 %19 to i8
  %conv15 = add i8 %20, 1
  %call16 = tail call fastcc zeroext i1 @batadv_tt_global_add(ptr noundef %bat_priv, ptr noundef nonnull %call4, ptr noundef %tvlv_value, i16 noundef zeroext %17, i16 noundef zeroext 2, i8 noundef zeroext %conv15)
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call4, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_tt_purge(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1176
  tail call fastcc void @batadv_tt_local_purge(ptr noundef %add.ptr3, i32 noundef 600000)
  %global_hash.i = getelementptr i8, ptr %work, i32 -244
  %0 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_hash.i, align 4
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp65.not.i = icmp eq i32 %3, 0
  br i1 %cmp65.not.i, label %entry.batadv_tt_global_purge.exit_crit_edge, label %for.body.lr.ph.i

entry.batadv_tt_global_purge.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_purge.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 1
  %log_level.i = getelementptr i8, ptr %work, i32 -1120
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.067.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %msg.066.i = phi ptr [ null, %for.body.lr.ph.i ], [ %msg.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %5, i32 %i.067.i
  %6 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_locks.i, align 4
  %arrayidx1.i = getelementptr %struct.spinlock, ptr %7, i32 %i.067.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1.i) #11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 -8
  %tobool4.not6268.i = icmp eq ptr %add.ptr.i, null
  %tobool4.not62.i = or i1 %tobool.not.i, %tobool4.not6268.i
  br i1 %tobool4.not62.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %tt_common.064.i = phi ptr [ %add.ptr25.i, %for.inc.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %for.body.i.land.rhs.i_crit_edge ]
  %msg.163.i = phi ptr [ %msg.356.i, %for.inc.i.land.rhs.i_crit_edge ], [ %msg.066.i, %for.body.i.land.rhs.i_crit_edge ]
  %hash_entry.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.064.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_entry.i, align 4
  %flags.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.064.i, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i.i, align 4
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i.i, label %if.end.i.thread.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %land.rhs.i
  %roam_at.i.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %tt_common.064.i, i32 0, i32 4
  %15 = ptrtoint ptr %roam_at.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %roam_at.i.i, align 4
  %add.i.i.i = add i32 %16, 60000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  %spec.select58.i = select i1 %cmp.i.i.i, ptr @.str.57, ptr %msg.163.i
  %18 = and i16 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool6.not.i.i = icmp eq i16 %18, 0
  br i1 %tobool6.not.i.i, label %batadv_tt_global_to_purge.exit.i, label %if.end.i.i.land.lhs.true7.i.i_crit_edge

if.end.i.i.land.lhs.true7.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true7.i.i

if.end.i.thread.i:                                ; preds = %land.rhs.i
  %19 = and i16 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool6.not.i71.i = icmp eq i16 %19, 0
  br i1 %tobool6.not.i71.i, label %if.end.i.thread.i.for.inc.i_crit_edge, label %if.end.i.thread.i.land.lhs.true7.i.i_crit_edge

if.end.i.thread.i.land.lhs.true7.i.i_crit_edge:   ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true7.i.i

if.end.i.thread.i.for.inc.i_crit_edge:            ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.thread.i.land.lhs.true7.i.i_crit_edge, %if.end.i.i.land.lhs.true7.i.i_crit_edge
  %purge.0.off0.i75.i = phi i1 [ false, %if.end.i.thread.i.land.lhs.true7.i.i_crit_edge ], [ %cmp.i.i.i, %if.end.i.i.land.lhs.true7.i.i_crit_edge ]
  %msg.273.i = phi ptr [ %msg.163.i, %if.end.i.thread.i.land.lhs.true7.i.i_crit_edge ], [ %spec.select58.i, %if.end.i.i.land.lhs.true7.i.i_crit_edge ]
  %added_at.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.064.i, i32 0, i32 4
  %20 = ptrtoint ptr %added_at.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %added_at.i.i, align 4
  %add.i19.i.i = add i32 %21, 60000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i20.i.i = sub i32 %add.i19.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i20.i.i)
  %cmp.i21.i.i = icmp slt i32 %sub.i20.i.i, 0
  %brmerge.i = select i1 %cmp.i21.i.i, i1 true, i1 %purge.0.off0.i75.i
  %.str.58.mux.i = select i1 %cmp.i21.i.i, ptr @.str.58, ptr %msg.273.i
  br i1 %brmerge.i, label %land.lhs.true7.i.i.do.body.i_crit_edge, label %land.lhs.true7.i.i.for.inc.i_crit_edge

land.lhs.true7.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true7.i.i.do.body.i_crit_edge:           ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

batadv_tt_global_to_purge.exit.i:                 ; preds = %if.end.i.i
  br i1 %cmp.i.i.i, label %batadv_tt_global_to_purge.exit.i.do.body.i_crit_edge, label %batadv_tt_global_to_purge.exit.i.for.inc.i_crit_edge

batadv_tt_global_to_purge.exit.i.for.inc.i_crit_edge: ; preds = %batadv_tt_global_to_purge.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

batadv_tt_global_to_purge.exit.i.do.body.i_crit_edge: ; preds = %batadv_tt_global_to_purge.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i:                                        ; preds = %batadv_tt_global_to_purge.exit.i.do.body.i_crit_edge, %land.lhs.true7.i.i.do.body.i_crit_edge
  %msg.355.i = phi ptr [ @.str.57, %batadv_tt_global_to_purge.exit.i.do.body.i_crit_edge ], [ %.str.58.mux.i, %land.lhs.true7.i.i.do.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %23 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %do.body.i.if.end17.i_crit_edge, label %if.then13.i

do.body.i.if.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %vid.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.064.i, i32 0, i32 1
  %25 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %and.i.i = and i32 %conv.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i49.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 4095
  %retval.0.i.i = select i1 %tobool.not.i49.i, i32 -1, i32 %and2.i.i
  %call16.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr3, ptr noundef nonnull @.str.13, ptr noundef nonnull %tt_common.064.i, i32 noundef %retval.0.i.i, ptr noundef %msg.355.i) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %do.body.i.if.end17.i_crit_edge
  %27 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hash_entry.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.064.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev2.i.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %28, ptr %30, align 4
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.end17.i.if.end.i51.i_crit_edge, label %do.body13.i.i.i

if.end17.i.if.end.i51.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i51.i

do.body13.i.i.i:                                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %pprev14.i.i.i, align 4
  br label %if.end.i51.i

if.end.i51.i:                                     ; preds = %do.body13.i.i.i, %if.end17.i.if.end.i51.i_crit_edge
  %33 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.064.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.for.inc.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %for.inc.i

if.then.i.i.i:                                    ; preds = %if.end.i51.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %list_lock.i.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_common.064.i, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i.i.i) #11
  %orig_list.i.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_common.064.i, i32 1
  %35 = ptrtoint ptr %orig_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %orig_list.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %36, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 -8
  %tobool2.not2628.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  %tobool2.not26.i.i.i.i = or i1 %tobool.not.i.i.i.i, %tobool2.not2628.i.i.i.i
  br i1 %tobool2.not26.i.i.i.i, label %if.then.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge, label %if.then.i.i.i.land.rhs.i.i.i.i_crit_edge

if.then.i.i.i.land.rhs.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %land.rhs.i.i.i.i

if.then.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %if.then.i.i.i.land.rhs.i.i.i.i_crit_edge
  %orig_entry.027.i.i.i.i = phi ptr [ %add.ptr11.i.i.i.i, %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.then.i.i.i.land.rhs.i.i.i.i_crit_edge ]
  %list.i.i.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list.i.i.i.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %tt_common.064.i, ptr noundef nonnull %orig_entry.027.i.i.i.i) #11
  %tobool7.not.i.i.i.i = icmp eq ptr %38, null
  %add.ptr11.i.i.i.i = getelementptr i8, ptr %38, i32 -8
  %tobool2.not29.i.i.i.i = icmp eq ptr %add.ptr11.i.i.i.i, null
  %tobool2.not.i.i.i.i = or i1 %tobool7.not.i.i.i.i, %tobool2.not29.i.i.i.i
  br i1 %tobool2.not.i.i.i.i, label %land.rhs.i.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge, label %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge

land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i.i

land.rhs.i.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i.i

batadv_tt_global_entry_release.exit.i.i:          ; preds = %land.rhs.i.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge, %if.then.i.i.i.batadv_tt_global_entry_release.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i.i.i) #11
  %rcu.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %tt_common.064.i, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @batadv_tt_global_entry_free_rcu) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %batadv_tt_global_entry_release.exit.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge, %batadv_tt_global_to_purge.exit.i.for.inc.i_crit_edge, %land.lhs.true7.i.i.for.inc.i_crit_edge, %if.end.i.thread.i.for.inc.i_crit_edge
  %msg.356.i = phi ptr [ %msg.163.i, %batadv_tt_global_to_purge.exit.i.for.inc.i_crit_edge ], [ %msg.355.i, %if.end5.i.i.i.i.i.i.for.inc.i_crit_edge ], [ %msg.355.i, %if.then10.i.i.i.i.i.i ], [ %msg.355.i, %batadv_tt_global_entry_release.exit.i.i ], [ %msg.273.i, %land.lhs.true7.i.i.for.inc.i_crit_edge ], [ %msg.163.i, %if.end.i.thread.i.for.inc.i_crit_edge ]
  %tobool21.not.i = icmp eq ptr %11, null
  %add.ptr25.i = getelementptr i8, ptr %11, i32 -8
  %tobool4.not78.i = icmp eq ptr %add.ptr25.i, null
  %tobool4.not.i = or i1 %tobool21.not.i, %tobool4.not78.i
  br i1 %tobool4.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %msg.1.lcssa.i = phi ptr [ %msg.066.i, %for.body.i.for.end.i_crit_edge ], [ %msg.356.i, %for.inc.i.for.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #11
  %inc.i = add nuw i32 %i.067.i, 1
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %40
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.batadv_tt_global_purge.exit_crit_edge

for.end.i.batadv_tt_global_purge.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_purge.exit

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

batadv_tt_global_purge.exit:                      ; preds = %for.end.i.batadv_tt_global_purge.exit_crit_edge, %entry.batadv_tt_global_purge.exit_crit_edge
  %req_list_lock.i = getelementptr i8, ptr %work, i32 -184
  tail call void @_raw_spin_lock_bh(ptr noundef %req_list_lock.i) #11
  %req_list.i = getelementptr i8, ptr %work, i32 -240
  %41 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req_list.i, align 4
  %tobool.not.i11 = icmp eq ptr %42, null
  %add.ptr.i12 = getelementptr i8, ptr %42, i32 -16
  %tobool3.not3133.i = icmp eq ptr %add.ptr.i12, null
  %tobool3.not31.i = or i1 %tobool.not.i11, %tobool3.not3133.i
  br i1 %tobool3.not31.i, label %batadv_tt_global_purge.exit.batadv_tt_req_purge.exit_crit_edge, label %batadv_tt_global_purge.exit.land.rhs.i13_crit_edge

batadv_tt_global_purge.exit.land.rhs.i13_crit_edge: ; preds = %batadv_tt_global_purge.exit
  br label %land.rhs.i13

batadv_tt_global_purge.exit.batadv_tt_req_purge.exit_crit_edge: ; preds = %batadv_tt_global_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_req_purge.exit

land.rhs.i13:                                     ; preds = %for.inc.i25.land.rhs.i13_crit_edge, %batadv_tt_global_purge.exit.land.rhs.i13_crit_edge
  %node.032.i = phi ptr [ %add.ptr13.i, %for.inc.i25.land.rhs.i13_crit_edge ], [ %add.ptr.i12, %batadv_tt_global_purge.exit.land.rhs.i13_crit_edge ]
  %list.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.032.i, i32 0, i32 3
  %43 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %list.i, align 4
  %issued_at.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.032.i, i32 0, i32 1
  %45 = ptrtoint ptr %issued_at.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %issued_at.i, align 4
  %add.i.i = add i32 %46, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %land.rhs.i13.for.inc.i25_crit_edge

land.rhs.i13.for.inc.i25_crit_edge:               ; preds = %land.rhs.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i25

if.then.i:                                        ; preds = %land.rhs.i13
  %pprev.i.i.i = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.032.i, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.not.i.i, label %if.then.i.if.end.i.i20_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i20_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i20

if.then.i.i:                                      ; preds = %if.then.i
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %44, ptr %49, align 4
  %tobool.not.i3.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i15

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i

do.body13.i.i.i15:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i14 = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  %51 = ptrtoint ptr %pprev14.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %pprev14.i.i.i14, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i15, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %52 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %list.i, align 4
  %53 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %if.end.i.i20

if.end.i.i20:                                     ; preds = %__hlist_del.exit.i.i, %if.then.i.if.end.i.i20_crit_edge
  %refcount.i.i16 = getelementptr inbounds %struct.batadv_tt_req_node, ptr %node.032.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i16, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i16, i32 1, i32 3, i32 1) #11
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i16, ptr %refcount.i.i16, i32 1, ptr elementtype(i32) %refcount.i.i16) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i18 = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i18)
  %cmp.i.i.i.i.i.i19 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i18, 1
  br i1 %cmp.i.i.i.i.i.i19, label %if.then.i.i.i24, label %if.end5.i.i.i.i.i.i22

if.end5.i.i.i.i.i.i22:                            ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i18)
  %.not.i.i.i.i.i.i21 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i18, 0
  br i1 %.not.i.i.i.i.i.i21, label %if.end5.i.i.i.i.i.i22.for.inc.i25_crit_edge, label %if.then10.i.i.i.i.i.i23, !prof !174

if.end5.i.i.i.i.i.i22.for.inc.i25_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i25

if.then10.i.i.i.i.i.i23:                          ; preds = %if.end5.i.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i16, i32 noundef 3) #11
  br label %for.inc.i25

if.then.i.i.i24:                                  ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %55 = load ptr, ptr @batadv_tt_req_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %55, ptr noundef nonnull %node.032.i) #11
  br label %for.inc.i25

for.inc.i25:                                      ; preds = %if.then.i.i.i24, %if.then10.i.i.i.i.i.i23, %if.end5.i.i.i.i.i.i22.for.inc.i25_crit_edge, %land.rhs.i13.for.inc.i25_crit_edge
  %tobool9.not.i = icmp eq ptr %44, null
  %add.ptr13.i = getelementptr i8, ptr %44, i32 -16
  %tobool3.not34.i = icmp eq ptr %add.ptr13.i, null
  %tobool3.not.i = or i1 %tobool9.not.i, %tobool3.not34.i
  br i1 %tobool3.not.i, label %for.inc.i25.batadv_tt_req_purge.exit_crit_edge, label %for.inc.i25.land.rhs.i13_crit_edge

for.inc.i25.land.rhs.i13_crit_edge:               ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i13

for.inc.i25.batadv_tt_req_purge.exit_crit_edge:   ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_req_purge.exit

batadv_tt_req_purge.exit:                         ; preds = %for.inc.i25.batadv_tt_req_purge.exit_crit_edge, %batadv_tt_global_purge.exit.batadv_tt_req_purge.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %req_list_lock.i) #11
  %roam_list_lock.i = getelementptr i8, ptr %work, i32 -140
  tail call void @_raw_spin_lock_bh(ptr noundef %roam_list_lock.i) #11
  %roam_list.i = getelementptr i8, ptr %work, i32 -236
  %56 = ptrtoint ptr %roam_list.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %roam_list.i, align 4
  %cmp.not28.i = icmp eq ptr %57, %roam_list.i
  br i1 %cmp.not28.i, label %batadv_tt_req_purge.exit.batadv_tt_roam_purge.exit_crit_edge, label %batadv_tt_req_purge.exit.for.body.i30_crit_edge

batadv_tt_req_purge.exit.for.body.i30_crit_edge:  ; preds = %batadv_tt_req_purge.exit
  br label %for.body.i30

batadv_tt_req_purge.exit.batadv_tt_roam_purge.exit_crit_edge: ; preds = %batadv_tt_req_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_roam_purge.exit

for.body.i30:                                     ; preds = %for.inc.i32.for.body.i30_crit_edge, %batadv_tt_req_purge.exit.for.body.i30_crit_edge
  %.pn.in29.i = phi ptr [ %.pn32.i, %for.inc.i32.for.body.i30_crit_edge ], [ %57, %batadv_tt_req_purge.exit.for.body.i30_crit_edge ]
  %node.031.i = getelementptr i8, ptr %.pn.in29.i, i32 -16
  %58 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn32.i = load ptr, ptr %.pn.in29.i, align 4
  %first_time.i = getelementptr i8, ptr %.pn.in29.i, i32 -4
  %59 = ptrtoint ptr %first_time.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %first_time.i, align 4
  %add.i.i27 = add i32 %60, 2000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i28 = sub i32 %add.i.i27, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i28)
  %cmp.i.i29 = icmp slt i32 %sub.i.i28, 0
  br i1 %cmp.i.i29, label %if.end.i, label %for.body.i30.for.inc.i32_crit_edge

for.body.i30.for.inc.i32_crit_edge:               ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i32

if.end.i:                                         ; preds = %for.body.i30
  %call.i.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i) #11
  br i1 %call.i.i.i31, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %.pn.in29.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %68 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %70 = load ptr, ptr @batadv_tt_roam_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %70, ptr noundef %node.031.i) #11
  br label %for.inc.i32

for.inc.i32:                                      ; preds = %list_del.exit.i, %for.body.i30.for.inc.i32_crit_edge
  %cmp.not.i = icmp eq ptr %.pn32.i, %roam_list.i
  br i1 %cmp.not.i, label %for.inc.i32.batadv_tt_roam_purge.exit_crit_edge, label %for.inc.i32.for.body.i30_crit_edge

for.inc.i32.for.body.i30_crit_edge:               ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i30

for.inc.i32.batadv_tt_roam_purge.exit_crit_edge:  ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_roam_purge.exit

batadv_tt_roam_purge.exit:                        ; preds = %for.inc.i32.batadv_tt_roam_purge.exit_crit_edge, %batadv_tt_req_purge.exit.batadv_tt_roam_purge.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %roam_list_lock.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %71 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %work, i32 noundef 500) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_tt_global_is_isolated(ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %global_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global_hash.i, align 4
  %call.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool1 = icmp ne i16 %4, 0
  %refcount.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %list_lock.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i, i32 1, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i.i) #11
  %orig_list.i.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i, i32 1
  %6 = ptrtoint ptr %orig_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %orig_list.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -8
  %tobool2.not2628.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not26.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not2628.i.i.i
  br i1 %tobool2.not26.i.i.i, label %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %if.then.i.i.land.rhs.i.i.i_crit_edge

if.then.i.i.land.rhs.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %land.rhs.i.i.i

if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

land.rhs.i.i.i:                                   ; preds = %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge, %if.then.i.i.land.rhs.i.i.i_crit_edge
  %orig_entry.027.i.i.i = phi ptr [ %add.ptr11.i.i.i, %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.then.i.i.land.rhs.i.i.i_crit_edge ]
  %list.i.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list.i.i.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %call.i, ptr noundef nonnull %orig_entry.027.i.i.i) #11
  %tobool7.not.i.i.i = icmp eq ptr %9, null
  %add.ptr11.i.i.i = getelementptr i8, ptr %9, i32 -8
  %tobool2.not29.i.i.i = icmp eq ptr %add.ptr11.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool7.not.i.i.i, %tobool2.not29.i.i.i
  br i1 %tobool2.not.i.i.i, label %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, label %land.rhs.i.i.i.land.rhs.i.i.i_crit_edge

land.rhs.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i.i

land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_release.exit.i

batadv_tt_global_entry_release.exit.i:            ; preds = %land.rhs.i.i.i.batadv_tt_global_entry_release.exit.i_crit_edge, %if.then.i.i.batadv_tt_global_entry_release.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i.i) #11
  %rcu.i.i = getelementptr %struct.batadv_tt_common_entry, ptr %call.i, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @batadv_tt_global_entry_free_rcu) #11
  br label %cleanup

cleanup:                                          ; preds = %batadv_tt_global_entry_release.exit.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool1, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %tobool1, %if.then10.i.i.i.i.i ], [ %tobool1, %batadv_tt_global_entry_release.exit.i ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_tt_cache_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.21, i32 noundef 44, i32 noundef 0, i32 noundef 8192, ptr noundef null) #11
  store ptr %call, ptr @batadv_tl_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.22, i32 noundef 92, i32 noundef 0, i32 noundef 8192, ptr noundef null) #11
  store ptr %call1, ptr @batadv_tg_cache, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_tt_tl_destroy_crit_edge, label %if.end4

if.end.err_tt_tl_destroy_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_tt_tl_destroy

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.23, i32 noundef 28, i32 noundef 0, i32 noundef 8192, ptr noundef null) #11
  store ptr %call5, ptr @batadv_tt_orig_cache, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.err_tt_tg_destroy_crit_edge, label %if.end8

if.end4.err_tt_tg_destroy_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_tt_tg_destroy

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.24, i32 noundef 20, i32 noundef 0, i32 noundef 8192, ptr noundef null) #11
  store ptr %call9, ptr @batadv_tt_change_cache, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.err_tt_orig_destroy_crit_edge, label %if.end12

if.end8.err_tt_orig_destroy_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_tt_orig_destroy

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.25, i32 noundef 24, i32 noundef 0, i32 noundef 8192, ptr noundef null) #11
  store ptr %call13, ptr @batadv_tt_req_cache, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.err_tt_change_destroy_crit_edge, label %if.end16

if.end12.err_tt_change_destroy_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_tt_change_destroy

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.26, i32 noundef 24, i32 noundef 0, i32 noundef 8192, ptr noundef null) #11
  store ptr %call17, ptr @batadv_tt_roam_cache, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %err_tt_req_destroy, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_tt_req_destroy:                               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @batadv_tt_req_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  store ptr null, ptr @batadv_tt_req_cache, align 4
  br label %err_tt_change_destroy

err_tt_change_destroy:                            ; preds = %err_tt_req_destroy, %if.end12.err_tt_change_destroy_crit_edge
  %1 = load ptr, ptr @batadv_tt_change_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  store ptr null, ptr @batadv_tt_change_cache, align 4
  br label %err_tt_orig_destroy

err_tt_orig_destroy:                              ; preds = %err_tt_change_destroy, %if.end8.err_tt_orig_destroy_crit_edge
  %2 = load ptr, ptr @batadv_tt_orig_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #11
  store ptr null, ptr @batadv_tt_orig_cache, align 4
  br label %err_tt_tg_destroy

err_tt_tg_destroy:                                ; preds = %err_tt_orig_destroy, %if.end4.err_tt_tg_destroy_crit_edge
  %3 = load ptr, ptr @batadv_tg_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #11
  store ptr null, ptr @batadv_tg_cache, align 4
  br label %err_tt_tl_destroy

err_tt_tl_destroy:                                ; preds = %err_tt_tg_destroy, %if.end.err_tt_tl_destroy_crit_edge
  %4 = load ptr, ptr @batadv_tl_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #11
  store ptr null, ptr @batadv_tl_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_tt_tl_destroy, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_tt_tl_destroy ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tt_cache_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @batadv_tl_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  %1 = load ptr, ptr @batadv_tg_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  %2 = load ptr, ptr @batadv_tt_orig_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #11
  %3 = load ptr, ptr @batadv_tt_change_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #11
  %4 = load ptr, ptr @batadv_tt_req_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #11
  %5 = load ptr, ptr @batadv_tt_roam_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_tt_local_entry_free_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -28
  %0 = load ptr, ptr @batadv_tl_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_node_vlan_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_vlan_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef %tt_global_entry, ptr noundef %orig_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %tt_global_entry, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !180

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2014, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %orig_entry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %orig_entry, align 4
  %vid = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_global_entry, i32 0, i32 1
  %3 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vid, align 2
  tail call fastcc void @batadv_tt_global_size_mod(ptr noundef %2, i16 noundef zeroext %4, i32 noundef -1) #11
  %orig_list_count = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %tt_global_entry, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %orig_list_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %orig_list_count, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %orig_list_count, ptr %orig_list_count, i32 1, ptr elementtype(i32) %orig_list_count) #11, !srcloc !189
  %list = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry, i32 0, i32 3
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %pprev2.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev2.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end.hlist_del_rcu.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end.hlist_del_rcu.exit_crit_edge
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call fastcc void @batadv_tt_orig_list_entry_put(ptr noundef %orig_entry)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_orig_list_entry_put(ptr noundef %orig_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %orig_entry, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  %1 = ptrtoint ptr %orig_entry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %orig_entry, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.batadv_tt_orig_list_entry_release.exit_crit_edge, label %if.end.i.i

if.then.i.batadv_tt_orig_list_entry_release.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_orig_list_entry_release.exit

if.end.i.i:                                       ; preds = %if.then.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %2, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_tt_orig_list_entry_release.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.i.batadv_tt_orig_list_entry_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_orig_list_entry_release.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %batadv_tt_orig_list_entry_release.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i.i) #11
  br label %batadv_tt_orig_list_entry_release.exit

batadv_tt_orig_list_entry_release.exit:           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_tt_orig_list_entry_release.exit_crit_edge, %if.then.i.batadv_tt_orig_list_entry_release.exit_crit_edge
  %rcu.i = getelementptr %struct.batadv_tt_orig_list_entry, ptr %orig_entry, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @batadv_tt_orig_list_entry_free_rcu) #11
  br label %return

return:                                           ; preds = %batadv_tt_orig_list_entry_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_global_size_mod(ptr noundef %orig_node, i16 noundef zeroext %vid, i32 noundef %v) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_orig_node_vlan_new(ptr noundef %orig_node, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_entries = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call, i32 0, i32 1, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_entries, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @llvm.prefetch.p0(ptr %num_entries, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_entries, ptr %num_entries, i32 %v, ptr elementtype(i32) %num_entries) #11, !srcloc !192
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end.i23_crit_edge

if.end.if.end.i23_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i23

if.then2:                                         ; preds = %if.end
  %vlan_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 35
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock) #11
  %pprev.i = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then2.if.end7_crit_edge, label %if.then.i

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then.i:                                        ; preds = %if.then2
  %list = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %2, align 4
  %tobool.not.i7.i = icmp eq ptr %4, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %2, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %7 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr null, ptr %pprev.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %__hlist_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.if.end7_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %if.end7

if.then.i.i:                                      ; preds = %__hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_vlan_release(ptr noundef %refcount.i) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end7_crit_edge, %if.then2.if.end7_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock) #11
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.end7, %if.end.if.end.i23_crit_edge
  %refcount.i19 = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i19, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i19, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i19, ptr %refcount.i19, i32 1, ptr elementtype(i32) %refcount.i19) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i21 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i21)
  %cmp.i.i.i.i.i22 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i21, 1
  br i1 %cmp.i.i.i.i.i22, label %if.then.i.i27, label %if.end5.i.i.i.i.i25

if.end5.i.i.i.i.i25:                              ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i21)
  %.not.i.i.i.i.i24 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i21, 0
  br i1 %.not.i.i.i.i.i24, label %if.end5.i.i.i.i.i25.cleanup_crit_edge, label %if.then10.i.i.i.i.i26, !prof !174

if.end5.i.i.i.i.i25.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i26:                            ; preds = %if.end5.i.i.i.i.i25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i19, i32 noundef 3) #11
  br label %cleanup

if.then.i.i27:                                    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_vlan_release(ptr noundef %refcount.i19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i27, %if.then10.i.i.i.i.i26, %if.end5.i.i.i.i.i25.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_node_vlan_new(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_tt_orig_list_entry_free_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -20
  %0 = load ptr, ptr @batadv_tt_orig_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_router_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_unicast_send(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hash_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_tvlv_container_update(ptr noundef %bat_priv) unnamed_addr #0 align 64 {
entry:
  %tt_data = alloca ptr, align 4
  %tt_change = alloca ptr, align 4
  %tt_diff_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tt_data) #11
  %0 = ptrtoint ptr %tt_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tt_data, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tt_change) #11
  %1 = ptrtoint ptr %tt_change to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tt_change, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tt_diff_len) #11
  %local_changes = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %local_changes, i32 noundef 4) #11
  %2 = ptrtoint ptr %local_changes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %local_changes, align 4
  %mul.i = mul i32 %3, 12
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %4 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soft_iface, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %7)
  %cmp = icmp ugt i32 %mul.i, %7
  %spec.store.select = select i1 %cmp, i32 0, i32 %mul.i
  %8 = ptrtoint ptr %tt_diff_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %tt_diff_len, align 4
  %call3 = call fastcc zeroext i16 @batadv_tt_prepare_tvlv_local_data(ptr noundef %bat_priv, ptr noundef nonnull %tt_data, ptr noundef nonnull %tt_change, ptr noundef nonnull %tt_diff_len)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3)
  %tobool.not = icmp eq i16 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  %9 = ptrtoint ptr %tt_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tt_data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %10, align 2
  %12 = ptrtoint ptr %tt_diff_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tt_diff_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6 = icmp eq i32 %13, 0
  br i1 %cmp6, label %if.end5.container_register_crit_edge, label %if.end8

if.end5.container_register_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %container_register

if.end8:                                          ; preds = %if.end5
  %changes_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %changes_list_lock) #11
  %call.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_changes, i32 noundef 4) #11
  %14 = ptrtoint ptr %local_changes to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %local_changes, align 4
  %changes_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 3
  %15 = ptrtoint ptr %changes_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %changes_list, align 4
  %cmp20.not97 = icmp eq ptr %16, %changes_list
  br i1 %cmp20.not97, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end8.for.body_crit_edge
  %entry1.099 = phi ptr [ %safe.0101, %list_del.exit.for.body_crit_edge ], [ %16, %if.end8.for.body_crit_edge ]
  %tt_diff_entries_count.098 = phi i32 [ %tt_diff_entries_count.1, %list_del.exit.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %17 = ptrtoint ptr %entry1.099 to i32
  call void @__asan_load4_noabort(i32 %17)
  %safe.0101 = load ptr, ptr %entry1.099, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tt_diff_entries_count.098, i32 %3)
  %cmp21 = icmp slt i32 %tt_diff_entries_count.098, %3
  br i1 %cmp21, label %if.then22, label %for.body.if.end24_crit_edge

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %tt_change to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tt_change, align 4
  %add.ptr23 = getelementptr %struct.batadv_tvlv_tt_change, ptr %19, i32 %tt_diff_entries_count.098
  %change = getelementptr inbounds %struct.batadv_tt_change_node, ptr %entry1.099, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %add.ptr23, ptr %change, i32 12)
  %inc = add nsw i32 %tt_diff_entries_count.098, 1
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.body.if.end24_crit_edge
  %tt_diff_entries_count.1 = phi i32 [ %inc, %if.then22 ], [ %tt_diff_entries_count.098, %for.body.if.end24_crit_edge ]
  %call.i.i93 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.099) #11
  br i1 %call.i.i93, label %if.end.i.i, label %if.end24.list_del.exit_crit_edge

if.end24.list_del.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.099, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %entry1.099 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry1.099, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end24.list_del.exit_crit_edge
  %27 = ptrtoint ptr %entry1.099 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.099, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.099, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %29 = load ptr, ptr @batadv_tt_change_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef %entry1.099) #11
  %cmp20.not = icmp eq ptr %safe.0101, %changes_list
  br i1 %cmp20.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end8.for.end_crit_edge
  %tt_diff_entries_count.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %tt_diff_entries_count.1, %list_del.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %changes_list_lock) #11
  %last_changeset_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %last_changeset_lock) #11
  %last_changeset = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 11
  %30 = ptrtoint ptr %last_changeset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %last_changeset, align 4
  tail call void @kfree(ptr noundef %31) #11
  %last_changeset_len = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 12
  %32 = ptrtoint ptr %last_changeset_len to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %last_changeset_len, align 4
  %33 = ptrtoint ptr %last_changeset to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %last_changeset, align 4
  %mul.i94 = mul i32 %tt_diff_entries_count.0.lcssa, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tt_diff_entries_count.0.lcssa)
  %cmp39 = icmp sgt i32 %tt_diff_entries_count.0.lcssa, 0
  br i1 %cmp39, label %if.end8.i.i, label %for.end.if.end53_crit_edge

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end8.i.i:                                      ; preds = %for.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 2848) #15
  %34 = ptrtoint ptr %last_changeset to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.i.i, ptr %last_changeset, align 4
  %tobool46.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool46.not, label %if.end8.i.i.if.end53_crit_edge, label %if.then47

if.end8.i.i.if.end53_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then47:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %tt_change to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tt_change, align 4
  %37 = call ptr @memcpy(ptr %call9.i.i, ptr %36, i32 %mul.i94)
  %conv = trunc i32 %13 to i16
  %38 = ptrtoint ptr %last_changeset_len to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv, ptr %last_changeset_len, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.end8.i.i.if.end53_crit_edge, %for.end.if.end53_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %last_changeset_lock) #11
  br label %container_register

container_register:                               ; preds = %if.end53, %if.end5.container_register_crit_edge
  tail call void @batadv_tvlv_container_register(ptr noundef %bat_priv, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef %10, i16 noundef zeroext %call3) #11
  tail call void @kfree(ptr noundef %10) #11
  br label %cleanup

cleanup:                                          ; preds = %container_register, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_diff_len) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_change) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tt_data) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @batadv_tt_prepare_tvlv_local_data(ptr noundef %bat_priv, ptr nocapture noundef %tt_data, ptr nocapture noundef writeonly %tt_change, ptr nocapture noundef %tt_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %softif_vlan_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %softif_vlan_list_lock) #11
  %softif_vlan_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 31
  %0 = ptrtoint ptr %softif_vlan_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %softif_vlan_list, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -20
  %tobool2.not134143 = icmp eq ptr %add.ptr, null
  %tobool2.not134 = or i1 %tobool.not, %tobool2.not134143
  br i1 %tobool2.not134, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %vlan.0137 = phi ptr [ %add.ptr14, %for.body.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %num_vlan.0136 = phi i16 [ %num_vlan.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %total_entries.0135 = phi i16 [ %total_entries.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %num_entries = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.0137, i32 0, i32 3, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_entries, i32 noundef 4) #11
  %2 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_entries, align 4
  %conv3 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp = icmp eq i32 %conv3, 0
  %4 = trunc i32 %3 to i16
  %conv7 = select i1 %cmp, i16 0, i16 %4
  %total_entries.1 = add i16 %conv7, %total_entries.0135
  %not.cmp = xor i1 %cmp, true
  %inc = zext i1 %not.cmp to i16
  %num_vlan.1 = add i16 %num_vlan.0136, %inc
  %list = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.0137, i32 0, i32 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %tobool10.not = icmp eq ptr %6, null
  %add.ptr14 = getelementptr i8, ptr %6, i32 -20
  %tobool2.not145 = icmp eq ptr %add.ptr14, null
  %tobool2.not = or i1 %tobool10.not, %tobool2.not145
  br i1 %tobool2.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = zext i16 %total_entries.1 to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %total_entries.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %num_vlan.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %num_vlan.1, %for.end.loopexit ]
  %conv18 = zext i16 %num_vlan.0.lcssa to i32
  %mul = shl nuw nsw i32 %conv18, 3
  %add19 = or i32 %mul, 4
  %7 = ptrtoint ptr %tt_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tt_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp20 = icmp slt i32 %8, 0
  br i1 %cmp20, label %if.then22, label %for.end.if.end25_crit_edge

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %tt_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %total_entries.0.lcssa, ptr %tt_len, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %for.end.if.end25_crit_edge
  %10 = ptrtoint ptr %tt_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tt_len, align 4
  %add28 = add i32 %11, %add19
  %conv29 = trunc i32 %add28 to i16
  %conv30 = and i32 %add28, 65535
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv30, i32 noundef 2592) #15
  %12 = ptrtoint ptr %tt_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i, ptr %tt_data, align 4
  %tobool32.not = icmp eq ptr %call9.i, null
  br i1 %tobool32.not, label %if.end25.out_crit_edge, label %if.end34

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end34:                                         ; preds = %if.end25
  %13 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call9.i, align 128
  %tt35 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36
  %call.i.i123 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tt35, i32 noundef 4) #11
  %14 = ptrtoint ptr %tt35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tt35, align 4
  %conv37 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %tt_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tt_data, align 4
  %ttvn = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ttvn to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv37, ptr %ttvn, align 1
  %19 = load ptr, ptr %tt_data, align 4
  %num_vlan38 = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %num_vlan38 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %num_vlan.0.lcssa, ptr %num_vlan38, align 2
  %21 = ptrtoint ptr %softif_vlan_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %softif_vlan_list, align 4
  %tobool44.not = icmp eq ptr %22, null
  %add.ptr48 = getelementptr i8, ptr %22, i32 -20
  %tobool53.not139144 = icmp eq ptr %add.ptr48, null
  %tobool53.not139 = or i1 %tobool44.not, %tobool53.not139144
  br i1 %tobool53.not139, label %if.end34.for.end80_crit_edge, label %for.body54.preheader

if.end34.for.end80_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end80

for.body54.preheader:                             ; preds = %if.end34
  %23 = ptrtoint ptr %tt_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tt_data, align 4
  %add.ptr39 = getelementptr %struct.batadv_tvlv_tt_data, ptr %24, i32 1
  br label %for.body54

for.body54:                                       ; preds = %for.inc67.for.body54_crit_edge, %for.body54.preheader
  %tt_vlan.0142 = phi ptr [ %tt_vlan.1, %for.inc67.for.body54_crit_edge ], [ %add.ptr39, %for.body54.preheader ]
  %vlan.1140 = phi ptr [ %add.ptr76, %for.inc67.for.body54_crit_edge ], [ %add.ptr48, %for.body54.preheader ]
  %num_entries56 = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.1140, i32 0, i32 3, i32 1
  %call.i.i124 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_entries56, i32 noundef 4) #11
  %25 = ptrtoint ptr %num_entries56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %num_entries56, align 4
  %conv59 = and i32 %26, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv59)
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %for.body54.for.inc67_crit_edge, label %if.end63

for.body54.for.inc67_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc67

if.end63:                                         ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #13
  %tt55 = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.1140, i32 0, i32 3
  %vid = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.1140, i32 0, i32 1
  %27 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vid, align 4
  %vid64 = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan.0142, i32 0, i32 1
  %29 = ptrtoint ptr %vid64 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vid64, align 2
  %30 = ptrtoint ptr %tt55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tt55, align 4
  %32 = ptrtoint ptr %tt_vlan.0142 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %tt_vlan.0142, align 2
  %reserved = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan.0142, i32 0, i32 2
  %33 = ptrtoint ptr %reserved to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %reserved, align 2
  %incdec.ptr = getelementptr %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan.0142, i32 1
  br label %for.inc67

for.inc67:                                        ; preds = %if.end63, %for.body54.for.inc67_crit_edge
  %tt_vlan.1 = phi ptr [ %tt_vlan.0142, %for.body54.for.inc67_crit_edge ], [ %incdec.ptr, %if.end63 ]
  %list69 = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan.1140, i32 0, i32 4
  %34 = ptrtoint ptr %list69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list69, align 4
  %tobool72.not = icmp eq ptr %35, null
  %add.ptr76 = getelementptr i8, ptr %35, i32 -20
  %tobool53.not146 = icmp eq ptr %add.ptr76, null
  %tobool53.not = or i1 %tobool72.not, %tobool53.not146
  br i1 %tobool53.not, label %for.inc67.for.end80_crit_edge, label %for.inc67.for.body54_crit_edge

for.inc67.for.body54_crit_edge:                   ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54

for.inc67.for.end80_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end80

for.end80:                                        ; preds = %for.inc67.for.end80_crit_edge, %if.end34.for.end80_crit_edge
  %36 = ptrtoint ptr %tt_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tt_data, align 4
  %add.ptr81 = getelementptr i8, ptr %37, i32 %add19
  %38 = ptrtoint ptr %tt_change to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr81, ptr %tt_change, align 4
  br label %out

out:                                              ; preds = %for.end80, %if.end25.out_crit_edge
  %tvlv_len.0 = phi i16 [ %conv29, %for.end80 ], [ 0, %if.end25.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %softif_vlan_list_lock) #11
  ret i16 %tvlv_len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_register(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_local_size_mod(ptr noundef %bat_priv, i16 noundef zeroext %vid, i32 noundef %v) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_softif_vlan_get(ptr noundef %bat_priv, i16 noundef zeroext %vid) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %num_entries = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call, i32 0, i32 3, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_entries, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %num_entries, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_entries, ptr %num_entries, i32 %v, ptr elementtype(i32) %num_entries) #11, !srcloc !188
  %refcount.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_softif_vlan_release(ptr noundef %refcount.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_softif_vlan_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_tt_global_orig_entry_find(ptr noundef %entry1, ptr noundef readnone %orig_node) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %orig_list = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %entry1, i32 0, i32 1
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

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
  %.b43 = load i1, ptr @batadv_tt_global_orig_entry_find.__warned, align 1
  br i1 %.b43, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_global_orig_entry_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1450, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %4 = ptrtoint ptr %orig_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %orig_list, align 4
  %tobool11.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -8
  %tobool13.not5660 = icmp eq ptr %add.ptr, null
  %tobool13.not56 = or i1 %tobool11.not, %tobool13.not5660
  br i1 %tobool13.not56, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %tmp_orig_entry.057 = phi ptr [ %add.ptr32, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %tmp_orig_entry.057 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmp_orig_entry.057, align 4
  %cmp.not = icmp eq ptr %7, %orig_node
  br i1 %cmp.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %tmp_orig_entry.057, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %10, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %13, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !174

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %19 = phi i32 [ %16, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %list = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %tmp_orig_entry.057, i32 0, i32 3
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %list, align 4
  %tobool28.not = icmp eq ptr %21, null
  %add.ptr32 = getelementptr i8, ptr %21, i32 -8
  %tobool13.not61 = icmp eq ptr %add.ptr32, null
  %tobool13.not = or i1 %tobool28.not, %tobool13.not61
  br i1 %tobool13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %tmp_orig_entry.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tmp_orig_entry.057, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i45 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i45, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %for.end
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %22 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i52 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %tmp_orig_entry.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hash_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hash_set_lock_class(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_update_changes(ptr noundef %bat_priv, ptr noundef %orig_node, i16 noundef zeroext %tt_num_changes, i8 noundef zeroext %ttvn, ptr nocapture noundef readonly %tt_change) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_batadv_tt_update_changes(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %tt_change, i16 noundef zeroext %tt_num_changes, i8 noundef zeroext %ttvn)
  %mul.i = mul i16 %tt_num_changes, 12
  %tt_buff_lock.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %tt_buff_lock.i) #11
  %conv.i = zext i16 %mul.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul.i)
  %cmp.not.i = icmp eq i16 %mul.i, 0
  br i1 %cmp.not.i, label %entry.batadv_tt_save_orig_buffer.exit_crit_edge, label %if.then.i

entry.batadv_tt_save_orig_buffer.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_save_orig_buffer.exit

if.then.i:                                        ; preds = %entry
  %tt_buff2.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 16
  %0 = ptrtoint ptr %tt_buff2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tt_buff2.i, align 4
  tail call void @kfree(ptr noundef %1) #11
  %tt_buff_len3.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 17
  %2 = ptrtoint ptr %tt_buff_len3.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %tt_buff_len3.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i, i32 noundef 2592) #15
  %3 = ptrtoint ptr %tt_buff2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %tt_buff2.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then.i.batadv_tt_save_orig_buffer.exit_crit_edge, label %if.then7.i

if.then.i.batadv_tt_save_orig_buffer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_save_orig_buffer.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %call9.i.i, ptr %tt_change, i32 %conv.i)
  %5 = ptrtoint ptr %tt_buff_len3.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %mul.i, ptr %tt_buff_len3.i, align 4
  br label %batadv_tt_save_orig_buffer.exit

batadv_tt_save_orig_buffer.exit:                  ; preds = %if.then7.i, %if.then.i.batadv_tt_save_orig_buffer.exit_crit_edge, %entry.batadv_tt_save_orig_buffer.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tt_buff_lock.i) #11
  %last_ttvn = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 15
  %conv2 = zext i8 %ttvn to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_ttvn, i32 noundef 4) #11
  %6 = ptrtoint ptr %last_ttvn to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %conv2, ptr %last_ttvn, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_global_update_crc(ptr noundef %bat_priv, ptr noundef %orig_node) unnamed_addr #0 align 64 {
entry:
  %flags.i = alloca i8, align 1
  %tmp_vid.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
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
  %.b44 = load i1, ptr @batadv_tt_global_update_crc.__warned, align 1
  br i1 %.b44, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_global_update_crc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2886, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %vlan_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 34
  %4 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlan_list, align 4
  %tobool10.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -12
  %tobool12.not6365 = icmp eq ptr %add.ptr, null
  %tobool12.not63 = or i1 %tobool10.not, %tobool12.not6365
  br i1 %tobool12.not63, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %global_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vlan.064 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr30, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %vlan.064 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan.064, align 4
  %call13 = call zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %bat_priv, ptr noundef %orig_node, i16 noundef zeroext %7) #11
  br i1 %call13, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %8 = ptrtoint ptr %vlan.064 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vlan.064, align 4
  %10 = ptrtoint ptr %global_hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %global_hash.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags.i) #11
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %flags.i, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp_vid.i) #11
  %13 = ptrtoint ptr %tmp_vid.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %tmp_vid.i, align 2, !annotation !190
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp94.not.i = icmp eq i32 %15, 0
  br i1 %cmp94.not.i, label %if.end15.batadv_tt_global_crc.exit_crit_edge, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.end15.batadv_tt_global_crc.exit_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_crc.exit

for.body.i:                                       ; preds = %rcu_read_unlock.exit.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %i.096.i = phi i32 [ %inc.i, %rcu_read_unlock.exit.i.for.body.i_crit_edge ], [ 0, %if.end15.for.body.i_crit_edge ]
  %crc.095.i = phi i32 [ %crc.1.lcssa.i, %rcu_read_unlock.exit.i.for.body.i_crit_edge ], [ 0, %if.end15.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %17, i32 %i.096.i
  %18 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %for.body.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.i.rcu_read_lock.exit.i_crit_edge
  %call.i46 = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i49, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i49:                                ; preds = %rcu_read_lock.exit.i
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool2.not.i = icmp eq i32 %call1.i48, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i49.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i49.do.end.i_crit_edge:             ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i49
  %.b78.i = load i1, ptr @batadv_tt_global_crc.__warned, align 1
  br i1 %.b78.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i50

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i50:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_global_crc.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2455, ptr noundef nonnull @.str.11) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i50, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i49.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %23, null
  %add.ptr.i = getelementptr i8, ptr %23, i32 -8
  %tobool13.not9198.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not91.i = or i1 %tobool10.not.i, %tobool13.not9198.i
  br i1 %tobool13.not91.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body14.i_crit_edge

do.end.i.for.body14.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body14.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body14.i:                                     ; preds = %for.inc.i.for.body14.i_crit_edge, %do.end.i.for.body14.i_crit_edge
  %tt_common.093.i = phi ptr [ %add.ptr55.i, %for.inc.i.for.body14.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body14.i_crit_edge ]
  %crc.192.i = phi i32 [ %crc.2.i, %for.inc.i.for.body14.i_crit_edge ], [ %crc.095.i, %do.end.i.for.body14.i_crit_edge ]
  %vid18.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.093.i, i32 0, i32 1
  %24 = ptrtoint ptr %vid18.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vid18.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %9)
  %cmp20.not.i = icmp eq i16 %25, %9
  br i1 %cmp20.not.i, label %if.end23.i, label %for.body14.i.for.inc.i_crit_edge

for.body14.i.for.inc.i_crit_edge:                 ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body14.i
  %flags24.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.093.i, i32 0, i32 3
  %26 = ptrtoint ptr %flags24.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags24.i, align 4
  %28 = and i16 %27, 2050
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %if.end34.i, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end34.i:                                       ; preds = %if.end23.i
  %call35.i = call fastcc ptr @batadv_tt_global_orig_entry_find(ptr noundef nonnull %tt_common.093.i, ptr noundef %orig_node) #11
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %if.end34.i.for.inc.i_crit_edge, label %if.end38.i

if.end34.i.for.inc.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end38.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %vid18.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vid18.i, align 2
  %32 = ptrtoint ptr %tmp_vid.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %tmp_vid.i, align 2
  %call40.i = call i32 @crc32c(i32 noundef 0, ptr noundef nonnull %tmp_vid.i, i32 noundef 2) #11
  %flags41.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %call35.i, i32 0, i32 2
  %33 = ptrtoint ptr %flags41.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags41.i, align 1
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %flags.i, align 1
  %call42.i = call i32 @crc32c(i32 noundef %call40.i, ptr noundef nonnull %flags.i, i32 noundef 1) #11
  %call43.i = call i32 @crc32c(i32 noundef %call42.i, ptr noundef nonnull %tt_common.093.i, i32 noundef 6) #11
  %xor.i = xor i32 %call43.i, %crc.192.i
  call fastcc void @batadv_tt_orig_list_entry_put(ptr noundef nonnull %call35.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end38.i, %if.end34.i.for.inc.i_crit_edge, %if.end23.i.for.inc.i_crit_edge, %for.body14.i.for.inc.i_crit_edge
  %crc.2.i = phi i32 [ %crc.192.i, %for.body14.i.for.inc.i_crit_edge ], [ %crc.192.i, %if.end23.i.for.inc.i_crit_edge ], [ %xor.i, %if.end38.i ], [ %crc.192.i, %if.end34.i.for.inc.i_crit_edge ]
  %hash_entry.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common.093.i, i32 0, i32 2
  %36 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %hash_entry.i, align 4
  %tobool51.not.i = icmp eq ptr %37, null
  %add.ptr55.i = getelementptr i8, ptr %37, i32 -8
  %tobool13.not99.i = icmp eq ptr %add.ptr55.i, null
  %tobool13.not.i = or i1 %tobool51.not.i, %tobool13.not99.i
  br i1 %tobool13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body14.i_crit_edge

for.inc.i.for.body14.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %crc.1.lcssa.i = phi i32 [ %crc.095.i, %do.end.i.for.end.i_crit_edge ], [ %crc.2.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i80.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i80.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i83.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i83.i:                              ; preds = %for.end.i
  %call1.i81.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81.i)
  %tobool.not.i82.i = icmp eq i32 %call1.i81.i, 0
  br i1 %tobool.not.i82.i, label %land.lhs.true.i83.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i85.i

land.lhs.true.i83.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i85.i:                             ; preds = %land.lhs.true.i83.i
  %.b4.i84.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84.i, label %land.lhs.true2.i85.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i86.i

land.lhs.true2.i85.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i86.i:                                    ; preds = %land.lhs.true2.i85.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i86.i, %land.lhs.true2.i85.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i83.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %38 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i87.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i87.i to ptr
  %preempt_count.i.i.i.i88.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i88.i, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i88.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc.i = add nuw i32 %i.096.i, 1
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %43
  br i1 %cmp.i, label %rcu_read_unlock.exit.i.for.body.i_crit_edge, label %rcu_read_unlock.exit.i.batadv_tt_global_crc.exit_crit_edge

rcu_read_unlock.exit.i.batadv_tt_global_crc.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_crc.exit

rcu_read_unlock.exit.i.for.body.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

batadv_tt_global_crc.exit:                        ; preds = %rcu_read_unlock.exit.i.batadv_tt_global_crc.exit_crit_edge, %if.end15.batadv_tt_global_crc.exit_crit_edge
  %crc.0.lcssa.i = phi i32 [ 0, %if.end15.batadv_tt_global_crc.exit_crit_edge ], [ %crc.1.lcssa.i, %rcu_read_unlock.exit.i.batadv_tt_global_crc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp_vid.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags.i) #11
  %tt = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %vlan.064, i32 0, i32 1
  %44 = ptrtoint ptr %tt to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %crc.0.lcssa.i, ptr %tt, align 4
  br label %for.inc

for.inc:                                          ; preds = %batadv_tt_global_crc.exit, %for.body.for.inc_crit_edge
  %list = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %vlan.064, i32 0, i32 2
  %45 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %list, align 4
  %tobool26.not = icmp eq ptr %46, null
  %add.ptr30 = getelementptr i8, ptr %46, i32 -12
  %tobool12.not66 = icmp eq ptr %add.ptr30, null
  %tobool12.not = or i1 %tobool26.not, %tobool12.not66
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i51 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i51, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %for.end
  %call1.i52 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %47 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i58 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i59, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @batadv_tt_global_check_crc(ptr noundef %orig_node, ptr nocapture noundef readonly %tt_vlan, i16 noundef zeroext %num_vlan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %num_vlan to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_vlan)
  %cmp89.not = icmp eq i16 %num_vlan, 0
  br i1 %cmp89.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bat_priv = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan, i32 %i.090
  %0 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_priv, align 4
  %vid = getelementptr %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan, i32 %i.090, i32 1
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  %call = tail call zeroext i1 @batadv_bla_is_backbone_gw_orig(ptr noundef %1, ptr noundef %orig_node, i16 noundef zeroext %3) #11
  br i1 %call, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 2
  %call3 = tail call ptr @batadv_orig_node_vlan_get(ptr noundef %orig_node, i16 noundef zeroext %5) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %tt = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tt, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %call3, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_vlan_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !174

if.end5.i.i.i.i.i.batadv_orig_node_vlan_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_vlan_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %batadv_orig_node_vlan_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @batadv_orig_node_vlan_release(ptr noundef %refcount.i) #11
  br label %batadv_orig_node_vlan_put.exit

batadv_orig_node_vlan_put.exit:                   ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_vlan_put.exit_crit_edge
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %10)
  %cmp8.not = icmp eq i32 %7, %10
  br i1 %cmp8.not, label %batadv_orig_node_vlan_put.exit.for.inc_crit_edge, label %batadv_orig_node_vlan_put.exit.cleanup_crit_edge

batadv_orig_node_vlan_put.exit.cleanup_crit_edge: ; preds = %batadv_orig_node_vlan_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

batadv_orig_node_vlan_put.exit.for.inc_crit_edge: ; preds = %batadv_orig_node_vlan_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %batadv_orig_node_vlan_put.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.end.rcu_read_lock.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.end.rcu_read_lock.exit_crit_edge
  %call12 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true16

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b74 = load i1, ptr @batadv_tt_global_check_crc.__warned, align 1
  br i1 %.b74, label %land.lhs.true16.do.end_crit_edge, label %if.then18

land.lhs.true16.do.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_global_check_crc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2847, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then18, %land.lhs.true16.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %vlan_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 34
  %15 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %vlan_list, align 4
  %tobool25.not = icmp eq ptr %16, null
  %add.ptr27 = getelementptr i8, ptr %16, i32 -12
  %tobool29.not9195 = icmp eq ptr %add.ptr27, null
  %tobool29.not91 = or i1 %tobool25.not, %tobool29.not9195
  br i1 %tobool29.not91, label %do.end.for.end48_crit_edge, label %do.end.for.body30_crit_edge

do.end.for.body30_crit_edge:                      ; preds = %do.end
  br label %for.body30

do.end.for.end48_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %do.end.for.body30_crit_edge
  %17 = phi ptr [ %19, %for.body30.for.body30_crit_edge ], [ %16, %do.end.for.body30_crit_edge ]
  %orig_num_vlan.092 = phi i32 [ %inc31, %for.body30.for.body30_crit_edge ], [ 0, %do.end.for.body30_crit_edge ]
  %inc31 = add i32 %orig_num_vlan.092, 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 4
  %tobool40.not = icmp eq ptr %19, null
  %add.ptr44 = getelementptr i8, ptr %19, i32 -12
  %tobool29.not96 = icmp eq ptr %add.ptr44, null
  %tobool29.not = or i1 %tobool40.not, %tobool29.not96
  br i1 %tobool29.not, label %for.body30.for.end48_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body30

for.body30.for.end48_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.end48:                                        ; preds = %for.body30.for.end48_crit_edge, %do.end.for.end48_crit_edge
  %orig_num_vlan.0.lcssa = phi i32 [ 0, %do.end.for.end48_crit_edge ], [ %inc31, %for.body30.for.end48_crit_edge ]
  %call.i77 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i77, label %for.end48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i80

for.end48.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i80:                                ; preds = %for.end48
  %call1.i78 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %tobool.not.i79 = icmp eq i32 %call1.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i82

land.lhs.true.i80.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i82:                               ; preds = %land.lhs.true.i80
  %.b4.i81 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i81, label %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, label %if.then.i83

land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i83:                                      ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i83, %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, %for.end48.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %20 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i84 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i84 to ptr
  %preempt_count.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i85, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i85, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %orig_num_vlan.0.lcssa, i32 %conv)
  %cmp50 = icmp sle i32 %orig_num_vlan.0.lcssa, %conv
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %batadv_orig_node_vlan_put.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp50, %rcu_read_unlock.exit ], [ false, %if.end.cleanup_crit_edge ], [ false, %batadv_orig_node_vlan_put.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_batadv_tt_update_changes(ptr noundef %bat_priv, ptr noundef %orig_node, ptr nocapture noundef readonly %tt_change, i16 noundef zeroext %tt_num_changes, i8 noundef zeroext %ttvn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %tt_num_changes to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tt_num_changes)
  %cmp38.not = icmp eq i16 %tt_num_changes, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %global_hash.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 5
  %local_hash.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36, i32 4
  %log_level.i6.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.batadv_tvlv_tt_change, ptr %tt_change, i32 %i.039
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 2
  %conv2 = zext i8 %1 to i32
  %and = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %addr11 = getelementptr %struct.batadv_tvlv_tt_change, ptr %tt_change, i32 %i.039, i32 2
  %vid14 = getelementptr %struct.batadv_tvlv_tt_change, ptr %tt_change, i32 %i.039, i32 3
  %2 = ptrtoint ptr %vid14 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid14, align 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %global_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %global_hash.i.i, align 4
  %call.i.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %5, ptr noundef %addr11, i16 noundef zeroext %3) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.batadv_tt_global_del.exit_crit_edge, label %if.end.i

if.then.batadv_tt_global_del.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del.exit

if.end.i:                                         ; preds = %if.then
  %and6 = and i32 %conv2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool9.not = icmp eq i32 %and6, 0
  br i1 %tobool9.not, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  tail call fastcc void @batadv_tt_global_del_orig_node(ptr noundef %bat_priv, ptr noundef nonnull %call.i.i, ptr noundef %orig_node, ptr noundef nonnull @.str.43) #11
  %orig_list.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %orig_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %orig_list.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i, label %if.then5.i, label %if.then2.i.batadv_tt_global_del.exit_crit_edge

if.then2.i.batadv_tt_global_del.exit_crit_edge:   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del.exit

if.then5.i:                                       ; preds = %if.then2.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i6.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %log_level.i6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %log_level.i6.i, align 4
  %and.i.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %if.then5.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then5.i.if.end.i.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %vid.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid.i.i, align 2
  %conv.i.i.i = zext i16 %11 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and2.i.i.i = and i32 %conv.i.i.i, 4095
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %and2.i.i.i
  %call3.i.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i.i, i32 noundef %retval.0.i.i.i, ptr noundef nonnull @.str.43) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then5.i.if.end.i.i_crit_edge
  %12 = ptrtoint ptr %global_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %global_hash.i.i, align 4
  %call5.i.i = tail call fastcc ptr @batadv_hash_remove(ptr noundef %13, ptr noundef nonnull %call.i.i) #11
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.batadv_tt_global_del.exit_crit_edge, label %if.end8.i.i

if.end.i.i.batadv_tt_global_del.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del.exit

if.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %call5.i.i, i32 -8
  tail call fastcc void @batadv_tt_global_entry_put(ptr noundef %add.ptr.i.i) #11
  br label %batadv_tt_global_del.exit

if.end7.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %local_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %local_hash.i.i, align 4
  %call.i3.i = tail call fastcc ptr @batadv_tt_hash_find(ptr noundef %15, ptr noundef nonnull %call.i.i, i16 noundef zeroext %3) #11
  %tobool10.not.i = icmp eq ptr %call.i3.i, null
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end7.i
  %list_lock.i.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i.i, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock.i.i) #11
  %orig_list.i.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %orig_list.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %orig_list.i.i, align 4
  %tobool.not.i4.i = icmp eq ptr %17, null
  %add.ptr.i5.i = getelementptr i8, ptr %17, i32 -8
  %tobool2.not2628.i.i = icmp eq ptr %add.ptr.i5.i, null
  %tobool2.not26.i.i = or i1 %tobool.not.i4.i, %tobool2.not2628.i.i
  br i1 %tobool2.not26.i.i, label %if.then11.i.batadv_tt_global_del_orig_list.exit.i_crit_edge, label %if.then11.i.land.rhs.i.i_crit_edge

if.then11.i.land.rhs.i.i_crit_edge:               ; preds = %if.then11.i
  br label %land.rhs.i.i

if.then11.i.batadv_tt_global_del_orig_list.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.land.rhs.i.i_crit_edge, %if.then11.i.land.rhs.i.i_crit_edge
  %orig_entry.027.i.i = phi ptr [ %add.ptr11.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %add.ptr.i5.i, %if.then11.i.land.rhs.i.i_crit_edge ]
  %list.i.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.027.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list.i.i, align 4
  tail call fastcc void @_batadv_tt_global_del_orig_entry(ptr noundef nonnull %call.i.i, ptr noundef nonnull %orig_entry.027.i.i) #11
  %tobool7.not.i.i = icmp eq ptr %19, null
  %add.ptr11.i.i = getelementptr i8, ptr %19, i32 -8
  %tobool2.not29.i.i = icmp eq ptr %add.ptr11.i.i, null
  %tobool2.not.i.i = or i1 %tobool7.not.i.i, %tobool2.not29.i.i
  br i1 %tobool2.not.i.i, label %land.rhs.i.i.batadv_tt_global_del_orig_list.exit.i_crit_edge, label %land.rhs.i.i.land.rhs.i.i_crit_edge

land.rhs.i.i.land.rhs.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

land.rhs.i.i.batadv_tt_global_del_orig_list.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del_orig_list.exit.i

batadv_tt_global_del_orig_list.exit.i:            ; preds = %land.rhs.i.i.batadv_tt_global_del_orig_list.exit.i_crit_edge, %if.then11.i.batadv_tt_global_del_orig_list.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock.i.i) #11
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i6.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %log_level.i6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %log_level.i6.i, align 4
  %and.i8.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %batadv_tt_global_del_orig_list.exit.i.if.end.i21.i_crit_edge, label %if.then.i17.i

batadv_tt_global_del_orig_list.exit.i.if.end.i21.i_crit_edge: ; preds = %batadv_tt_global_del_orig_list.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i21.i

if.then.i17.i:                                    ; preds = %batadv_tt_global_del_orig_list.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %vid.i10.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %vid.i10.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vid.i10.i, align 2
  %conv.i.i11.i = zext i16 %23 to i32
  %and.i.i12.i = and i32 %conv.i.i11.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12.i)
  %tobool.not.i.i13.i = icmp eq i32 %and.i.i12.i, 0
  %and2.i.i14.i = and i32 %conv.i.i11.i, 4095
  %retval.0.i.i15.i = select i1 %tobool.not.i.i13.i, i32 -1, i32 %and2.i.i14.i
  %call3.i16.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i.i, i32 noundef %retval.0.i.i15.i, ptr noundef nonnull @.str.43) #11
  br label %if.end.i21.i

if.end.i21.i:                                     ; preds = %if.then.i17.i, %batadv_tt_global_del_orig_list.exit.i.if.end.i21.i_crit_edge
  %24 = ptrtoint ptr %global_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %global_hash.i.i, align 4
  %call5.i19.i = tail call fastcc ptr @batadv_hash_remove(ptr noundef %25, ptr noundef nonnull %call.i.i) #11
  %tobool6.not.i20.i = icmp eq ptr %call5.i19.i, null
  br i1 %tobool6.not.i20.i, label %if.end.i21.i.batadv_tt_global_del.exit_crit_edge, label %if.end8.i23.i

if.end.i21.i.batadv_tt_global_del.exit_crit_edge: ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_del.exit

if.end8.i23.i:                                    ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i22.i = getelementptr i8, ptr %call5.i19.i, i32 -8
  tail call fastcc void @batadv_tt_global_entry_put(ptr noundef %add.ptr.i22.i) #11
  br label %batadv_tt_global_del.exit

if.else.i:                                        ; preds = %if.end7.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %if.else.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i25.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i25.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.else.i.rcu_read_lock.exit.i.i_crit_edge
  %orig_list.i26.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i.i, i32 0, i32 1
  %call.i27.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool.not.i28.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool.not.i28.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i29.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i29.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @batadv_tt_global_del_roaming.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i30.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i30.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_global_del_roaming.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2099, ptr noundef nonnull @.str.11) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i30.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %30 = ptrtoint ptr %orig_list.i26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %orig_list.i26.i, align 4
  %tobool10.not.i.i = icmp eq ptr %31, null
  %add.ptr.i31.i = getelementptr i8, ptr %31, i32 -8
  %tobool12.not2527.i.i = icmp eq ptr %add.ptr.i31.i, null
  %tobool12.not25.i.i = or i1 %tobool10.not.i.i, %tobool12.not2527.i.i
  br i1 %tobool12.not25.i.i, label %do.end.i.i.if.then32.critedge.i.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.then32.critedge.i.i_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.critedge.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %orig_entry.026.i.i = phi ptr [ %add.ptr27.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i31.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %orig_entry.026.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %orig_entry.026.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %33, %orig_node
  br i1 %cmp.not.i.i, label %for.inc.i.i, label %if.else.critedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %list.i32.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %orig_entry.026.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %list.i32.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %list.i32.i, align 4
  %tobool23.not.i.i = icmp eq ptr %35, null
  %add.ptr27.i.i = getelementptr i8, ptr %35, i32 -8
  %tobool12.not28.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i.i = or i1 %tobool23.not.i.i, %tobool12.not28.i.i
  br i1 %tobool12.not.i.i, label %for.inc.i.i.if.then32.critedge.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then32.critedge.i.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.critedge.i.i

if.then32.critedge.i.i:                           ; preds = %for.inc.i.i.if.then32.critedge.i.i_crit_edge, %do.end.i.i.if.then32.critedge.i.i_crit_edge
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i3.i.i, label %if.then32.critedge.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i6.i.i

if.then32.critedge.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %if.then32.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i6.i.i:                             ; preds = %if.then32.critedge.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i6.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.then32.critedge.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %36 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i10.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %flags.i.i = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %call.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i.i, align 4
  %42 = or i16 %41, 2
  store i16 %42, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %roam_at.i.i = getelementptr inbounds %struct.batadv_tt_global_entry, ptr %call.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %roam_at.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %roam_at.i.i, align 4
  br label %batadv_tt_global_del.exit

if.else.critedge.i.i:                             ; preds = %for.body.i.i
  %call.i12.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i12.i.i, label %if.else.critedge.i.i.rcu_read_unlock.exit22.i.i_crit_edge, label %land.lhs.true.i15.i.i

if.else.critedge.i.i.rcu_read_unlock.exit22.i.i_crit_edge: ; preds = %if.else.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit22.i.i

land.lhs.true.i15.i.i:                            ; preds = %if.else.critedge.i.i
  %call1.i13.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %call1.i13.i.i, 0
  br i1 %tobool.not.i14.i.i, label %land.lhs.true.i15.i.i.rcu_read_unlock.exit22.i.i_crit_edge, label %land.lhs.true2.i17.i.i

land.lhs.true.i15.i.i.rcu_read_unlock.exit22.i.i_crit_edge: ; preds = %land.lhs.true.i15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit22.i.i

land.lhs.true2.i17.i.i:                           ; preds = %land.lhs.true.i15.i.i
  %.b4.i16.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16.i.i, label %land.lhs.true2.i17.i.i.rcu_read_unlock.exit22.i.i_crit_edge, label %if.then.i18.i.i

land.lhs.true2.i17.i.i.rcu_read_unlock.exit22.i.i_crit_edge: ; preds = %land.lhs.true2.i17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit22.i.i

if.then.i18.i.i:                                  ; preds = %land.lhs.true2.i17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit22.i.i

rcu_read_unlock.exit22.i.i:                       ; preds = %if.then.i18.i.i, %land.lhs.true2.i17.i.i.rcu_read_unlock.exit22.i.i_crit_edge, %land.lhs.true.i15.i.i.rcu_read_unlock.exit22.i.i_crit_edge, %if.else.critedge.i.i.rcu_read_unlock.exit22.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %45 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i19.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i19.i.i to ptr
  %preempt_count.i.i.i.i20.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i20.i.i, align 4
  %sub.i.i.i21.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i21.i.i, ptr %preempt_count.i.i.i.i20.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call fastcc void @batadv_tt_global_del_orig_node(ptr noundef %bat_priv, ptr noundef nonnull %call.i.i, ptr noundef %orig_node, ptr noundef nonnull @.str.43) #11
  br label %batadv_tt_global_del.exit

batadv_tt_global_del.exit:                        ; preds = %rcu_read_unlock.exit22.i.i, %rcu_read_unlock.exit.i.i, %if.end8.i23.i, %if.end.i21.i.batadv_tt_global_del.exit_crit_edge, %if.end8.i.i, %if.end.i.i.batadv_tt_global_del.exit_crit_edge, %if.then2.i.batadv_tt_global_del.exit_crit_edge, %if.then.batadv_tt_global_del.exit_crit_edge
  %local_entry.0.i = phi ptr [ null, %if.then2.i.batadv_tt_global_del.exit_crit_edge ], [ null, %if.then.batadv_tt_global_del.exit_crit_edge ], [ null, %if.end.i.i.batadv_tt_global_del.exit_crit_edge ], [ null, %if.end8.i.i ], [ %call.i3.i, %if.end.i21.i.batadv_tt_global_del.exit_crit_edge ], [ %call.i3.i, %if.end8.i23.i ], [ null, %rcu_read_unlock.exit.i.i ], [ null, %rcu_read_unlock.exit22.i.i ]
  tail call fastcc void @batadv_tt_global_entry_put(ptr noundef %call.i.i) #11
  tail call fastcc void @batadv_tt_local_entry_put(ptr noundef %local_entry.0.i) #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  %conv17 = zext i8 %1 to i16
  %call = tail call fastcc zeroext i1 @batadv_tt_global_add(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %addr11, i16 noundef zeroext %3, i16 noundef zeroext %conv17, i8 noundef zeroext %ttvn)
  br i1 %call, label %if.else.for.inc_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %batadv_tt_global_del.exit
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %capa_initialized = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %capa_initialized) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_my_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tt_tvlv_generate(ptr nocapture noundef readonly %hash, ptr nocapture noundef writeonly %tvlv_buff, i16 noundef zeroext %tt_len, ptr noundef readonly %valid_cb, ptr noundef %cb_data) unnamed_addr #0 align 64 {
entry:
  %flags = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flags, align 1, !annotation !190
  %div23.i = udiv i16 %tt_len, 12
  %tobool.not = icmp eq ptr %valid_cb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.not = icmp eq i32 %6, 0
  br i1 %cmp21.not, label %rcu_read_lock.exit.for.end50_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end50_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end50

for.body:                                         ; preds = %for.inc48.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %tt_change.024 = phi ptr [ %tt_change.1.lcssa, %for.inc48.for.body_crit_edge ], [ %tvlv_buff, %rcu_read_lock.exit.for.body_crit_edge ]
  %tt_num_entries.023 = phi i16 [ %tt_num_entries.1.lcssa, %for.inc48.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc49, %for.inc48.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %8, i32 %i.022
  %call1 = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call3 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @batadv_tt_tvlv_generate.__warned, align 1
  br i1 %.b1, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tt_tvlv_generate.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 2779, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %10, null
  %add.ptr = getelementptr i8, ptr %10, i32 -8
  %tobool17.not1225 = icmp eq ptr %add.ptr, null
  %tobool17.not12 = or i1 %tobool14.not, %tobool17.not1225
  call void @__sanitizer_cov_trace_cmp2(i16 %div23.i, i16 %tt_num_entries.023)
  %cmp2013 = icmp eq i16 %div23.i, %tt_num_entries.023
  %or.cond14 = select i1 %tobool17.not12, i1 true, i1 %cmp2013
  br i1 %or.cond14, label %do.end.for.inc48_crit_edge, label %do.end.if.end23_crit_edge

do.end.if.end23_crit_edge:                        ; preds = %do.end
  br label %if.end23

do.end.for.inc48_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

if.end23:                                         ; preds = %for.inc.if.end23_crit_edge, %do.end.if.end23_crit_edge
  %tt_common_entry.017 = phi ptr [ %add.ptr44, %for.inc.if.end23_crit_edge ], [ %add.ptr, %do.end.if.end23_crit_edge ]
  %tt_change.116 = phi ptr [ %tt_change.2, %for.inc.if.end23_crit_edge ], [ %tt_change.024, %do.end.if.end23_crit_edge ]
  %tt_num_entries.115 = phi i16 [ %tt_num_entries.2, %for.inc.if.end23_crit_edge ], [ %tt_num_entries.023, %do.end.if.end23_crit_edge ]
  %call24 = call zeroext i1 %valid_cb(ptr noundef nonnull %tt_common_entry.017, ptr noundef %cb_data, ptr noundef nonnull %flags) #11, !callees !194
  br i1 %call24, label %if.end27, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr inbounds %struct.batadv_tvlv_tt_change, ptr %tt_change.116, i32 0, i32 2
  %11 = ptrtoint ptr %tt_common_entry.017 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tt_common_entry.017, align 4
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %tt_common_entry.017, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.batadv_tvlv_tt_change, ptr %tt_change.116, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i, align 2
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags, align 1
  %19 = ptrtoint ptr %tt_change.116 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tt_change.116, align 2
  %vid = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.017, i32 0, i32 1
  %20 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid, align 2
  %vid31 = getelementptr inbounds %struct.batadv_tvlv_tt_change, ptr %tt_change.116, i32 0, i32 3
  %22 = ptrtoint ptr %vid31 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %vid31, align 2
  %reserved = getelementptr inbounds %struct.batadv_tvlv_tt_change, ptr %tt_change.116, i32 0, i32 1
  %23 = call ptr @memset(ptr %reserved, i32 0, i32 3)
  %inc = add i16 %tt_num_entries.115, 1
  %incdec.ptr = getelementptr %struct.batadv_tvlv_tt_change, ptr %tt_change.116, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %if.end23.for.inc_crit_edge
  %tt_num_entries.2 = phi i16 [ %inc, %if.end27 ], [ %tt_num_entries.115, %if.end23.for.inc_crit_edge ]
  %tt_change.2 = phi ptr [ %incdec.ptr, %if.end27 ], [ %tt_change.116, %if.end23.for.inc_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %tt_common_entry.017, i32 0, i32 2
  %24 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hash_entry, align 4
  %tobool40.not = icmp eq ptr %25, null
  %add.ptr44 = getelementptr i8, ptr %25, i32 -8
  %tobool17.not26 = icmp eq ptr %add.ptr44, null
  %tobool17.not = or i1 %tobool40.not, %tobool17.not26
  call void @__sanitizer_cov_trace_cmp2(i16 %div23.i, i16 %tt_num_entries.2)
  %cmp20 = icmp eq i16 %div23.i, %tt_num_entries.2
  %or.cond = select i1 %tobool17.not, i1 true, i1 %cmp20
  br i1 %or.cond, label %for.inc.for.inc48_crit_edge, label %for.inc.if.end23_crit_edge

for.inc.if.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

for.inc.for.inc48_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

for.inc48:                                        ; preds = %for.inc.for.inc48_crit_edge, %do.end.for.inc48_crit_edge
  %tt_num_entries.1.lcssa = phi i16 [ %tt_num_entries.023, %do.end.for.inc48_crit_edge ], [ %tt_num_entries.2, %for.inc.for.inc48_crit_edge ]
  %tt_change.1.lcssa = phi ptr [ %tt_change.024, %do.end.for.inc48_crit_edge ], [ %tt_change.2, %for.inc.for.inc48_crit_edge ]
  %inc49 = add nuw i32 %i.022, 1
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc49, %27
  br i1 %cmp, label %for.inc48.for.body_crit_edge, label %for.inc48.for.end50_crit_edge

for.inc48.for.end50_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end50

for.inc48.for.body_crit_edge:                     ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end50:                                        ; preds = %for.inc48.for.end50_crit_edge, %rcu_read_lock.exit.for.end50_crit_edge
  %call.i3 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i3, label %for.end50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

for.end50.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %for.end50
  %call1.i4 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %for.end50.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !175
  %28 = call i32 @llvm.read_register.i32(metadata !162) #11
  %and.i.i.i.i.i10 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @batadv_tt_local_valid(ptr nocapture noundef readonly %entry_ptr, ptr nocapture noundef readnone %data_ptr, ptr noundef writeonly %flags) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %entry_ptr, i32 0, i32 3
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags1, align 4
  %2 = and i16 %1, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %tobool2.not = icmp ne ptr %flags, null
  %3 = and i1 %tobool2.not, %tobool.not
  br i1 %3, label %if.then3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = trunc i16 %1 to i8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv5, ptr %flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %entry.cleanup_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @batadv_tt_prepare_tvlv_global_data(ptr noundef %orig_node, ptr nocapture noundef %tt_data, ptr nocapture noundef writeonly %tt_change, ptr nocapture noundef %tt_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 35
  tail call void @_raw_spin_lock_bh(ptr noundef %vlan_list_lock) #11
  %vlan_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 34
  %0 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan_list, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %tobool2.not120128 = icmp eq ptr %add.ptr, null
  %tobool2.not120 = or i1 %tobool.not, %tobool2.not120128
  br i1 %tobool2.not120, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %num_vlan.0123 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %num_entries.0122 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %vlan.0121 = phi ptr [ %add.ptr11, %for.body.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %inc = add i16 %num_vlan.0123, 1
  %num_entries3 = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %vlan.0121, i32 0, i32 1, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_entries3, i32 noundef 4) #11
  %2 = ptrtoint ptr %num_entries3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_entries3, align 4
  %add = add i32 %3, %num_entries.0122
  %list = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %vlan.0121, i32 0, i32 2
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %tobool7.not = icmp eq ptr %5, null
  %add.ptr11 = getelementptr i8, ptr %5, i32 -12
  %phi.cast = and i32 %add, 65535
  %tobool2.not130 = icmp eq ptr %add.ptr11, null
  %tobool2.not = or i1 %tobool7.not, %tobool2.not130
  br i1 %tobool2.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = mul nuw nsw i32 %phi.cast, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %num_entries.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %num_vlan.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.end.loopexit ]
  %mul = shl i16 %num_vlan.0.lcssa, 3
  %add17 = or i16 %mul, 4
  %6 = ptrtoint ptr %tt_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tt_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %tt_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %num_entries.0.lcssa, ptr %tt_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %9 = ptrtoint ptr %tt_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tt_len, align 4
  %conv23 = zext i16 %add17 to i32
  %11 = trunc i32 %10 to i16
  %conv26 = add i16 %add17, %11
  %conv27 = zext i16 %conv26 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv27, i32 noundef 2592) #15
  %12 = ptrtoint ptr %tt_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i, ptr %tt_data, align 4
  %tobool29.not = icmp eq ptr %call9.i, null
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %tt_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tt_len, align 4
  br label %out

if.end31:                                         ; preds = %if.end
  %14 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %call9.i, align 128
  %last_ttvn = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 15
  %call.i.i110 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_ttvn, i32 noundef 4) #11
  %15 = ptrtoint ptr %last_ttvn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %last_ttvn, align 4
  %conv33 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %tt_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tt_data, align 4
  %ttvn = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ttvn to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv33, ptr %ttvn, align 1
  %20 = load ptr, ptr %tt_data, align 4
  %num_vlan34 = getelementptr inbounds %struct.batadv_tvlv_tt_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %num_vlan34 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %num_vlan.0.lcssa, ptr %num_vlan34, align 2
  %22 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vlan_list, align 4
  %tobool40.not = icmp eq ptr %23, null
  %add.ptr44 = getelementptr i8, ptr %23, i32 -12
  %tobool49.not125129 = icmp eq ptr %add.ptr44, null
  %tobool49.not125 = or i1 %tobool40.not, %tobool49.not125129
  br i1 %tobool49.not125, label %if.end31.for.end67_crit_edge, label %for.body50.preheader

if.end31.for.end67_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end67

for.body50.preheader:                             ; preds = %if.end31
  %24 = ptrtoint ptr %tt_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tt_data, align 4
  %add.ptr35 = getelementptr %struct.batadv_tvlv_tt_data, ptr %25, i32 1
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.body50.preheader
  %tt_vlan.0127 = phi ptr [ %incdec.ptr, %for.body50.for.body50_crit_edge ], [ %add.ptr35, %for.body50.preheader ]
  %vlan.1126 = phi ptr [ %add.ptr63, %for.body50.for.body50_crit_edge ], [ %add.ptr44, %for.body50.preheader ]
  %26 = ptrtoint ptr %vlan.1126 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vlan.1126, align 4
  %vid51 = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan.0127, i32 0, i32 1
  %28 = ptrtoint ptr %vid51 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vid51, align 2
  %tt52 = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %vlan.1126, i32 0, i32 1
  %29 = ptrtoint ptr %tt52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tt52, align 4
  %31 = ptrtoint ptr %tt_vlan.0127 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %tt_vlan.0127, align 2
  %reserved = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan.0127, i32 0, i32 2
  %32 = ptrtoint ptr %reserved to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %reserved, align 2
  %incdec.ptr = getelementptr %struct.batadv_tvlv_tt_vlan_data, ptr %tt_vlan.0127, i32 1
  %list56 = getelementptr inbounds %struct.batadv_orig_node_vlan, ptr %vlan.1126, i32 0, i32 2
  %33 = ptrtoint ptr %list56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %list56, align 4
  %tobool59.not = icmp eq ptr %34, null
  %add.ptr63 = getelementptr i8, ptr %34, i32 -12
  %tobool49.not131 = icmp eq ptr %add.ptr63, null
  %tobool49.not = or i1 %tobool59.not, %tobool49.not131
  br i1 %tobool49.not, label %for.body50.for.end67_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body50

for.body50.for.end67_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end67

for.end67:                                        ; preds = %for.body50.for.end67_crit_edge, %if.end31.for.end67_crit_edge
  %35 = ptrtoint ptr %tt_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tt_data, align 4
  %add.ptr69 = getelementptr i8, ptr %36, i32 %conv23
  %37 = ptrtoint ptr %tt_change to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr69, ptr %tt_change, align 4
  br label %out

out:                                              ; preds = %for.end67, %if.then30
  tail call void @_raw_spin_unlock_bh(ptr noundef %vlan_list_lock) #11
  ret i16 %conv26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_tt_global_valid(ptr noundef %entry_ptr, ptr noundef %data_ptr, ptr noundef writeonly %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.batadv_tt_common_entry, ptr %entry_ptr, i32 0, i32 3
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags1, align 4
  %2 = and i16 %1, 2050
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @batadv_tt_global_orig_entry_find(ptr noundef %entry_ptr, ptr noundef %data_ptr) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.batadv_tt_global_entry_has_orig.exit_crit_edge, label %if.then.i

if.end.batadv_tt_global_entry_has_orig.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tt_global_entry_has_orig.exit

if.then.i:                                        ; preds = %if.end
  %tobool2.not.i = icmp eq ptr %flags, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags4.i = getelementptr inbounds %struct.batadv_tt_orig_list_entry, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags4.i, align 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %flags, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  tail call fastcc void @batadv_tt_orig_list_entry_put(ptr noundef nonnull %call.i) #11
  br label %batadv_tt_global_entry_has_orig.exit

batadv_tt_global_entry_has_orig.exit:             ; preds = %if.end.i, %if.end.batadv_tt_global_entry_has_orig.exit_crit_edge
  %7 = xor i1 %tobool.not.i, true
  br label %cleanup

cleanup:                                          ; preds = %batadv_tt_global_entry_has_orig.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %7, %batadv_tt_global_entry_has_orig.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !150, !152, !154, !156, !158, !160}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/translation-table.c", i32 667, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/batman-adv/translation-table.c", i32 680, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/batman-adv/translation-table.c", i32 699, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @batadv_tt_local_add._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @batadv_tt_local_add._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/batman-adv/translation-table.c", i32 712, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @batadv_tt_local_add._entry.7, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @batadv_tt_local_add._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/batman-adv/translation-table.c", i32 720, i32 2}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/batman-adv/translation-table.c", i32 768, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/batman-adv/translation-table.c", i32 776, i32 12}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/batman-adv/translation-table.c", i32 2230, i32 5}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/batman-adv/translation-table.c", i32 3928, i32 2}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/batman-adv/translation-table.c", i32 3962, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @batadv_tt_local_resize_to_mtu._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @batadv_tt_local_resize_to_mtu._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @batadv_tt_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../net/batman-adv/translation-table.c", i32 4178, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @batadv_tt_init.__key.19, !34, !"__key", i1 false, i1 false}
!37 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/batman-adv/translation-table.c", i32 4225, i32 38}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/batman-adv/translation-table.c", i32 4230, i32 38}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/batman-adv/translation-table.c", i32 4235, i32 43}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/batman-adv/translation-table.c", i32 4241, i32 45}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/batman-adv/translation-table.c", i32 4247, i32 42}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/batman-adv/translation-table.c", i32 4253, i32 43}
!50 = !{ptr @batadv_tl_cache, !51, !"batadv_tl_cache", i1 false, i1 false}
!51 = !{!"../net/batman-adv/translation-table.c", i32 54, i32 27}
!52 = !{ptr @batadv_tg_cache, !53, !"batadv_tg_cache", i1 false, i1 false}
!53 = !{!"../net/batman-adv/translation-table.c", i32 55, i32 27}
!54 = !{ptr @batadv_tt_orig_cache, !55, !"batadv_tt_orig_cache", i1 false, i1 false}
!55 = !{!"../net/batman-adv/translation-table.c", i32 56, i32 27}
!56 = !{ptr @batadv_tt_change_cache, !57, !"batadv_tt_change_cache", i1 false, i1 false}
!57 = !{!"../net/batman-adv/translation-table.c", i32 57, i32 27}
!58 = !{ptr @batadv_tt_req_cache, !59, !"batadv_tt_req_cache", i1 false, i1 false}
!59 = !{!"../net/batman-adv/translation-table.c", i32 58, i32 27}
!60 = !{ptr @batadv_tt_roam_cache, !61, !"batadv_tt_roam_cache", i1 false, i1 false}
!61 = !{!"../net/batman-adv/translation-table.c", i32 59, i32 27}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/batman-adv/translation-table.c", i32 143, i32 2}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/batman-adv/translation-table.c", i32 565, i32 2}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/net/netlink.h", i32 991, i32 3}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/batman-adv/translation-table.c", i32 1231, i32 2}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/batman-adv/translation-table.c", i32 1915, i32 2}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/batman-adv/translation-table.c", i32 1877, i32 2}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/batman-adv/translation-table.c", i32 2067, i32 4}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/batman-adv/translation-table.c", i32 1763, i32 2}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/batman-adv/translation-table.c", i32 3534, i32 2}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/batman-adv/translation-table.c", i32 3702, i32 2}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../net/batman-adv/translation-table.c", i32 3615, i32 3}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../net/batman-adv/translation-table.c", i32 2867, i32 2}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../net/batman-adv/translation-table.c", i32 2533, i32 3}
!99 = !{ptr @batadv_tt_global_add.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../net/batman-adv/translation-table.c", i32 1643, i32 3}
!101 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/batman-adv/translation-table.c", i32 1714, i32 2}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/batman-adv/translation-table.c", i32 1729, i32 11}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/batman-adv/translation-table.c", i32 1450, i32 2}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../net/batman-adv/translation-table.c", i32 1513, i32 2}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/batman-adv/translation-table.c", i32 1333, i32 32}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/batman-adv/translation-table.c", i32 3661, i32 4}
!114 = !{ptr @batadv_tt_local_hash_lock_class_key, !115, !"batadv_tt_local_hash_lock_class_key", i1 false, i1 false}
!115 = !{!"../net/batman-adv/translation-table.c", i32 62, i32 30}
!116 = !{ptr @batadv_tt_global_hash_lock_class_key, !117, !"batadv_tt_global_hash_lock_class_key", i1 false, i1 false}
!117 = !{!"../net/batman-adv/translation-table.c", i32 63, i32 30}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/batman-adv/translation-table.c", i32 3839, i32 4}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/batman-adv/translation-table.c", i32 3267, i32 11}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../net/batman-adv/translation-table.c", i32 2099, i32 2}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../net/batman-adv/translation-table.c", i32 2886, i32 2}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../net/batman-adv/translation-table.c", i32 2455, i32 3}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../net/batman-adv/translation-table.c", i32 2847, i32 2}
!130 = !{ptr @.str.44, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/batman-adv/translation-table.c", i32 2960, i32 2}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/batman-adv/translation-table.c", i32 4066, i32 4}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/batman-adv/translation-table.c", i32 4087, i32 3}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/batman-adv/translation-table.c", i32 3140, i32 2}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/batman-adv/translation-table.c", i32 3211, i32 2}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../net/batman-adv/translation-table.c", i32 2778, i32 3}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/batman-adv/translation-table.c", i32 3011, i32 2}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/batman-adv/translation-table.c", i32 3082, i32 3}
!146 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @batadv_send_other_tt_response._entry, !145, !"_entry", i1 false, i1 false}
!149 = !{ptr @batadv_send_other_tt_response._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/batman-adv/translation-table.c", i32 3094, i32 2}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/batman-adv/translation-table.c", i32 3376, i32 2}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/batman-adv/translation-table.c", i32 3299, i32 7}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/batman-adv/translation-table.c", i32 4134, i32 2}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/batman-adv/translation-table.c", i32 2253, i32 10}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../net/batman-adv/translation-table.c", i32 2259, i32 10}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2149806464}
!173 = !{i64 635303, i64 635327, i64 635348, i64 635365, i64 635382}
!174 = !{!"branch_weights", i32 2000, i32 1}
!175 = !{i64 2149806730}
!176 = !{i64 2148350000}
!177 = !{i64 2148264464, i64 2148264496, i64 2148264525, i64 2148264559, i64 2148264590, i64 2148264613}
!178 = !{i64 2150681011}
!179 = !{i64 2148261999, i64 2148262031, i64 2148262060, i64 2148262094, i64 2148262125, i64 2148262148}
!180 = !{!"branch_weights", i32 1, i32 2000}
!181 = !{i64 2148259888}
!182 = !{i64 635809, i64 635834, i64 635856, i64 635872, i64 635884, i64 635904, i64 635928, i64 635944, i64 635956}
!183 = !{i64 2148260076}
!184 = !{i64 713796, i64 713857}
!185 = !{i64 716528}
!186 = !{i64 716813}
!187 = !{i64 2149908075}
!188 = !{i64 2148260469, i64 2148260495, i64 2148260524, i64 2148260558, i64 2148260589, i64 2148260612}
!189 = !{i64 2148262934, i64 2148262960, i64 2148262989, i64 2148263023, i64 2148263054, i64 2148263077}
!190 = !{!"auto-init"}
!191 = !{i64 2148345880}
!192 = !{i64 2148261189, i64 2148261221, i64 2148261250, i64 2148261284, i64 2148261315, i64 2148261338}
!193 = !{i64 2148346109}
!194 = !{ptr @batadv_tt_global_valid, ptr @batadv_tt_local_valid}
