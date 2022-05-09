; ModuleID = '/llk/IR_all_yes/net/batman-adv/distributed-arp-table.c_pt.bc'
source_filename = "../net/batman-adv/distributed-arp-table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
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
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.batadv_hashtable = type { ptr, ptr, i32, %struct.atomic_t }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.batadv_dat_entry = type { i32, [6 x i8], i16, i32, %struct.hlist_node, %struct.kref, %struct.callback_head }
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
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.batadv_unicast_4addr_packet = type { %struct.batadv_unicast_packet, [6 x i8], i8, i8 }
%struct.batadv_unicast_packet = type { i8, i8, i8, i8, [6 x i8] }
%struct.batadv_bcast_packet = type <{ i8, i8, i8, i8, i32, [6 x i8] }>
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.145, i16, i16, i16 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { [6 x i8], [6 x i8] }
%struct.batadv_dat_candidate = type { i32, ptr }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.anon.151 = type { i8, i8 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.148 = type { i8, i8, i8, i8 }
%struct.batadv_forw_packet = type { %struct.hlist_node, %struct.hlist_node, i32, i8, ptr, i16, i32, i8, %struct.delayed_work, ptr, ptr, ptr }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Parsing outgoing ARP REQUEST\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Device %pM claimed by another backbone gw. Don't send ARP reply!\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ARP request replied locally\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Parsing incoming ARP REQUEST\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Parsing outgoing ARP REPLY\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Parsing incoming ARP REPLY\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Doubled ARP reply removed: ARP MSG = [src: %pM-%pI4 dst: %pM-%pI4]; dat_entry: %pM-%pI4\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Device %pM claimed by another backbone gw. Drop ARP reply.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Snooped from incoming DHCPACK (server address): %pI4, %pM (vid: %i)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Snooped from incoming DHCPACK (client address): %pI4, %pM (vid: %i)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ARP Request for %pI4: fallback\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ARP Request for %pI4: fallback prevented\0A\00", [54 x i8] zeroinitializer }, align 32
@batadv_dat_start_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&bat_priv->dat.work)->work)\00", [48 x i8] zeroinitializer }, align 32
@batadv_dat_start_timer.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&bat_priv->dat.work)->timer\00", [34 x i8] zeroinitializer }, align 32
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@batadv_netlink_family = external dso_local global %struct.genl_family, align 4
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ARP MSG = [src: %pM-%pI4 dst: %pM-%pI4]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"* encapsulated within a UNICAST packet\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"* encapsulated within a UNICAST_4ADDR packet (src: %pM)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"* type: DAT_DHT_PUT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"* type: DAT_DHT_GET\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"* type: DAT_CACHE_REPLY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"* type: DATA\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"* type: Unknown (%u)!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"* encapsulated within a BCAST packet (src: %pM)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"* encapsulated within an unknown packet type (0x%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Entry updated: %pI4 %pM (vid: %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"New entry added: %pI4 %pM (vid: %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_dat_entry_hash_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"net/batman-adv/distributed-arp-table.c\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DHT_SEND for %pI4\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): IP=%pI4 hash(IP)=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.batadv_dat_select_candidates = private unnamed_addr constant [29 x i8] c"batadv_dat_select_candidates\00", align 1
@batadv_choose_next_candidate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"dat_select_candidates() %d: selected %pM addr=%u dist=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Snooped from outgoing DHCPACK (server address): %pI4, %pM (vid: %i)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Snooped from outgoing DHCPACK (client address): %pI4, %pM (vid: %i)\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 64, i64 66]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 53, i64 255]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1162, i32 42 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1192, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1212, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1258, i32 42 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1316, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1364, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1379, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1401, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1774, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1777, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1819, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1824, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 104, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 110, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 695, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 723, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 991, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 433, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 437, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 449, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 453, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 458, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 461, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 464, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 468, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 471, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 478, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 483, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 379, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 407, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 345, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 690, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 650, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 607, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1655, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [42 x i8] c"../net/batman-adv/distributed-arp-table.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1658, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @batadv_dat_start_timer.__key, ptr @.str.12, ptr @batadv_dat_start_timer.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_dat_start_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_dat_start_timer.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_dat_status_update(ptr noundef %net_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %distributed_arp_table.i = getelementptr i8, ptr %net_dev, i32 2340
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %distributed_arp_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %distributed_arp_table.i, align 4
  %trunc.i = trunc i32 %1 to i8
  %2 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %entry.batadv_dat_tvlv_container_update.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
  ]

entry.batadv_dat_tvlv_container_update.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_tvlv_container_update.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @batadv_tvlv_container_unregister(ptr noundef %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  br label %batadv_dat_tvlv_container_update.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @batadv_tvlv_container_register(ptr noundef %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0) #9
  br label %batadv_dat_tvlv_container_update.exit

batadv_dat_tvlv_container_update.exit:            ; preds = %sw.bb2.i, %sw.bb.i, %entry.batadv_dat_tvlv_container_update.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_dat_init(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 1
  %0 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @batadv_hash_new(i32 noundef 1024) #9
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %hash, align 4
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.return_crit_edge, label %if.end7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end7:                                          ; preds = %if.end
  %work.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @batadv_dat_start_timer.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %entry12.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry12.i, ptr %entry12.i, align 4
  %prev.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 2, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry12.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @batadv_dat_purge, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @batadv_dat_start_timer.__key.13) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %7 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work.i, i32 noundef 1000) #9
  tail call void @batadv_tvlv_handler_register(ptr noundef %bat_priv, ptr noundef nonnull @batadv_dat_tvlv_ogm_handler_v1, ptr noundef null, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 2) #9
  %distributed_arp_table.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %distributed_arp_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %distributed_arp_table.i, align 4
  %trunc.i = trunc i32 %9 to i8
  %10 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %trunc.i, label %if.end7.return_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
  ]

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @batadv_tvlv_container_unregister(ptr noundef %bat_priv, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  br label %return

sw.bb2.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @batadv_tvlv_container_register(ptr noundef %bat_priv, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0) #9
  br label %return

return:                                           ; preds = %sw.bb2.i, %sw.bb.i, %if.end7.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ 0, %if.end7.return_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hash_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_dat_tvlv_ogm_handler_v1(ptr nocapture noundef readnone %bat_priv, ptr noundef %orig, i8 noundef zeroext %flags, ptr nocapture noundef readnone %tvlv_value, i16 noundef zeroext %tvlv_value_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %capabilities1 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 13
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %capabilities1) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %capabilities1) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_dat_free(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @batadv_tvlv_container_unregister(ptr noundef %bat_priv, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  tail call void @batadv_tvlv_handler_unregister(ptr noundef %bat_priv, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  %work = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  %hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 1
  %0 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.batadv_dat_hash_free.exit_crit_edge, label %if.end.i

entry.batadv_dat_hash_free.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_hash_free.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__batadv_dat_purge(ptr noundef %bat_priv, ptr noundef null) #9
  %2 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash.i, align 4
  tail call void @batadv_hash_destroy(ptr noundef %3) #9
  %4 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %hash.i, align 4
  br label %batadv_dat_hash_free.exit

batadv_dat_hash_free.exit:                        ; preds = %if.end.i, %entry.batadv_dat_hash_free.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_dat_cache_dump(ptr noundef %msg, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i28.i.i = alloca i32, align 4
  %tmp.i.i.i = alloca i16, align 2
  %tmp.i.i.i.i = alloca i32, align 4
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %call5 = tail call i32 @batadv_netlink_get_ifindex(ptr noundef %15, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @dev_get_by_index(ptr noundef %8, i32 noundef %call5) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call6) #9
  br i1 %call8, label %if.end10, label %lor.lhs.false.do.body1.i_crit_edge

lor.lhs.false.do.body1.i_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end10:                                         ; preds = %lor.lhs.false
  %hash12 = getelementptr i8, ptr %call6, i32 3680
  %16 = ptrtoint ptr %hash12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hash12, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end10.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end10.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end10
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end10.rcu_read_lock.exit.i_crit_edge
  %primary_if.i = getelementptr i8, ptr %call6, i32 2636
  %22 = ptrtoint ptr %primary_if.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %primary_if.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b18.i = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 110, ptr noundef nonnull @.str.16) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %23, null
  br i1 %tobool9.not.i, label %do.end7.i.out.i_crit_edge, label %if.end11.i

do.end7.i.out.i_crit_edge:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end11.i:                                       ; preds = %do.end7.i
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %23, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end11.i
  %26 = phi i32 [ %25, %if.end11.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %27 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %26, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #9
  %28 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %30 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %29, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #9, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %29
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !97

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %31 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %32, 1
  %33 = or i32 %add5.i.i.i.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #9
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %34 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %35, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  %spec.select.i = select i1 %tobool12.i.i.i.i.not.i, ptr null, ptr %23
  br label %out.i

out.i:                                            ; preds = %kref_get_unless_zero.exit.i, %do.end7.i.out.i_crit_edge
  %hard_iface.0.i = phi ptr [ null, %do.end7.i.out.i_crit_edge ], [ %spec.select.i, %kref_get_unless_zero.exit.i ]
  %call.i19.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i19.i, label %out.i.batadv_primary_if_get_selected.exit_crit_edge, label %land.lhs.true.i22.i

out.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_primary_if_get_selected.exit

land.lhs.true.i22.i:                              ; preds = %out.i
  %call1.i20.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call1.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge, label %land.lhs.true2.i24.i

land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_primary_if_get_selected.exit

land.lhs.true2.i24.i:                             ; preds = %land.lhs.true.i22.i
  %.b4.i23.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23.i, label %land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge, label %if.then.i25.i

land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_primary_if_get_selected.exit

if.then.i25.i:                                    ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %batadv_primary_if_get_selected.exit

batadv_primary_if_get_selected.exit:              ; preds = %if.then.i25.i, %land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge, %land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge, %out.i.batadv_primary_if_get_selected.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %36 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i26.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i26.i to ptr
  %preempt_count.i.i.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i27.i, align 4
  %sub.i.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i27.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %tobool14.not = icmp eq ptr %hard_iface.0.i, null
  br i1 %tobool14.not, label %batadv_primary_if_get_selected.exit.do.body1.i_crit_edge, label %lor.lhs.false15

batadv_primary_if_get_selected.exit.do.body1.i_crit_edge: ; preds = %batadv_primary_if_get_selected.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

lor.lhs.false15:                                  ; preds = %batadv_primary_if_get_selected.exit
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp.not = icmp eq i8 %41, 3
  br i1 %cmp.not, label %while.cond.preheader, label %lor.lhs.false15.if.end.i67_crit_edge

lor.lhs.false15.if.end.i67_crit_edge:             ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i67

while.cond.preheader:                             ; preds = %lor.lhs.false15
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %17, i32 0, i32 2
  %42 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %43)
  %cmp19103 = icmp ult i32 %11, %43
  br i1 %cmp19103, label %while.body.lr.ph, label %while.cond.preheader.out_crit_edge

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %17, i32 0, i32 1
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %17, i32 0, i32 3
  %seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %prev_seq.i.i.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.lr.ph
  %bucket.0105 = phi i32 [ %11, %while.body.lr.ph ], [ %inc, %if.end24.while.body_crit_edge ]
  %idx.0104 = phi i32 [ %13, %while.body.lr.ph ], [ 0, %if.end24.while.body_crit_edge ]
  %44 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list_locks.i, align 4
  %arrayidx.i = getelementptr %struct.spinlock, ptr %45, i32 %bucket.0105
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %generation.i, i32 noundef 4) #9
  %46 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %generation.i, align 4
  %shl.i = shl i32 %47, 1
  %or.i = or i32 %shl.i, 1
  %48 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i, ptr %seq.i, align 4
  %49 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %17, align 4
  %arrayidx1.i = getelementptr %struct.hlist_head, ptr %50, i32 %bucket.0105
  %51 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i55 = icmp eq ptr %52, null
  %add.ptr.i56 = getelementptr i8, ptr %52, i32 -16
  %tobool3.not4954.i = icmp eq ptr %add.ptr.i56, null
  %tobool3.not49.i = or i1 %tobool.not.i55, %tobool3.not4954.i
  br i1 %tobool3.not49.i, label %while.body.if.end24_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.if.end24_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

for.body.i:                                       ; preds = %skip.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %dat_entry.052.i = phi ptr [ %add.ptr16.i, %skip.i.for.body.i_crit_edge ], [ %add.ptr.i56, %while.body.for.body.i_crit_edge ]
  %idx.050.i = phi i32 [ %inc.i, %skip.i.for.body.i_crit_edge ], [ 0, %while.body.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.050.i, i32 %idx.0104)
  %cmp.i = icmp slt i32 %idx.050.i, %idx.0104
  br i1 %cmp.i, label %for.body.i.skip.i_crit_edge, label %if.end.i

for.body.i.skip.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip.i

if.end.i:                                         ; preds = %for.body.i
  %53 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %nlh, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nlmsg_seq.i.i, align 4
  %call.i.i57 = call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %3, i32 noundef %56, ptr noundef nonnull @batadv_netlink_family, i32 noundef 2, i8 noundef zeroext 13) #9
  %tobool.not.i.i58 = icmp eq ptr %call.i.i57, null
  br i1 %tobool.not.i.i58, label %if.end.i.batadv_dat_cache_dump_bucket.exit_crit_edge, label %if.end.i.i

if.end.i.batadv_dat_cache_dump_bucket.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_cache_dump_bucket.exit

if.end.i.i:                                       ; preds = %if.end.i
  %57 = ptrtoint ptr %prev_seq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %prev_seq.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.genl_dump_check_consistent.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %genl_dump_check_consistent.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i
  %59 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp.not.i.i.i.i = icmp eq i32 %60, %58
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %genl_dump_check_consistent.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %nlmsg_flags.i.i.i.i = getelementptr i8, ptr %call.i.i57, i32 -14
  %61 = ptrtoint ptr %nlmsg_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %nlmsg_flags.i.i.i.i, align 2
  %63 = or i16 %62, 16
  store i16 %63, ptr %nlmsg_flags.i.i.i.i, align 2
  br label %genl_dump_check_consistent.exit.i.i

genl_dump_check_consistent.exit.i.i:              ; preds = %if.then.i.i.i.i, %land.lhs.true.i.i.i.i.genl_dump_check_consistent.exit.i.i_crit_edge, %if.end.i.i.genl_dump_check_consistent.exit.i.i_crit_edge
  %64 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %seq.i, align 4
  %66 = ptrtoint ptr %prev_seq.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %prev_seq.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %last_update.i.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.052.i, i32 0, i32 3
  %68 = ptrtoint ptr %last_update.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_update.i.i, align 4
  %sub.i.i = sub i32 %67, %69
  %call1.i.i59 = call i32 @jiffies_to_msecs(i32 noundef %sub.i.i) #9
  %70 = ptrtoint ptr %dat_entry.052.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dat_entry.052.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #9
  %72 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 35, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i, label %genl_dump_check_consistent.exit.i.i.if.then.i.i.i_crit_edge

genl_dump_check_consistent.exit.i.i.if.then.i.i.i_crit_edge: ; preds = %genl_dump_check_consistent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false.i.i:                                ; preds = %genl_dump_check_consistent.exit.i.i
  %mac_addr.i.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.052.i, i32 0, i32 1
  %call4.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 36, i32 noundef 6, ptr noundef %mac_addr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false.i.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false.i.i
  %vid.i.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.052.i, i32 0, i32 2
  %73 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vid.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #9
  %75 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %tmp.i.i.i, align 2
  %call.i.i40.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 37, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40.i)
  %tobool8.not.i.i = icmp eq i32 %call.i.i40.i, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false6.i.i.if.then.i.i.i_crit_edge

lor.lhs.false6.i.i.if.then.i.i.i_crit_edge:       ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false6.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i28.i.i) #9
  %76 = ptrtoint ptr %tmp.i28.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call1.i.i59, ptr %tmp.i28.i.i, align 4
  %call.i29.i.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %tmp.i28.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i28.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i)
  %tobool11.not.i.i = icmp eq i32 %call.i29.i.i, 0
  br i1 %tobool11.not.i.i, label %batadv_dat_cache_dump_entry.exit.i, label %lor.lhs.false9.i.i.if.then.i.i.i_crit_edge

lor.lhs.false9.i.i.if.then.i.i.i_crit_edge:       ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false9.i.i.if.then.i.i.i_crit_edge, %lor.lhs.false6.i.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i.i.i_crit_edge, %genl_dump_check_consistent.exit.i.i.if.then.i.i.i_crit_edge
  %add.ptr1.i.i.i = getelementptr i8, ptr %call.i.i57, i32 -20
  %tobool.not.i.i.i.i.i60 = icmp eq ptr %add.ptr1.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i60, label %if.then.i.i.i.batadv_dat_cache_dump_bucket.exit_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.batadv_dat_cache_dump_bucket.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_cache_dump_bucket.exit

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %77 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %78, %add.ptr1.i.i.i
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, !prof !99

if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %79 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i.i.i) #9
  br label %batadv_dat_cache_dump_bucket.exit

batadv_dat_cache_dump_entry.exit.i:               ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr1.i30.i.i = getelementptr i8, ptr %call.i.i57, i32 -20
  %81 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i30.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %83 = ptrtoint ptr %add.ptr1.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %add.ptr1.i30.i.i, align 4
  br label %skip.i

skip.i:                                           ; preds = %batadv_dat_cache_dump_entry.exit.i, %for.body.i.skip.i_crit_edge
  %inc.i = add i32 %idx.050.i, 1
  %hash_entry.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.052.i, i32 0, i32 4
  %84 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hash_entry.i, align 4
  %tobool12.not.i = icmp eq ptr %85, null
  %add.ptr16.i = getelementptr i8, ptr %85, i32 -16
  %tobool3.not63.i = icmp eq ptr %add.ptr16.i, null
  %tobool3.not.i61 = or i1 %tobool12.not.i, %tobool3.not63.i
  br i1 %tobool3.not.i61, label %skip.i.if.end24_crit_edge, label %skip.i.for.body.i_crit_edge

skip.i.for.body.i_crit_edge:                      ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

skip.i.if.end24_crit_edge:                        ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

batadv_dat_cache_dump_bucket.exit:                ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.batadv_dat_cache_dump_bucket.exit_crit_edge, %if.end.i.batadv_dat_cache_dump_bucket.exit_crit_edge
  %86 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %list_locks.i, align 4
  %arrayidx8.i = getelementptr %struct.spinlock, ptr %87, i32 %bucket.0105
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx8.i) #9
  br label %out

if.end24:                                         ; preds = %skip.i.if.end24_crit_edge, %while.body.if.end24_crit_edge
  %88 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %list_locks.i, align 4
  %arrayidx21.i = getelementptr %struct.spinlock, ptr %89, i32 %bucket.0105
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx21.i) #9
  %inc = add nuw i32 %bucket.0105, 1
  %90 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size, align 4
  %cmp19 = icmp ult i32 %inc, %91
  br i1 %cmp19, label %if.end24.while.body_crit_edge, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

out:                                              ; preds = %if.end24.out_crit_edge, %batadv_dat_cache_dump_bucket.exit, %while.cond.preheader.out_crit_edge
  %bucket.098 = phi i32 [ %bucket.0105, %batadv_dat_cache_dump_bucket.exit ], [ %11, %while.cond.preheader.out_crit_edge ], [ %inc, %if.end24.out_crit_edge ]
  %idx.2 = phi i32 [ %idx.050.i, %batadv_dat_cache_dump_bucket.exit ], [ %13, %while.cond.preheader.out_crit_edge ], [ 0, %if.end24.out_crit_edge ]
  %92 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %bucket.098, ptr %9, align 4
  %93 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %idx.2, ptr %arrayidx4, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %94 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len, align 4
  br label %if.end.i67

if.end.i67:                                       ; preds = %out, %lor.lhs.false15.if.end.i67_crit_edge
  %ret.086 = phi i32 [ %95, %out ], [ -2, %lor.lhs.false15.if.end.i67_crit_edge ]
  %refcount.i63 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i64 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i63, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @llvm.prefetch.p0(ptr %refcount.i63, i32 1, i32 3, i32 1) #9
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i63, ptr %refcount.i63, i32 1, ptr elementtype(i32) %refcount.i63) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i65 = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i65)
  %cmp.i.i.i.i.i66 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i65, 1
  br i1 %cmp.i.i.i.i.i66, label %if.then.i.i70, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i65)
  %.not.i.i.i.i.i68 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i65, 0
  br i1 %.not.i.i.i.i.i68, label %if.end5.i.i.i.i.i.do.body1.i_crit_edge, label %if.then10.i.i.i.i.i69, !prof !97

if.end5.i.i.i.i.i.do.body1.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.then10.i.i.i.i.i69:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i63, i32 noundef 3) #9
  br label %do.body1.i

if.then.i.i70:                                    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @batadv_hardif_release(ptr noundef %refcount.i63) #9, !callees !103
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i.i70, %if.then10.i.i.i.i.i69, %if.end5.i.i.i.i.i.do.body1.i_crit_edge, %batadv_primary_if_get_selected.exit.do.body1.i_crit_edge, %lor.lhs.false.do.body1.i_crit_edge
  %ret.08090 = phi i32 [ -19, %lor.lhs.false.do.body1.i_crit_edge ], [ %ret.086, %if.end5.i.i.i.i.i.do.body1.i_crit_edge ], [ %ret.086, %if.then10.i.i.i.i.i69 ], [ %ret.086, %if.then.i.i70 ], [ -2, %batadv_primary_if_get_selected.exit.do.body1.i_crit_edge ]
  %97 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !104
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 118
  %98 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pcpu_refcnt.i, align 4
  %100 = ptrtoint ptr %99 to i32
  %101 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cpu.i, align 4
  %arrayidx.i72 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i72, align 4
  %add.i = add i32 %106, %100
  %107 = inttoptr i32 %add.i to ptr
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %add13.i = add i32 %109, -1
  store i32 %add13.i, ptr %107, align 4
  %110 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !105
  %and.i.i.i = and i32 %110, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !99

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %97) #9, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.08090, %do.end30.i ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_netlink_get_ifindex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_softif_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_dat_snoop_outgoing_arp_request(ptr noundef %bat_priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface1 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %0 = ptrtoint ptr %soft_iface1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface1, align 4
  %distributed_arp_table = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table, i32 noundef 4) #9
  %2 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %distributed_arp_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.batadv_dat_entry_put.exit_crit_edge, label %if.end

entry.batadv_dat_entry_put.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef 0) #9
  %4 = lshr i16 %call.i, 13
  %5 = and i16 %4, 4
  %6 = zext i16 %5 to i32
  %call3 = tail call fastcc zeroext i16 @batadv_arp_get_type(ptr noundef %skb, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %call3)
  %cmp.not = icmp eq i16 %call3, 1
  br i1 %cmp.not, label %if.end6, label %if.end.batadv_dat_entry_put.exit_crit_edge

if.end.batadv_dat_entry_put.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.end6:                                          ; preds = %if.end
  tail call fastcc void @batadv_dbg_arp(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %6, ptr noundef nonnull @.str)
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %6
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 22
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 6
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %add.ptr1.i96 = getelementptr i8, ptr %add.ptr1.i.i, i32 16
  %11 = ptrtoint ptr %add.ptr1.i96 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr1.i96, align 4
  tail call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %10, ptr noundef %add.ptr1.i.i, i16 noundef zeroext %call.i)
  %call10 = tail call fastcc ptr @batadv_dat_entry_hash_find(ptr noundef %bat_priv, i32 noundef %12, i16 noundef zeroext %call.i)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end6
  %mac_addr = getelementptr inbounds %struct.batadv_dat_entry, ptr %call10, i32 0, i32 1
  %call13 = tail call zeroext i1 @batadv_is_my_client(ptr noundef %bat_priv, ptr noundef %mac_addr, i16 noundef zeroext %call.i) #9
  br i1 %call13, label %if.then12.if.end.i_crit_edge, label %if.end15

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end15:                                         ; preds = %if.then12
  %call18 = tail call zeroext i1 @batadv_bla_check_claim(ptr noundef %bat_priv, ptr noundef %mac_addr, i16 noundef zeroext %call.i) #9
  br i1 %call18, label %if.end27, label %do.body

do.body:                                          ; preds = %if.end15
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %13 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.body.if.end.i_crit_edge, label %if.then22

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.1, ptr noundef %mac_addr) #9
  br label %if.end.i

if.end27:                                         ; preds = %if.end15
  %call30 = tail call fastcc ptr @batadv_dat_arp_create_reply(ptr noundef %bat_priv, i32 noundef %12, i32 noundef %10, ptr noundef %mac_addr, ptr noundef %add.ptr1.i.i, i16 noundef zeroext %call.i)
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end27.if.end.i_crit_edge, label %if.end33

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end33:                                         ; preds = %if.end27
  %call34 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call30, ptr noundef %1) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %call34, ptr %protocol, align 8
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !104
  %bat_counters.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %17 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx.i to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14.i, align 4
  %add.i97 = add i32 %25, %19
  %26 = inttoptr i32 %add.i97 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %26, align 8
  %add15.i = add i64 %28, 1
  store i64 %add15.i, ptr %26, align 8
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !105
  %and.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i98 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i98, label %if.then.i99, label %if.end33.batadv_add_counter.exit_crit_edge, !prof !99

if.end33.batadv_add_counter.exit_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_add_counter.exit

if.then.i99:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i99, %if.end33.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #9, !srcloc !106
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %add = add nuw nsw i32 %6, 14
  %add35 = add i32 %add, %31
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !104
  %conv6.i = zext i32 %add35 to i64
  %33 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i101 = getelementptr i64, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx.i101 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i102 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i102 to ptr
  %cpu.i103 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i103 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i103, align 4
  %arrayidx14.i104 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx14.i104 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx14.i104, align 4
  %add.i105 = add i32 %41, %35
  %42 = inttoptr i32 %add.i105 to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %42, align 8
  %add15.i106 = add i64 %44, %conv6.i
  store i64 %add15.i106, ptr %42, align 8
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !105
  %and.i.i.i107 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i107)
  %tobool.not.i108 = icmp eq i32 %and.i.i.i107, 0
  br i1 %tobool.not.i108, label %if.then.i109, label %batadv_add_counter.exit.batadv_add_counter.exit110_crit_edge, !prof !99

batadv_add_counter.exit.batadv_add_counter.exit110_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_add_counter.exit110

if.then.i109:                                     ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %batadv_add_counter.exit110

batadv_add_counter.exit110:                       ; preds = %if.then.i109, %batadv_add_counter.exit.batadv_add_counter.exit110_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #9, !srcloc !106
  %call36 = tail call i32 @netif_rx(ptr noundef nonnull %call30) #9
  %log_level39 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i91 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level39, i32 noundef 4) #9
  %46 = ptrtoint ptr %log_level39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %log_level39, align 4
  %and41 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %batadv_add_counter.exit110.if.end.i_crit_edge, label %if.then43

batadv_add_counter.exit110.if.end.i_crit_edge:    ; preds = %batadv_add_counter.exit110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then43:                                        ; preds = %batadv_add_counter.exit110
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.2) #9
  br label %if.end.i

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call fastcc zeroext i1 @batadv_dat_forward_data(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %12, i16 noundef zeroext %call.i, i32 noundef 2)
  br label %batadv_dat_entry_put.exit

if.end.i:                                         ; preds = %if.then43, %batadv_add_counter.exit110.if.end.i_crit_edge, %if.end27.if.end.i_crit_edge, %if.then22, %do.body.if.end.i_crit_edge, %if.then12.if.end.i_crit_edge
  %ret.0.off0.ph = phi i1 [ true, %batadv_add_counter.exit110.if.end.i_crit_edge ], [ true, %if.then43 ], [ true, %do.body.if.end.i_crit_edge ], [ true, %if.then22 ], [ true, %if.then12.if.end.i_crit_edge ], [ false, %if.end27.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %call10, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_dat_entry_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %rcu.i.i = getelementptr %struct.batadv_dat_entry, ptr %call10, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br label %batadv_dat_entry_put.exit

batadv_dat_entry_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge, %if.else, %if.end.batadv_dat_entry_put.exit_crit_edge, %entry.batadv_dat_entry_put.exit_crit_edge
  %ret.0.off0123 = phi i1 [ %ret.0.off0.ph, %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge ], [ %ret.0.off0.ph, %if.then10.i.i.i.i.i ], [ %ret.0.off0.ph, %if.then.i.i ], [ false, %if.end.batadv_dat_entry_put.exit_crit_edge ], [ %call48, %if.else ], [ false, %entry.batadv_dat_entry_put.exit_crit_edge ]
  ret i1 %ret.0.off0123
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @batadv_arp_get_type(ptr noundef %skb, i32 noundef %hdr_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %hdr_size, 14
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !99

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp3.i = icmp ult i32 %1, %add
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %pskb_may_pull.exit, !prof !99

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #9
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !99

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %hdr_size
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 2
  %6 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %7)
  %cmp.not = icmp eq i16 %7, 2054
  br i1 %cmp.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  %8 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %type.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 32
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %12)
  %cond.i = icmp ne i16 %12, 24
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 56
  %13 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr_len.i, align 1
  %conv1.i = zext i8 %14 to i32
  %add5.i = zext i1 %cond.i to i32
  %retval.0.in.i = shl nuw nsw i32 %conv1.i, %add5.i
  %retval.0.i1 = add i32 %hdr_size, 30
  %add8 = add i32 %retval.0.i1, %retval.0.in.i
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i4 = sub i32 %16, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %sub.i.i4)
  %cmp.not.i5 = icmp ugt i32 %add8, %sub.i.i4
  br i1 %cmp.not.i5, label %if.end.i7, label %if.end5.if.end19_crit_edge, !prof !99

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end.i7:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add8)
  %cmp3.i6 = icmp ult i32 %16, %add8
  br i1 %cmp3.i6, label %if.end.i7.out_crit_edge, label %pskb_may_pull.exit13, !prof !99

if.end.i7.out_crit_edge:                          ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

pskb_may_pull.exit13:                             ; preds = %if.end.i7
  %sub.i8 = sub i32 %add8, %sub.i.i4
  %call13.i9 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i8) #9
  %cmp14.i10.not = icmp eq ptr %call13.i9, null
  br i1 %cmp14.i10.not, label %pskb_may_pull.exit13.out_crit_edge, label %pskb_may_pull.exit13.if.end19_crit_edge, !prof !99

pskb_may_pull.exit13.if.end19_crit_edge:          ; preds = %pskb_may_pull.exit13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

pskb_may_pull.exit13.out_crit_edge:               ; preds = %pskb_may_pull.exit13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %pskb_may_pull.exit13.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 %hdr_size
  %add.ptr22 = getelementptr i8, ptr %add.ptr21, i32 14
  %21 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp24.not = icmp eq i16 %22, 1
  br i1 %cmp24.not, label %if.end27, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end27:                                         ; preds = %if.end19
  %ar_pro = getelementptr inbounds %struct.arphdr, ptr %add.ptr22, i32 0, i32 1
  %23 = ptrtoint ptr %ar_pro to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ar_pro, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %24)
  %cmp29.not = icmp eq i16 %24, 2048
  br i1 %cmp29.not, label %if.end32, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end32:                                         ; preds = %if.end27
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %add.ptr22, i32 0, i32 2
  %25 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ar_hln, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %26)
  %cmp34.not = icmp eq i8 %26, 6
  br i1 %cmp34.not, label %if.end37, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end37:                                         ; preds = %if.end32
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %add.ptr22, i32 0, i32 3
  %27 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp39.not = icmp eq i8 %28, 4
  br i1 %cmp39.not, label %if.end42, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end42:                                         ; preds = %if.end37
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr21, i32 22
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 6
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr1.i.i, i32 16
  %31 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr1.i, align 4
  %and.i = and i32 %30, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 2130706432
  %and.i17 = and i32 %30, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i17)
  %cmp.i18 = icmp eq i32 %and.i17, -536870912
  %or.cond = or i1 %cmp.i, %cmp.i18
  %and.i19 = and i32 %32, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i19)
  %cmp.i20 = icmp eq i32 %and.i19, 2130706432
  %or.cond46 = select i1 %or.cond, i1 true, i1 %cmp.i20
  %and.i21 = and i32 %32, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i21)
  %cmp.i22 = icmp eq i32 %and.i21, -536870912
  %or.cond47 = select i1 %or.cond46, i1 true, i1 %cmp.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i23 = icmp eq i32 %30, 0
  %or.cond48 = select i1 %or.cond47, i1 true, i1 %cmp.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i24 = icmp eq i32 %30, -1
  %or.cond49 = select i1 %or.cond48, i1 true, i1 %cmp.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i25 = icmp eq i32 %32, 0
  %or.cond50 = select i1 %or.cond49, i1 true, i1 %cmp.i25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i26 = icmp eq i32 %32, -1
  %or.cond51 = select i1 %or.cond50, i1 true, i1 %cmp.i26
  br i1 %or.cond51, label %if.end42.out_crit_edge, label %if.end68

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end68:                                         ; preds = %if.end42
  %33 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr1.i.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %add.ptr1.i.i, i32 4
  %35 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i29, align 2
  %conv.i = zext i16 %36 to i32
  %or.i = or i32 %34, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i30 = icmp eq i32 %or.i, 0
  %37 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i = icmp ne i32 %37, 0
  %or.cond52 = or i1 %tobool.i, %cmp.i30
  br i1 %or.cond52, label %if.end68.out_crit_edge, label %if.end76

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end76:                                         ; preds = %if.end68
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %add.ptr22, i32 0, i32 4
  %38 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ar_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp78.not = icmp eq i16 %39, 1
  br i1 %cmp78.not, label %if.end76.if.end89_crit_edge, label %if.then80

if.end76.if.end89_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then80:                                        ; preds = %if.end76
  %add.ptr1.i34 = getelementptr i8, ptr %add.ptr1.i.i, i32 10
  %40 = ptrtoint ptr %add.ptr1.i34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr1.i34, align 4
  %add.ptr.i35 = getelementptr i8, ptr %add.ptr1.i34, i32 4
  %42 = ptrtoint ptr %add.ptr.i35 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i35, align 2
  %conv.i36 = zext i16 %43 to i32
  %or.i37 = or i32 %41, %conv.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i37)
  %cmp.i38 = icmp eq i32 %or.i37, 0
  %44 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i39 = icmp ne i32 %44, 0
  %or.cond53 = or i1 %tobool.i39, %cmp.i38
  br i1 %or.cond53, label %if.then80.out_crit_edge, label %if.then80.if.end89_crit_edge

if.then80.if.end89_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then80.out_crit_edge:                          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end89:                                         ; preds = %if.then80.if.end89_crit_edge, %if.end76.if.end89_crit_edge
  br label %out

out:                                              ; preds = %if.end89, %if.then80.out_crit_edge, %if.end68.out_crit_edge, %if.end42.out_crit_edge, %if.end37.out_crit_edge, %if.end32.out_crit_edge, %if.end27.out_crit_edge, %if.end19.out_crit_edge, %pskb_may_pull.exit13.out_crit_edge, %if.end.i7.out_crit_edge, %if.end.out_crit_edge, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge
  %type.0 = phi i16 [ 0, %pskb_may_pull.exit.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %pskb_may_pull.exit13.out_crit_edge ], [ 0, %if.end19.out_crit_edge ], [ 0, %if.end27.out_crit_edge ], [ 0, %if.end32.out_crit_edge ], [ 0, %if.end37.out_crit_edge ], [ 0, %if.end42.out_crit_edge ], [ 0, %if.end68.out_crit_edge ], [ 0, %if.then80.out_crit_edge ], [ %39, %if.end89 ], [ 0, %if.end.i.out_crit_edge ], [ 0, %if.end.i7.out_crit_edge ]
  ret i16 %type.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_dbg_arp(ptr noundef %bat_priv, ptr nocapture noundef readonly %skb, i32 noundef %hdr_size, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  %ip_src = alloca i32, align 4
  %ip_dst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_src) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_dst) #9
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %do.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.body:                                          ; preds = %entry
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %0 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.if.end4_crit_edge, label %if.then2

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.21, ptr noundef nonnull %msg) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %do.body.if.end4_crit_edge, %entry.if.end4_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %hdr_size
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 22
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 6
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %ip_src to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ip_src, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr1.i.i, i32 16
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr1.i, align 4
  %9 = ptrtoint ptr %ip_dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ip_dst, align 4
  %log_level9 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i176 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %10 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %log_level9, align 4
  %and11 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end4.if.end17_crit_edge, label %if.then13

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i189 = getelementptr i8, ptr %13, i32 %hdr_size
  %add.ptr1.i190 = getelementptr i8, ptr %add.ptr.i189, i32 22
  %add.ptr1.i194 = getelementptr i8, ptr %add.ptr1.i190, i32 10
  %call16 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.22, ptr noundef %add.ptr1.i190, ptr noundef nonnull %ip_src, ptr noundef %add.ptr1.i194, ptr noundef nonnull %ip_dst) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end4.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %hdr_size)
  %cmp = icmp ult i32 %hdr_size, 10
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %17, label %do.body122 [
    i8 64, label %do.body22
    i8 66, label %do.body34
    i8 1, label %sw.bb108
  ]

do.body22:                                        ; preds = %if.end21
  %call.i.i177 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %19 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %log_level9, align 4
  %and26 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body22.cleanup_crit_edge, label %if.then28

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.23) #9
  br label %cleanup

do.body34:                                        ; preds = %if.end21
  %call.i.i178 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %21 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %log_level9, align 4
  %and38 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body34.if.end42_crit_edge, label %if.then40

do.body34.if.end42_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.batadv_unicast_4addr_packet, ptr %15, i32 0, i32 1
  %call41 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.24, ptr noundef %src) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %do.body34.if.end42_crit_edge
  %subtype = getelementptr inbounds %struct.batadv_unicast_4addr_packet, ptr %15, i32 0, i32 2
  %23 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %subtype, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %24, label %do.body94 [
    i8 3, label %do.body47
    i8 2, label %do.body59
    i8 4, label %do.body71
    i8 1, label %do.body83
  ]

do.body47:                                        ; preds = %if.end42
  %call.i.i179 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %26 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %log_level9, align 4
  %and51 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body47.cleanup_crit_edge, label %if.then53

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.25) #9
  br label %cleanup

do.body59:                                        ; preds = %if.end42
  %call.i.i180 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %28 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %log_level9, align 4
  %and63 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body59.cleanup_crit_edge, label %if.then65

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.26) #9
  br label %cleanup

do.body71:                                        ; preds = %if.end42
  %call.i.i181 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %30 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %log_level9, align 4
  %and75 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body71.cleanup_crit_edge, label %if.then77

do.body71.cleanup_crit_edge:                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then77:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %call78 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.27) #9
  br label %cleanup

do.body83:                                        ; preds = %if.end42
  %call.i.i182 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %32 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %log_level9, align 4
  %and87 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.body83.cleanup_crit_edge, label %if.then89

do.body83.cleanup_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then89:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.28) #9
  br label %cleanup

do.body94:                                        ; preds = %if.end42
  %call.i.i183 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %34 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %log_level9, align 4
  %and98 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body94.cleanup_crit_edge, label %if.then100

do.body94.cleanup_crit_edge:                      ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then100:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %15, align 1
  %conv103 = zext i8 %37 to i32
  %call104 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.29, i32 noundef %conv103) #9
  br label %cleanup

sw.bb108:                                         ; preds = %if.end21
  %call.i.i184 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %38 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %log_level9, align 4
  %and114 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %sw.bb108.cleanup_crit_edge, label %if.then116

sw.bb108.cleanup_crit_edge:                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then116:                                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #11
  %orig = getelementptr inbounds %struct.batadv_bcast_packet, ptr %15, i32 0, i32 5
  %call117 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.30, ptr noundef %orig) #9
  br label %cleanup

do.body122:                                       ; preds = %if.end21
  %call.i.i185 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level9, i32 noundef 4) #9
  %40 = ptrtoint ptr %log_level9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %log_level9, align 4
  %and126 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body122.cleanup_crit_edge, label %if.then128

do.body122.cleanup_crit_edge:                     ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then128:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %15, align 1
  %conv131 = zext i8 %43 to i32
  %call132 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.31, i32 noundef %conv131) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %do.body122.cleanup_crit_edge, %if.then116, %sw.bb108.cleanup_crit_edge, %if.then100, %do.body94.cleanup_crit_edge, %if.then89, %do.body83.cleanup_crit_edge, %if.then77, %do.body71.cleanup_crit_edge, %if.then65, %do.body59.cleanup_crit_edge, %if.then53, %do.body47.cleanup_crit_edge, %if.then28, %do.body22.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_dst) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_src) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %ip, ptr nocapture noundef readonly %mac_addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @batadv_dat_entry_hash_find(ptr noundef %bat_priv, i32 noundef %ip, i16 noundef zeroext %vid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %mac_addr1 = getelementptr inbounds %struct.batadv_dat_entry, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %mac_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_addr1, align 4
  %2 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr, align 4
  %xor.i.i.i = xor i32 %3, %1
  %add.ptr.i.i.i = getelementptr %struct.batadv_dat_entry, ptr %call, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %mac_addr, i32 4
  %6 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %7, %5
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %mac_addr1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %mac_addr1, align 4
  %9 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i.i.i, align 2
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr.i.i.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_update = getelementptr inbounds %struct.batadv_dat_entry, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_update, align 4
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %14 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end.i85_crit_edge, label %if.then8

if.end.if.end.i85_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i85

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %vid to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i = select i1 %tobool.not.i, i32 -1, i32 %and2.i
  %call13 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.32, ptr noundef nonnull %call, ptr noundef %mac_addr1, i32 noundef %retval.0.i) #9
  br label %if.end.i85

if.end15:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2592, i32 noundef 36) #12
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.end15.batadv_dat_entry_put.exit_crit_edge, label %if.end19

if.end15.batadv_dat_entry_put.exit_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.end19:                                         ; preds = %if.end15
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %ip, ptr %call7.i, align 8
  %vid21 = getelementptr inbounds %struct.batadv_dat_entry, ptr %call7.i, i32 0, i32 2
  %18 = ptrtoint ptr %vid21 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %vid, ptr %vid21, align 2
  %mac_addr22 = getelementptr inbounds %struct.batadv_dat_entry, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mac_addr, align 4
  %21 = ptrtoint ptr %mac_addr22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mac_addr22, align 4
  %add.ptr.i76 = getelementptr i8, ptr %mac_addr, i32 4
  %22 = ptrtoint ptr %add.ptr.i76 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i76, align 2
  %add.ptr1.i77 = getelementptr %struct.batadv_dat_entry, ptr %call7.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %add.ptr1.i77 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i77, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %last_update24 = getelementptr inbounds %struct.batadv_dat_entry, ptr %call7.i, i32 0, i32 3
  %26 = ptrtoint ptr %last_update24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last_update24, align 4
  %refcount = getelementptr inbounds %struct.batadv_dat_entry, ptr %call7.i, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %27 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %refcount, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !107
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end19.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !99

if.end19.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end19
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !97

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end19.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end19.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 1
  %30 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hash, align 4
  %hash_entry = getelementptr inbounds %struct.batadv_dat_entry, ptr %call7.i, i32 0, i32 4
  %tobool.not.i78 = icmp eq ptr %31, null
  br i1 %tobool.not.i78, label %kref_get.exit.if.then29_crit_edge, label %if.end.i

kref_get.exit.if.then29_crit_edge:                ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.end.i:                                         ; preds = %kref_get.exit
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  %34 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %call7.i, align 8
  %conv.i.i = zext i8 %35 to i32
  %add1.i.i = mul nuw nsw i32 %conv.i.i, 1025
  %shr.i.i = lshr i32 %add1.i.i, 6
  %xor.i.i = xor i32 %shr.i.i, %add1.i.i
  %arrayidx.1.i.i = getelementptr i8, ptr %call7.i, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %37 to i32
  %add.1.i.i = add nuw nsw i32 %xor.i.i, %conv.1.i.i
  %add1.1.i.i = mul nuw nsw i32 %add.1.i.i, 1025
  %shr.1.i.i = lshr i32 %add1.1.i.i, 6
  %xor.1.i.i = xor i32 %shr.1.i.i, %add1.1.i.i
  %arrayidx.2.i.i = getelementptr i8, ptr %call7.i, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.2.i.i, align 2
  %conv.2.i.i = zext i8 %39 to i32
  %add.2.i.i = add nuw i32 %xor.1.i.i, %conv.2.i.i
  %add1.2.i.i = mul i32 %add.2.i.i, 1025
  %shr.2.i.i = lshr i32 %add1.2.i.i, 6
  %xor.2.i.i = xor i32 %shr.2.i.i, %add1.2.i.i
  %arrayidx.3.i.i = getelementptr i8, ptr %call7.i, i32 3
  %40 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %41 to i32
  %add.3.i.i = add i32 %xor.2.i.i, %conv.3.i.i
  %add1.3.i.i = mul i32 %add.3.i.i, 1025
  %shr.3.i.i = lshr i32 %add1.3.i.i, 6
  %xor.3.i.i = xor i32 %shr.3.i.i, %add1.3.i.i
  %42 = ptrtoint ptr %vid21 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vid21, align 2
  %vid.sroa.0.0.extract.shift.i.i = lshr i16 %43, 8
  %vid.sroa.0.0.extract.trunc.i.i = zext i16 %vid.sroa.0.0.extract.shift.i.i to i32
  %add9.i.i = add i32 %xor.3.i.i, %vid.sroa.0.0.extract.trunc.i.i
  %add11.i.i = mul i32 %add9.i.i, 1025
  %shr12.i.i = lshr i32 %add11.i.i, 6
  %xor13.i.i = xor i32 %shr12.i.i, %add11.i.i
  %44 = and i16 %43, 255
  %conv8.1.i.i = zext i16 %44 to i32
  %add9.1.i.i = add i32 %xor13.i.i, %conv8.1.i.i
  %add11.1.i.i = mul i32 %add9.1.i.i, 1025
  %shr12.1.i.i = lshr i32 %add11.1.i.i, 6
  %xor13.1.i.i = xor i32 %shr12.1.i.i, %add11.1.i.i
  %add18.i.i = mul i32 %xor13.1.i.i, 9
  %shr19.i.i = lshr i32 %add18.i.i, 11
  %xor20.i.i = xor i32 %shr19.i.i, %add18.i.i
  %add22.i.i = mul i32 %xor20.i.i, 32769
  %rem.i.i = urem i32 %add22.i.i, %33
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %31, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %46, i32 %rem.i.i
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %31, i32 0, i32 1
  %47 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %list_locks.i, align 4
  %arrayidx1.i = getelementptr %struct.spinlock, ptr %48, i32 %rem.i.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1.i) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %node.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %49 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %add.ptr.i.i = getelementptr i8, ptr %node.0.i, i32 -16
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr.i.i, ptr noundef nonnull dereferenceable(4) %call7.i, i32 4) #13
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %batadv_hash_add.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %52 = ptrtoint ptr %hash_entry to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %hash_entry, align 8
  %pprev.i.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %call7.i, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %hash_entry, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %for.end.i.do.body31_crit_edge, label %do.body49.i.i

for.end.i.do.body31_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

do.body49.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  %55 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %hash_entry, ptr %pprev51.i.i, align 4
  br label %do.body31

batadv_hash_add.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #9
  br label %if.then29

if.then29:                                        ; preds = %batadv_hash_add.exit, %kref_get.exit.if.then29_crit_edge
  tail call fastcc void @batadv_dat_entry_put(ptr noundef nonnull %call7.i)
  br label %if.end.i85

do.body31:                                        ; preds = %do.body49.i.i, %for.end.i.do.body31_crit_edge
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %31, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %generation.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %generation.i, i32 1, i32 3, i32 1) #9
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %generation.i, ptr %generation.i, i32 1, ptr elementtype(i32) %generation.i) #9, !srcloc !109
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #9
  %log_level33 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i75 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level33, i32 noundef 4) #9
  %57 = ptrtoint ptr %log_level33 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %log_level33, align 4
  %and35 = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body31.if.end.i85_crit_edge, label %if.then37

do.body31.if.end.i85_crit_edge:                   ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i85

if.then37:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i79 = zext i16 %vid to i32
  %and.i80 = and i32 %conv.i79, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  %and2.i82 = and i32 %conv.i79, 4095
  %retval.0.i83 = select i1 %tobool.not.i81, i32 -1, i32 %and2.i82
  %call42 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.33, ptr noundef nonnull %call7.i, ptr noundef %mac_addr22, i32 noundef %retval.0.i83) #9
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.then37, %do.body31.if.end.i85_crit_edge, %if.then29, %if.then8, %if.end.if.end.i85_crit_edge
  %dat_entry.093 = phi ptr [ %call, %if.then8 ], [ %call, %if.end.if.end.i85_crit_edge ], [ %call7.i, %do.body31.if.end.i85_crit_edge ], [ %call7.i, %if.then37 ], [ %call7.i, %if.then29 ]
  %refcount.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.093, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_dat_entry_put.exit

if.then.i.i:                                      ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %rcu.i.i = getelementptr %struct.batadv_dat_entry, ptr %dat_entry.093, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br label %batadv_dat_entry_put.exit

batadv_dat_entry_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge, %if.end15.batadv_dat_entry_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_dat_entry_hash_find(ptr nocapture noundef readonly %bat_priv, i32 noundef %ip, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hash1 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 1
  %0 = ptrtoint ptr %hash1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %to_find.sroa.0.sroa.0.0.extract.shift = lshr i32 %ip, 24
  %to_find.sroa.0.sroa.5.0.extract.shift = lshr i32 %ip, 16
  %to_find.sroa.0.sroa.6.0.extract.shift = lshr i32 %ip, 8
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %add1.i = mul nuw nsw i32 %to_find.sroa.0.sroa.0.0.extract.shift, 1025
  %shr.i = lshr i32 %add1.i, 6
  %xor.i = xor i32 %shr.i, %add1.i
  %conv.1.i = and i32 %to_find.sroa.0.sroa.5.0.extract.shift, 255
  %add.1.i = add nuw nsw i32 %xor.i, %conv.1.i
  %add1.1.i = mul nuw nsw i32 %add.1.i, 1025
  %shr.1.i = lshr i32 %add1.1.i, 6
  %xor.1.i = xor i32 %shr.1.i, %add1.1.i
  %conv.2.i = and i32 %to_find.sroa.0.sroa.6.0.extract.shift, 255
  %add.2.i = add nuw i32 %xor.1.i, %conv.2.i
  %add1.2.i = mul i32 %add.2.i, 1025
  %shr.2.i = lshr i32 %add1.2.i, 6
  %xor.2.i = xor i32 %shr.2.i, %add1.2.i
  %conv.3.i = and i32 %ip, 255
  %add.3.i = add i32 %xor.2.i, %conv.3.i
  %add1.3.i = mul i32 %add.3.i, 1025
  %shr.3.i = lshr i32 %add1.3.i, 6
  %xor.3.i = xor i32 %shr.3.i, %add1.3.i
  %vid.sroa.0.0.extract.shift.i = lshr i16 %vid, 8
  %vid.sroa.0.0.extract.trunc.i = zext i16 %vid.sroa.0.0.extract.shift.i to i32
  %add9.i = add i32 %xor.3.i, %vid.sroa.0.0.extract.trunc.i
  %add11.i = mul i32 %add9.i, 1025
  %shr12.i = lshr i32 %add11.i, 6
  %xor13.i = xor i32 %shr12.i, %add11.i
  %4 = and i16 %vid, 255
  %conv8.1.i = zext i16 %4 to i32
  %add9.1.i = add i32 %xor13.i, %conv8.1.i
  %add11.1.i = mul i32 %add9.1.i, 1025
  %shr12.1.i = lshr i32 %add11.1.i, 6
  %xor13.1.i = xor i32 %shr12.1.i, %add11.1.i
  %add18.i = mul i32 %xor13.1.i, 9
  %shr19.i = lshr i32 %add18.i, 11
  %xor20.i = xor i32 %shr19.i, %add18.i
  %add22.i = mul i32 %xor20.i, 32769
  %rem.i = urem i32 %add22.i, %3
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %6, i32 %rem.i
  %7 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call4 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b58 = load i1, ptr @batadv_dat_entry_hash_find.__warned, align 1
  br i1 %.b58, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_dat_entry_hash_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 345, ptr noundef nonnull @.str.35) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %12, null
  %add.ptr = getelementptr i8, ptr %12, i32 -16
  %tobool19.not7377 = icmp eq ptr %add.ptr, null
  %tobool19.not73 = or i1 %tobool17.not, %tobool19.not7377
  br i1 %tobool19.not73, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %dat_entry.074 = phi ptr [ %add.ptr38, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %dat_entry.074 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dat_entry.074, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %ip)
  %cmp.not = icmp eq i32 %14, %ip
  br i1 %cmp.not, label %if.end22, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.074, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %15 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end22
  %17 = phi i32 [ %16, %if.end22 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %17, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %20, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #9, !srcloc !96
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !97

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !97

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #9
  %25 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %26 = phi i32 [ %23, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.i.i.i.i.not = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hash_entry = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.074, i32 0, i32 4
  %27 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hash_entry, align 4
  %tobool34.not = icmp eq ptr %28, null
  %add.ptr38 = getelementptr i8, ptr %28, i32 -16
  %tobool19.not78 = icmp eq ptr %add.ptr38, null
  %tobool19.not = or i1 %tobool34.not, %tobool19.not78
  br i1 %tobool19.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %dat_entry.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %dat_entry.074, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i61 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i61, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i64

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i64:                                ; preds = %for.end
  %call1.i62 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i66

land.lhs.true.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i64
  %.b4.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65, label %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, label %if.then.i67

land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i67:                                      ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i67, %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %29 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i68 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i69, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i69, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %dat_entry.0.lcssa, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_my_client(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_bla_check_claim(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_dat_arp_create_reply(ptr nocapture noundef readonly %bat_priv, i32 noundef %ip_src, i32 noundef %ip_dst, ptr noundef %hw_src, ptr noundef %hw_dst, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %call = tail call ptr @arp_create(i32 noundef 2, i32 noundef 2054, i32 noundef %ip_dst, ptr noundef %1, i32 noundef %ip_src, ptr noundef %hw_dst, ptr noundef %hw_src, ptr noundef %hw_dst) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vid)
  %tobool1.not = icmp sgt i16 %vid, -1
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %and4 = and i16 %vid, 4095
  %cloned.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %cloned.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i.i.i.i = load i8, ptr %cloned.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i

skb_header_cloned.exit.i.i.i.i:                   ; preds = %if.then2
  %end.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i.i.i.i.i, align 4
  %dataref1.i.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %dataref1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dataref1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i.i.i.i.i)
  %cmp.i1.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i.i.i, 4
  br i1 %cmp.i1.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge, label %if.end.i2.i.i.i.i

skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i.i.i.i.i

skb_header_cloned.exit.thread.i.i.i.i:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp.i110.i.i.i.i = icmp ult i32 %sub.ptr.sub.i, 4
  br i1 %cmp.i110.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge

skb_header_cloned.exit.thread.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vlan_insert_inner_tag.exit.thread.i.i

skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread.i.i.i.i.i

if.end.thread.i.i.i.i.i:                          ; preds = %skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i.i.i = phi i32 [ %sub.ptr.sub.i, %skb_header_cloned.exit.thread.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i.i.i, %skb_header_cloned.exit.i.i.i.i.if.end.thread.i.i.i.i.i_crit_edge ]
  %phi.bo.i.i.i.i.i = sub nuw nsw i32 131, %sub.ptr.sub.i.i12.i.i.i.i
  %phi.bo11.i.i.i.i.i = and i32 %phi.bo.i.i.i.i.i, -128
  br label %skb_cow_head.exit.i.i.i

if.end.i2.i.i.i.i:                                ; preds = %skb_header_cloned.exit.i.i.i.i
  %and.i.i.i.i.i = and i32 %11, 65535
  %shr.i.i.i.i.i = ashr i32 %11, 16
  %sub.i.i.i.i.i = sub nsw i32 %and.i.i.i.i.i, %shr.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i.i)
  %cmp.i.not.i.i.i.i = icmp eq i32 %sub.i.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i.i, label %if.end.i2.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge, label %if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge

if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge: ; preds = %if.end.i2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_cow_head.exit.i.i.i

if.end.i2.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge: ; preds = %if.end.i2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vlan_insert_inner_tag.exit.thread.i.i

skb_cow_head.exit.i.i.i:                          ; preds = %if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge, %if.end.thread.i.i.i.i.i
  %delta.010.i.i.i.i.i = phi i32 [ %phi.bo11.i.i.i.i.i, %if.end.thread.i.i.i.i.i ], [ 0, %if.end.i2.i.i.i.i.skb_cow_head.exit.i.i.i_crit_edge ]
  %call4.i.i.i.i.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %call, i32 noundef %delta.010.i.i.i.i.i, i32 noundef 0, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call4.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %skb_cow_head.exit.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge

skb_cow_head.exit.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge: ; preds = %skb_cow_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vlan_insert_inner_tag.exit.thread.i.i

__vlan_insert_inner_tag.exit.thread.i.i:          ; preds = %skb_cow_head.exit.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge, %if.end.i2.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge, %skb_header_cloned.exit.thread.i.i.i.i.__vlan_insert_inner_tag.exit.thread.i.i_crit_edge
  %call1.i.i.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 4) #9
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 4
  %18 = call ptr @memmove(ptr %17, ptr %add.ptr.i.i.i, i32 12)
  %19 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_header.i, align 2
  %sub7.i.i.i = add i16 %20, -4
  store i16 %sub7.i.i.i, ptr %mac_header.i, align 2
  %21 = load ptr, ptr %data.i, align 4
  %h_vlan_proto.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %h_vlan_proto.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -32512, ptr %h_vlan_proto.i.i.i, align 2
  %h_vlan_TCI.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %21, i32 0, i32 2
  %23 = ptrtoint ptr %h_vlan_TCI.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %and4, ptr %h_vlan_TCI.i.i.i, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %skb_cow_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %__vlan_insert_inner_tag.exit.thread.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ null, %if.then.i.i ], [ %call, %__vlan_insert_inner_tag.exit.thread.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @batadv_dat_forward_data(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %ip, i16 noundef zeroext %vid, i32 noundef %packet_subtype) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  %ip_dst.addr.i = alloca i32, align 4
  %ip.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ip, ptr %ip.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_dst.addr.i)
  %1 = ptrtoint ptr %ip_dst.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %ip, ptr %ip_dst.addr.i, align 4
  %orig_hash.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 23
  %2 = ptrtoint ptr %orig_hash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_hash.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.batadv_dat_select_candidates.exit.thread_crit_edge, label %if.end.i

entry.batadv_dat_select_candidates.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_select_candidates.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 24) #12
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.batadv_dat_select_candidates.exit.thread_crit_edge, label %if.end3.i

if.end.i.batadv_dat_select_candidates.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_select_candidates.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %ip_dst.addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ip_dst.addr.i, align 4
  %dat.sroa.0.sroa.0.0.extract.shift.i = lshr i32 %6, 24
  %dat.sroa.0.sroa.5.0.extract.shift.i = lshr i32 %6, 16
  %dat.sroa.0.sroa.6.0.extract.shift.i = lshr i32 %6, 8
  %add1.i.i = mul nuw nsw i32 %dat.sroa.0.sroa.0.0.extract.shift.i, 1025
  %shr.i.i = lshr i32 %add1.i.i, 6
  %xor.i.i = xor i32 %shr.i.i, %add1.i.i
  %conv.1.i.i = and i32 %dat.sroa.0.sroa.5.0.extract.shift.i, 255
  %add.1.i.i = add nuw nsw i32 %xor.i.i, %conv.1.i.i
  %add1.1.i.i = mul nuw nsw i32 %add.1.i.i, 1025
  %shr.1.i.i = lshr i32 %add1.1.i.i, 6
  %xor.1.i.i = xor i32 %shr.1.i.i, %add1.1.i.i
  %conv.2.i.i = and i32 %dat.sroa.0.sroa.6.0.extract.shift.i, 255
  %add.2.i.i = add nuw i32 %xor.1.i.i, %conv.2.i.i
  %add1.2.i.i = mul i32 %add.2.i.i, 1025
  %shr.2.i.i = lshr i32 %add1.2.i.i, 6
  %xor.2.i.i = xor i32 %shr.2.i.i, %add1.2.i.i
  %conv.3.i.i = and i32 %6, 255
  %add.3.i.i = add i32 %xor.2.i.i, %conv.3.i.i
  %add1.3.i.i = mul i32 %add.3.i.i, 1025
  %shr.3.i.i = lshr i32 %add1.3.i.i, 6
  %xor.3.i.i = xor i32 %shr.3.i.i, %add1.3.i.i
  %vid.sroa.0.0.extract.shift.i.i = lshr i16 %vid, 8
  %vid.sroa.0.0.extract.trunc.i.i = zext i16 %vid.sroa.0.0.extract.shift.i.i to i32
  %add9.i.i = add i32 %xor.3.i.i, %vid.sroa.0.0.extract.trunc.i.i
  %add11.i.i = mul i32 %add9.i.i, 1025
  %shr12.i.i = lshr i32 %add11.i.i, 6
  %xor13.i.i = xor i32 %shr12.i.i, %add11.i.i
  %7 = and i16 %vid, 255
  %conv8.1.i.i = zext i16 %7 to i32
  %add9.1.i.i = add i32 %xor13.i.i, %conv8.1.i.i
  %add11.1.i.i = mul i32 %add9.1.i.i, 1025
  %shr12.1.i.i = lshr i32 %add11.1.i.i, 6
  %xor13.1.i.i = xor i32 %shr12.1.i.i, %add11.1.i.i
  %add18.i.i = mul i32 %xor13.1.i.i, 9
  %shr19.i.i = lshr i32 %add18.i.i, 11
  %xor20.i.i = xor i32 %shr19.i.i, %add18.i.i
  %add22.i.i = mul i32 %xor20.i.i, 32769
  %rem.i.i = urem i32 %add22.i.i, 65535
  %conv.i = trunc i32 %rem.i.i to i16
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end3.i.for.body.i.preheader_crit_edge, label %if.then8.i

if.end3.i.for.body.i.preheader_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.batadv_dat_select_candidates, ptr noundef nonnull %ip_dst.addr.i, i32 noundef %rem.i.i) #9
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then8.i, %if.end3.i.for.body.i.preheader_crit_edge
  %orig_node.i.i.i = getelementptr %struct.batadv_dat_candidate, ptr %call7.i.i.i, i32 0, i32 1
  %orig_node.i.i.i.1 = getelementptr %struct.batadv_dat_candidate, ptr %call7.i.i.i, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %batadv_choose_next_candidate.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %select.028.i = phi i32 [ %inc.i, %batadv_choose_next_candidate.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %last_max.027.i = phi i16 [ %max.0.lcssa126.i.i, %batadv_choose_next_candidate.exit.i.for.body.i_crit_edge ], [ -1, %for.body.i.preheader ]
  %10 = ptrtoint ptr %orig_hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %orig_hash.i, align 4
  %arrayidx.i.i = getelementptr %struct.batadv_dat_candidate, ptr %call7.i.i.i, i32 %select.028.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp116.not.i.i = icmp eq i32 %14, 0
  br i1 %cmp116.not.i.i, label %for.body.i.batadv_choose_next_candidate.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.batadv_choose_next_candidate.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_choose_next_candidate.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %select.028.i)
  %cmp42.i.i.not.i = icmp eq i32 %select.028.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %select.028.i)
  %exitcond.not.i.i.i = icmp eq i32 %select.028.i, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %max.0119.i.i = phi i16 [ 0, %for.body.lr.ph.i.i ], [ %max.1.lcssa.i.i, %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge ]
  %max_orig_node.0118.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %max_orig_node.1.lcssa.i.i, %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge ]
  %i.0117.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 4
  %arrayidx1.i.i = getelementptr %struct.hlist_head, ptr %16, i32 %i.0117.i.i
  %17 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i25.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i25.i, label %for.body.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %for.body.i.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i48 = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool.not.i.i = icmp eq i32 %call.i.i48, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b89.i.i = load i1, ptr @batadv_choose_next_candidate.__warned, align 1
  br i1 %.b89.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_choose_next_candidate.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 584, ptr noundef nonnull @.str.35) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %21 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %arrayidx1.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %22, null
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 -284
  %tobool14.not106122.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool14.not106.i.i = or i1 %tobool11.not.i.i, %tobool14.not106122.i.i
  br i1 %tobool14.not106.i.i, label %do.end.i.i.for.end.i.i_crit_edge, label %do.end.i.i.for.body15.i.i_crit_edge

do.end.i.i.for.body15.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %for.body15.i.i

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body15.i.i:                                   ; preds = %for.inc.i.i.for.body15.i.i_crit_edge, %do.end.i.i.for.body15.i.i_crit_edge
  %max.1112.i.i = phi i16 [ %max.2.i.i, %for.inc.i.i.for.body15.i.i_crit_edge ], [ %max.0119.i.i, %do.end.i.i.for.body15.i.i_crit_edge ]
  %orig_node.0110.i.i = phi ptr [ %add.ptr36.i.i, %for.inc.i.i.for.body15.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body15.i.i_crit_edge ]
  %max_orig_node.1107.i.i = phi ptr [ %max_orig_node.2.i.i, %for.inc.i.i.for.body15.i.i_crit_edge ], [ %max_orig_node.0118.i.i, %do.end.i.i.for.body15.i.i_crit_edge ]
  %dat_addr.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.0110.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %dat_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dat_addr.i.i, align 4
  %25 = xor i16 %24, -1
  %add.i.i = add i16 %25, %conv.i
  %capabilities.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.0110.i.i, i32 0, i32 13
  %26 = ptrtoint ptr %capabilities.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %capabilities.i.i.i, align 4
  %and1.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i91.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i91.i.i, label %for.body15.i.i.for.inc.i.i_crit_edge, label %for.cond.preheader.i.i.i

for.body15.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.cond.preheader.i.i.i:                         ; preds = %for.body15.i.i
  br i1 %cmp42.i.i.not.i, label %for.cond.preheader.i.i.i.if.end6.critedge.i.i.i_crit_edge, label %for.body.i.i.i

for.cond.preheader.i.i.i.if.end6.critedge.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.critedge.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end6.critedge.i.i.i_crit_edge, label %for.body.i.i.i.1

for.cond.i.i.i.if.end6.critedge.i.i.i_crit_edge:  ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.critedge.i.i.i

for.body.i.i.i.1:                                 ; preds = %for.cond.i.i.i
  %28 = ptrtoint ptr %orig_node.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %orig_node.i.i.i.1, align 4
  %cmp1.i.i.i.1 = icmp eq ptr %29, %orig_node.0110.i.i
  br i1 %cmp1.i.i.i.1, label %for.body.i.i.i.1.for.inc.i.i_crit_edge, label %for.body.i.i.i.1.if.end6.critedge.i.i.i_crit_edge

for.body.i.i.i.1.if.end6.critedge.i.i.i_crit_edge: ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.critedge.i.i.i

for.body.i.i.i.1.for.inc.i.i_crit_edge:           ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.body.i.i.i:                                   ; preds = %for.cond.preheader.i.i.i
  %30 = ptrtoint ptr %orig_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %orig_node.i.i.i, align 4
  %cmp1.i.i.i = icmp eq ptr %31, %orig_node.0110.i.i
  br i1 %cmp1.i.i.i, label %for.body.i.i.i.for.inc.i.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end6.critedge.i.i.i:                           ; preds = %for.body.i.i.i.1.if.end6.critedge.i.i.i_crit_edge, %for.cond.i.i.i.if.end6.critedge.i.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end6.critedge.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %last_max.027.i)
  %cmp8.i.i.i = icmp ugt i16 %add.i.i, %last_max.027.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %max.1112.i.i)
  %cmp14.i.i.i = icmp ult i16 %add.i.i, %max.1112.i.i
  %or.cond.i.i.i = or i1 %cmp14.i.i.i, %cmp8.i.i.i
  br i1 %or.cond.i.i.i, label %if.end6.critedge.i.i.i.for.inc.i.i_crit_edge, label %if.end17.i.i.i

if.end6.critedge.i.i.i.for.inc.i.i_crit_edge:     ; preds = %if.end6.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end17.i.i.i:                                   ; preds = %if.end6.critedge.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %max.1112.i.i)
  %cmp20.i.i.i = icmp ne i16 %add.i.i, %max.1112.i.i
  %tobool22.not.i.i.i = icmp eq ptr %max_orig_node.1107.i.i, null
  %or.cond41.i.i.i = or i1 %tobool22.not.i.i.i, %cmp20.i.i.i
  br i1 %or.cond41.i.i.i, label %if.end17.i.i.i.if.end20.i.i_crit_edge, label %land.lhs.true23.i.i.i

if.end17.i.i.i.if.end20.i.i_crit_edge:            ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true23.i.i.i:                            ; preds = %if.end17.i.i.i
  %32 = ptrtoint ptr %orig_node.0110.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %orig_node.0110.i.i, align 4
  %34 = ptrtoint ptr %max_orig_node.1107.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_orig_node.1107.i.i, align 4
  %xor.i.i.i.i.i.i = xor i32 %35, %33
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %orig_node.0110.i.i, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i.i.i.i.i, align 2
  %add.ptr1.i.i.i.i.i.i = getelementptr i8, ptr %max_orig_node.1107.i.i, i32 4
  %38 = ptrtoint ptr %add.ptr1.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr1.i.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i.i = xor i16 %39, %37
  %xor3.i.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %xor.i.i.i.i.i.i, %xor3.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %land.lhs.true23.i.i.i.for.inc.i.i_crit_edge, label %land.lhs.true23.i.i.i.if.end20.i.i_crit_edge

land.lhs.true23.i.i.i.if.end20.i.i_crit_edge:     ; preds = %land.lhs.true23.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true23.i.i.i.for.inc.i.i_crit_edge:      ; preds = %land.lhs.true23.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end20.i.i:                                     ; preds = %land.lhs.true23.i.i.i.if.end20.i.i_crit_edge, %if.end17.i.i.i.if.end20.i.i_crit_edge
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.0110.i.i, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #9
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #9
  %40 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %refcount.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end20.i.i
  %42 = phi i32 [ %41, %if.end20.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %43 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %42, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #9
  %44 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %46 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %45, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %45
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !97

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %47 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %48, 1
  %49 = or i32 %add5.i.i.i.i.i.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !97

if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 0) #9
  %50 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge
  %51 = phi i32 [ %48, %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool12.i.i.i.i.not.i.i = icmp eq i32 %51, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #9
  %brmerge.i.i = select i1 %tobool12.i.i.i.i.not.i.i, i1 true, i1 %tobool22.not.i.i.i
  %max_orig_node.1107.mux.i.i = select i1 %tobool12.i.i.i.i.not.i.i, ptr %max_orig_node.1107.i.i, ptr %orig_node.0110.i.i
  %max.1112.mux.i.i = select i1 %tobool12.i.i.i.i.not.i.i, i16 %max.1112.i.i, i16 %add.i.i
  br i1 %brmerge.i.i, label %kref_get_unless_zero.exit.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i

kref_get_unless_zero.exit.i.i.for.inc.i.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %kref_get_unless_zero.exit.i.i
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %max_orig_node.1107.i.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i93.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #9
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.i.i.for.inc.i.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #9
  br label %for.inc.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @batadv_orig_node_release(ptr noundef %refcount.i.i.i) #9, !callees !103
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.for.inc.i.i_crit_edge, %kref_get_unless_zero.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true23.i.i.i.for.inc.i.i_crit_edge, %if.end6.critedge.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.i.1.for.inc.i.i_crit_edge, %for.body15.i.i.for.inc.i.i_crit_edge
  %max_orig_node.2.i.i = phi ptr [ %max_orig_node.1107.mux.i.i, %kref_get_unless_zero.exit.i.i.for.inc.i.i_crit_edge ], [ %orig_node.0110.i.i, %if.end5.i.i.i.i.i.i.i.for.inc.i.i_crit_edge ], [ %orig_node.0110.i.i, %if.then10.i.i.i.i.i.i.i ], [ %orig_node.0110.i.i, %if.then.i.i.i.i ], [ %max_orig_node.1107.i.i, %if.end6.critedge.i.i.i.for.inc.i.i_crit_edge ], [ %max_orig_node.1107.i.i, %land.lhs.true23.i.i.i.for.inc.i.i_crit_edge ], [ %max_orig_node.1107.i.i, %for.body15.i.i.for.inc.i.i_crit_edge ], [ %max_orig_node.1107.i.i, %for.body.i.i.i.1.for.inc.i.i_crit_edge ], [ %max_orig_node.1107.i.i, %for.body.i.i.i.for.inc.i.i_crit_edge ]
  %max.2.i.i = phi i16 [ %max.1112.mux.i.i, %kref_get_unless_zero.exit.i.i.for.inc.i.i_crit_edge ], [ %add.i.i, %if.end5.i.i.i.i.i.i.i.for.inc.i.i_crit_edge ], [ %add.i.i, %if.then10.i.i.i.i.i.i.i ], [ %add.i.i, %if.then.i.i.i.i ], [ %max.1112.i.i, %if.end6.critedge.i.i.i.for.inc.i.i_crit_edge ], [ %max.1112.i.i, %land.lhs.true23.i.i.i.for.inc.i.i_crit_edge ], [ %max.1112.i.i, %for.body15.i.i.for.inc.i.i_crit_edge ], [ %max.1112.i.i, %for.body.i.i.i.1.for.inc.i.i_crit_edge ], [ %max.1112.i.i, %for.body.i.i.i.for.inc.i.i_crit_edge ]
  %hash_entry.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.0110.i.i, i32 0, i32 24
  %53 = ptrtoint ptr %hash_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %hash_entry.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %54, null
  %add.ptr36.i.i = getelementptr i8, ptr %54, i32 -284
  %tobool14.not127.i.i = icmp eq ptr %add.ptr36.i.i, null
  %tobool14.not.i.i = or i1 %tobool32.not.i.i, %tobool14.not127.i.i
  br i1 %tobool14.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body15.i.i_crit_edge

for.inc.i.i.for.body15.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end.i.i.for.end.i.i_crit_edge
  %max_orig_node.1.lcssa.i.i = phi ptr [ %max_orig_node.0118.i.i, %do.end.i.i.for.end.i.i_crit_edge ], [ %max_orig_node.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %max.1.lcssa.i.i = phi i16 [ %max.0119.i.i, %do.end.i.i.for.end.i.i_crit_edge ], [ %max.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %call.i94.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i94.i.i, label %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i97.i.i

for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i97.i.i:                            ; preds = %for.end.i.i
  %call1.i95.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95.i.i)
  %tobool.not.i96.i.i = icmp eq i32 %call1.i95.i.i, 0
  br i1 %tobool.not.i96.i.i, label %land.lhs.true.i97.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i99.i.i

land.lhs.true.i97.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i97.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i99.i.i:                           ; preds = %land.lhs.true.i97.i.i
  %.b4.i98.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i98.i.i, label %land.lhs.true2.i99.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i100.i.i

land.lhs.true2.i99.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

if.then.i100.i.i:                                 ; preds = %land.lhs.true2.i99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i100.i.i, %land.lhs.true2.i99.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i97.i.i.rcu_read_unlock.exit.i.i_crit_edge, %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %55 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i101.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i101.i.i to ptr
  %preempt_count.i.i.i.i102.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i102.i.i, align 4
  %sub.i.i.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i102.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %inc.i.i = add nuw i32 %i.0117.i.i, 1
  %59 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %60
  br i1 %cmp.i.i, label %rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge, label %for.end41.i.i

rcu_read_unlock.exit.i.i.for.body.i.i_crit_edge:  ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end41.i.i:                                    ; preds = %rcu_read_unlock.exit.i.i
  %tobool42.not.i.i = icmp eq ptr %max_orig_node.1.lcssa.i.i, null
  br i1 %tobool42.not.i.i, label %for.end41.i.i.batadv_choose_next_candidate.exit.i_crit_edge, label %if.then43.i.i

for.end41.i.i.batadv_choose_next_candidate.exit.i_crit_edge: ; preds = %for.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_choose_next_candidate.exit.i

if.then43.i.i:                                    ; preds = %for.end41.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %arrayidx.i.i, align 8
  %orig_node47.i.i = getelementptr %struct.batadv_dat_candidate, ptr %call7.i.i.i, i32 %select.028.i, i32 1
  %62 = ptrtoint ptr %orig_node47.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %max_orig_node.1.lcssa.i.i, ptr %orig_node47.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %63 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %log_level.i, align 4
  %and.i.i = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool50.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool50.not.i.i, label %if.then43.i.i.batadv_choose_next_candidate.exit.i_crit_edge, label %if.then51.i.i

if.then43.i.i.batadv_choose_next_candidate.exit.i_crit_edge: ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_choose_next_candidate.exit.i

if.then51.i.i:                                    ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dat_addr52.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %max_orig_node.1.lcssa.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %dat_addr52.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %dat_addr52.i.i, align 4
  %conv53.i.i = zext i16 %66 to i32
  %conv54.i.i = zext i16 %max.1.lcssa.i.i to i32
  %call55.i.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.38, i32 noundef %select.028.i, ptr noundef nonnull %max_orig_node.1.lcssa.i.i, i32 noundef %conv53.i.i, i32 noundef %conv54.i.i) #9
  br label %batadv_choose_next_candidate.exit.i

batadv_choose_next_candidate.exit.i:              ; preds = %if.then51.i.i, %if.then43.i.i.batadv_choose_next_candidate.exit.i_crit_edge, %for.end41.i.i.batadv_choose_next_candidate.exit.i_crit_edge, %for.body.i.batadv_choose_next_candidate.exit.i_crit_edge
  %max.0.lcssa126.i.i = phi i16 [ %max.1.lcssa.i.i, %if.then43.i.i.batadv_choose_next_candidate.exit.i_crit_edge ], [ %max.1.lcssa.i.i, %if.then51.i.i ], [ %max.1.lcssa.i.i, %for.end41.i.i.batadv_choose_next_candidate.exit.i_crit_edge ], [ 0, %for.body.i.batadv_choose_next_candidate.exit.i_crit_edge ]
  %inc.i = add nuw nsw i32 %select.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %batadv_dat_select_candidates.exit, label %batadv_choose_next_candidate.exit.i.for.body.i_crit_edge

batadv_choose_next_candidate.exit.i.for.body.i_crit_edge: ; preds = %batadv_choose_next_candidate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

batadv_dat_select_candidates.exit.thread:         ; preds = %if.end.i.batadv_dat_select_candidates.exit.thread_crit_edge, %entry.batadv_dat_select_candidates.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_dst.addr.i)
  br label %out

batadv_dat_select_candidates.exit:                ; preds = %batadv_choose_next_candidate.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_dst.addr.i)
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %67 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %log_level.i, align 4
  %and = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %batadv_dat_select_candidates.exit.if.end5_crit_edge, label %if.then3

batadv_dat_select_candidates.exit.if.end5_crit_edge: ; preds = %batadv_dat_select_candidates.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %batadv_dat_select_candidates.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.36, ptr noundef nonnull %ip.addr) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %batadv_dat_select_candidates.exit.if.end5_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %bat_counters.i51 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %ret.081 = phi i8 [ 0, %if.end5 ], [ %ret.3, %for.inc.for.body_crit_edge ]
  %i.079 = phi i32 [ 0, %if.end5 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.batadv_dat_candidate, ptr %call7.i.i.i, i32 %i.079
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp6 = icmp eq i32 %70, 0
  br i1 %cmp6, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %orig_node = getelementptr %struct.batadv_dat_candidate, ptr %call7.i.i.i, i32 %i.079, i32 1
  %71 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %orig_node, align 4
  %call10 = call ptr @batadv_orig_router_get(ptr noundef %72, ptr noundef null) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.free_orig_crit_edge, label %if.end13

if.end8.free_orig_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_orig

if.end13:                                         ; preds = %if.end8
  %73 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i, align 4
  %75 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call1.i = call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext true) #9
  %77 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %orig_node, align 4
  %call17 = call zeroext i1 @batadv_send_skb_prepare_unicast_4addr(ptr noundef %bat_priv, ptr noundef %call1.i, ptr noundef %78, i32 noundef %packet_subtype) #9
  br i1 %call17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef %call1.i, i32 noundef 0) #9
  br label %if.end.i63

if.end19:                                         ; preds = %if.end13
  %call20 = call i32 @batadv_send_unicast_skb(ptr noundef %call1.i, ptr noundef nonnull %call10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end19.if.end.i63_crit_edge

if.end19.if.end.i63_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i63

if.then22:                                        ; preds = %if.end19
  %79 = zext i32 %packet_subtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %packet_subtype, label %if.then22.if.end.i63_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb23
  ]

if.then22.if.end.i63_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i63

sw.bb:                                            ; preds = %if.then22
  %80 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !104
  %81 = ptrtoint ptr %bat_counters.i51 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bat_counters.i51, align 4
  %arrayidx.i = getelementptr i64, ptr %82, i32 23
  %83 = ptrtoint ptr %arrayidx.i to i32
  %84 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i49 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i49 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %89, %83
  %90 = inttoptr i32 %add.i to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %90, align 8
  %add15.i = add i64 %92, 1
  store i64 %add15.i, ptr %90, align 8
  %93 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !105
  %and.i.i.i = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i50 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i50, label %if.then.i, label %sw.bb.batadv_add_counter.exit_crit_edge, !prof !99

sw.bb.batadv_add_counter.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %sw.bb.batadv_add_counter.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %80) #9, !srcloc !106
  br label %if.end.i63

sw.bb23:                                          ; preds = %if.then22
  %94 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !104
  %95 = ptrtoint ptr %bat_counters.i51 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bat_counters.i51, align 4
  %arrayidx.i52 = getelementptr i64, ptr %96, i32 25
  %97 = ptrtoint ptr %arrayidx.i52 to i32
  %98 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i53 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i53 to ptr
  %cpu.i54 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu.i54 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu.i54, align 4
  %arrayidx14.i55 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx14.i55 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx14.i55, align 4
  %add.i56 = add i32 %103, %97
  %104 = inttoptr i32 %add.i56 to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %104, align 8
  %add15.i57 = add i64 %106, 1
  store i64 %add15.i57, ptr %104, align 8
  %107 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !105
  %and.i.i.i58 = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i58)
  %tobool.not.i59 = icmp eq i32 %and.i.i.i58, 0
  br i1 %tobool.not.i59, label %if.then.i60, label %sw.bb23.batadv_add_counter.exit61_crit_edge, !prof !99

sw.bb23.batadv_add_counter.exit61_crit_edge:      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_add_counter.exit61

if.then.i60:                                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %batadv_add_counter.exit61

batadv_add_counter.exit61:                        ; preds = %if.then.i60, %sw.bb23.batadv_add_counter.exit61_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %94) #9, !srcloc !106
  br label %if.end.i63

if.end.i63:                                       ; preds = %batadv_add_counter.exit61, %batadv_add_counter.exit, %if.then22.if.end.i63_crit_edge, %if.end19.if.end.i63_crit_edge, %if.then18
  %ret.1 = phi i8 [ %ret.081, %if.end19.if.end.i63_crit_edge ], [ %ret.081, %if.then18 ], [ 1, %if.then22.if.end.i63_crit_edge ], [ 1, %batadv_add_counter.exit61 ], [ 1, %batadv_add_counter.exit ]
  %refcount.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call10, i32 0, i32 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i64, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.free_orig_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.free_orig_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_orig

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %free_orig

if.then.i.i64:                                    ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @batadv_neigh_node_release(ptr noundef %refcount.i) #9, !callees !103
  br label %free_orig

free_orig:                                        ; preds = %if.then.i.i64, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.free_orig_crit_edge, %if.end8.free_orig_crit_edge
  %ret.2 = phi i8 [ %ret.081, %if.end8.free_orig_crit_edge ], [ %ret.1, %if.end5.i.i.i.i.i.free_orig_crit_edge ], [ %ret.1, %if.then10.i.i.i.i.i ], [ %ret.1, %if.then.i.i64 ]
  %109 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %orig_node, align 4
  %tobool.not.i65 = icmp eq ptr %110, null
  br i1 %tobool.not.i65, label %free_orig.for.inc_crit_edge, label %if.end.i70

free_orig.for.inc_crit_edge:                      ; preds = %free_orig
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i70:                                       ; preds = %free_orig
  %refcount.i66 = getelementptr inbounds %struct.batadv_orig_node, ptr %110, i32 0, i32 27
  %call.i.i.i.i.i.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i66, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @llvm.prefetch.p0(ptr %refcount.i66, i32 1, i32 3, i32 1) #9
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i66, ptr %refcount.i66, i32 1, ptr elementtype(i32) %refcount.i66) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i68 = extractvalue { i32, i32, i32 } %111, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i68)
  %cmp.i.i.i.i.i69 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i68, 1
  br i1 %cmp.i.i.i.i.i69, label %if.then.i.i74, label %if.end5.i.i.i.i.i72

if.end5.i.i.i.i.i72:                              ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i68)
  %.not.i.i.i.i.i71 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i68, 0
  br i1 %.not.i.i.i.i.i71, label %if.end5.i.i.i.i.i72.for.inc_crit_edge, label %if.then10.i.i.i.i.i73, !prof !97

if.end5.i.i.i.i.i72.for.inc_crit_edge:            ; preds = %if.end5.i.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10.i.i.i.i.i73:                            ; preds = %if.end5.i.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i66, i32 noundef 3) #9
  br label %for.inc

if.then.i.i74:                                    ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @batadv_orig_node_release(ptr noundef %refcount.i66) #9, !callees !103
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i74, %if.then10.i.i.i.i.i73, %if.end5.i.i.i.i.i72.for.inc_crit_edge, %free_orig.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.3 = phi i8 [ %ret.081, %for.body.for.inc_crit_edge ], [ %ret.2, %free_orig.for.inc_crit_edge ], [ %ret.2, %if.end5.i.i.i.i.i72.for.inc_crit_edge ], [ %ret.2, %if.then10.i.i.i.i.i73 ], [ %ret.2, %if.then.i.i74 ]
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %out.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

out.loopexit:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %112 = and i8 %ret.3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %extract.t.le = icmp ne i8 %112, 0
  br label %out

out:                                              ; preds = %out.loopexit, %batadv_dat_select_candidates.exit.thread
  %retval.0.i77 = phi ptr [ null, %batadv_dat_select_candidates.exit.thread ], [ %call7.i.i.i, %out.loopexit ]
  %ret.4.off0 = phi i1 [ false, %batadv_dat_select_candidates.exit.thread ], [ %extract.t.le, %out.loopexit ]
  call void @kfree(ptr noundef %retval.0.i77) #9
  ret i1 %ret.4.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_dat_entry_put(ptr noundef %dat_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dat_entry, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !97

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %rcu.i = getelementptr %struct.batadv_dat_entry, ptr %dat_entry, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_dat_snoop_incoming_arp_request(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %hdr_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %distributed_arp_table = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table, i32 noundef 4) #9
  %0 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %distributed_arp_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.end

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef %hdr_size) #9
  %add.i = add i32 %hdr_size, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i82 = icmp slt i16 %call.i, 0
  %spec.select = select i1 %tobool.not.i82, i32 %add.i, i32 %hdr_size
  %call2 = tail call fastcc zeroext i16 @batadv_arp_get_type(ptr noundef %skb, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %call2)
  %cmp.not = icmp eq i16 %call2, 1
  br i1 %cmp.not, label %if.end5, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end5:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %spec.select
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 22
  %add.ptr.i57 = getelementptr i8, ptr %add.ptr1.i, i32 6
  %4 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i57, align 4
  %add.ptr1.i61 = getelementptr i8, ptr %add.ptr1.i, i32 16
  %6 = ptrtoint ptr %add.ptr1.i61 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr1.i61, align 4
  tail call fastcc void @batadv_dbg_arp(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %spec.select, ptr noundef nonnull @.str.3)
  tail call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %5, ptr noundef %add.ptr1.i, i16 noundef zeroext %call.i)
  %call9 = tail call fastcc ptr @batadv_dat_entry_hash_find(ptr noundef %bat_priv, i32 noundef %7, i16 noundef zeroext %call.i)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end5.if.end29_crit_edge, label %if.end12

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end12:                                         ; preds = %if.end5
  %mac_addr = getelementptr inbounds %struct.batadv_dat_entry, ptr %call9, i32 0, i32 1
  %call13 = tail call fastcc ptr @batadv_dat_arp_create_reply(ptr noundef %bat_priv, i32 noundef %7, i32 noundef %5, ptr noundef %mac_addr, ptr noundef %add.ptr1.i, i16 noundef zeroext %call.i)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.if.end.i_crit_edge, label %if.end16

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %spec.select)
  %cmp17 = icmp eq i32 %spec.select, 18
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = tail call i32 @batadv_send_skb_via_tt_generic(ptr noundef %bat_priv, ptr noundef nonnull %call13, i32 noundef 66, i32 noundef 4, ptr noundef null, i16 noundef zeroext %call.i) #9
  br label %if.end22

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call.i63 = tail call i32 @batadv_send_skb_via_tt_generic(ptr noundef %bat_priv, ptr noundef nonnull %call13, i32 noundef 64, i32 noundef 0, ptr noundef null, i16 noundef zeroext %call.i) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  %err.0 = phi i32 [ %call.i62, %if.then19 ], [ %call.i63, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err.0)
  %cmp23.not = icmp eq i32 %err.0, 1
  br i1 %cmp23.not, label %if.end22.if.end.i_crit_edge, label %if.then25

if.end22.if.end.i_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then25:                                        ; preds = %if.end22
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !104
  %bat_counters.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %9 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %10, i32 27
  %11 = ptrtoint ptr %arrayidx.i to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14.i, align 4
  %add.i64 = add i32 %17, %11
  %18 = inttoptr i32 %add.i64 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %add15.i = add i64 %20, 1
  store i64 %add15.i, ptr %18, align 8
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !105
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i65 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i65, label %if.then.i66, label %if.then25.batadv_add_counter.exit_crit_edge, !prof !99

if.then25.batadv_add_counter.exit_crit_edge:      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_add_counter.exit

if.then.i66:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i66, %if.then25.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #9, !srcloc !106
  br label %if.end.i

if.end.i:                                         ; preds = %batadv_add_counter.exit, %if.end22.if.end.i_crit_edge, %if.end12.if.end.i_crit_edge
  %ret.0.off0 = phi i1 [ true, %batadv_add_counter.exit ], [ false, %if.end22.if.end.i_crit_edge ], [ false, %if.end12.if.end.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %call9, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %batadv_dat_entry_put.exit, label %if.then10.i.i.i.i.i, !prof !97

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br i1 %ret.0.off0, label %if.then10.i.i.i.i.i.if.then28_crit_edge, label %if.then10.i.i.i.i.i.if.end29_crit_edge

if.then10.i.i.i.i.i.if.end29_crit_edge:           ; preds = %if.then10.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then10.i.i.i.i.i.if.then28_crit_edge:          ; preds = %if.then10.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %rcu.i.i = getelementptr %struct.batadv_dat_entry, ptr %call9, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br i1 %ret.0.off0, label %if.then.i.i.if.then28_crit_edge, label %if.then.i.i.if.end29_crit_edge

if.then.i.i.if.end29_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then.i.i.if.then28_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

batadv_dat_entry_put.exit:                        ; preds = %if.end5.i.i.i.i.i
  br i1 %ret.0.off0, label %batadv_dat_entry_put.exit.if.then28_crit_edge, label %batadv_dat_entry_put.exit.if.end29_crit_edge

batadv_dat_entry_put.exit.if.end29_crit_edge:     ; preds = %batadv_dat_entry_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

batadv_dat_entry_put.exit.if.then28_crit_edge:    ; preds = %batadv_dat_entry_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then28:                                        ; preds = %batadv_dat_entry_put.exit.if.then28_crit_edge, %if.then.i.i.if.then28_crit_edge, %if.then10.i.i.i.i.i.if.then28_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %batadv_dat_entry_put.exit.if.end29_crit_edge, %if.then.i.i.if.end29_crit_edge, %if.then10.i.i.i.i.i.if.end29_crit_edge, %if.end5.if.end29_crit_edge, %if.end.if.end29_crit_edge, %entry.if.end29_crit_edge
  %ret.0.off07880 = phi i1 [ true, %if.then28 ], [ false, %batadv_dat_entry_put.exit.if.end29_crit_edge ], [ false, %if.then10.i.i.i.i.i.if.end29_crit_edge ], [ false, %if.then.i.i.if.end29_crit_edge ], [ false, %entry.if.end29_crit_edge ], [ false, %if.end5.if.end29_crit_edge ], [ false, %if.end.if.end29_crit_edge ]
  ret i1 %ret.0.off07880
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_dat_snoop_outgoing_arp_reply(ptr noundef %bat_priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %distributed_arp_table = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table, i32 noundef 4) #9
  %0 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %distributed_arp_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef 0) #9
  %2 = lshr i16 %call.i, 13
  %3 = and i16 %2, 4
  %4 = zext i16 %3 to i32
  %call2 = tail call fastcc zeroext i16 @batadv_arp_get_type(ptr noundef %skb, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %call2)
  %cmp.not = icmp eq i16 %call2, 2
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @batadv_dbg_arp(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %4, ptr noundef nonnull @.str.4)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 22
  %add.ptr.i37 = getelementptr i8, ptr %add.ptr1.i, i32 6
  %7 = ptrtoint ptr %add.ptr.i37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i37, align 4
  %add.ptr1.i41 = getelementptr i8, ptr %add.ptr1.i, i32 10
  %add.ptr1.i45 = getelementptr i8, ptr %add.ptr1.i, i32 16
  %9 = ptrtoint ptr %add.ptr1.i45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr1.i45, align 4
  tail call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %8, ptr noundef %add.ptr1.i, i16 noundef zeroext %call.i)
  tail call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %10, ptr noundef %add.ptr1.i41, i16 noundef zeroext %call.i)
  %call10 = tail call fastcc zeroext i1 @batadv_dat_forward_data(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %8, i16 noundef zeroext %call.i, i32 noundef 3)
  %call11 = tail call fastcc zeroext i1 @batadv_dat_forward_data(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %10, i16 noundef zeroext %call.i, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_dat_snoop_incoming_arp_reply(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %hdr_size) local_unnamed_addr #0 align 64 {
entry:
  %ip_src = alloca i32, align 4
  %ip_dst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_src) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_dst) #9
  %distributed_arp_table = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table, i32 noundef 4) #9
  %0 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %distributed_arp_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.batadv_dat_entry_put.exit_crit_edge, label %if.end

entry.batadv_dat_entry_put.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef %hdr_size) #9
  %add.i = add i32 %hdr_size, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i125 = icmp slt i16 %call.i, 0
  %spec.select = select i1 %tobool.not.i125, i32 %add.i, i32 %hdr_size
  %call2 = tail call fastcc zeroext i16 @batadv_arp_get_type(ptr noundef %skb, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %call2)
  %cmp.not = icmp eq i16 %call2, 2
  br i1 %cmp.not, label %if.end5, label %if.end.batadv_dat_entry_put.exit_crit_edge

if.end.batadv_dat_entry_put.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.end5:                                          ; preds = %if.end
  tail call fastcc void @batadv_dbg_arp(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %spec.select, ptr noundef nonnull @.str.5)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %spec.select
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 22
  %add.ptr.i93 = getelementptr i8, ptr %add.ptr1.i, i32 6
  %4 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i93, align 4
  %6 = ptrtoint ptr %ip_src to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ip_src, align 4
  %add.ptr1.i97 = getelementptr i8, ptr %add.ptr1.i, i32 10
  %add.ptr1.i101 = getelementptr i8, ptr %add.ptr1.i, i32 16
  %7 = ptrtoint ptr %add.ptr1.i101 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr1.i101, align 4
  %9 = ptrtoint ptr %ip_dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ip_dst, align 4
  %call10 = tail call fastcc ptr @batadv_dat_entry_hash_find(ptr noundef %bat_priv, i32 noundef %5, i16 noundef zeroext %call.i)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end5.if.end25_crit_edge, label %land.lhs.true

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end5
  %mac_addr = getelementptr inbounds %struct.batadv_dat_entry, ptr %call10, i32 0, i32 1
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr1.i, align 4
  %12 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_addr, align 4
  %xor.i.i.i = xor i32 %13, %11
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.batadv_dat_entry, ptr %call10, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %17, %15
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body:                                          ; preds = %land.lhs.true
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i91 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %18 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.if.end22_crit_edge, label %if.then17

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.6, ptr noundef %add.ptr1.i, ptr noundef nonnull %ip_src, ptr noundef %add.ptr1.i97, ptr noundef nonnull %ip_dst, ptr noundef %mac_addr, ptr noundef nonnull %call10) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %do.body.if.end22_crit_edge
  %20 = ptrtoint ptr %ip_src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ip_src, align 4
  call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %21, ptr noundef %add.ptr1.i, i16 noundef zeroext %call.i)
  %22 = ptrtoint ptr %ip_dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip_dst, align 4
  call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %23, ptr noundef %add.ptr1.i97, i16 noundef zeroext %call.i)
  br label %if.then48

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end5.if.end25_crit_edge
  %24 = ptrtoint ptr %ip_src to i32
  call void @__asan_load4_noabort(i32 %24)
  %.sink126 = load i32, ptr %ip_src, align 4
  tail call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %.sink126, ptr noundef %add.ptr1.i, i16 noundef zeroext %call.i)
  %25 = ptrtoint ptr %ip_dst to i32
  call void @__asan_load4_noabort(i32 %25)
  %.sink = load i32, ptr %ip_dst, align 4
  tail call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %.sink, ptr noundef %add.ptr1.i97, i16 noundef zeroext %call.i)
  %call26 = tail call zeroext i1 @batadv_bla_check_claim(ptr noundef %bat_priv, ptr noundef %add.ptr1.i, i16 noundef zeroext %call.i) #9
  br i1 %call26, label %out, label %do.body28

do.body28:                                        ; preds = %if.end25
  %log_level30 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i92 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level30, i32 noundef 4) #9
  %26 = ptrtoint ptr %log_level30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %log_level30, align 4
  %and32 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body28.if.then48_crit_edge, label %if.then34

do.body28.if.then48_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.7, ptr noundef %add.ptr1.i) #9
  br label %if.then48

out:                                              ; preds = %if.end25
  %call40 = tail call zeroext i1 @batadv_is_my_client(ptr noundef %bat_priv, ptr noundef %add.ptr1.i97, i16 noundef zeroext %call.i) #9
  %lnot = xor i1 %call40, true
  %call41 = tail call zeroext i1 @batadv_is_my_client(ptr noundef %bat_priv, ptr noundef %add.ptr1.i, i16 noundef zeroext %call.i) #9
  %or90 = or i1 %call41, %lnot
  br i1 %or90, label %out.if.then48_crit_edge, label %out.if.end49_crit_edge

out.if.end49_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

out.if.then48_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48

if.then48:                                        ; preds = %out.if.then48_crit_edge, %if.then34, %do.body28.if.then48_crit_edge, %if.end22
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %out.if.end49_crit_edge
  %dropped.1.off0114 = phi i1 [ true, %if.then48 ], [ false, %out.if.end49_crit_edge ]
  br i1 %tobool11.not, label %if.end49.batadv_dat_entry_put.exit_crit_edge, label %if.end.i

if.end49.batadv_dat_entry_put.exit_crit_edge:     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.end.i:                                         ; preds = %if.end49
  %refcount.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %call10, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_dat_entry_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %rcu.i.i = getelementptr %struct.batadv_dat_entry, ptr %call10, i32 0, i32 6
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br label %batadv_dat_entry_put.exit

batadv_dat_entry_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge, %if.end49.batadv_dat_entry_put.exit_crit_edge, %if.end.batadv_dat_entry_put.exit_crit_edge, %entry.batadv_dat_entry_put.exit_crit_edge
  %dropped.1.off0114123 = phi i1 [ %dropped.1.off0114, %if.end49.batadv_dat_entry_put.exit_crit_edge ], [ %dropped.1.off0114, %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge ], [ %dropped.1.off0114, %if.then10.i.i.i.i.i ], [ %dropped.1.off0114, %if.then.i.i ], [ false, %entry.batadv_dat_entry_put.exit_crit_edge ], [ false, %if.end.batadv_dat_entry_put.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_dst) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_src) #9
  ret i1 %dropped.1.off0114123
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_dat_snoop_outgoing_dhcp_ack(ptr noundef %bat_priv, ptr noundef %skb, i16 noundef zeroext %proto, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %yiaddr.addr.i = alloca i32, align 4
  %ip_dst.addr.i = alloca i32, align 4
  %chaddr = alloca [16 x i8], align 1
  %ip_src = alloca i32, align 4
  %yiaddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chaddr) #9
  %0 = call ptr @memset(ptr %chaddr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_src) #9
  %1 = ptrtoint ptr %ip_src to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ip_src, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %yiaddr) #9
  %2 = ptrtoint ptr %yiaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %yiaddr, align 4, !annotation !110
  %distributed_arp_table = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table, i32 noundef 4) #9
  %3 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %distributed_arp_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc zeroext i1 @batadv_dat_check_dhcp_ack(ptr noundef %skb, i16 noundef zeroext %proto, ptr noundef nonnull %ip_src, ptr noundef nonnull %chaddr, ptr noundef nonnull %yiaddr)
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %yiaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yiaddr, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %9 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %ip_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ip_src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %yiaddr.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_dst.addr.i)
  %13 = ptrtoint ptr %yiaddr.addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %yiaddr.addr.i, align 4
  %14 = ptrtoint ptr %ip_dst.addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %ip_dst.addr.i, align 4
  %call.i = call fastcc ptr @batadv_dat_arp_create_reply(ptr noundef %bat_priv, i32 noundef %6, i32 noundef %12, ptr noundef nonnull %chaddr, ptr noundef %h_source, i16 noundef zeroext %vid) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3.batadv_dat_put_dhcp.exit_crit_edge, label %if.end.i

if.end3.batadv_dat_put_dhcp.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_put_dhcp.exit

if.end.i:                                         ; preds = %if.end3
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %conv1.i.i = add i16 %conv.i.i.i, 14
  %19 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv1.i.i, ptr %network_header.i.i.i, align 4
  %20 = ptrtoint ptr %yiaddr.addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yiaddr.addr.i, align 4
  call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %21, ptr noundef nonnull %chaddr, i16 noundef zeroext %vid) #9
  %22 = ptrtoint ptr %ip_dst.addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip_dst.addr.i, align 4
  call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %23, ptr noundef %h_source, i16 noundef zeroext %vid) #9
  %call1.i = call fastcc zeroext i1 @batadv_dat_forward_data(ptr noundef %bat_priv, ptr noundef nonnull %call.i, i32 noundef %21, i16 noundef zeroext %vid, i32 noundef 3) #9
  %call2.i = call fastcc zeroext i1 @batadv_dat_forward_data(ptr noundef %bat_priv, ptr noundef nonnull %call.i, i32 noundef %23, i16 noundef zeroext %vid, i32 noundef 3) #9
  call void @consume_skb(ptr noundef nonnull %call.i) #9
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i11 = zext i16 %vid to i32
  %and.i.i = and i32 %conv.i.i11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i11, 4095
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 -1, i32 %and2.i.i
  %call7.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.39, ptr noundef nonnull %ip_dst.addr.i, ptr noundef %h_source, i32 noundef %retval.0.i.i) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %call.i.i43.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %log_level.i, align 4
  %and13.i = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end8.i.batadv_dat_put_dhcp.exit_crit_edge, label %if.then15.i

if.end8.i.batadv_dat_put_dhcp.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_put_dhcp.exit

if.then15.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i44.i = zext i16 %vid to i32
  %and.i45.i = and i32 %conv.i44.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.not.i46.i = icmp eq i32 %and.i45.i, 0
  %and2.i47.i = and i32 %conv.i44.i, 4095
  %retval.0.i48.i = select i1 %tobool.not.i46.i, i32 -1, i32 %and2.i47.i
  %call17.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.40, ptr noundef nonnull %yiaddr.addr.i, ptr noundef nonnull %chaddr, i32 noundef %retval.0.i48.i) #9
  br label %batadv_dat_put_dhcp.exit

batadv_dat_put_dhcp.exit:                         ; preds = %if.then15.i, %if.end8.i.batadv_dat_put_dhcp.exit_crit_edge, %if.end3.batadv_dat_put_dhcp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %yiaddr.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_dst.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %batadv_dat_put_dhcp.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %yiaddr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_src) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chaddr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @batadv_dat_check_dhcp_ack(ptr noundef %skb, i16 noundef zeroext %proto, ptr nocapture noundef writeonly %ip_src, ptr noundef %chaddr, ptr noundef %yiaddr) unnamed_addr #0 align 64 {
entry:
  %_type.i = alloca i8, align 1
  %_tl.i = alloca %struct.anon.151, align 1
  %_udphdr.i.i = alloca %struct.udphdr, align 8
  %_iphdr.i.i = alloca %struct.iphdr, align 4
  %_magic.i = alloca i32, align 4
  %_dhcp_h.i = alloca %struct.anon.148, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_magic.i) #9
  %0 = ptrtoint ptr %_magic.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_magic.i, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_dhcp_h.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %proto)
  %cmp.not.i = icmp eq i16 %proto, 2048
  %1 = ptrtoint ptr %_dhcp_h.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %_dhcp_h.i, align 4
  br i1 %cmp.not.i, label %if.end.i, label %entry.batadv_dat_check_dhcp.exit.thread_crit_edge

entry.batadv_dat_check_dhcp.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp.exit.thread

if.end.i:                                         ; preds = %entry
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_udphdr.i.i) #9
  %8 = ptrtoint ptr %_udphdr.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %_udphdr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iphdr.i.i) #9
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = call ptr @memset(ptr %_iphdr.i.i, i32 255, i32 20)
  %10 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i.i, align 8
  %14 = add i32 %sub.ptr.sub.i.i.i, %13
  %sub.i4.i.i.i = sub i32 %11, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 20
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !99

if.end.i.i.i.i:                                   ; preds = %if.end.i
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i.i, ptr noundef nonnull %_iphdr.i.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge

lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

skb_header_pointer.exit.i.i:                      ; preds = %if.end.i
  %add.ptr.i.i42.i.i = getelementptr i8, ptr %7, i32 %sub.ptr.sub.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i42.i.i, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, label %skb_header_pointer.exit.i.i.lor.lhs.false.i.i_crit_edge

skb_header_pointer.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

skb_header_pointer.exit.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %skb_header_pointer.exit.i.i.lor.lhs.false.i.i_crit_edge, %lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge
  %retval.0.i.i65.i.i = phi ptr [ %add.ptr.i.i42.i.i, %skb_header_pointer.exit.i.i.lor.lhs.false.i.i_crit_edge ], [ %_iphdr.i.i, %lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i.i65.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %retval.0.i.i65.i.i, align 4
  %bf.lshr.mask.i.i = and i8 %bf.load.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i.i)
  %cmp.not.i.i = icmp eq i8 %bf.lshr.mask.i.i, 64
  br i1 %cmp.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge

lor.lhs.false.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %16 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %16)
  %cmp6.i.i = icmp ult i8 %16, 20
  br i1 %cmp6.i.i, label %lor.lhs.false3.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, label %if.end.i.i

lor.lhs.false3.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

if.end.i.i:                                       ; preds = %lor.lhs.false3.i.i
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i65.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %18)
  %cmp9.not.i.i = icmp eq i8 %18, 17
  br i1 %cmp9.not.i.i, label %if.end12.i.i, label %if.end.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge

if.end.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %mul.i.i
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %21 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i44.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %23 = trunc i32 %add.i.i to i16
  %conv1.i.i.i = add i16 %conv.i.i44.i.i, %23
  %24 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv1.i.i.i, ptr %transport_header.i.i.i.i, align 2
  %25 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i.i.i, align 4
  %27 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i.i, align 8
  %29 = add i32 %add.i.i, %28
  %sub.i4.i47.i.i = sub i32 %26, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i47.i.i)
  %cmp.not.i.i48.i.i = icmp slt i32 %sub.i4.i47.i.i, 8
  br i1 %cmp.not.i.i48.i.i, label %if.end.i.i53.i.i, label %skb_header_pointer.exit59.i.i, !prof !99

if.end.i.i53.i.i:                                 ; preds = %if.end12.i.i
  %tobool2.not.i.i52.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i52.i.i, label %if.end.i.i53.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, label %lor.lhs.false.i.i57.i.i

if.end.i.i53.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %if.end.i.i53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

lor.lhs.false.i.i57.i.i:                          ; preds = %if.end.i.i53.i.i
  %call.i.i54.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i.i, ptr noundef nonnull %_udphdr.i.i, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54.i.i)
  %cmp3.i.i55.i.i = icmp slt i32 %call.i.i54.i.i, 0
  br i1 %cmp3.i.i55.i.i, label %lor.lhs.false.i.i57.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, label %lor.lhs.false.i.i57.i.i.lor.lhs.false19.i.i_crit_edge

lor.lhs.false.i.i57.i.i.lor.lhs.false19.i.i_crit_edge: ; preds = %lor.lhs.false.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false19.i.i

lor.lhs.false.i.i57.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

skb_header_pointer.exit59.i.i:                    ; preds = %if.end12.i.i
  %add.ptr.i.i50.i.i = getelementptr i8, ptr %20, i32 %add.i.i
  %tobool18.not.i.i = icmp eq ptr %add.ptr.i.i50.i.i, null
  br i1 %tobool18.not.i.i, label %skb_header_pointer.exit59.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, label %skb_header_pointer.exit59.i.i.lor.lhs.false19.i.i_crit_edge

skb_header_pointer.exit59.i.i.lor.lhs.false19.i.i_crit_edge: ; preds = %skb_header_pointer.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false19.i.i

skb_header_pointer.exit59.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %skb_header_pointer.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

lor.lhs.false19.i.i:                              ; preds = %skb_header_pointer.exit59.i.i.lor.lhs.false19.i.i_crit_edge, %lor.lhs.false.i.i57.i.i.lor.lhs.false19.i.i_crit_edge
  %retval.0.i.i5872.i.i = phi ptr [ %add.ptr.i.i50.i.i, %skb_header_pointer.exit59.i.i.lor.lhs.false19.i.i_crit_edge ], [ %_udphdr.i.i, %lor.lhs.false.i.i57.i.i.lor.lhs.false19.i.i_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i.i5872.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %retval.0.i.i5872.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %31)
  %cmp21.not.i.i = icmp eq i16 %31, 67
  br i1 %cmp21.not.i.i, label %if.end3.i, label %lor.lhs.false19.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge

lor.lhs.false19.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge: ; preds = %lor.lhs.false19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp_ipudp.exit.thread.i

batadv_dat_check_dhcp_ipudp.exit.thread.i:        ; preds = %lor.lhs.false19.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, %skb_header_pointer.exit59.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, %lor.lhs.false.i.i57.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, %if.end.i.i53.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, %if.end.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, %lor.lhs.false3.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, %lor.lhs.false.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, %skb_header_pointer.exit.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge, %if.end.i.i.i.i.batadv_dat_check_dhcp_ipudp.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iphdr.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udphdr.i.i) #9
  br label %batadv_dat_check_dhcp.exit.thread

if.end3.i:                                        ; preds = %lor.lhs.false19.i.i
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i65.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %saddr.i.i, align 1
  %34 = ptrtoint ptr %ip_src to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ip_src, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iphdr.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udphdr.i.i) #9
  %35 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i.i.i, align 8
  %37 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i = zext i16 %38 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i
  %39 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %41 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i.i.i, align 4
  %add5.i = add i32 %sub.ptr.sub.i.i, 248
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %add5.i)
  %cmp6.i = icmp ult i32 %42, %add5.i
  br i1 %cmp6.i, label %if.end3.i.batadv_dat_check_dhcp.exit.thread_crit_edge, label %if.end9.i

if.end3.i.batadv_dat_check_dhcp.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp.exit.thread

if.end9.i:                                        ; preds = %if.end3.i
  %add.i = add i32 %sub.ptr.sub.i.i, 8
  %43 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i.i.i, align 8
  %.neg93 = add i32 %42, -8
  %45 = add i32 %sub.ptr.sub.i.i, %44
  %sub.i4.i.i = sub i32 %.neg93, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 4
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !99

if.end.i.i.i:                                     ; preds = %if.end9.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.batadv_dat_check_dhcp.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.batadv_dat_check_dhcp.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i, ptr noundef nonnull %_dhcp_h.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.batadv_dat_check_dhcp.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.lor.lhs.false.i_crit_edge

lor.lhs.false.i.i.i.lor.lhs.false.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

lor.lhs.false.i.i.i.batadv_dat_check_dhcp.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp.exit.thread

skb_header_pointer.exit.i:                        ; preds = %if.end9.i
  %add.ptr.i.i45.i = getelementptr i8, ptr %40, i32 %add.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i45.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.batadv_dat_check_dhcp.exit.thread_crit_edge, label %skb_header_pointer.exit.i.lor.lhs.false.i_crit_edge

skb_header_pointer.exit.i.lor.lhs.false.i_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

skb_header_pointer.exit.i.batadv_dat_check_dhcp.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp.exit.thread

lor.lhs.false.i:                                  ; preds = %skb_header_pointer.exit.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.i.i.i.lor.lhs.false.i_crit_edge
  %retval.0.i.i52.i = phi ptr [ %add.ptr.i.i45.i, %skb_header_pointer.exit.i.lor.lhs.false.i_crit_edge ], [ %_dhcp_h.i, %lor.lhs.false.i.i.i.lor.lhs.false.i_crit_edge ]
  %htype.i = getelementptr inbounds %struct.anon.148, ptr %retval.0.i.i52.i, i32 0, i32 1
  %46 = ptrtoint ptr %htype.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %htype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp12.not.i = icmp eq i8 %47, 1
  br i1 %cmp12.not.i, label %lor.lhs.false14.i, label %lor.lhs.false.i.batadv_dat_check_dhcp.exit.thread_crit_edge

lor.lhs.false.i.batadv_dat_check_dhcp.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp.exit.thread

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %hlen.i = getelementptr inbounds %struct.anon.148, ptr %retval.0.i.i52.i, i32 0, i32 2
  %48 = ptrtoint ptr %hlen.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hlen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %49)
  %cmp16.not.i = icmp eq i8 %49, 6
  br i1 %cmp16.not.i, label %if.end19.i, label %lor.lhs.false14.i.batadv_dat_check_dhcp.exit.thread_crit_edge

lor.lhs.false14.i.batadv_dat_check_dhcp.exit.thread_crit_edge: ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp.exit.thread

if.end19.i:                                       ; preds = %lor.lhs.false14.i
  %add20.i = add i32 %sub.ptr.sub.i.i, 244
  %call21.i = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %add20.i, i32 noundef 4, ptr noundef nonnull %_magic.i) #9
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end19.i.batadv_dat_check_dhcp.exit.thread_crit_edge, label %lor.lhs.false23.i

if.end19.i.batadv_dat_check_dhcp.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp.exit.thread

lor.lhs.false23.i:                                ; preds = %if.end19.i
  %50 = ptrtoint ptr %call21.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %call21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1669485411, i32 %51)
  %cmp24.not.i = icmp eq i32 %51, 1669485411
  br i1 %cmp24.not.i, label %batadv_dat_check_dhcp.exit, label %lor.lhs.false23.i.batadv_dat_check_dhcp.exit.thread_crit_edge

lor.lhs.false23.i.batadv_dat_check_dhcp.exit.thread_crit_edge: ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_check_dhcp.exit.thread

batadv_dat_check_dhcp.exit.thread:                ; preds = %lor.lhs.false23.i.batadv_dat_check_dhcp.exit.thread_crit_edge, %if.end19.i.batadv_dat_check_dhcp.exit.thread_crit_edge, %lor.lhs.false14.i.batadv_dat_check_dhcp.exit.thread_crit_edge, %lor.lhs.false.i.batadv_dat_check_dhcp.exit.thread_crit_edge, %skb_header_pointer.exit.i.batadv_dat_check_dhcp.exit.thread_crit_edge, %lor.lhs.false.i.i.i.batadv_dat_check_dhcp.exit.thread_crit_edge, %if.end.i.i.i.batadv_dat_check_dhcp.exit.thread_crit_edge, %if.end3.i.batadv_dat_check_dhcp.exit.thread_crit_edge, %batadv_dat_check_dhcp_ipudp.exit.thread.i, %entry.batadv_dat_check_dhcp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_dhcp_h.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_magic.i) #9
  br label %cleanup

batadv_dat_check_dhcp.exit:                       ; preds = %lor.lhs.false23.i
  %52 = ptrtoint ptr %retval.0.i.i52.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %retval.0.i.i52.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_dhcp_h.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_magic.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp.not = icmp eq i8 %53, 2
  br i1 %cmp.not, label %if.end, label %batadv_dat_check_dhcp.exit.cleanup_crit_edge

batadv_dat_check_dhcp.exit.cleanup_crit_edge:     ; preds = %batadv_dat_check_dhcp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %batadv_dat_check_dhcp.exit
  %54 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i.i.i, align 8
  %56 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i15 = zext i16 %57 to i32
  %add.ptr.i.i.i16 = getelementptr i8, ptr %55, i32 %conv.i.i.i15
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i17 = ptrtoint ptr %add.ptr.i.i.i16 to i32
  %sub.ptr.rhs.cast.i.i18 = ptrtoint ptr %59 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_type.i) #9
  %60 = ptrtoint ptr %_type.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %_type.i, align 1, !annotation !110
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_tl.i) #9
  %61 = ptrtoint ptr %_tl.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %_tl.i, align 1, !annotation !110
  %62 = getelementptr inbounds %struct.anon.151, ptr %_tl.i, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %62, align 1, !annotation !110
  %sub.ptr.sub.i.i19 = sub i32 248, %sub.ptr.rhs.cast.i.i18
  %add1.i = add i32 %sub.ptr.sub.i.i19, %sub.ptr.lhs.cast.i.i17
  %tobool2.not.i.i.i20 = icmp eq ptr %skb, null
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end
  %offset.0.i = phi i32 [ %add1.i, %if.end ], [ %offset.0.i.be, %while.cond.i.backedge ]
  %64 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i.i.i.i, align 4
  %66 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_len.i.i.i.i, align 8
  %68 = add i32 %offset.0.i, %67
  %sub.i4.i.i21 = sub i32 %65, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i.i21)
  %cmp.not.i.i.i22 = icmp slt i32 %sub.i4.i.i21, 2
  br i1 %cmp.not.i.i.i22, label %if.end.i.i.i23, label %skb_header_pointer.exit.i28, !prof !99

if.end.i.i.i23:                                   ; preds = %while.cond.i
  br i1 %tobool2.not.i.i.i20, label %if.end.i.i.i23.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, label %lor.lhs.false.i.i.i26

if.end.i.i.i23.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge: ; preds = %if.end.i.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit.thread

lor.lhs.false.i.i.i26:                            ; preds = %if.end.i.i.i23
  %call.i.i.i24 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset.0.i, ptr noundef nonnull %_tl.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i24)
  %cmp3.i.i.i25 = icmp slt i32 %call.i.i.i24, 0
  br i1 %cmp3.i.i.i25, label %lor.lhs.false.i.i.i26.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, label %lor.lhs.false.i.i.i26.while.body.i_crit_edge

lor.lhs.false.i.i.i26.while.body.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.lhs.false.i.i.i26.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit.thread

skb_header_pointer.exit.i28:                      ; preds = %while.cond.i
  %69 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i57.i = getelementptr i8, ptr %70, i32 %offset.0.i
  %tobool.not.i27 = icmp eq ptr %add.ptr.i.i57.i, null
  br i1 %tobool.not.i27, label %skb_header_pointer.exit.i28.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, label %skb_header_pointer.exit.i28.while.body.i_crit_edge

skb_header_pointer.exit.i28.while.body.i_crit_edge: ; preds = %skb_header_pointer.exit.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

skb_header_pointer.exit.i28.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit.thread

while.body.i:                                     ; preds = %skb_header_pointer.exit.i28.while.body.i_crit_edge, %lor.lhs.false.i.i.i26.while.body.i_crit_edge
  %retval.0.i.i78.i = phi ptr [ %add.ptr.i.i57.i, %skb_header_pointer.exit.i28.while.body.i_crit_edge ], [ %_tl.i, %lor.lhs.false.i.i.i26.while.body.i_crit_edge ]
  %71 = ptrtoint ptr %retval.0.i.i78.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %retval.0.i.i78.i, align 1
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %72, label %if.else.i [
    i8 0, label %if.then15.i
    i8 53, label %lor.lhs.false25.i
    i8 -1, label %while.body.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge
  ]

while.body.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit.thread

if.then15.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add i32 %offset.0.i, 1
  br label %while.cond.i.backedge

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.anon.151, ptr %retval.0.i.i78.i, i32 0, i32 1
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %len.i, align 1
  %conv16.i = zext i8 %75 to i32
  %add17.i = add i32 %offset.0.i, 2
  %add18.i = add i32 %add17.i, %conv16.i
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.else.i, %if.then15.i
  %offset.0.i.be = phi i32 [ %inc.i, %if.then15.i ], [ %add18.i, %if.else.i ]
  br label %while.cond.i

lor.lhs.false25.i:                                ; preds = %while.body.i
  %len26.i = getelementptr inbounds %struct.anon.151, ptr %retval.0.i.i78.i, i32 0, i32 1
  %76 = ptrtoint ptr %len26.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %len26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp28.not.i = icmp eq i8 %77, 1
  br i1 %cmp28.not.i, label %if.end31.i, label %lor.lhs.false25.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge

lor.lhs.false25.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge: ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit.thread

if.end31.i:                                       ; preds = %lor.lhs.false25.i
  %add32.i = add i32 %offset.0.i, 2
  %78 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i.i.i.i, align 4
  %80 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i.i.i, align 8
  %82 = add i32 %79, -2
  %83 = add i32 %offset.0.i, %81
  %sub.i4.i60.i = sub i32 %82, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i4.i60.i)
  %cmp.not.i.i61.i = icmp slt i32 %sub.i4.i60.i, 1
  br i1 %cmp.not.i.i61.i, label %if.end.i.i66.i, label %skb_header_pointer.exit72.i, !prof !99

if.end.i.i66.i:                                   ; preds = %if.end31.i
  br i1 %tobool2.not.i.i.i20, label %if.end.i.i66.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, label %lor.lhs.false.i.i70.i

if.end.i.i66.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge: ; preds = %if.end.i.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit.thread

lor.lhs.false.i.i70.i:                            ; preds = %if.end.i.i66.i
  %call.i.i67.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add32.i, ptr noundef nonnull %_type.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67.i)
  %cmp3.i.i68.i = icmp slt i32 %call.i.i67.i, 0
  br i1 %cmp3.i.i68.i, label %lor.lhs.false.i.i70.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, label %lor.lhs.false.i.i70.i.batadv_dat_get_dhcp_message_type.exit_crit_edge

lor.lhs.false.i.i70.i.batadv_dat_get_dhcp_message_type.exit_crit_edge: ; preds = %lor.lhs.false.i.i70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit

lor.lhs.false.i.i70.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit.thread

skb_header_pointer.exit72.i:                      ; preds = %if.end31.i
  %84 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i63.i = getelementptr i8, ptr %85, i32 %add32.i
  %tobool34.not.i = icmp eq ptr %add.ptr.i.i63.i, null
  br i1 %tobool34.not.i, label %skb_header_pointer.exit72.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, label %skb_header_pointer.exit72.i.batadv_dat_get_dhcp_message_type.exit_crit_edge

skb_header_pointer.exit72.i.batadv_dat_get_dhcp_message_type.exit_crit_edge: ; preds = %skb_header_pointer.exit72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit

skb_header_pointer.exit72.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_message_type.exit.thread

batadv_dat_get_dhcp_message_type.exit.thread:     ; preds = %skb_header_pointer.exit72.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, %lor.lhs.false.i.i70.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, %if.end.i.i66.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, %lor.lhs.false25.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, %while.body.i.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, %skb_header_pointer.exit.i28.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, %lor.lhs.false.i.i.i26.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge, %if.end.i.i.i23.batadv_dat_get_dhcp_message_type.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_tl.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_type.i) #9
  br label %cleanup

batadv_dat_get_dhcp_message_type.exit:            ; preds = %skb_header_pointer.exit72.i.batadv_dat_get_dhcp_message_type.exit_crit_edge, %lor.lhs.false.i.i70.i.batadv_dat_get_dhcp_message_type.exit_crit_edge
  %retval.0.i.i7185.i = phi ptr [ %add.ptr.i.i63.i, %skb_header_pointer.exit72.i.batadv_dat_get_dhcp_message_type.exit_crit_edge ], [ %_type.i, %lor.lhs.false.i.i70.i.batadv_dat_get_dhcp_message_type.exit_crit_edge ]
  %86 = ptrtoint ptr %retval.0.i.i7185.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %retval.0.i.i7185.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_tl.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_type.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %87)
  %cmp2.not = icmp eq i8 %87, 5
  br i1 %cmp2.not, label %if.end4, label %batadv_dat_get_dhcp_message_type.exit.cleanup_crit_edge

batadv_dat_get_dhcp_message_type.exit.cleanup_crit_edge: ; preds = %batadv_dat_get_dhcp_message_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %batadv_dat_get_dhcp_message_type.exit
  %88 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %head.i.i.i.i, align 8
  %90 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i33 = zext i16 %91 to i32
  %add.ptr.i.i.i34 = getelementptr i8, ptr %89, i32 %conv.i.i.i33
  %92 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i36 = ptrtoint ptr %add.ptr.i.i.i34 to i32
  %sub.ptr.rhs.cast.i.i37 = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i.i38 = sub i32 %sub.ptr.lhs.cast.i.i36, %sub.ptr.rhs.cast.i.i37
  %add1.i39 = add i32 %sub.ptr.sub.i.i38, 24
  %94 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i.i.i.i, align 4
  %96 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data_len.i.i.i.i, align 8
  %add1.neg.i = add i32 %95, -24
  %98 = add i32 %97, %sub.ptr.sub.i.i38
  %sub.i4.i.i42 = sub i32 %add1.neg.i, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i.i42)
  %cmp.not.i.i.i43 = icmp slt i32 %sub.i4.i.i42, 4
  br i1 %cmp.not.i.i.i43, label %if.end.i.i.i45, label %if.then.i.i.i, !prof !99

if.then.i.i.i:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i13.i = getelementptr i8, ptr %93, i32 %add1.i39
  br label %skb_header_pointer.exit.i51

if.end.i.i.i45:                                   ; preds = %if.end4
  br i1 %tobool2.not.i.i.i20, label %if.end.i.i.i45.cleanup_crit_edge, label %lor.lhs.false.i.i.i48

if.end.i.i.i45.cleanup_crit_edge:                 ; preds = %if.end.i.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i48:                            ; preds = %if.end.i.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i46 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add1.i39, ptr noundef %yiaddr, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i46)
  %cmp3.i.i.i47 = icmp slt i32 %call.i.i.i46, 0
  %spec.select.i.i.i = select i1 %cmp3.i.i.i47, ptr null, ptr %yiaddr, !prof !99
  br label %skb_header_pointer.exit.i51

skb_header_pointer.exit.i51:                      ; preds = %lor.lhs.false.i.i.i48, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i13.i, %if.then.i.i.i ], [ %spec.select.i.i.i, %lor.lhs.false.i.i.i48 ]
  %tobool.not.i49 = icmp eq ptr %retval.0.i.i.i, null
  %cmp.not.i50 = icmp eq ptr %retval.0.i.i.i, %yiaddr
  %or.cond.i = or i1 %tobool.not.i49, %cmp.not.i50
  br i1 %or.cond.i, label %batadv_dat_dhcp_get_yiaddr.exit, label %batadv_dat_dhcp_get_yiaddr.exit.thread

batadv_dat_dhcp_get_yiaddr.exit.thread:           ; preds = %skb_header_pointer.exit.i51
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %retval.0.i.i.i, align 1
  %101 = ptrtoint ptr %yiaddr to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %yiaddr, align 4
  br label %if.end7

batadv_dat_dhcp_get_yiaddr.exit:                  ; preds = %skb_header_pointer.exit.i51
  br i1 %tobool.not.i49, label %batadv_dat_dhcp_get_yiaddr.exit.cleanup_crit_edge, label %batadv_dat_dhcp_get_yiaddr.exit.if.end7_crit_edge

batadv_dat_dhcp_get_yiaddr.exit.if.end7_crit_edge: ; preds = %batadv_dat_dhcp_get_yiaddr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

batadv_dat_dhcp_get_yiaddr.exit.cleanup_crit_edge: ; preds = %batadv_dat_dhcp_get_yiaddr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %batadv_dat_dhcp_get_yiaddr.exit.if.end7_crit_edge, %batadv_dat_dhcp_get_yiaddr.exit.thread
  %102 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head.i.i.i.i, align 8
  %104 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i54 = zext i16 %105 to i32
  %add.ptr.i.i.i55 = getelementptr i8, ptr %103, i32 %conv.i.i.i54
  %106 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i57 = ptrtoint ptr %add.ptr.i.i.i55 to i32
  %sub.ptr.rhs.cast.i.i58 = ptrtoint ptr %107 to i32
  %sub.ptr.sub.i.i59 = sub i32 %sub.ptr.lhs.cast.i.i57, %sub.ptr.rhs.cast.i.i58
  %add1.i60 = add i32 %sub.ptr.sub.i.i59, 36
  %108 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len.i.i.i.i, align 4
  %110 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %data_len.i.i.i.i, align 8
  %add1.neg.i63 = add i32 %109, -36
  %112 = add i32 %111, %sub.ptr.sub.i.i59
  %sub.i4.i.i65 = sub i32 %add1.neg.i63, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i4.i.i65)
  %cmp.not.i.i.i66 = icmp slt i32 %sub.i4.i.i65, 16
  br i1 %cmp.not.i.i.i66, label %if.end.i.i.i70, label %if.then.i.i.i68, !prof !99

if.then.i.i.i68:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i13.i67 = getelementptr i8, ptr %107, i32 %add1.i60
  br label %skb_header_pointer.exit.i79

if.end.i.i.i70:                                   ; preds = %if.end7
  br i1 %tobool2.not.i.i.i20, label %if.end.i.i.i70.batadv_dat_get_dhcp_chaddr.exit_crit_edge, label %lor.lhs.false.i.i.i74

if.end.i.i.i70.batadv_dat_get_dhcp_chaddr.exit_crit_edge: ; preds = %if.end.i.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_chaddr.exit

lor.lhs.false.i.i.i74:                            ; preds = %if.end.i.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i71 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add1.i60, ptr noundef %chaddr, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i71)
  %cmp3.i.i.i72 = icmp slt i32 %call.i.i.i71, 0
  %spec.select.i.i.i73 = select i1 %cmp3.i.i.i72, ptr null, ptr %chaddr, !prof !99
  br label %skb_header_pointer.exit.i79

skb_header_pointer.exit.i79:                      ; preds = %lor.lhs.false.i.i.i74, %if.then.i.i.i68
  %retval.0.i.i.i75 = phi ptr [ %add.ptr.i.i13.i67, %if.then.i.i.i68 ], [ %spec.select.i.i.i73, %lor.lhs.false.i.i.i74 ]
  %tobool.not.i76 = icmp eq ptr %retval.0.i.i.i75, null
  %cmp.not.i77 = icmp eq ptr %retval.0.i.i.i75, %chaddr
  %or.cond.i78 = or i1 %tobool.not.i76, %cmp.not.i77
  br i1 %or.cond.i78, label %skb_header_pointer.exit.i79.batadv_dat_get_dhcp_chaddr.exit_crit_edge, label %if.then3.i80

skb_header_pointer.exit.i79.batadv_dat_get_dhcp_chaddr.exit_crit_edge: ; preds = %skb_header_pointer.exit.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_get_dhcp_chaddr.exit

if.then3.i80:                                     ; preds = %skb_header_pointer.exit.i79
  call void @__sanitizer_cov_trace_pc() #11
  %113 = call ptr @memcpy(ptr %chaddr, ptr %retval.0.i.i.i75, i32 16)
  br label %batadv_dat_get_dhcp_chaddr.exit

batadv_dat_get_dhcp_chaddr.exit:                  ; preds = %if.then3.i80, %skb_header_pointer.exit.i79.batadv_dat_get_dhcp_chaddr.exit_crit_edge, %if.end.i.i.i70.batadv_dat_get_dhcp_chaddr.exit_crit_edge
  %tobool.not18.i81 = phi i1 [ false, %if.then3.i80 ], [ %tobool.not.i76, %skb_header_pointer.exit.i79.batadv_dat_get_dhcp_chaddr.exit_crit_edge ], [ true, %if.end.i.i.i70.batadv_dat_get_dhcp_chaddr.exit_crit_edge ]
  %114 = xor i1 %tobool.not18.i81, true
  br label %cleanup

cleanup:                                          ; preds = %batadv_dat_get_dhcp_chaddr.exit, %batadv_dat_dhcp_get_yiaddr.exit.cleanup_crit_edge, %if.end.i.i.i45.cleanup_crit_edge, %batadv_dat_get_dhcp_message_type.exit.cleanup_crit_edge, %batadv_dat_get_dhcp_message_type.exit.thread, %batadv_dat_check_dhcp.exit.cleanup_crit_edge, %batadv_dat_check_dhcp.exit.thread
  %retval.0 = phi i1 [ false, %batadv_dat_check_dhcp.exit.cleanup_crit_edge ], [ false, %batadv_dat_get_dhcp_message_type.exit.cleanup_crit_edge ], [ false, %batadv_dat_dhcp_get_yiaddr.exit.cleanup_crit_edge ], [ %114, %batadv_dat_get_dhcp_chaddr.exit ], [ false, %batadv_dat_check_dhcp.exit.thread ], [ false, %batadv_dat_get_dhcp_message_type.exit.thread ], [ false, %if.end.i.i.i45.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_dat_snoop_incoming_dhcp_ack(ptr noundef %bat_priv, ptr noundef %skb, i32 noundef %hdr_size) local_unnamed_addr #0 align 64 {
entry:
  %chaddr = alloca [16 x i8], align 1
  %ip_src = alloca i32, align 4
  %yiaddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chaddr) #9
  %0 = call ptr @memset(ptr %chaddr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_src) #9
  %1 = ptrtoint ptr %ip_src to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ip_src, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %yiaddr) #9
  %2 = ptrtoint ptr %yiaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %yiaddr, align 4, !annotation !110
  %distributed_arp_table = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table, i32 noundef 4) #9
  %3 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %distributed_arp_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %hdr_size, 14
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end6_crit_edge, !prof !99

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add)
  %cmp3.i = icmp ult i32 %6, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !99

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #9
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end6_crit_edge, !prof !99

pskb_may_pull.exit.if.end6_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %pskb_may_pull.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %hdr_size
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = trunc i32 %add to i16
  %conv1.i = add i16 %conv.i.i, %13
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 2
  %15 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %h_proto, align 1
  %call8 = call fastcc zeroext i1 @batadv_dat_check_dhcp_ack(ptr noundef %skb, i16 noundef zeroext %16, ptr noundef nonnull %ip_src, ptr noundef nonnull %chaddr, ptr noundef nonnull %yiaddr)
  br i1 %call8, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 1
  %call.i = call zeroext i16 @batadv_get_vid(ptr noundef %skb, i32 noundef %hdr_size) #9
  %17 = ptrtoint ptr %yiaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %yiaddr, align 4
  call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %18, ptr noundef nonnull %chaddr, i16 noundef zeroext %call.i)
  %19 = ptrtoint ptr %ip_src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ip_src, align 4
  call fastcc void @batadv_dat_entry_add(ptr noundef %bat_priv, i32 noundef %20, ptr noundef %h_source, i16 noundef zeroext %call.i)
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i54 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %21 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end10.if.end19_crit_edge, label %if.then16

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %call.i to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i57 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 4095
  %retval.0.i58 = select i1 %tobool.not.i57, i32 -1, i32 %and2.i
  %call18 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.8, ptr noundef nonnull %ip_src, ptr noundef %h_source, i32 noundef %retval.0.i58) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end10.if.end19_crit_edge
  %call.i.i55 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %23 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %log_level, align 4
  %and24 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end19.cleanup_crit_edge, label %if.then26

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i59 = zext i16 %call.i to i32
  %and.i60 = and i32 %conv.i59, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  %and2.i62 = and i32 %conv.i59, 4095
  %retval.0.i63 = select i1 %tobool.not.i61, i32 -1, i32 %and2.i62
  %call29 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.9, ptr noundef nonnull %yiaddr, ptr noundef nonnull %chaddr, i32 noundef %retval.0.i63) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end19.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %yiaddr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_src) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chaddr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_dat_drop_broadcast_packet(ptr noundef %bat_priv, ptr noundef %forw_packet) local_unnamed_addr #0 align 64 {
entry:
  %ip_dst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_dst) #9
  %distributed_arp_table = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table, i32 noundef 4) #9
  %0 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %distributed_arp_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.batadv_dat_entry_put.exit_crit_edge, label %if.end

entry.batadv_dat_entry_put.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @batadv_forw_packet_is_rebroadcast(ptr noundef %forw_packet) #9
  br i1 %call1, label %if.end.batadv_dat_entry_put.exit_crit_edge, label %if.end3

if.end.batadv_dat_entry_put.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.end3:                                          ; preds = %if.end
  %skb = getelementptr inbounds %struct.batadv_forw_packet, ptr %forw_packet, i32 0, i32 4
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %call.i = tail call zeroext i16 @batadv_get_vid(ptr noundef %3, i32 noundef 14) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i)
  %tobool.not.i = icmp sgt i16 %call.i, -1
  %spec.select = select i1 %tobool.not.i, i32 14, i32 18
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %call6 = tail call fastcc zeroext i16 @batadv_arp_get_type(ptr noundef %5, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %call6)
  %cmp.not = icmp eq i16 %call6, 1
  br i1 %cmp.not, label %if.end9, label %if.end3.batadv_dat_entry_put.exit_crit_edge

if.end3.batadv_dat_entry_put.exit_crit_edge:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.end9:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %spec.select
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 22
  %add.ptr1.i = getelementptr i8, ptr %add.ptr1.i.i, i32 16
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr1.i, align 4
  %12 = ptrtoint ptr %ip_dst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ip_dst, align 4
  %call12 = tail call fastcc ptr @batadv_dat_entry_hash_find(ptr noundef %bat_priv, i32 noundef %11, i16 noundef zeroext %call.i)
  %tobool13.not = icmp eq ptr %call12, null
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i43 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %13 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body, label %do.body21

do.body:                                          ; preds = %if.end9
  br i1 %tobool16.not, label %do.body.batadv_dat_entry_put.exit_crit_edge, label %if.then17

do.body.batadv_dat_entry_put.exit_crit_edge:      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.10, ptr noundef nonnull %ip_dst) #9
  br label %batadv_dat_entry_put.exit

do.body21:                                        ; preds = %if.end9
  br i1 %tobool16.not, label %do.body21.if.end.i_crit_edge, label %if.then27

do.body21.if.end.i_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.11, ptr noundef nonnull %ip_dst) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then27, %do.body21.if.end.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %call12, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_dat_entry_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_dat_entry_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %rcu.i.i = getelementptr %struct.batadv_dat_entry, ptr %call12, i32 0, i32 6
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br label %batadv_dat_entry_put.exit

batadv_dat_entry_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge, %if.then17, %do.body.batadv_dat_entry_put.exit_crit_edge, %if.end3.batadv_dat_entry_put.exit_crit_edge, %if.end.batadv_dat_entry_put.exit_crit_edge, %entry.batadv_dat_entry_put.exit_crit_edge
  %ret.0.off052 = phi i1 [ true, %if.end5.i.i.i.i.i.batadv_dat_entry_put.exit_crit_edge ], [ true, %if.then10.i.i.i.i.i ], [ true, %if.then.i.i ], [ false, %if.end.batadv_dat_entry_put.exit_crit_edge ], [ false, %if.end3.batadv_dat_entry_put.exit_crit_edge ], [ false, %entry.batadv_dat_entry_put.exit_crit_edge ], [ false, %if.then17 ], [ false, %do.body.batadv_dat_entry_put.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_dst) #9
  ret i1 %ret.0.off052
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_forw_packet_is_rebroadcast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_register(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_dat_purge(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1380
  tail call fastcc void @__batadv_dat_purge(ptr noundef %add.ptr3, ptr noundef nonnull @batadv_dat_to_purge)
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map.i = getelementptr i8, ptr %work, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @batadv_dat_start_timer.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12.i = getelementptr i8, ptr %work, i32 4
  %1 = ptrtoint ptr %entry12.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry12.i, ptr %entry12.i, align 4
  %prev.i.i = getelementptr i8, ptr %work, i32 8
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry12.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %work, i32 12
  %3 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @batadv_dat_purge, ptr %func.i, align 4
  %timer.i = getelementptr i8, ptr %work, i32 44
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @batadv_dat_start_timer.__key.13) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %4 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef 1000) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__batadv_dat_purge(ptr nocapture noundef readonly %bat_priv, ptr noundef readonly %to_purge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38, i32 1
  %0 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash, align 4
  %size55 = getelementptr inbounds %struct.batadv_hashtable, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size55 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp56.not = icmp eq i32 %5, 0
  br i1 %cmp56.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool15.not = icmp eq ptr %to_purge, null
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %3, %for.body.lr.ph ], [ %24, %for.end.for.body_crit_edge ]
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %8, i32 %i.057
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list_locks, align 4
  %arrayidx7 = getelementptr %struct.spinlock, ptr %10, i32 %i.057
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx7) #9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %12, null
  %add.ptr = getelementptr i8, ptr %12, i32 -16
  %tobool11.not5358 = icmp eq ptr %add.ptr, null
  %tobool11.not53 = or i1 %tobool8.not, %tobool11.not5358
  br i1 %tobool11.not53, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %dat_entry.054 = phi ptr [ %add.ptr25, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hash_entry = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.054, i32 0, i32 4
  %13 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hash_entry, align 4
  br i1 %tobool15.not, label %land.rhs.if.end17_crit_edge, label %land.lhs.true

land.rhs.if.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %land.rhs
  %call = tail call zeroext i1 %to_purge(ptr noundef nonnull %dat_entry.054) #9, !callees !111
  br i1 %call, label %if.end17thread-pre-split, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end17thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %hash_entry to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %hash_entry, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17thread-pre-split, %land.rhs.if.end17_crit_edge
  %16 = phi ptr [ %.pr, %if.end17thread-pre-split ], [ %14, %land.rhs.if.end17_crit_edge ]
  %pprev2.i.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.054, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev2.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %18, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end17.if.end.i_crit_edge, label %do.body13.i.i

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body13.i.i:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %pprev14.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i, %if.end17.if.end.i_crit_edge
  %21 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry.054, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !101
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %rcu.i.i = getelementptr %struct.batadv_dat_entry, ptr %dat_entry.054, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %tobool21.not = icmp eq ptr %14, null
  %add.ptr25 = getelementptr i8, ptr %14, i32 -16
  %tobool11.not59 = icmp eq ptr %add.ptr25, null
  %tobool11.not = or i1 %tobool21.not, %tobool11.not59
  br i1 %tobool11.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx7) #9
  %inc = add nuw i32 %i.057, 1
  %23 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hash, align 4
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @batadv_dat_to_purge(ptr nocapture noundef readonly %dat_entry) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %last_update = getelementptr inbounds %struct.batadv_dat_entry, ptr %dat_entry, i32 0, i32 3
  %0 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_update, align 4
  %add.i = add i32 %1, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  ret i1 %cmp.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hash_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @batadv_get_vid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arp_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_router_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_send_skb_prepare_unicast_4addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_unicast_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_skb_via_tt_generic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %4 = add i32 %3, %offset
  %sub.i4 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4, i32 %len)
  %cmp.not.i = icmp slt i32 %sub.i4, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !99

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %offset
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !99
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !74, !76, !77, !79, !81, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1162, i32 42}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1192, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1212, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1258, i32 42}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1316, i32 42}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1364, i32 42}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1379, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1401, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1774, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1777, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1819, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1824, i32 2}
!24 = !{ptr @batadv_dat_start_timer.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../net/batman-adv/distributed-arp-table.c", i32 104, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @batadv_dat_start_timer.__key.13, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/netlink.h", i32 991, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/batman-adv/distributed-arp-table.c", i32 433, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/batman-adv/distributed-arp-table.c", i32 437, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/batman-adv/distributed-arp-table.c", i32 449, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/batman-adv/distributed-arp-table.c", i32 453, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/batman-adv/distributed-arp-table.c", i32 458, i32 4}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/batman-adv/distributed-arp-table.c", i32 461, i32 4}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/batman-adv/distributed-arp-table.c", i32 464, i32 4}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/batman-adv/distributed-arp-table.c", i32 468, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/batman-adv/distributed-arp-table.c", i32 471, i32 4}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/batman-adv/distributed-arp-table.c", i32 478, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/batman-adv/distributed-arp-table.c", i32 483, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/batman-adv/distributed-arp-table.c", i32 379, i32 3}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/batman-adv/distributed-arp-table.c", i32 407, i32 2}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../net/batman-adv/distributed-arp-table.c", i32 345, i32 2}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/batman-adv/distributed-arp-table.c", i32 690, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/batman-adv/distributed-arp-table.c", i32 650, i32 2}
!76 = !{ptr @__func__.batadv_dat_select_candidates, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/batman-adv/distributed-arp-table.c", i32 584, i32 3}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/batman-adv/distributed-arp-table.c", i32 607, i32 3}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1655, i32 2}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/batman-adv/distributed-arp-table.c", i32 1658, i32 2}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2149731346}
!96 = !{i64 560185, i64 560209, i64 560230, i64 560247, i64 560264}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2149731612}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2148274882}
!101 = !{i64 2148189346, i64 2148189378, i64 2148189407, i64 2148189441, i64 2148189472, i64 2148189495}
!102 = !{i64 2150605893}
!103 = distinct !{null, ptr @batadv_hardif_release, ptr @batadv_neigh_node_release, ptr @batadv_orig_node_release}
!104 = !{i64 638678, i64 638739}
!105 = !{i64 641410}
!106 = !{i64 641695}
!107 = !{i64 2148186881, i64 2148186913, i64 2148186942, i64 2148186976, i64 2148187007, i64 2148187030}
!108 = !{i64 2149832957}
!109 = !{i64 2148185351, i64 2148185377, i64 2148185406, i64 2148185440, i64 2148185471, i64 2148185494}
!110 = !{!"auto-init"}
!111 = !{ptr @batadv_dat_to_purge}
