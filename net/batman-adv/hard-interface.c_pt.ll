; ModuleID = '/llk/IR_all_yes/net/batman-adv/hard-interface.c_pt.bc'
source_filename = "../net/batman-adv/hard-interface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_hardif_neigh_node = type { %struct.hlist_node, [6 x i8], [6 x i8], ptr, i32, %struct.batadv_hardif_neigh_node_bat_v, %struct.kref, %struct.callback_head }
%struct.batadv_hardif_neigh_node_bat_v = type { %struct.ewma_throughput, i32, i32, i32, %struct.work_struct }
%struct.ewma_throughput = type { i32 }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
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

@batadv_hardif_get_by_netdev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@batadv_hardif_list = external dso_local global %struct.list_head, align 4
@batadv_hardif_no_broadcast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@batadv_hardif_no_broadcast.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_hardif_min_mtu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Adding interface: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@batadv_hardif_enable_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016batman_adv: %s: Adding interface: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"batadv_hardif_enable_interface\00", [33 x i8] zeroinitializer }, align 32
@batadv_hardif_enable_interface._entry_ptr = internal global ptr @batadv_hardif_enable_interface._entry, section ".printk_index", align 4
@.str.7 = internal constant { [236 x i8], [52 x i8] } { [236 x i8] c"The MTU of interface %s is too small (%i) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to %i would solve the problem.\0A\00", [52 x i8] zeroinitializer }, align 32
@batadv_hardif_enable_interface._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [254 x i8], [34 x i8] } { [254 x i8] c"\016batman_adv: %s: The MTU of interface %s is too small (%i) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to %i would solve the problem.\0A\00", [34 x i8] zeroinitializer }, align 32
@batadv_hardif_enable_interface._entry_ptr.10 = internal global ptr @batadv_hardif_enable_interface._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [171 x i8], [53 x i8] } { [171 x i8] c"The MTU of interface %s is too small (%i) to handle the transport of batman-adv packets. If you experience problems getting traffic through try increasing the MTU to %i.\0A\00", [53 x i8] zeroinitializer }, align 32
@batadv_hardif_enable_interface._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [189 x i8], [35 x i8] } { [189 x i8] c"\016batman_adv: %s: The MTU of interface %s is too small (%i) to handle the transport of batman-adv packets. If you experience problems getting traffic through try increasing the MTU to %i.\0A\00", [35 x i8] zeroinitializer }, align 32
@batadv_hardif_enable_interface._entry_ptr.14 = internal global ptr @batadv_hardif_enable_interface._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Not using interface %s (retrying later): interface not active\0A\00", [33 x i8] zeroinitializer }, align 32
@batadv_hardif_enable_interface._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013batman_adv: %s: Not using interface %s (retrying later): interface not active\0A\00", [47 x i8] zeroinitializer }, align 32
@batadv_hardif_enable_interface._entry_ptr.18 = internal global ptr @batadv_hardif_enable_interface._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Removing interface: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@batadv_hardif_disable_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016batman_adv: %s: Removing interface: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"batadv_hardif_disable_interface\00", [32 x i8] zeroinitializer }, align 32
@batadv_hardif_disable_interface._entry_ptr = internal global ptr @batadv_hardif_disable_interface._entry, section ".printk_index", align 4
@batadv_hard_if_notifier = dso_local global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @batadv_hard_if_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@batadv_get_real_netdevice.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Interface activated: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@batadv_hardif_activate_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016batman_adv: %s: Interface activated: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"batadv_hardif_activate_interface\00", [63 x i8] zeroinitializer }, align 32
@batadv_hardif_activate_interface._entry_ptr = internal global ptr @batadv_hardif_activate_interface._entry, section ".printk_index", align 4
@batadv_hardif_recalc_extra_skbroom.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Interface deactivated: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@batadv_hardif_deactivate_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016batman_adv: %s: Interface deactivated: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"batadv_hardif_deactivate_interface\00", [61 x i8] zeroinitializer }, align 32
@batadv_hardif_deactivate_interface._entry_ptr = internal global ptr @batadv_hardif_deactivate_interface._entry, section ".printk_index", align 4
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@batadv_hardif_get_active.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_primary_if_select.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@batadv_hardif_cnt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_hardif_generation = external dso_local local_unnamed_addr global i32, align 4
@batadv_hardif_add_interface.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@batadv_hardif_add_interface.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&hard_iface->bat_iv.ogm_buff_mutex\00", [61 x i8] zeroinitializer }, align 32
@batadv_hardif_add_interface.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&hard_iface->neigh_list_lock\00", [35 x i8] zeroinitializer }, align 32
@batadv_is_on_batman_iface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013batman_adv: Cannot find parent device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"batadv_is_on_batman_iface\00", [38 x i8] zeroinitializer }, align 32
@batadv_is_on_batman_iface._entry_ptr = internal global ptr @batadv_is_on_batman_iface._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_hardif_remove_interface.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@batadv_check_known_mac_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_check_known_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014batman_adv: The newly added mac address (%pM) already exists on: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"batadv_check_known_mac_addr\00", [36 x i8] zeroinitializer }, align 32
@batadv_check_known_mac_addr._entry_ptr = internal global ptr @batadv_check_known_mac_addr._entry, section ".printk_index", align 4
@batadv_check_known_mac_addr._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\014batman_adv: It is strongly recommended to keep mac addresses unique to avoid problems!\0A\00", [38 x i8] zeroinitializer }, align 32
@batadv_check_known_mac_addr._entry_ptr.42 = internal global ptr @batadv_check_known_mac_addr._entry.40, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 16]
@__sancov_gen_cov_switch_values.43 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 6, i64 7, i64 8, i64 10, i64 15, i64 21]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 69, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 409, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 727, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 732, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 739, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 747, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 809, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [24 x i8] c"batadv_hard_if_notifier\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1002, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 695, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 723, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 222, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 659, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 680, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 110, i32 15 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 869, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 870, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 173, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 522, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [35 x i8] c"../net/batman-adv/hard-interface.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 524, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @batadv_check_known_mac_addr._entry, ptr @batadv_check_known_mac_addr._entry.40, ptr @batadv_check_known_mac_addr._entry_ptr, ptr @batadv_check_known_mac_addr._entry_ptr.42, ptr @batadv_hardif_activate_interface._entry, ptr @batadv_hardif_activate_interface._entry_ptr, ptr @batadv_hardif_deactivate_interface._entry, ptr @batadv_hardif_deactivate_interface._entry_ptr, ptr @batadv_hardif_disable_interface._entry, ptr @batadv_hardif_disable_interface._entry_ptr, ptr @batadv_hardif_enable_interface._entry, ptr @batadv_hardif_enable_interface._entry.12, ptr @batadv_hardif_enable_interface._entry.16, ptr @batadv_hardif_enable_interface._entry.8, ptr @batadv_hardif_enable_interface._entry_ptr, ptr @batadv_hardif_enable_interface._entry_ptr.10, ptr @batadv_hardif_enable_interface._entry_ptr.14, ptr @batadv_hardif_enable_interface._entry_ptr.18, ptr @batadv_is_on_batman_iface._entry, ptr @batadv_is_on_batman_iface._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @batadv_hard_if_notifier, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @batadv_hardif_add_interface.__key, ptr @.str.33, ptr @batadv_hardif_add_interface.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_enable_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_enable_interface._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 254, i32 288, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 171, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_enable_interface._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 189, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_enable_interface._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_disable_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hard_if_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_activate_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_deactivate_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_add_interface.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hardif_add_interface.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_is_on_batman_iface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_check_known_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_check_known_mac_addr._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_hardif_release(ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -20
  %net_dev = getelementptr i8, ptr %ref, i32 -4
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_put.exit_crit_edge, label %do.body1.i

entry.dev_put.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

do.body1.i:                                       ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %3 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add13.i = add i32 %14, -1
  store i32 %add13.i, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !113

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #10, !srcloc !114
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %entry.dev_put.exit_crit_edge
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %dev_put.exit.if.end_crit_edge, label %do.end

dev_put.exit.if.end_crit_edge:                    ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr i8, ptr %ref, i32 48
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_put.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_hardif_get_by_netdev(ptr noundef readnone %net_dev) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
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
  %.b28 = load i1, ptr @batadv_hardif_get_by_netdev.__warned, align 1
  br i1 %.b28, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_get_by_netdev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.038 = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not39 = icmp eq ptr %hard_iface.038, @batadv_hardif_list
  br i1 %cmp.not39, label %do.end.out_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %hard_iface.040 = phi ptr [ %hard_iface.0, %for.inc.for.body_crit_edge ], [ %hard_iface.038, %do.end.for.body_crit_edge ]
  %net_dev9 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.040, i32 0, i32 4
  %4 = ptrtoint ptr %net_dev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev9, align 4
  %cmp10 = icmp eq ptr %5, %net_dev
  br i1 %cmp10, label %land.lhs.true11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true11:                                  ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.040, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true11
  %8 = phi i32 [ %7, %land.lhs.true11 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
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
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !117

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
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !117

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.out_crit_edge

kref_get_unless_zero.exit.out_crit_edge:          ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %hard_iface.040 to i32
  call void @__asan_load4_noabort(i32 %18)
  %hard_iface.0 = load volatile ptr, ptr %hard_iface.040, align 4
  %cmp.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %kref_get_unless_zero.exit.out_crit_edge, %do.end.out_crit_edge
  %hard_iface.1 = phi ptr [ null, %do.end.out_crit_edge ], [ null, %for.inc.out_crit_edge ], [ %hard_iface.040, %kref_get_unless_zero.exit.out_crit_edge ]
  %call.i29 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i29, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %out
  %call1.i30 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %19 = call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i36 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %hard_iface.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_get_real_netdev(ptr noundef %net_device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #10
  %call = tail call fastcc ptr @batadv_get_real_netdevice(ptr noundef %net_device)
  tail call void @rtnl_unlock() #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_get_real_netdevice(ptr noundef %netdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b77 = load i1, ptr @batadv_get_real_netdevice.__already_done, align 1
  br i1 %.b77, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !117

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_get_real_netdevice.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef 222) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %tobool37.not = icmp eq ptr %netdev, null
  br i1 %tobool37.not, label %if.end29.cleanup_crit_edge, label %if.end39

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %call40 = tail call i32 @dev_get_iflink(ptr noundef nonnull %netdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp eq i32 %call40, 0
  br i1 %cmp, label %do.body1.i, label %if.end42

do.body1.i:                                       ; preds = %if.end39
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %3
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13.i = add i32 %12, 1
  store i32 %add13.i, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !113

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !114
  br label %cleanup

if.end42:                                         ; preds = %if.end39
  %call43 = tail call ptr @batadv_hardif_get_by_netdev(ptr noundef nonnull %netdev)
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %lor.lhs.false

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end42
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %call43, i32 0, i32 7
  %14 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soft_iface, align 4
  %tobool45.not = icmp eq ptr %15, null
  br i1 %tobool45.not, label %lor.lhs.false.if.end.i93_crit_edge, label %if.end47

lor.lhs.false.if.end.i93_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i93

if.end47:                                         ; preds = %lor.lhs.false
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 127
  %16 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_net.i, align 4
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 136
  %18 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i78 = icmp eq ptr %19, null
  br i1 %tobool.not.i78, label %if.end47.land.lhs.true_crit_edge, label %if.end.i

if.end47.land.lhs.true_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end.i:                                         ; preds = %if.end47
  %get_link_net.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %get_link_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_link_net.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.end.i.land.lhs.true_crit_edge, label %batadv_getlink_net.exit

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

batadv_getlink_net.exit:                          ; preds = %if.end.i
  %call.i = tail call ptr %21(ptr noundef nonnull %netdev) #10
  %cmp51 = icmp eq ptr %17, %call.i
  br i1 %cmp51, label %batadv_getlink_net.exit.land.lhs.true_crit_edge, label %batadv_getlink_net.exit.if.end54_crit_edge

batadv_getlink_net.exit.if.end54_crit_edge:       ; preds = %batadv_getlink_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

batadv_getlink_net.exit.land.lhs.true_crit_edge:  ; preds = %batadv_getlink_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %batadv_getlink_net.exit.land.lhs.true_crit_edge, %if.end.i.land.lhs.true_crit_edge, %if.end47.land.lhs.true_crit_edge
  %ifindex = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 17
  %22 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call40)
  %cmp52 = icmp eq i32 %23, %call40
  br i1 %cmp52, label %do.body1.i88, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body1.i88:                                     ; preds = %land.lhs.true
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i80 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 118
  %25 = ptrtoint ptr %pcpu_refcnt.i80 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcpu_refcnt.i80, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i81 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i81 to ptr
  %cpu.i82 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i82, align 4
  %arrayidx.i83 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i83, align 4
  %add.i84 = add i32 %33, %27
  %34 = inttoptr i32 %add.i84 to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add13.i85 = add i32 %36, 1
  store i32 %add13.i85, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i86 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i86)
  %tobool24.not.i87 = icmp eq i32 %and.i.i.i86, 0
  br i1 %tobool24.not.i87, label %if.then28.i89, label %do.body1.i88.dev_hold.exit91_crit_edge, !prof !113

do.body1.i88.dev_hold.exit91_crit_edge:           ; preds = %do.body1.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit91

if.then28.i89:                                    ; preds = %do.body1.i88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_hold.exit91

dev_hold.exit91:                                  ; preds = %if.then28.i89, %do.body1.i88.dev_hold.exit91_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #10, !srcloc !114
  br label %if.end.i93

if.end54:                                         ; preds = %land.lhs.true.if.end54_crit_edge, %batadv_getlink_net.exit.if.end54_crit_edge
  %retval.0.i96 = phi ptr [ %17, %land.lhs.true.if.end54_crit_edge ], [ %call.i, %batadv_getlink_net.exit.if.end54_crit_edge ]
  %call55 = tail call ptr @dev_get_by_index(ptr noundef %retval.0.i96, i32 noundef %call40) #10
  br label %if.end.i93

if.end.i93:                                       ; preds = %if.end54, %dev_hold.exit91, %lor.lhs.false.if.end.i93_crit_edge
  %real_netdev.0.ph = phi ptr [ null, %lor.lhs.false.if.end.i93_crit_edge ], [ %call55, %if.end54 ], [ %netdev, %dev_hold.exit91 ]
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call43, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %net_dev.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %call43, i32 0, i32 4
  %39 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.do.end.i.i.i_crit_edge, label %do.body1.i.i.i.i

if.then.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

do.body1.i.i.i.i:                                 ; preds = %if.then.i.i
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 118
  %42 = ptrtoint ptr %pcpu_refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcpu_refcnt.i.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %50, %44
  %51 = inttoptr i32 %add.i.i.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add13.i.i.i.i = add i32 %53, -1
  store i32 %add13.i.i.i.i, ptr %51, align 4
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then28.i.i.i.i, label %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge, !prof !113

do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i

do.end30.i.i.i.i:                                 ; preds = %if.then28.i.i.i.i, %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #10, !srcloc !114
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end30.i.i.i.i, %if.then.i.i.do.end.i.i.i_crit_edge
  %rcu.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %call43, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %dev_hold.exit, %if.end29.cleanup_crit_edge
  %retval.0 = phi ptr [ %netdev, %dev_hold.exit ], [ null, %if.end29.cleanup_crit_edge ], [ %real_netdev.0.ph, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %real_netdev.0.ph, %if.then10.i.i.i.i.i ], [ %real_netdev.0.ph, %do.end.i.i.i ], [ null, %if.end42.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @batadv_is_cfg80211_hardif(ptr nocapture noundef readonly %hard_iface) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wifi_flags = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 3
  %0 = ptrtoint ptr %wifi_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wifi_flags, align 4
  %and = and i32 %1, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @batadv_is_wifi_hardif(ptr noundef readonly %hard_iface) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hard_iface, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wifi_flags = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 3
  %0 = ptrtoint ptr %wifi_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wifi_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_hardif_no_broadcast(ptr noundef %if_outgoing, ptr noundef readonly %orig_addr, ptr noundef readonly %orig_neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
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
  %neigh_list = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_outgoing, i32 0, i32 12
  %4 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %neigh_list, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b53 = load i1, ptr @batadv_hardif_no_broadcast.__warned, align 1
  br i1 %.b53, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_no_broadcast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 409, ptr noundef nonnull @.str.2) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.out_crit_edge, label %if.end12

do.end8.out_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %do.end8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.end12.do.end28_crit_edge

if.end12.do.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

land.lhs.true20:                                  ; preds = %if.end12
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b5152 = load i1, ptr @batadv_hardif_no_broadcast.__warned.3, align 1
  br i1 %.b5152, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_no_broadcast.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 416, ptr noundef nonnull @.str.2) #10
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %if.end12.do.end28_crit_edge
  %tobool30.not = icmp eq ptr %7, null
  br i1 %tobool30.not, label %if.end32, label %do.end28.out_crit_edge

do.end28.out_crit_edge:                           ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end32:                                         ; preds = %do.end28
  %tobool34.not = icmp eq ptr %orig_addr, null
  br i1 %tobool34.not, label %if.end32.if.else_crit_edge, label %land.lhs.true35

if.end32.if.else_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true35:                                  ; preds = %if.end32
  %orig = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig, align 4
  %10 = ptrtoint ptr %orig_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_addr, align 4
  %xor.i.i.i = xor i32 %11, %9
  %add.ptr.i.i.i = getelementptr %struct.batadv_hardif_neigh_node, ptr %5, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %orig_addr, i32 4
  %14 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %15, %13
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true35.out_crit_edge, label %land.lhs.true35.if.else_crit_edge

land.lhs.true35.if.else_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true35.out_crit_edge:                    ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else:                                          ; preds = %land.lhs.true35.if.else_crit_edge, %if.end32.if.else_crit_edge
  %tobool38.not = icmp eq ptr %orig_neigh, null
  br i1 %tobool38.not, label %if.else.out_crit_edge, label %land.lhs.true39

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true39:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %orig40 = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %orig40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %orig40, align 4
  %18 = ptrtoint ptr %orig_neigh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %orig_neigh, align 4
  %xor.i.i.i54 = xor i32 %19, %17
  %add.ptr.i.i.i55 = getelementptr %struct.batadv_hardif_neigh_node, ptr %5, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i55 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i.i55, align 2
  %add.ptr1.i.i.i56 = getelementptr i8, ptr %orig_neigh, i32 4
  %22 = ptrtoint ptr %add.ptr1.i.i.i56 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i.i.i56, align 2
  %xor37.i.i.i57 = xor i16 %23, %21
  %xor3.i.i.i58 = zext i16 %xor37.i.i.i57 to i32
  %or.i.i.i59 = or i32 %xor.i.i.i54, %xor3.i.i.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i59)
  %cmp.i.i.i60 = icmp eq i32 %or.i.i.i59, 0
  %spec.select = select i1 %cmp.i.i.i60, i32 2, i32 0
  br label %out

out:                                              ; preds = %land.lhs.true39, %if.else.out_crit_edge, %land.lhs.true35.out_crit_edge, %do.end28.out_crit_edge, %do.end8.out_crit_edge
  %ret.0 = phi i32 [ 0, %do.end28.out_crit_edge ], [ 0, %if.else.out_crit_edge ], [ 1, %do.end8.out_crit_edge ], [ 3, %land.lhs.true35.out_crit_edge ], [ %spec.select, %land.lhs.true39 ]
  %call.i61 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i61, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i64

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i64:                                ; preds = %out
  %call1.i62 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i66

land.lhs.true.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i64
  %.b4.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65, label %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, label %if.then.i67

land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i67:                                      ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i67, %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %24 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i68 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i69, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i69, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_hardif_min_mtu(ptr noundef %soft_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
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
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b74 = load i1, ptr @batadv_hardif_min_mtu.__warned, align 1
  br i1 %.b74, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_min_mtu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 584, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.085 = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not86 = icmp eq ptr %hard_iface.085, @batadv_hardif_list
  br i1 %cmp.not86, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %hard_iface.088 = phi ptr [ %hard_iface.0, %for.inc.for.body_crit_edge ], [ %hard_iface.085, %do.end.for.body_crit_edge ]
  %min_mtu.087 = phi i32 [ %min_mtu.1, %for.inc.for.body_crit_edge ], [ 2147483647, %do.end.for.body_crit_edge ]
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.088, i32 0, i32 1
  %4 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_status, align 4
  %.off = add i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %soft_iface19 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.088, i32 0, i32 7
  %6 = ptrtoint ptr %soft_iface19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soft_iface19, align 4
  %cmp20.not = icmp eq ptr %7, %soft_iface
  br i1 %cmp20.not, label %if.end23, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.088, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 %min_mtu.087)
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %if.end18.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %min_mtu.1 = phi i32 [ %min_mtu.087, %if.end18.for.inc_crit_edge ], [ %12, %if.end23 ], [ %min_mtu.087, %for.body.for.inc_crit_edge ]
  %13 = ptrtoint ptr %hard_iface.088 to i32
  call void @__asan_load4_noabort(i32 %13)
  %hard_iface.0 = load volatile ptr, ptr %hard_iface.088, align 4
  %cmp.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %min_mtu.0.lcssa = phi i32 [ 2147483647, %do.end.for.end_crit_edge ], [ %min_mtu.1, %for.inc.for.end_crit_edge ]
  %call.i76 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i76, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i79

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i79:                                ; preds = %for.end
  %call1.i77 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %14 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i83 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i84, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %fragmentation = getelementptr i8, ptr %soft_iface, i32 2324
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fragmentation, i32 noundef 4) #10
  %18 = ptrtoint ptr %fragmentation to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %fragmentation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp36 = icmp eq i32 %19, 0
  %20 = tail call i32 @llvm.smin.i32(i32 %min_mtu.0.lcssa, i32 1280)
  %sub = shl i32 %20, 4
  %mul = add i32 %sub, -320
  %min_mtu.2 = select i1 %cmp36, i32 %min_mtu.0.lcssa, i32 %mul
  %packet_size_max = getelementptr i8, ptr %soft_iface, i32 2328
  %call.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %packet_size_max, i32 noundef 4) #10
  %21 = ptrtoint ptr %packet_size_max to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %min_mtu.2, ptr %packet_size_max, align 4
  %call47 = tail call i32 @batadv_max_header_len() #10
  %sub48 = sub i32 %min_mtu.2, %call47
  %22 = tail call i32 @llvm.smin.i32(i32 %sub48, i32 1500)
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_max_header_len() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_update_min_mtu(ptr noundef %soft_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_hardif_min_mtu(ptr noundef %soft_iface)
  %mtu = getelementptr inbounds %struct.net_device, ptr %soft_iface, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %mtu, align 4
  tail call void @batadv_tt_local_resize_to_mtu(ptr noundef %soft_iface) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tt_local_resize_to_mtu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_hardif_enable_interface(ptr noundef %hard_iface, ptr noundef %soft_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_max_header_len() #10
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 1
  %0 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !122
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !113

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !117

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %tobool.not.i = icmp eq ptr %soft_iface, null
  br i1 %tobool.not.i, label %kref_get.exit.dev_hold.exit_crit_edge, label %do.body1.i

kref_get.exit.dev_hold.exit_crit_edge:            ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %kref_get.exit
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %soft_iface, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, 1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !113

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #10, !srcloc !114
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %kref_get.exit.dev_hold.exit_crit_edge
  %soft_iface2 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %18 = ptrtoint ptr %soft_iface2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %soft_iface, ptr %soft_iface2, align 4
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %19 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev, align 4
  %call5 = tail call i32 @netdev_master_upper_dev_link(ptr noundef %20, ptr noundef %soft_iface, ptr noundef null, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %dev_hold.exit.err_dev_crit_edge

dev_hold.exit.err_dev_crit_edge:                  ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dev

if.end7:                                          ; preds = %dev_hold.exit
  %algo_ops = getelementptr i8, ptr %soft_iface, i32 2640
  %21 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %algo_ops, align 4
  %enable = getelementptr inbounds %struct.batadv_algo_ops, ptr %22, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %enable, align 4
  %call8 = tail call i32 %24(ptr noundef %hard_iface) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %err_upper, label %if.end12

if.end12:                                         ; preds = %if.end7
  %25 = ptrtoint ptr %if_status to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %if_status, align 4
  tail call fastcc void @kref_get(ptr noundef %refcount)
  %batman_adv_ptype = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 6
  %26 = ptrtoint ptr %batman_adv_ptype to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 17157, ptr %batman_adv_ptype, align 4
  %func = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @batadv_batman_skb_recv, ptr %func, align 4
  %28 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_dev, align 4
  %dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %dev, align 4
  tail call void @dev_add_pack(ptr noundef %batman_adv_ptype) #10
  %31 = ptrtoint ptr %soft_iface2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %soft_iface2, align 4
  %log_level = getelementptr i8, ptr %32, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %33 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %34, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end12.if.end27_crit_edge, label %if.then24

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i243 = getelementptr i8, ptr %32, i32 2304
  %35 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net_dev, align 4
  %call26 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i243, ptr noundef nonnull @.str.4, ptr noundef %36) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end12.if.end27_crit_edge
  %37 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %32, ptr noundef %38) #13
  %fragmentation = getelementptr i8, ptr %soft_iface, i32 2324
  %call.i.i238 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fragmentation, i32 noundef 4) #10
  %39 = ptrtoint ptr %fragmentation to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %fragmentation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool40.not = icmp eq i32 %40, 0
  br i1 %tobool40.not, label %if.end27.if.end82_crit_edge, label %land.lhs.true

if.end27.if.end82_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end27
  %41 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 20
  %43 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mtu, align 4
  %add = add i32 %call, 1500
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add)
  %cmp42 = icmp ult i32 %44, %add
  br i1 %cmp42, label %do.body45, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.body45:                                        ; preds = %land.lhs.true
  %45 = ptrtoint ptr %soft_iface2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %soft_iface2, align 4
  %log_level52 = getelementptr i8, ptr %46, i32 2360
  %call.i.i239 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level52, i32 noundef 4) #10
  %47 = ptrtoint ptr %log_level52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %log_level52, align 4
  %and54 = and i32 %48, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body45.if.end64_crit_edge, label %if.then56

do.body45.if.end64_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then56:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i244 = getelementptr i8, ptr %46, i32 2304
  %49 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev, align 4
  %mtu61 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %mtu61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mtu61, align 4
  %call63 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i244, ptr noundef nonnull @.str.7, ptr noundef %50, i32 noundef %52, i32 noundef %add) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then56, %do.body45.if.end64_crit_edge
  %53 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net_dev, align 4
  %mtu77 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 20
  %55 = ptrtoint ptr %mtu77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mtu77, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %46, ptr noundef %54, i32 noundef %56, i32 noundef %add) #13
  br label %if.end82

if.end82:                                         ; preds = %if.end64, %land.lhs.true.if.end82_crit_edge, %if.end27.if.end82_crit_edge
  %call.i.i240 = tail call zeroext i1 @__kasan_check_read(ptr noundef %fragmentation, i32 noundef 4) #10
  %57 = ptrtoint ptr %fragmentation to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %fragmentation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool85.not = icmp eq i32 %58, 0
  br i1 %tobool85.not, label %land.lhs.true86, label %if.end82.if.end130_crit_edge

if.end82.if.end130_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

land.lhs.true86:                                  ; preds = %if.end82
  %59 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net_dev, align 4
  %mtu88 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 20
  %61 = ptrtoint ptr %mtu88 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mtu88, align 4
  %add89 = add i32 %call, 1500
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %add89)
  %cmp90 = icmp ult i32 %62, %add89
  br i1 %cmp90, label %do.body93, label %land.lhs.true86.if.end130_crit_edge

land.lhs.true86.if.end130_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

do.body93:                                        ; preds = %land.lhs.true86
  %63 = ptrtoint ptr %soft_iface2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %soft_iface2, align 4
  %log_level100 = getelementptr i8, ptr %64, i32 2360
  %call.i.i241 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level100, i32 noundef 4) #10
  %65 = ptrtoint ptr %log_level100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %log_level100, align 4
  %and102 = and i32 %66, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %do.body93.if.end112_crit_edge, label %if.then104

do.body93.if.end112_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then104:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i245 = getelementptr i8, ptr %64, i32 2304
  %67 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net_dev, align 4
  %mtu109 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 20
  %69 = ptrtoint ptr %mtu109 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mtu109, align 4
  %call111 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i245, ptr noundef nonnull @.str.11, ptr noundef %68, i32 noundef %70, i32 noundef %add89) #10
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %do.body93.if.end112_crit_edge
  %71 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net_dev, align 4
  %mtu125 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %mtu125 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mtu125, align 4
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %64, ptr noundef %72, i32 noundef %74, i32 noundef %add89) #13
  br label %if.end130

if.end130:                                        ; preds = %if.end112, %land.lhs.true86.if.end130_crit_edge, %if.end82.if.end130_crit_edge
  %75 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %net_dev, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 14
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i246.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i246.not, label %do.body133, label %if.then132

if.then132:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @batadv_hardif_activate_interface(ptr noundef %hard_iface)
  br label %if.end164

do.body133:                                       ; preds = %if.end130
  %79 = ptrtoint ptr %soft_iface2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %soft_iface2, align 4
  %log_level140 = getelementptr i8, ptr %80, i32 2360
  %call.i.i242 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level140, i32 noundef 4) #10
  %81 = ptrtoint ptr %log_level140 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %log_level140, align 4
  %and142 = and i32 %82, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %do.body133.if.end149_crit_edge, label %if.then144

do.body133.if.end149_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then144:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i247 = getelementptr i8, ptr %80, i32 2304
  %83 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net_dev, align 4
  %call148 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i247, ptr noundef nonnull @.str.15, ptr noundef %84) #10
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %do.body133.if.end149_crit_edge
  %85 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %net_dev, align 4
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %80, ptr noundef %86) #13
  br label %if.end164

if.end164:                                        ; preds = %if.end149, %if.then132
  tail call fastcc void @batadv_hardif_recalc_extra_skbroom(ptr noundef %soft_iface)
  %87 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %algo_ops, align 4
  %enabled = getelementptr inbounds %struct.batadv_algo_ops, ptr %88, i32 0, i32 2, i32 2
  %89 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %enabled, align 4
  %tobool167.not = icmp eq ptr %90, null
  br i1 %tobool167.not, label %if.end164.cleanup_crit_edge, label %if.then168

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then168:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %90(ptr noundef %hard_iface) #10
  br label %cleanup

err_upper:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %net_dev, align 4
  tail call void @netdev_upper_dev_unlink(ptr noundef %92, ptr noundef %soft_iface) #10
  br label %err_dev

err_dev:                                          ; preds = %err_upper, %dev_hold.exit.err_dev_crit_edge
  %ret.0 = phi i32 [ %call5, %dev_hold.exit.err_dev_crit_edge ], [ %call8, %err_upper ]
  %93 = ptrtoint ptr %soft_iface2 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %soft_iface2, align 4
  br i1 %tobool.not.i, label %err_dev.dev_put.exit_crit_edge, label %do.body1.i257

err_dev.dev_put.exit_crit_edge:                   ; preds = %err_dev
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

do.body1.i257:                                    ; preds = %err_dev
  %94 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i249 = getelementptr inbounds %struct.net_device, ptr %soft_iface, i32 0, i32 118
  %95 = ptrtoint ptr %pcpu_refcnt.i249 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pcpu_refcnt.i249, align 4
  %97 = ptrtoint ptr %96 to i32
  %98 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i250 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i250 to ptr
  %cpu.i251 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu.i251 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu.i251, align 4
  %arrayidx.i252 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx.i252 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i252, align 4
  %add.i253 = add i32 %103, %97
  %104 = inttoptr i32 %add.i253 to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %add13.i254 = add i32 %106, -1
  store i32 %add13.i254, ptr %104, align 4
  %107 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i255 = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i255)
  %tobool24.not.i256 = icmp eq i32 %and.i.i.i255, 0
  br i1 %tobool24.not.i256, label %if.then28.i258, label %do.body1.i257.do.end30.i259_crit_edge, !prof !113

do.body1.i257.do.end30.i259_crit_edge:            ; preds = %do.body1.i257
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i259

if.then28.i258:                                   ; preds = %do.body1.i257
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i259

do.end30.i259:                                    ; preds = %if.then28.i258, %do.body1.i257.do.end30.i259_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %94) #10, !srcloc !114
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i259, %err_dev.dev_put.exit_crit_edge
  %tobool.not.i260 = icmp eq ptr %hard_iface, null
  br i1 %tobool.not.i260, label %dev_put.exit.cleanup_crit_edge, label %if.end.i

dev_put.exit.cleanup_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %dev_put.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %108 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %109 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %net_dev, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %110, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.do.end.i.i.i_crit_edge, label %do.body1.i.i.i.i

if.then.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

do.body1.i.i.i.i:                                 ; preds = %if.then.i.i
  %111 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 118
  %112 = ptrtoint ptr %pcpu_refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pcpu_refcnt.i.i.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  %115 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i261 = add i32 %120, %114
  %121 = inttoptr i32 %add.i.i.i.i261 to ptr
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %add13.i.i.i.i = add i32 %123, -1
  store i32 %add13.i.i.i.i, ptr %121, align 4
  %124 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i = and i32 %124, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then28.i.i.i.i, label %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge, !prof !113

do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i

do.end30.i.i.i.i:                                 ; preds = %if.then28.i.i.i.i, %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %111) #10, !srcloc !114
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end30.i.i.i.i, %if.then.i.i.do.end.i.i.i_crit_edge
  %rcu.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %dev_put.exit.cleanup_crit_edge, %if.then168, %if.end164.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end164.cleanup_crit_edge ], [ 0, %if.then168 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %dev_put.exit.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %do.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !122
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !113

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !117

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_master_upper_dev_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_batman_skb_recv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_hardif_activate_interface(ptr noundef %hard_iface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 1
  %0 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.batadv_hardif_put.exit_crit_edge

entry.batadv_hardif_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.end:                                           ; preds = %entry
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %2 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %algo_ops = getelementptr i8, ptr %3, i32 2640
  %4 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo_ops, align 4
  %update_mac = getelementptr inbounds %struct.batadv_algo_ops, ptr %5, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %update_mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %update_mac, align 4
  tail call void %7(ptr noundef %hard_iface) #10
  %8 = ptrtoint ptr %if_status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %if_status, align 4
  %call3 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then4, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @batadv_primary_if_select(ptr noundef %add.ptr.i, ptr noundef %hard_iface)
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.end.do.body_crit_edge
  %9 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %soft_iface, align 4
  %log_level = getelementptr i8, ptr %10, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %11 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.if.end13_crit_edge, label %if.then11

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i50 = getelementptr i8, ptr %10, i32 2304
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %13 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev, align 4
  %call12 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i50, ptr noundef nonnull @.str.26, ptr noundef %14) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body.if.end13_crit_edge
  %net_dev19 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %15 = ptrtoint ptr %net_dev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev19, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %10, ptr noundef %16) #13
  %17 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soft_iface, align 4
  %call.i = tail call i32 @batadv_hardif_min_mtu(ptr noundef %18) #10
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %mtu.i, align 4
  tail call void @batadv_tt_local_resize_to_mtu(ptr noundef %18) #10
  %20 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %algo_ops, align 4
  %iface27 = getelementptr inbounds %struct.batadv_algo_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %iface27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iface27, align 4
  %tobool28.not = icmp eq ptr %23, null
  br i1 %tobool28.not, label %if.end13.out_crit_edge, label %if.then29

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %23(ptr noundef %hard_iface) #10
  br label %out

out:                                              ; preds = %if.then29, %if.end13.out_crit_edge
  br i1 %tobool.not, label %out.batadv_hardif_put.exit_crit_edge, label %if.end.i

out.batadv_hardif_put.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %out
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call3, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %net_dev.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %call3, i32 0, i32 4
  %25 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.do.end.i.i.i_crit_edge, label %do.body1.i.i.i.i

if.then.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

do.body1.i.i.i.i:                                 ; preds = %if.then.i.i
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 118
  %28 = ptrtoint ptr %pcpu_refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcpu_refcnt.i.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %36, %30
  %37 = inttoptr i32 %add.i.i.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add13.i.i.i.i = add i32 %39, -1
  store i32 %add13.i.i.i.i, ptr %37, align 4
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then28.i.i.i.i, label %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge, !prof !113

do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i

do.end30.i.i.i.i:                                 ; preds = %if.then28.i.i.i.i, %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #10, !srcloc !114
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end30.i.i.i.i, %if.then.i.i.do.end.i.i.i_crit_edge
  %rcu.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %call3, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %do.end.i.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %out.batadv_hardif_put.exit_crit_edge, %entry.batadv_hardif_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_hardif_recalc_extra_skbroom(ptr noundef writeonly %soft_iface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
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
  %.b92 = load i1, ptr @batadv_hardif_recalc_extra_skbroom.__warned, align 1
  br i1 %.b92, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_recalc_extra_skbroom.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 542, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.0102 = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not103 = icmp eq ptr %hard_iface.0102, @batadv_hardif_list
  br i1 %cmp.not103, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %hard_iface.0107 = phi ptr [ %hard_iface.0, %for.inc.for.body_crit_edge ], [ %hard_iface.0102, %do.end.for.body_crit_edge ]
  %lower_header_len.0106 = phi i16 [ %lower_header_len.1, %for.inc.for.body_crit_edge ], [ 14, %do.end.for.body_crit_edge ]
  %lower_headroom.0105 = phi i16 [ %lower_headroom.1, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %lower_tailroom.0104 = phi i16 [ %lower_tailroom.1, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0107, i32 0, i32 1
  %4 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9 = icmp eq i8 %5, 0
  br i1 %cmp9, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %soft_iface13 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0107, i32 0, i32 7
  %6 = ptrtoint ptr %soft_iface13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soft_iface13, align 4
  %cmp14.not = icmp eq ptr %7, %soft_iface
  br i1 %cmp14.not, label %if.end17, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0107, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len, align 2
  %12 = tail call i16 @llvm.umax.i16(i16 %lower_header_len.0106, i16 %11)
  %needed_headroom27 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 21
  %13 = ptrtoint ptr %needed_headroom27 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %needed_headroom27, align 8
  %15 = tail call i16 @llvm.umax.i16(i16 %lower_headroom.0105, i16 %14)
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 22
  %16 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %needed_tailroom, align 2
  %18 = tail call i16 @llvm.umax.i16(i16 %lower_tailroom.0104, i16 %17)
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %lower_tailroom.1 = phi i16 [ %lower_tailroom.0104, %for.body.for.inc_crit_edge ], [ %lower_tailroom.0104, %if.end12.for.inc_crit_edge ], [ %18, %if.end17 ]
  %lower_headroom.1 = phi i16 [ %lower_headroom.0105, %for.body.for.inc_crit_edge ], [ %lower_headroom.0105, %if.end12.for.inc_crit_edge ], [ %15, %if.end17 ]
  %lower_header_len.1 = phi i16 [ %lower_header_len.0106, %for.body.for.inc_crit_edge ], [ %lower_header_len.0106, %if.end12.for.inc_crit_edge ], [ %12, %if.end17 ]
  %19 = ptrtoint ptr %hard_iface.0107 to i32
  call void @__asan_load4_noabort(i32 %19)
  %hard_iface.0 = load volatile ptr, ptr %hard_iface.0107, align 4
  %cmp.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %lower_tailroom.0.lcssa = phi i16 [ 0, %do.end.for.end_crit_edge ], [ %lower_tailroom.1, %for.inc.for.end_crit_edge ]
  %lower_headroom.0.lcssa = phi i16 [ 0, %do.end.for.end_crit_edge ], [ %lower_headroom.1, %for.inc.for.end_crit_edge ]
  %lower_header_len.0.lcssa = phi i16 [ 14, %do.end.for.end_crit_edge ], [ %lower_header_len.1, %for.inc.for.end_crit_edge ]
  %call.i93 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i93, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i96

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i96:                                ; preds = %for.end
  %call1.i94 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool.not.i95, label %land.lhs.true.i96.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i98

land.lhs.true.i96.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i98:                               ; preds = %land.lhs.true.i96
  %.b4.i97 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i97, label %land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge, label %if.then.i99

land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i99:                                      ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i99, %land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i96.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %20 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i100 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i100 to ptr
  %preempt_count.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i101, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i101, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call64 = tail call i32 @batadv_max_header_len() #10
  %24 = trunc i32 %call64 to i16
  %add = add i16 %lower_headroom.0.lcssa, 6
  %conv67 = add i16 %add, %lower_header_len.0.lcssa
  %add69 = add i16 %conv67, %24
  %needed_headroom71 = getelementptr inbounds %struct.net_device, ptr %soft_iface, i32 0, i32 21
  %25 = ptrtoint ptr %needed_headroom71 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %add69, ptr %needed_headroom71, align 8
  %needed_tailroom72 = getelementptr inbounds %struct.net_device, ptr %soft_iface, i32 0, i32 22
  %26 = ptrtoint ptr %needed_tailroom72 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %lower_tailroom.0.lcssa, ptr %needed_tailroom72, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_hardif_disable_interface(ptr noundef %hard_iface) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call fastcc void @batadv_hardif_deactivate_interface(ptr noundef %hard_iface)
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 1
  %2 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %do.body, label %entry.batadv_hardif_put.exit181_crit_edge

entry.batadv_hardif_put.exit181_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit181

do.body:                                          ; preds = %entry
  %4 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soft_iface, align 4
  %log_level = getelementptr i8, ptr %5, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %6 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end8_crit_edge, label %if.then6

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i67 = getelementptr i8, ptr %5, i32 2304
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i67, ptr noundef nonnull @.str.19, ptr noundef %9) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body.if.end8_crit_edge
  %net_dev14 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %10 = ptrtoint ptr %net_dev14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev14, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %5, ptr noundef %11) #13
  %batman_adv_ptype = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 6
  tail call void @dev_remove_pack(ptr noundef %batman_adv_ptype) #10
  %tobool.not.i = icmp eq ptr %hard_iface, null
  br i1 %tobool.not.i, label %if.end8.batadv_hardif_put.exit_crit_edge, label %if.end.i

if.end8.batadv_hardif_put.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %if.end8
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %13 = ptrtoint ptr %net_dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev14, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.do.end.i.i.i_crit_edge, label %do.body1.i.i.i.i

if.then.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

do.body1.i.i.i.i:                                 ; preds = %if.then.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 118
  %16 = ptrtoint ptr %pcpu_refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i.i.i.i = add i32 %27, -1
  store i32 %add13.i.i.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then28.i.i.i.i, label %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge, !prof !113

do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i

do.end30.i.i.i.i:                                 ; preds = %if.then28.i.i.i.i, %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #10, !srcloc !114
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end30.i.i.i.i, %if.then.i.i.do.end.i.i.i_crit_edge
  %rcu.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %do.end.i.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %if.end8.batadv_hardif_put.exit_crit_edge
  %call20 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %cmp21 = icmp eq ptr %call20, %hard_iface
  br i1 %cmp21, label %if.then23, label %batadv_hardif_put.exit.if.end26_crit_edge

batadv_hardif_put.exit.if.end26_crit_edge:        ; preds = %batadv_hardif_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %batadv_hardif_put.exit
  %29 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %soft_iface, align 4
  %31 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i.i68 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i69 = add i32 %34, 1
  store volatile i32 %add.i.i.i.i69, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i70 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i70, label %if.then23.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then23.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then23
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i71

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i71:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i71, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then23.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i72 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b33.i = load i1, ptr @batadv_hardif_get_active.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_get_active.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 442, ptr noundef nonnull @.str.1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.043.i = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not44.i = icmp eq ptr %hard_iface.043.i, @batadv_hardif_list
  br i1 %cmp.not44.i, label %do.end.i.out.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.out.i_crit_edge:                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %hard_iface.045.i = phi ptr [ %hard_iface.0.i, %for.inc.i.for.body.i_crit_edge ], [ %hard_iface.043.i, %do.end.i.for.body.i_crit_edge ]
  %soft_iface9.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.045.i, i32 0, i32 7
  %35 = ptrtoint ptr %soft_iface9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soft_iface9.i, align 4
  %cmp10.not.i = icmp eq ptr %36, %30
  br i1 %cmp10.not.i, label %if.end12.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i
  %if_status.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.045.i, i32 0, i32 1
  %37 = ptrtoint ptr %if_status.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %if_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %38)
  %cmp13.i = icmp eq i8 %38, 3
  br i1 %cmp13.i, label %land.lhs.true15.i, label %if.end12.i.for.inc.i_crit_edge

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %if.end12.i
  %refcount.i73 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.045.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i73, i32 noundef 4) #10
  %39 = ptrtoint ptr %refcount.i73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %refcount.i73, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true15.i
  %41 = phi i32 [ %40, %land.lhs.true15.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %42 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %41, 1
  %call.i.i.i.i.i.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i73, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %43 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i73, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %45 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i73, ptr %refcount.i73, i32 %44, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i73) #10, !srcloc !116
  %asmresult.i.i.i.i.i.i.i.i75 = extractvalue { i32, i32 } %45, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i75, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %44
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !117

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %46 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %47, 1
  %48 = or i32 %add5.i.i.i.i.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i.i76 = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i.i76, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i77, !prof !117

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i77:                            ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i73, i32 noundef 0) #10
  %49 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i77, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %50 = phi i32 [ %47, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i77 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %50, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, label %kref_get_unless_zero.exit.i.out.i_crit_edge

kref_get_unless_zero.exit.i.out.i_crit_edge:      ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

kref_get_unless_zero.exit.i.for.inc.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, %if.end12.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %51 = ptrtoint ptr %hard_iface.045.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %hard_iface.0.i = load volatile ptr, ptr %hard_iface.045.i, align 4
  %cmp.not.i = icmp eq ptr %hard_iface.0.i, @batadv_hardif_list
  br i1 %cmp.not.i, label %for.inc.i.out.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.out.i_crit_edge:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

out.i:                                            ; preds = %for.inc.i.out.i_crit_edge, %kref_get_unless_zero.exit.i.out.i_crit_edge, %do.end.i.out.i_crit_edge
  %hard_iface.1.i = phi ptr [ null, %do.end.i.out.i_crit_edge ], [ %hard_iface.045.i, %kref_get_unless_zero.exit.i.out.i_crit_edge ], [ null, %for.inc.i.out.i_crit_edge ]
  %call.i34.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i34.i, label %out.i.batadv_hardif_get_active.exit_crit_edge, label %land.lhs.true.i37.i

out.i.batadv_hardif_get_active.exit_crit_edge:    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_get_active.exit

land.lhs.true.i37.i:                              ; preds = %out.i
  %call1.i35.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35.i)
  %tobool.not.i36.i = icmp eq i32 %call1.i35.i, 0
  br i1 %tobool.not.i36.i, label %land.lhs.true.i37.i.batadv_hardif_get_active.exit_crit_edge, label %land.lhs.true2.i39.i

land.lhs.true.i37.i.batadv_hardif_get_active.exit_crit_edge: ; preds = %land.lhs.true.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_get_active.exit

land.lhs.true2.i39.i:                             ; preds = %land.lhs.true.i37.i
  %.b4.i38.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38.i, label %land.lhs.true2.i39.i.batadv_hardif_get_active.exit_crit_edge, label %if.then.i40.i

land.lhs.true2.i39.i.batadv_hardif_get_active.exit_crit_edge: ; preds = %land.lhs.true2.i39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_get_active.exit

if.then.i40.i:                                    ; preds = %land.lhs.true2.i39.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %batadv_hardif_get_active.exit

batadv_hardif_get_active.exit:                    ; preds = %if.then.i40.i, %land.lhs.true2.i39.i.batadv_hardif_get_active.exit_crit_edge, %land.lhs.true.i37.i.batadv_hardif_get_active.exit_crit_edge, %out.i.batadv_hardif_get_active.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %52 = call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i41.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i41.i to ptr
  %preempt_count.i.i.i.i42.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i42.i, align 4
  %sub.i.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i42.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call fastcc void @batadv_primary_if_select(ptr noundef %add.ptr.i, ptr noundef %hard_iface.1.i)
  %tobool.not.i78 = icmp eq ptr %hard_iface.1.i, null
  br i1 %tobool.not.i78, label %batadv_hardif_get_active.exit.if.end26_crit_edge, label %if.end.i83

batadv_hardif_get_active.exit.if.end26_crit_edge: ; preds = %batadv_hardif_get_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end.i83:                                       ; preds = %batadv_hardif_get_active.exit
  %refcount.i79 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.1.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i80 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i79, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  call void @llvm.prefetch.p0(ptr %refcount.i79, i32 1, i32 3, i32 1) #10
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i79, ptr %refcount.i79, i32 1, ptr elementtype(i32) %refcount.i79) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i81 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i81)
  %cmp.i.i.i.i.i82 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i81, 1
  br i1 %cmp.i.i.i.i.i82, label %if.then.i.i89, label %if.end5.i.i.i.i.i85

if.end5.i.i.i.i.i85:                              ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i81)
  %.not.i.i.i.i.i84 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i81, 0
  br i1 %.not.i.i.i.i.i84, label %if.end5.i.i.i.i.i85.if.end26_crit_edge, label %if.then10.i.i.i.i.i86, !prof !117

if.end5.i.i.i.i.i85.if.end26_crit_edge:           ; preds = %if.end5.i.i.i.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then10.i.i.i.i.i86:                            ; preds = %if.end5.i.i.i.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i79, i32 noundef 3) #10
  br label %if.end26

if.then.i.i89:                                    ; preds = %if.end.i83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %net_dev.i.i.i87 = getelementptr %struct.batadv_hard_iface, ptr %hard_iface.1.i, i32 0, i32 4
  %57 = ptrtoint ptr %net_dev.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net_dev.i.i.i87, align 4
  %tobool.not.i.i.i.i88 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i.i88, label %if.then.i.i89.do.end.i.i.i102_crit_edge, label %do.body1.i.i.i.i98

if.then.i.i89.do.end.i.i.i102_crit_edge:          ; preds = %if.then.i.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i102

do.body1.i.i.i.i98:                               ; preds = %if.then.i.i89
  %59 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i90 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 118
  %60 = ptrtoint ptr %pcpu_refcnt.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcpu_refcnt.i.i.i.i90, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i91 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %cpu.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i.i.i.i92, align 4
  %arrayidx.i.i.i.i93 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i.i.i93, align 4
  %add.i.i.i.i94 = add i32 %68, %62
  %69 = inttoptr i32 %add.i.i.i.i94 to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add13.i.i.i.i95 = add i32 %71, -1
  store i32 %add13.i.i.i.i95, ptr %69, align 4
  %72 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i96 = and i32 %72, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i96)
  %tobool24.not.i.i.i.i97 = icmp eq i32 %and.i.i.i.i.i.i96, 0
  br i1 %tobool24.not.i.i.i.i97, label %if.then28.i.i.i.i99, label %do.body1.i.i.i.i98.do.end30.i.i.i.i100_crit_edge, !prof !113

do.body1.i.i.i.i98.do.end30.i.i.i.i100_crit_edge: ; preds = %do.body1.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i100

if.then28.i.i.i.i99:                              ; preds = %do.body1.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i100

do.end30.i.i.i.i100:                              ; preds = %if.then28.i.i.i.i99, %do.body1.i.i.i.i98.do.end30.i.i.i.i100_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #10, !srcloc !114
  br label %do.end.i.i.i102

do.end.i.i.i102:                                  ; preds = %do.end30.i.i.i.i100, %if.then.i.i89.do.end.i.i.i102_crit_edge
  %rcu.i.i.i101 = getelementptr %struct.batadv_hard_iface, ptr %hard_iface.1.i, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i101, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end.i.i.i102, %if.then10.i.i.i.i.i86, %if.end5.i.i.i.i.i85.if.end26_crit_edge, %batadv_hardif_get_active.exit.if.end26_crit_edge, %batadv_hardif_put.exit.if.end26_crit_edge
  %algo_ops = getelementptr i8, ptr %1, i32 2640
  %73 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %algo_ops, align 4
  %disable = getelementptr inbounds %struct.batadv_algo_ops, ptr %74, i32 0, i32 2, i32 3
  %75 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %disable, align 4
  call void %76(ptr noundef %hard_iface) #10
  %77 = ptrtoint ptr %if_status to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %if_status, align 4
  call void @batadv_purge_orig_ref(ptr noundef %add.ptr.i) #10
  call void @batadv_purge_outstanding_packets(ptr noundef %add.ptr.i, ptr noundef %hard_iface) #10
  %78 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %soft_iface, align 4
  %tobool.not.i104 = icmp eq ptr %79, null
  br i1 %tobool.not.i104, label %if.end26.dev_put.exit_crit_edge, label %do.body1.i

if.end26.dev_put.exit_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end26
  %80 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 118
  %81 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcpu_refcnt.i, align 4
  %83 = ptrtoint ptr %82 to i32
  %84 = call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %89, %83
  %90 = inttoptr i32 %add.i to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %add13.i = add i32 %92, -1
  store i32 %add13.i, ptr %90, align 4
  %93 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !113

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %80) #10, !srcloc !114
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end26.dev_put.exit_crit_edge
  %94 = ptrtoint ptr %net_dev14 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %net_dev14, align 4
  %96 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %soft_iface, align 4
  call void @netdev_upper_dev_unlink(ptr noundef %95, ptr noundef %97) #10
  %98 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %soft_iface, align 4
  call fastcc void @batadv_hardif_recalc_extra_skbroom(ptr noundef %99)
  %100 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %soft_iface, align 4
  %102 = call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i.i105 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i.i105 to ptr
  %preempt_count.i.i.i.i.i106 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i.i106, align 4
  %add.i.i.i.i107 = add i32 %105, 1
  store volatile i32 %add.i.i.i.i107, ptr %preempt_count.i.i.i.i.i106, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i108 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i108, label %dev_put.exit.rcu_read_lock.exit.i117_crit_edge, label %land.lhs.true.i.i111

dev_put.exit.rcu_read_lock.exit.i117_crit_edge:   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i117

land.lhs.true.i.i111:                             ; preds = %dev_put.exit
  %call1.i.i109 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i109)
  %tobool.not.i.i110 = icmp eq i32 %call1.i.i109, 0
  br i1 %tobool.not.i.i110, label %land.lhs.true.i.i111.rcu_read_lock.exit.i117_crit_edge, label %land.lhs.true2.i.i113

land.lhs.true.i.i111.rcu_read_lock.exit.i117_crit_edge: ; preds = %land.lhs.true.i.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i117

land.lhs.true2.i.i113:                            ; preds = %land.lhs.true.i.i111
  %.b4.i.i112 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i112, label %land.lhs.true2.i.i113.rcu_read_lock.exit.i117_crit_edge, label %if.then.i.i114

land.lhs.true2.i.i113.rcu_read_lock.exit.i117_crit_edge: ; preds = %land.lhs.true2.i.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i117

if.then.i.i114:                                   ; preds = %land.lhs.true2.i.i113
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit.i117

rcu_read_lock.exit.i117:                          ; preds = %if.then.i.i114, %land.lhs.true2.i.i113.rcu_read_lock.exit.i117_crit_edge, %land.lhs.true.i.i111.rcu_read_lock.exit.i117_crit_edge, %dev_put.exit.rcu_read_lock.exit.i117_crit_edge
  %call.i115 = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %land.lhs.true.i120, label %rcu_read_lock.exit.i117.do.end.i123_crit_edge

rcu_read_lock.exit.i117.do.end.i123_crit_edge:    ; preds = %rcu_read_lock.exit.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i123

land.lhs.true.i120:                               ; preds = %rcu_read_lock.exit.i117
  %call1.i118 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %tobool2.not.i119 = icmp eq i32 %call1.i118, 0
  br i1 %tobool2.not.i119, label %land.lhs.true.i120.do.end.i123_crit_edge, label %land.lhs.true3.i121

land.lhs.true.i120.do.end.i123_crit_edge:         ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i123

land.lhs.true3.i121:                              ; preds = %land.lhs.true.i120
  %.b24.i = load i1, ptr @batadv_hardif_cnt.__warned, align 1
  br i1 %.b24.i, label %land.lhs.true3.i121.do.end.i123_crit_edge, label %if.then.i122

land.lhs.true3.i121.do.end.i123_crit_edge:        ; preds = %land.lhs.true3.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i123

if.then.i122:                                     ; preds = %land.lhs.true3.i121
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_cnt.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 784, ptr noundef nonnull @.str.1) #10
  br label %do.end.i123

do.end.i123:                                      ; preds = %if.then.i122, %land.lhs.true3.i121.do.end.i123_crit_edge, %land.lhs.true.i120.do.end.i123_crit_edge, %rcu_read_lock.exit.i117.do.end.i123_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.034.i = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not35.i = icmp eq ptr %hard_iface.034.i, @batadv_hardif_list
  br i1 %cmp.not35.i, label %do.end.i123.for.end.i_crit_edge, label %do.end.i123.for.body.i128_crit_edge

do.end.i123.for.body.i128_crit_edge:              ; preds = %do.end.i123
  br label %for.body.i128

do.end.i123.for.end.i_crit_edge:                  ; preds = %do.end.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i128:                                    ; preds = %for.body.i128.for.body.i128_crit_edge, %do.end.i123.for.body.i128_crit_edge
  %hard_iface.037.i = phi ptr [ %hard_iface.0.i126, %for.body.i128.for.body.i128_crit_edge ], [ %hard_iface.034.i, %do.end.i123.for.body.i128_crit_edge ]
  %count.036.i = phi i32 [ %spec.select.i, %for.body.i128.for.body.i128_crit_edge ], [ 0, %do.end.i123.for.body.i128_crit_edge ]
  %soft_iface9.i124 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.037.i, i32 0, i32 7
  %106 = ptrtoint ptr %soft_iface9.i124 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %soft_iface9.i124, align 4
  %cmp10.not.i125 = icmp eq ptr %107, %101
  %inc.i = zext i1 %cmp10.not.i125 to i32
  %spec.select.i = add i32 %count.036.i, %inc.i
  %108 = ptrtoint ptr %hard_iface.037.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %hard_iface.0.i126 = load volatile ptr, ptr %hard_iface.037.i, align 4
  %cmp.not.i127 = icmp eq ptr %hard_iface.0.i126, @batadv_hardif_list
  br i1 %cmp.not.i127, label %for.body.i128.for.end.i_crit_edge, label %for.body.i128.for.body.i128_crit_edge

for.body.i128.for.body.i128_crit_edge:            ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i128

for.body.i128.for.end.i_crit_edge:                ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i128.for.end.i_crit_edge, %do.end.i123.for.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %do.end.i123.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i128.for.end.i_crit_edge ]
  %call.i25.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i25.i, label %for.end.i.batadv_hardif_cnt.exit_crit_edge, label %land.lhs.true.i28.i

for.end.i.batadv_hardif_cnt.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_cnt.exit

land.lhs.true.i28.i:                              ; preds = %for.end.i
  %call1.i26.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.batadv_hardif_cnt.exit_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.batadv_hardif_cnt.exit_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_cnt.exit

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.batadv_hardif_cnt.exit_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.batadv_hardif_cnt.exit_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_cnt.exit

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %batadv_hardif_cnt.exit

batadv_hardif_cnt.exit:                           ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.batadv_hardif_cnt.exit_crit_edge, %land.lhs.true.i28.i.batadv_hardif_cnt.exit_crit_edge, %for.end.i.batadv_hardif_cnt.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %109 = call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i32.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i129 = add i32 %112, -1
  store volatile i32 %sub.i.i.i.i129, ptr %preempt_count.i.i.i.i33.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count.0.lcssa.i)
  %cmp34 = icmp ult i32 %count.0.lcssa.i, 2
  br i1 %cmp34, label %if.then36, label %batadv_hardif_cnt.exit.if.end37_crit_edge

batadv_hardif_cnt.exit.if.end37_crit_edge:        ; preds = %batadv_hardif_cnt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then36:                                        ; preds = %batadv_hardif_cnt.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @batadv_gw_check_client_stop(ptr noundef %add.ptr.i) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %batadv_hardif_cnt.exit.if.end37_crit_edge
  %113 = ptrtoint ptr %soft_iface to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %soft_iface, align 4
  br i1 %tobool.not.i, label %if.end37.out_crit_edge, label %if.end.i135

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i135:                                      ; preds = %if.end37
  %refcount.i131 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 5
  %call.i.i.i.i.i.i.i132 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i131, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  call void @llvm.prefetch.p0(ptr %refcount.i131, i32 1, i32 3, i32 1) #10
  %114 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i131, ptr %refcount.i131, i32 1, ptr elementtype(i32) %refcount.i131) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i133 = extractvalue { i32, i32, i32 } %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i133)
  %cmp.i.i.i.i.i134 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i133, 1
  br i1 %cmp.i.i.i.i.i134, label %if.then.i.i141, label %if.end5.i.i.i.i.i137

if.end5.i.i.i.i.i137:                             ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i133)
  %.not.i.i.i.i.i136 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i133, 0
  br i1 %.not.i.i.i.i.i136, label %if.end5.i.i.i.i.i137.out_crit_edge, label %if.then10.i.i.i.i.i138, !prof !117

if.end5.i.i.i.i.i137.out_crit_edge:               ; preds = %if.end5.i.i.i.i.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i.i138:                           ; preds = %if.end5.i.i.i.i.i137
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i131, i32 noundef 3) #10
  br label %out

if.then.i.i141:                                   ; preds = %if.end.i135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %115 = ptrtoint ptr %net_dev14 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %net_dev14, align 4
  %tobool.not.i.i.i.i140 = icmp eq ptr %116, null
  br i1 %tobool.not.i.i.i.i140, label %if.then.i.i141.do.end.i.i.i154_crit_edge, label %do.body1.i.i.i.i150

if.then.i.i141.do.end.i.i.i154_crit_edge:         ; preds = %if.then.i.i141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i154

do.body1.i.i.i.i150:                              ; preds = %if.then.i.i141
  %117 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i142 = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 118
  %118 = ptrtoint ptr %pcpu_refcnt.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pcpu_refcnt.i.i.i.i142, align 4
  %120 = ptrtoint ptr %119 to i32
  %121 = call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i143 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i143 to ptr
  %cpu.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %cpu.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cpu.i.i.i.i144, align 4
  %arrayidx.i.i.i.i145 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %124
  %125 = ptrtoint ptr %arrayidx.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i.i.i.i145, align 4
  %add.i.i.i.i146 = add i32 %126, %120
  %127 = inttoptr i32 %add.i.i.i.i146 to ptr
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %add13.i.i.i.i147 = add i32 %129, -1
  store i32 %add13.i.i.i.i147, ptr %127, align 4
  %130 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i148 = and i32 %130, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i148)
  %tobool24.not.i.i.i.i149 = icmp eq i32 %and.i.i.i.i.i.i148, 0
  br i1 %tobool24.not.i.i.i.i149, label %if.then28.i.i.i.i151, label %do.body1.i.i.i.i150.do.end30.i.i.i.i152_crit_edge, !prof !113

do.body1.i.i.i.i150.do.end30.i.i.i.i152_crit_edge: ; preds = %do.body1.i.i.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i152

if.then28.i.i.i.i151:                             ; preds = %do.body1.i.i.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i152

do.end30.i.i.i.i152:                              ; preds = %if.then28.i.i.i.i151, %do.body1.i.i.i.i150.do.end30.i.i.i.i152_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %117) #10, !srcloc !114
  br label %do.end.i.i.i154

do.end.i.i.i154:                                  ; preds = %do.end30.i.i.i.i152, %if.then.i.i141.do.end.i.i.i154_crit_edge
  %rcu.i.i.i153 = getelementptr %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i153, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %out

out:                                              ; preds = %do.end.i.i.i154, %if.then10.i.i.i.i.i138, %if.end5.i.i.i.i.i137.out_crit_edge, %if.end37.out_crit_edge
  %tobool.not.i156 = icmp eq ptr %call20, null
  br i1 %tobool.not.i156, label %out.batadv_hardif_put.exit181_crit_edge, label %if.end.i161

out.batadv_hardif_put.exit181_crit_edge:          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit181

if.end.i161:                                      ; preds = %out
  %refcount.i157 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call20, i32 0, i32 5
  %call.i.i.i.i.i.i.i158 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i157, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  call void @llvm.prefetch.p0(ptr %refcount.i157, i32 1, i32 3, i32 1) #10
  %131 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i157, ptr %refcount.i157, i32 1, ptr elementtype(i32) %refcount.i157) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i159 = extractvalue { i32, i32, i32 } %131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i159)
  %cmp.i.i.i.i.i160 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i159, 1
  br i1 %cmp.i.i.i.i.i160, label %if.then.i.i167, label %if.end5.i.i.i.i.i163

if.end5.i.i.i.i.i163:                             ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i159)
  %.not.i.i.i.i.i162 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i159, 0
  br i1 %.not.i.i.i.i.i162, label %if.end5.i.i.i.i.i163.batadv_hardif_put.exit181_crit_edge, label %if.then10.i.i.i.i.i164, !prof !117

if.end5.i.i.i.i.i163.batadv_hardif_put.exit181_crit_edge: ; preds = %if.end5.i.i.i.i.i163
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit181

if.then10.i.i.i.i.i164:                           ; preds = %if.end5.i.i.i.i.i163
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i157, i32 noundef 3) #10
  br label %batadv_hardif_put.exit181

if.then.i.i167:                                   ; preds = %if.end.i161
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %net_dev.i.i.i165 = getelementptr %struct.batadv_hard_iface, ptr %call20, i32 0, i32 4
  %132 = ptrtoint ptr %net_dev.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %net_dev.i.i.i165, align 4
  %tobool.not.i.i.i.i166 = icmp eq ptr %133, null
  br i1 %tobool.not.i.i.i.i166, label %if.then.i.i167.do.end.i.i.i180_crit_edge, label %do.body1.i.i.i.i176

if.then.i.i167.do.end.i.i.i180_crit_edge:         ; preds = %if.then.i.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i180

do.body1.i.i.i.i176:                              ; preds = %if.then.i.i167
  %134 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i168 = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 118
  %135 = ptrtoint ptr %pcpu_refcnt.i.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pcpu_refcnt.i.i.i.i168, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i169 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i.i169 to ptr
  %cpu.i.i.i.i170 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %cpu.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cpu.i.i.i.i170, align 4
  %arrayidx.i.i.i.i171 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %141
  %142 = ptrtoint ptr %arrayidx.i.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i.i.i.i171, align 4
  %add.i.i.i.i172 = add i32 %143, %137
  %144 = inttoptr i32 %add.i.i.i.i172 to ptr
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  %add13.i.i.i.i173 = add i32 %146, -1
  store i32 %add13.i.i.i.i173, ptr %144, align 4
  %147 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i174 = and i32 %147, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i174)
  %tobool24.not.i.i.i.i175 = icmp eq i32 %and.i.i.i.i.i.i174, 0
  br i1 %tobool24.not.i.i.i.i175, label %if.then28.i.i.i.i177, label %do.body1.i.i.i.i176.do.end30.i.i.i.i178_crit_edge, !prof !113

do.body1.i.i.i.i176.do.end30.i.i.i.i178_crit_edge: ; preds = %do.body1.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i178

if.then28.i.i.i.i177:                             ; preds = %do.body1.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i178

do.end30.i.i.i.i178:                              ; preds = %if.then28.i.i.i.i177, %do.body1.i.i.i.i176.do.end30.i.i.i.i178_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %134) #10, !srcloc !114
  br label %do.end.i.i.i180

do.end.i.i.i180:                                  ; preds = %do.end30.i.i.i.i178, %if.then.i.i167.do.end.i.i.i180_crit_edge
  %rcu.i.i.i179 = getelementptr %struct.batadv_hard_iface, ptr %call20, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i179, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %batadv_hardif_put.exit181

batadv_hardif_put.exit181:                        ; preds = %do.end.i.i.i180, %if.then10.i.i.i.i.i164, %if.end5.i.i.i.i.i163.batadv_hardif_put.exit181_crit_edge, %out.batadv_hardif_put.exit181_crit_edge, %entry.batadv_hardif_put.exit181_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_hardif_deactivate_interface(ptr nocapture noundef %hard_iface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 1
  %0 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_status, align 4
  %.off = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %if_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %if_status, align 4
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 7
  %3 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_iface, align 4
  %log_level = getelementptr i8, ptr %4, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %5 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %4, i32 2304
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 4
  %call10 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.29, ptr noundef %8) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %net_dev17 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %9 = ptrtoint ptr %net_dev17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev17, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %4, ptr noundef %10) #13
  %11 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soft_iface, align 4
  %call.i = tail call i32 @batadv_hardif_min_mtu(ptr noundef %12) #10
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %mtu.i, align 4
  tail call void @batadv_tt_local_resize_to_mtu(ptr noundef %12) #10
  br label %return

return:                                           ; preds = %if.end11, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 110, ptr noundef nonnull @.str.2) #10
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
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !117

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
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !117

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
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %18 = call i32 @llvm.read_register.i32(metadata !101) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_primary_if_select(ptr noundef %bat_priv, ptr noundef %new_hard_iface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b95 = load i1, ptr @batadv_primary_if_select.__already_done, align 1
  br i1 %.b95, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !117

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_primary_if_select.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 478, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef 478) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %tobool37.not = icmp eq ptr %new_hard_iface, null
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end29
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %new_hard_iface, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !122
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then38.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !113

if.then38.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then38
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end84_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !117

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end84_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then38.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then38.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end84

if.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %primary_if = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 29
  %2 = ptrtoint ptr %primary_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_if, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  %4 = ptrtoint ptr %primary_if to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %primary_if, align 4
  br label %out

if.end84:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end84_crit_edge
  %primary_if97 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 29
  %5 = ptrtoint ptr %primary_if97 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %primary_if97, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  %7 = ptrtoint ptr %primary_if97 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %new_hard_iface, ptr %primary_if97, align 4
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 30
  %8 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %algo_ops, align 4
  %primary_set = getelementptr inbounds %struct.batadv_algo_ops, ptr %9, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %primary_set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %primary_set, align 4
  tail call void %11(ptr noundef nonnull %new_hard_iface) #10
  tail call fastcc void @batadv_primary_if_update_addr(ptr noundef %bat_priv, ptr noundef %6)
  br label %out

out:                                              ; preds = %if.end84, %if.end39
  %12 = phi ptr [ %3, %if.end39 ], [ %6, %if.end84 ]
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %out.batadv_hardif_put.exit_crit_edge, label %if.end.i

out.batadv_hardif_put.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %out
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %12, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %net_dev.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %12, i32 0, i32 4
  %14 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.do.end.i.i.i_crit_edge, label %do.body1.i.i.i.i

if.then.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

do.body1.i.i.i.i:                                 ; preds = %if.then.i.i
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 118
  %17 = ptrtoint ptr %pcpu_refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcpu_refcnt.i.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i96 = add i32 %25, %19
  %26 = inttoptr i32 %add.i.i.i.i96 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add13.i.i.i.i = add i32 %28, -1
  store i32 %add13.i.i.i.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then28.i.i.i.i, label %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge, !prof !113

do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i

do.end30.i.i.i.i:                                 ; preds = %if.then28.i.i.i.i, %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #10, !srcloc !114
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end30.i.i.i.i, %if.then.i.i.do.end.i.i.i_crit_edge
  %rcu.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %12, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %do.end.i.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %out.batadv_hardif_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_purge_orig_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_purge_outstanding_packets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_check_client_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_hard_if_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call1 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef %1) #10
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %event)
  %cond.i = icmp eq i32 %event, 5
  br i1 %cond.i, label %sw.bb.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %call1.i = tail call i32 @batadv_softif_create_vlan(ptr noundef %add.ptr.i.i, i16 noundef zeroext 0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @batadv_hardif_get_by_netdev(ptr noundef %1)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %land.lhs.true.cleanup_crit_edge [
    i32 5, label %land.lhs.true.if.then5_crit_edge
    i32 16, label %land.lhs.true.if.then5_crit_edge142
  ]

land.lhs.true.if.then5_crit_edge142:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true.if.then5_crit_edge, %land.lhs.true.if.then5_crit_edge142
  %call.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then5.if.end29.i_crit_edge

if.then5.if.end29.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.then5
  %.b84.i = load i1, ptr @batadv_hardif_add_interface.__already_done, align 1
  br i1 %.b84.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !117

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_add_interface.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 851, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef 851) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.then5.if.end29.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end29.i.cleanup_crit_edge

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end29.i
  %type.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.not.i.i = icmp eq i16 %6, 1
  br i1 %cmp.not.i.i, label %if.end3.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp5.not.i.i = icmp eq i8 %8, 6
  br i1 %cmp5.not.i.i, label %if.end8.i.i, label %if.end3.i.i.cleanup_crit_edge

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end3.i.i
  %nd_net.i45.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i45.i.i.i, align 4
  %call146.i.i.i = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef %1) #10
  br i1 %call146.i.i.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.if.end.i.i.i_crit_edge

if.end8.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.end8.i.i
  br label %if.end.i.i.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end16.i.i.i.if.end.i.i.i_crit_edge, %if.end8.i.i.if.end.i.i.i_crit_edge
  %11 = phi ptr [ %31, %if.end16.i.i.i.if.end.i.i.i_crit_edge ], [ %10, %if.end8.i.i.if.end.i.i.i_crit_edge ]
  %net_dev.tr47.i.i.i = phi ptr [ %call10.i.i.i, %if.end16.i.i.i.if.end.i.i.i_crit_edge ], [ %1, %if.end8.i.i.if.end.i.i.i_crit_edge ]
  %call2.i.i.i = tail call i32 @dev_get_iflink(ptr noundef %net_dev.tr47.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.if.end39.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.if.end39.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %rtnl_link_ops.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev.tr47.i.i.i, i32 0, i32 136
  %12 = ptrtoint ptr %rtnl_link_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtnl_link_ops.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i, label %if.end4.i.i.i.land.lhs.true.i.i.i_crit_edge, label %if.end.i.i.i.i

if.end4.i.i.i.land.lhs.true.i.i.i_crit_edge:      ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i.i
  %get_link_net.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %get_link_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_link_net.i.i.i.i, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.land.lhs.true.i.i.i_crit_edge, label %batadv_getlink_net.exit.i.i.i

if.end.i.i.i.i.land.lhs.true.i.i.i_crit_edge:     ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

batadv_getlink_net.exit.i.i.i:                    ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = tail call ptr %15(ptr noundef %net_dev.tr47.i.i.i) #10
  %cmp6.i.i.i = icmp eq ptr %11, %call.i.i.i.i
  br i1 %cmp6.i.i.i, label %batadv_getlink_net.exit.i.i.i.land.lhs.true.i.i.i_crit_edge, label %batadv_getlink_net.exit.i.i.i.if.end9.i.i.i_crit_edge

batadv_getlink_net.exit.i.i.i.if.end9.i.i.i_crit_edge: ; preds = %batadv_getlink_net.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i.i

batadv_getlink_net.exit.i.i.i.land.lhs.true.i.i.i_crit_edge: ; preds = %batadv_getlink_net.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %batadv_getlink_net.exit.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.end.i.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.end4.i.i.i.land.lhs.true.i.i.i_crit_edge
  %ifindex.i.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev.tr47.i.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i.i.i, i32 %17)
  %cmp7.i.i.i = icmp eq i32 %call2.i.i.i, %17
  br i1 %cmp7.i.i.i, label %land.lhs.true.i.i.i.if.end39.i_crit_edge, label %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i.i

land.lhs.true.i.i.i.if.end39.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.end9.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge, %batadv_getlink_net.exit.i.i.i.if.end9.i.i.i_crit_edge
  %retval.0.i42.i.i.i = phi ptr [ %11, %land.lhs.true.i.i.i.if.end9.i.i.i_crit_edge ], [ %call.i.i.i.i, %batadv_getlink_net.exit.i.i.i.if.end9.i.i.i_crit_edge ]
  %call10.i.i.i = tail call ptr @__dev_get_by_index(ptr noundef %retval.0.i42.i.i.i, i32 noundef %call2.i.i.i) #10
  %tobool.not.i.i.i = icmp eq ptr %call10.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end13.i.i.i

do.end.i.i.i:                                     ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %if.end39.i

if.end13.i.i.i:                                   ; preds = %if.end9.i.i.i
  %call.i36.i.i.i = tail call i32 @dev_get_iflink(ptr noundef %net_dev.tr47.i.i.i) #10
  %call1.i.i.i.i = tail call i32 @dev_get_iflink(ptr noundef nonnull %call10.i.i.i) #10
  %18 = ptrtoint ptr %rtnl_link_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtnl_link_ops.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end13.i.i.i.batadv_getlink_net.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.end13.i.i.i.batadv_getlink_net.exit.i.i.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_getlink_net.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end13.i.i.i
  %get_link_net.i.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %get_link_net.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_link_net.i.i.i.i.i, align 4
  %tobool2.not.i.i.i.i.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.batadv_getlink_net.exit.i.i.i.i_crit_edge, label %if.end4.i.i.i.i.i

if.end.i.i.i.i.i.batadv_getlink_net.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_getlink_net.exit.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i = tail call ptr %21(ptr noundef %net_dev.tr47.i.i.i) #10
  br label %batadv_getlink_net.exit.i.i.i.i

batadv_getlink_net.exit.i.i.i.i:                  ; preds = %if.end4.i.i.i.i.i, %if.end.i.i.i.i.i.batadv_getlink_net.exit.i.i.i.i_crit_edge, %if.end13.i.i.i.batadv_getlink_net.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %call.i.i.i.i.i, %if.end4.i.i.i.i.i ], [ %11, %if.end13.i.i.i.batadv_getlink_net.exit.i.i.i.i_crit_edge ], [ %11, %if.end.i.i.i.i.i.batadv_getlink_net.exit.i.i.i.i_crit_edge ]
  %rtnl_link_ops.i23.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call10.i.i.i, i32 0, i32 136
  %22 = ptrtoint ptr %rtnl_link_ops.i23.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtnl_link_ops.i23.i.i.i.i, align 4
  %tobool.not.i24.i.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i24.i.i.i.i, label %batadv_getlink_net.exit.i.i.i.i.batadv_getlink_net.exit31.i.i.i.i_crit_edge, label %if.end.i27.i.i.i.i

batadv_getlink_net.exit.i.i.i.i.batadv_getlink_net.exit31.i.i.i.i_crit_edge: ; preds = %batadv_getlink_net.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_getlink_net.exit31.i.i.i.i

if.end.i27.i.i.i.i:                               ; preds = %batadv_getlink_net.exit.i.i.i.i
  %get_link_net.i25.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %get_link_net.i25.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_link_net.i25.i.i.i.i, align 4
  %tobool2.not.i26.i.i.i.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i26.i.i.i.i, label %if.end.i27.i.i.i.i.batadv_getlink_net.exit31.i.i.i.i_crit_edge, label %if.end4.i29.i.i.i.i

if.end.i27.i.i.i.i.batadv_getlink_net.exit31.i.i.i.i_crit_edge: ; preds = %if.end.i27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_getlink_net.exit31.i.i.i.i

if.end4.i29.i.i.i.i:                              ; preds = %if.end.i27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i28.i.i.i.i = tail call ptr %25(ptr noundef nonnull %call10.i.i.i) #10
  br label %batadv_getlink_net.exit31.i.i.i.i

batadv_getlink_net.exit31.i.i.i.i:                ; preds = %if.end4.i29.i.i.i.i, %if.end.i27.i.i.i.i.batadv_getlink_net.exit31.i.i.i.i_crit_edge, %batadv_getlink_net.exit.i.i.i.i.batadv_getlink_net.exit31.i.i.i.i_crit_edge
  %retval.0.i30.i.i.i.i = phi ptr [ %call.i28.i.i.i.i, %if.end4.i29.i.i.i.i ], [ %retval.0.i42.i.i.i, %batadv_getlink_net.exit.i.i.i.i.batadv_getlink_net.exit31.i.i.i.i_crit_edge ], [ %retval.0.i42.i.i.i, %if.end.i27.i.i.i.i.batadv_getlink_net.exit31.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.i.i)
  %tobool.not.i37.i.i.i = icmp eq i32 %call.i36.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %tobool.not.i37.i.i.i, i1 true, i1 %tobool4.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %batadv_getlink_net.exit31.i.i.i.i.if.end16.i.i.i_crit_edge, label %if.end.i38.i.i.i

batadv_getlink_net.exit31.i.i.i.i.if.end16.i.i.i_crit_edge: ; preds = %batadv_getlink_net.exit31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i.i

if.end.i38.i.i.i:                                 ; preds = %batadv_getlink_net.exit31.i.i.i.i
  %ifindex.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call10.i.i.i, i32 0, i32 17
  %26 = ptrtoint ptr %ifindex.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i36.i.i.i, i32 %27)
  %cmp.i.i.i.i = icmp eq i32 %call.i36.i.i.i, %27
  br i1 %cmp.i.i.i.i, label %batadv_mutual_parents.exit.i.i.i, label %if.end.i38.i.i.i.if.end16.i.i.i_crit_edge

if.end.i38.i.i.i.if.end16.i.i.i_crit_edge:        ; preds = %if.end.i38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i.i

batadv_mutual_parents.exit.i.i.i:                 ; preds = %if.end.i38.i.i.i
  %ifindex5.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev.tr47.i.i.i, i32 0, i32 17
  %28 = ptrtoint ptr %ifindex5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ifindex5.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i.i.i, i32 %29)
  %cmp6.i.i.i.i = icmp eq i32 %call1.i.i.i.i, %29
  %cmp.i.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, %retval.0.i42.i.i.i
  %or.cond34.i.i.i.i = select i1 %cmp6.i.i.i.i, i1 %cmp.i.not.i.i.i.i, i1 false
  %cmp.i32.i.i.i.i = icmp eq ptr %retval.0.i30.i.i.i.i, %11
  %spec.select.i.i.i.i = select i1 %or.cond34.i.i.i.i, i1 %cmp.i32.i.i.i.i, i1 false
  br i1 %spec.select.i.i.i.i, label %batadv_mutual_parents.exit.i.i.i.if.end39.i_crit_edge, label %batadv_mutual_parents.exit.i.i.i.if.end16.i.i.i_crit_edge

batadv_mutual_parents.exit.i.i.i.if.end16.i.i.i_crit_edge: ; preds = %batadv_mutual_parents.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i.i

batadv_mutual_parents.exit.i.i.i.if.end39.i_crit_edge: ; preds = %batadv_mutual_parents.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.end16.i.i.i:                                   ; preds = %batadv_mutual_parents.exit.i.i.i.if.end16.i.i.i_crit_edge, %if.end.i38.i.i.i.if.end16.i.i.i_crit_edge, %batadv_getlink_net.exit31.i.i.i.i.if.end16.i.i.i_crit_edge
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call10.i.i.i, i32 0, i32 127
  %30 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %call1.i.i.i = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call10.i.i.i) #10
  br i1 %call1.i.i.i, label %if.end16.i.i.i.cleanup_crit_edge, label %if.end16.i.i.i.if.end.i.i.i_crit_edge

if.end16.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end16.i.i.i.cleanup_crit_edge:                 ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39.i:                                       ; preds = %batadv_mutual_parents.exit.i.i.i.if.end39.i_crit_edge, %do.end.i.i.i, %land.lhs.true.i.i.i.if.end39.i_crit_edge, %if.end.i.i.i.if.end39.i_crit_edge
  %tobool.not.i85.i = icmp eq ptr %1, null
  br i1 %tobool.not.i85.i, label %dev_hold.exit.i, label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.end39.i
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %33 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add13.i.i = add i32 %44, 1
  store i32 %add13.i.i, ptr %42, align 4
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.thread.i_crit_edge, !prof !113

do.body1.i.i.dev_hold.exit.thread.i_crit_edge:    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_hold.exit.thread.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_hold.exit.thread.i

dev_hold.exit.i:                                  ; preds = %if.end39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 2848, i32 noundef 512) #14
  %tobool41.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool41.not.i, label %dev_hold.exit.i.cleanup_crit_edge, label %dev_hold.exit.i.if.end43.i_crit_edge

dev_hold.exit.i.if.end43.i_crit_edge:             ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

dev_hold.exit.i.cleanup_crit_edge:                ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dev_hold.exit.thread.i:                           ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.thread.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #10, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i110.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 2848, i32 noundef 512) #14
  %tobool41.not111.i = icmp eq ptr %call7.i.i110.i, null
  br i1 %tobool41.not111.i, label %do.body1.i106.i, label %dev_hold.exit.thread.i.if.end43.i_crit_edge

dev_hold.exit.thread.i.if.end43.i_crit_edge:      ; preds = %dev_hold.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.end43.i:                                       ; preds = %dev_hold.exit.thread.i.if.end43.i_crit_edge, %dev_hold.exit.i.if.end43.i_crit_edge
  %call7.i.i112.i = phi ptr [ %call7.i.i110.i, %dev_hold.exit.thread.i.if.end43.i_crit_edge ], [ %call7.i.i.i, %dev_hold.exit.i.if.end43.i_crit_edge ]
  %net_dev44.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 4
  %48 = ptrtoint ptr %net_dev44.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %1, ptr %net_dev44.i, align 8
  %soft_iface.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 7
  %49 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %soft_iface.i, align 8
  %if_status.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 1
  %50 = ptrtoint ptr %if_status.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %if_status.i, align 8
  %51 = ptrtoint ptr %call7.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call7.i.i112.i, ptr %call7.i.i112.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i112.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i112.i, ptr %prev.i.i, align 4
  %neigh_list.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 12
  %53 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %neigh_list.i, align 8
  %ogm_buff_mutex.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 10, i32 3
  tail call void @__mutex_init(ptr noundef %ogm_buff_mutex.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @batadv_hardif_add_interface.__key) #10
  %neigh_list_lock.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %neigh_list_lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @batadv_hardif_add_interface.__key.34, i16 noundef signext 3) #10
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 5
  %call.i.i.i.i86.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %54 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 1, ptr %refcount.i, align 4
  %num_bcasts.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 2
  %55 = ptrtoint ptr %num_bcasts.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %num_bcasts.i, align 1
  br i1 %tobool.not.i85.i, label %if.end43.i.batadv_is_cfg80211_netdev.exit.thread.i.i_crit_edge, label %batadv_is_wext_netdev.exit.i.i

if.end43.i.batadv_is_cfg80211_netdev.exit.thread.i.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_is_cfg80211_netdev.exit.thread.i.i

batadv_is_wext_netdev.exit.i.i:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %wireless_handlers.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 42
  %56 = ptrtoint ptr %wireless_handlers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wireless_handlers.i.i.i, align 8
  %tobool1.not.i.not.i.i = icmp ne ptr %57, null
  %spec.select.i.i = zext i1 %tobool1.not.i.not.i.i to i32
  %ieee80211_ptr.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %58 = ptrtoint ptr %ieee80211_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ieee80211_ptr.i.i.i, align 16
  %tobool1.not.i34.not.i.i = icmp eq ptr %59, null
  %or3.i.i = or i32 %spec.select.i.i, 2
  %spec.select53.i.i = select i1 %tobool1.not.i34.not.i.i, i32 %spec.select.i.i, i32 %or3.i.i
  br label %batadv_is_cfg80211_netdev.exit.thread.i.i

batadv_is_cfg80211_netdev.exit.thread.i.i:        ; preds = %batadv_is_wext_netdev.exit.i.i, %if.end43.i.batadv_is_cfg80211_netdev.exit.thread.i.i_crit_edge
  %60 = phi i32 [ 0, %if.end43.i.batadv_is_cfg80211_netdev.exit.thread.i.i_crit_edge ], [ %spec.select53.i.i, %batadv_is_wext_netdev.exit.i.i ]
  %call5.i.i = tail call fastcc ptr @batadv_get_real_netdevice(ptr noundef %1) #10
  %tobool.not.i88.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i88.i, label %batadv_is_cfg80211_netdev.exit.thread.i.i.batadv_is_wifi_hardif.exit.i_crit_edge, label %if.end7.i.i

batadv_is_cfg80211_netdev.exit.thread.i.i.batadv_is_wifi_hardif.exit.i_crit_edge: ; preds = %batadv_is_cfg80211_netdev.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_is_wifi_hardif.exit.i

if.end7.i.i:                                      ; preds = %batadv_is_cfg80211_netdev.exit.thread.i.i
  %cmp.i.i = icmp eq ptr %call5.i.i, %1
  br i1 %cmp.i.i, label %if.end7.i.i.do.body1.i.i.i_crit_edge, label %batadv_is_cfg80211_netdev.exit48.i.i

if.end7.i.i.do.body1.i.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i.i.i

batadv_is_cfg80211_netdev.exit48.i.i:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wireless_handlers.i38.i.i = getelementptr inbounds %struct.net_device, ptr %call5.i.i, i32 0, i32 42
  %61 = ptrtoint ptr %wireless_handlers.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wireless_handlers.i38.i.i, align 8
  %tobool1.not.i39.not.i.i = icmp eq ptr %62, null
  %or12.i.i = or i32 %60, 4
  %spec.select31.i.i = select i1 %tobool1.not.i39.not.i.i, i32 %60, i32 %or12.i.i
  %ieee80211_ptr.i44.i.i = getelementptr inbounds %struct.net_device, ptr %call5.i.i, i32 0, i32 82
  %63 = ptrtoint ptr %ieee80211_ptr.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ieee80211_ptr.i44.i.i, align 16
  %tobool1.not.i45.not.i.i = icmp eq ptr %64, null
  %or16.i.i = or i32 %spec.select31.i.i, 8
  %spec.select32.i.i = select i1 %tobool1.not.i45.not.i.i, i32 %spec.select31.i.i, i32 %or16.i.i
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %batadv_is_cfg80211_netdev.exit48.i.i, %if.end7.i.i.do.body1.i.i.i_crit_edge
  %wifi_flags.3.i.i = phi i32 [ %60, %if.end7.i.i.do.body1.i.i.i_crit_edge ], [ %spec.select32.i.i, %batadv_is_cfg80211_netdev.exit48.i.i ]
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %call5.i.i, i32 0, i32 118
  %66 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i89.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i89.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %74, %68
  %75 = inttoptr i32 %add.i.i.i to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add13.i.i.i = add i32 %77, -1
  store i32 %add13.i.i.i, ptr %75, align 4
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !113

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #10, !srcloc !114
  br label %batadv_is_wifi_hardif.exit.i

batadv_is_wifi_hardif.exit.i:                     ; preds = %dev_put.exit.i.i, %batadv_is_cfg80211_netdev.exit.thread.i.i.batadv_is_wifi_hardif.exit.i_crit_edge
  %retval.0.i90.i = phi i32 [ %wifi_flags.3.i.i, %dev_put.exit.i.i ], [ %60, %batadv_is_cfg80211_netdev.exit.thread.i.i.batadv_is_wifi_hardif.exit.i_crit_edge ]
  %wifi_flags.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 3
  %79 = ptrtoint ptr %wifi_flags.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i90.i, ptr %wifi_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i90.i)
  %cmp.i92.not.i = icmp eq i32 %retval.0.i90.i, 0
  br i1 %cmp.i92.not.i, label %batadv_is_wifi_hardif.exit.i.if.end56.i_crit_edge, label %if.then54.i

batadv_is_wifi_hardif.exit.i.if.end56.i_crit_edge: ; preds = %batadv_is_wifi_hardif.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

if.then54.i:                                      ; preds = %batadv_is_wifi_hardif.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %num_bcasts.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 3, ptr %num_bcasts.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %batadv_is_wifi_hardif.exit.i.if.end56.i_crit_edge
  %hop_penalty.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call7.i.i112.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hop_penalty.i, i32 noundef 4) #10
  %81 = ptrtoint ptr %hop_penalty.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 0, ptr %hop_penalty.i, align 4
  tail call void @batadv_v_hardif_init(ptr noundef nonnull %call7.i.i112.i) #10
  %82 = ptrtoint ptr %net_dev44.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %net_dev44.i, align 8
  tail call fastcc void @batadv_check_known_mac_addr(ptr noundef %83) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !122
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end56.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !113

if.end56.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end56.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %85 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %.not.i.i.i.i.i = icmp sgt i32 %85, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !117

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end56.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end56.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @batadv_hardif_list, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @batadv_hardif_list, i32 0, i32 1), align 4
  %call.i.i95.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i112.i, ptr noundef %86, ptr noundef nonnull @batadv_hardif_list) #10
  br i1 %call.i.i95.i, label %if.end.i.i96.i, label %kref_get.exit.i.list_add_tail_rcu.exit.i_crit_edge

kref_get.exit.i.list_add_tail_rcu.exit.i_crit_edge: ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit.i

if.end.i.i96.i:                                   ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %call7.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @batadv_hardif_list, ptr %call7.i.i112.i, align 8
  %88 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %prev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !124
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call7.i.i112.i, ptr %86, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @batadv_hardif_list, i32 0, i32 1) to i32))
  store ptr %call7.i.i112.i, ptr getelementptr inbounds (%struct.list_head, ptr @batadv_hardif_list, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit.i

list_add_tail_rcu.exit.i:                         ; preds = %if.end.i.i96.i, %kref_get.exit.i.list_add_tail_rcu.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_generation to i32))
  %90 = load i32, ptr @batadv_hardif_generation, align 4
  %inc.i = add i32 %90, 1
  store i32 %inc.i, ptr @batadv_hardif_generation, align 4
  br label %if.end10

do.body1.i106.i:                                  ; preds = %dev_hold.exit.thread.i
  %91 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %92 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i99.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i99.i to ptr
  %cpu.i100.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %cpu.i100.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cpu.i100.i, align 4
  %arrayidx.i101.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx.i101.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i101.i, align 4
  %add.i102.i = add i32 %100, %94
  %101 = inttoptr i32 %add.i102.i to ptr
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add13.i103.i = add i32 %103, -1
  store i32 %add13.i103.i, ptr %101, align 4
  %104 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i104.i = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i104.i)
  %tobool24.not.i105.i = icmp eq i32 %and.i.i.i104.i, 0
  br i1 %tobool24.not.i105.i, label %if.then28.i107.i, label %do.body1.i106.i.do.end30.i108.i_crit_edge, !prof !113

do.body1.i106.i.do.end30.i108.i_crit_edge:        ; preds = %do.body1.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i108.i

if.then28.i107.i:                                 ; preds = %do.body1.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i108.i

do.end30.i108.i:                                  ; preds = %if.then28.i107.i, %do.body1.i106.i.do.end30.i108.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #10, !srcloc !114
  br label %cleanup

if.end10:                                         ; preds = %list_add_tail_rcu.exit.i, %if.end.if.end10_crit_edge
  %hard_iface.0 = phi ptr [ %call3, %if.end.if.end10_crit_edge ], [ %call7.i.i112.i, %list_add_tail_rcu.exit.i ]
  %105 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %event, label %if.end10.if.end.i103_crit_edge [
    i32 1, label %sw.bb
    i32 10, label %if.end10.sw.bb11_crit_edge
    i32 2, label %if.end10.sw.bb11_crit_edge143
    i32 6, label %if.end10.sw.bb12_crit_edge
    i32 15, label %if.end10.sw.bb12_crit_edge144
    i32 7, label %sw.bb13
    i32 8, label %sw.bb18
    i32 21, label %sw.bb34
  ]

if.end10.sw.bb12_crit_edge144:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.end10.sw.bb12_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.end10.sw.bb11_crit_edge143:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

if.end10.sw.bb11_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

if.end10.if.end.i103_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i103

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @batadv_hardif_activate_interface(ptr noundef nonnull %hard_iface.0)
  br label %if.end.i103

sw.bb11:                                          ; preds = %if.end10.sw.bb11_crit_edge, %if.end10.sw.bb11_crit_edge143
  tail call fastcc void @batadv_hardif_deactivate_interface(ptr noundef nonnull %hard_iface.0)
  br label %if.end.i103

sw.bb12:                                          ; preds = %if.end10.sw.bb12_crit_edge, %if.end10.sw.bb12_crit_edge144
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %hard_iface.0) #10
  br i1 %call.i.i, label %if.end.i.i70, label %sw.bb12.list_del_rcu.exit_crit_edge

sw.bb12.list_del_rcu.exit_crit_edge:              ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i70:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i69 = getelementptr inbounds %struct.list_head, ptr %hard_iface.0, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i69 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i69, align 4
  %108 = ptrtoint ptr %hard_iface.0 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hard_iface.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i70, %sw.bb12.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %hard_iface.0, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_generation to i32))
  %113 = load i32, ptr @batadv_hardif_generation, align 4
  %inc = add i32 %113, 1
  store i32 %inc, ptr @batadv_hardif_generation, align 4
  %call.i71 = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %land.rhs.i73, label %list_del_rcu.exit.if.end29.i76_crit_edge

list_del_rcu.exit.if.end29.i76_crit_edge:         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i76

land.rhs.i73:                                     ; preds = %list_del_rcu.exit
  %.b53.i = load i1, ptr @batadv_hardif_remove_interface.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i73.if.end29.i76_crit_edge, label %if.then.i74, !prof !117

land.rhs.i73.if.end29.i76_crit_edge:              ; preds = %land.rhs.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i76

if.then.i74:                                      ; preds = %land.rhs.i73
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_hardif_remove_interface.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 897, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef 897) #10
  br label %if.end29.i76

if.end29.i76:                                     ; preds = %if.then.i74, %land.rhs.i73.if.end29.i76_crit_edge, %list_del_rcu.exit.if.end29.i76_crit_edge
  %if_status.i75 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 1
  %114 = ptrtoint ptr %if_status.i75 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %if_status.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp.not.i = icmp eq i8 %115, 0
  br i1 %cmp.not.i, label %if.end29.i76.if.end.i.i79_crit_edge, label %if.end39.i77

if.end29.i76.if.end.i.i79_crit_edge:              ; preds = %if.end29.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i79

if.end39.i77:                                     ; preds = %if.end29.i76
  tail call void @batadv_hardif_disable_interface(ptr noundef nonnull %hard_iface.0) #10
  %116 = ptrtoint ptr %if_status.i75 to i32
  call void @__asan_load1_noabort(i32 %116)
  %.pr.i = load i8, ptr %if_status.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp42.not.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp42.not.i, label %if.end39.i77.if.end.i.i79_crit_edge, label %if.end39.i77.if.end.i103_crit_edge

if.end39.i77.if.end.i103_crit_edge:               ; preds = %if.end39.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i103

if.end39.i77.if.end.i.i79_crit_edge:              ; preds = %if.end39.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i79

if.end.i.i79:                                     ; preds = %if.end39.i77.if.end.i.i79_crit_edge, %if.end29.i76.if.end.i.i79_crit_edge
  %117 = ptrtoint ptr %if_status.i75 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %if_status.i75, align 4
  %refcount.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %118 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end.i103_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.i.if.end.i103_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i103

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %if.end.i103

if.then.i.i.i:                                    ; preds = %if.end.i.i79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %net_dev.i.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 4
  %119 = ptrtoint ptr %net_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net_dev.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i80 = icmp eq ptr %120, null
  br i1 %tobool.not.i.i.i.i.i80, label %if.then.i.i.i.do.end.i.i.i.i_crit_edge, label %do.body1.i.i.i.i.i

if.then.i.i.i.do.end.i.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i.i

do.body1.i.i.i.i.i:                               ; preds = %if.then.i.i.i
  %121 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 118
  %122 = ptrtoint ptr %pcpu_refcnt.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcpu_refcnt.i.i.i.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  %125 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %128
  %129 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i81 = add i32 %130, %124
  %131 = inttoptr i32 %add.i.i.i.i.i81 to ptr
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %add13.i.i.i.i.i = add i32 %133, -1
  store i32 %add13.i.i.i.i.i, ptr %131, align 4
  %134 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i.i = and i32 %134, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i.i, label %if.then28.i.i.i.i.i, label %do.body1.i.i.i.i.i.do.end30.i.i.i.i.i_crit_edge, !prof !113

do.body1.i.i.i.i.i.do.end30.i.i.i.i.i_crit_edge:  ; preds = %do.body1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i.i

if.then28.i.i.i.i.i:                              ; preds = %do.body1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i.i

do.end30.i.i.i.i.i:                               ; preds = %if.then28.i.i.i.i.i, %do.body1.i.i.i.i.i.do.end30.i.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #10, !srcloc !114
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.end30.i.i.i.i.i, %if.then.i.i.i.do.end.i.i.i.i_crit_edge
  %rcu.i.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i.i, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %if.end.i103

sw.bb13:                                          ; preds = %if.end10
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 7
  %135 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %soft_iface, align 4
  %tobool14.not = icmp eq ptr %136, null
  br i1 %tobool14.not, label %sw.bb13.if.end.i103_crit_edge, label %if.then15

sw.bb13.if.end.i103_crit_edge:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i103

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  %call.i82 = tail call i32 @batadv_hardif_min_mtu(ptr noundef nonnull %136) #10
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 20
  %137 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call.i82, ptr %mtu.i, align 4
  tail call void @batadv_tt_local_resize_to_mtu(ptr noundef nonnull %136) #10
  br label %if.end.i103

sw.bb18:                                          ; preds = %if.end10
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 1
  %138 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp19 = icmp eq i8 %139, 0
  br i1 %cmp19, label %sw.bb18.if.end.i103_crit_edge, label %if.end22

sw.bb18.if.end.i103_crit_edge:                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i103

if.end22:                                         ; preds = %sw.bb18
  %net_dev23 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 4
  %140 = ptrtoint ptr %net_dev23 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %net_dev23, align 4
  tail call fastcc void @batadv_check_known_mac_addr(ptr noundef %141)
  %soft_iface24 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 7
  %142 = ptrtoint ptr %soft_iface24 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %soft_iface24, align 4
  %add.ptr.i = getelementptr i8, ptr %143, i32 2304
  %algo_ops = getelementptr i8, ptr %143, i32 2640
  %144 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %algo_ops, align 4
  %update_mac = getelementptr inbounds %struct.batadv_algo_ops, ptr %145, i32 0, i32 2, i32 4
  %146 = ptrtoint ptr %update_mac to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %update_mac, align 4
  tail call void %147(ptr noundef nonnull %hard_iface.0) #10
  %call26 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %add.ptr.i)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end22.if.end.i103_crit_edge, label %if.end29

if.end22.if.end.i103_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i103

if.end29:                                         ; preds = %if.end22
  %cmp30 = icmp eq ptr %hard_iface.0, %call26
  br i1 %cmp30, label %if.then32, label %if.end29.if.end.i103_crit_edge

if.end29.if.end.i103_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i103

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @batadv_primary_if_update_addr(ptr noundef %add.ptr.i, ptr noundef null)
  br label %if.end.i103

sw.bb34:                                          ; preds = %if.end10
  %tobool.not.i.i83 = icmp eq ptr %1, null
  br i1 %tobool.not.i.i83, label %sw.bb34.batadv_is_cfg80211_netdev.exit.thread.i_crit_edge, label %batadv_is_wext_netdev.exit.i

sw.bb34.batadv_is_cfg80211_netdev.exit.thread.i_crit_edge: ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_is_cfg80211_netdev.exit.thread.i

batadv_is_wext_netdev.exit.i:                     ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  %wireless_handlers.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 42
  %148 = ptrtoint ptr %wireless_handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %wireless_handlers.i.i, align 8
  %tobool1.not.i.not.i = icmp ne ptr %149, null
  %spec.select.i = zext i1 %tobool1.not.i.not.i to i32
  %ieee80211_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %150 = ptrtoint ptr %ieee80211_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ieee80211_ptr.i.i, align 16
  %tobool1.not.i34.not.i = icmp eq ptr %151, null
  %or3.i = or i32 %spec.select.i, 2
  %spec.select53.i = select i1 %tobool1.not.i34.not.i, i32 %spec.select.i, i32 %or3.i
  br label %batadv_is_cfg80211_netdev.exit.thread.i

batadv_is_cfg80211_netdev.exit.thread.i:          ; preds = %batadv_is_wext_netdev.exit.i, %sw.bb34.batadv_is_cfg80211_netdev.exit.thread.i_crit_edge
  %152 = phi i32 [ 0, %sw.bb34.batadv_is_cfg80211_netdev.exit.thread.i_crit_edge ], [ %spec.select53.i, %batadv_is_wext_netdev.exit.i ]
  %call5.i = tail call fastcc ptr @batadv_get_real_netdevice(ptr noundef %1) #10
  %tobool.not.i84 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i84, label %batadv_is_cfg80211_netdev.exit.thread.i.batadv_is_wifi_hardif.exit_crit_edge, label %if.end7.i

batadv_is_cfg80211_netdev.exit.thread.i.batadv_is_wifi_hardif.exit_crit_edge: ; preds = %batadv_is_cfg80211_netdev.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_is_wifi_hardif.exit

if.end7.i:                                        ; preds = %batadv_is_cfg80211_netdev.exit.thread.i
  %cmp.i = icmp eq ptr %call5.i, %1
  br i1 %cmp.i, label %if.end7.i.do.body1.i.i93_crit_edge, label %batadv_is_cfg80211_netdev.exit48.i

if.end7.i.do.body1.i.i93_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i.i93

batadv_is_cfg80211_netdev.exit48.i:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %wireless_handlers.i38.i = getelementptr inbounds %struct.net_device, ptr %call5.i, i32 0, i32 42
  %153 = ptrtoint ptr %wireless_handlers.i38.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %wireless_handlers.i38.i, align 8
  %tobool1.not.i39.not.i = icmp eq ptr %154, null
  %or12.i = or i32 %152, 4
  %spec.select31.i = select i1 %tobool1.not.i39.not.i, i32 %152, i32 %or12.i
  %ieee80211_ptr.i44.i = getelementptr inbounds %struct.net_device, ptr %call5.i, i32 0, i32 82
  %155 = ptrtoint ptr %ieee80211_ptr.i44.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ieee80211_ptr.i44.i, align 16
  %tobool1.not.i45.not.i = icmp eq ptr %156, null
  %or16.i = or i32 %spec.select31.i, 8
  %spec.select32.i = select i1 %tobool1.not.i45.not.i, i32 %spec.select31.i, i32 %or16.i
  br label %do.body1.i.i93

do.body1.i.i93:                                   ; preds = %batadv_is_cfg80211_netdev.exit48.i, %if.end7.i.do.body1.i.i93_crit_edge
  %wifi_flags.3.i = phi i32 [ %152, %if.end7.i.do.body1.i.i93_crit_edge ], [ %spec.select32.i, %batadv_is_cfg80211_netdev.exit48.i ]
  %157 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i85 = getelementptr inbounds %struct.net_device, ptr %call5.i, i32 0, i32 118
  %158 = ptrtoint ptr %pcpu_refcnt.i.i85 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pcpu_refcnt.i.i85, align 4
  %160 = ptrtoint ptr %159 to i32
  %161 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i86 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i86 to ptr
  %cpu.i.i87 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %cpu.i.i87 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cpu.i.i87, align 4
  %arrayidx.i.i88 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %164
  %165 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i.i88, align 4
  %add.i.i89 = add i32 %166, %160
  %167 = inttoptr i32 %add.i.i89 to ptr
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 4
  %add13.i.i90 = add i32 %169, -1
  store i32 %add13.i.i90, ptr %167, align 4
  %170 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i91 = and i32 %170, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i91)
  %tobool24.not.i.i92 = icmp eq i32 %and.i.i.i.i91, 0
  br i1 %tobool24.not.i.i92, label %if.then28.i.i94, label %do.body1.i.i93.dev_put.exit.i_crit_edge, !prof !113

do.body1.i.i93.dev_put.exit.i_crit_edge:          ; preds = %do.body1.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit.i

if.then28.i.i94:                                  ; preds = %do.body1.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i94, %do.body1.i.i93.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %157) #10, !srcloc !114
  br label %batadv_is_wifi_hardif.exit

batadv_is_wifi_hardif.exit:                       ; preds = %dev_put.exit.i, %batadv_is_cfg80211_netdev.exit.thread.i.batadv_is_wifi_hardif.exit_crit_edge
  %retval.0.i95 = phi i32 [ %wifi_flags.3.i, %dev_put.exit.i ], [ %152, %batadv_is_cfg80211_netdev.exit.thread.i.batadv_is_wifi_hardif.exit_crit_edge ]
  %wifi_flags = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 3
  %171 = ptrtoint ptr %wifi_flags to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %retval.0.i95, ptr %wifi_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i95)
  %cmp.i98.not = icmp eq i32 %retval.0.i95, 0
  br i1 %cmp.i98.not, label %batadv_is_wifi_hardif.exit.if.end.i103_crit_edge, label %if.then37

batadv_is_wifi_hardif.exit.if.end.i103_crit_edge: ; preds = %batadv_is_wifi_hardif.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i103

if.then37:                                        ; preds = %batadv_is_wifi_hardif.exit
  call void @__sanitizer_cov_trace_pc() #12
  %num_bcasts = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 2
  %172 = ptrtoint ptr %num_bcasts to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 3, ptr %num_bcasts, align 1
  br label %if.end.i103

if.end.i103:                                      ; preds = %if.then37, %batadv_is_wifi_hardif.exit.if.end.i103_crit_edge, %if.then32, %if.end29.if.end.i103_crit_edge, %if.end22.if.end.i103_crit_edge, %sw.bb18.if.end.i103_crit_edge, %if.then15, %sw.bb13.if.end.i103_crit_edge, %do.end.i.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end.i103_crit_edge, %if.end39.i77.if.end.i103_crit_edge, %sw.bb11, %sw.bb, %if.end10.if.end.i103_crit_edge
  %primary_if.0 = phi ptr [ null, %if.end10.if.end.i103_crit_edge ], [ null, %if.then37 ], [ null, %batadv_is_wifi_hardif.exit.if.end.i103_crit_edge ], [ null, %sw.bb18.if.end.i103_crit_edge ], [ %hard_iface.0, %if.then32 ], [ %call26, %if.end29.if.end.i103_crit_edge ], [ null, %if.end22.if.end.i103_crit_edge ], [ null, %if.then15 ], [ null, %sw.bb13.if.end.i103_crit_edge ], [ null, %sw.bb11 ], [ null, %sw.bb ], [ null, %if.end39.i77.if.end.i103_crit_edge ], [ null, %if.end5.i.i.i.i.i.i.if.end.i103_crit_edge ], [ null, %if.then10.i.i.i.i.i.i ], [ null, %do.end.i.i.i.i ]
  %refcount.i101 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 5
  %call.i.i.i.i.i.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i101, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %refcount.i101, i32 1, i32 3, i32 1) #10
  %173 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i101, ptr %refcount.i101, i32 1, ptr elementtype(i32) %refcount.i101) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %173, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i104 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i104, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i101, i32 noundef 3) #10
  br label %out

if.then.i.i:                                      ; preds = %if.end.i103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %net_dev.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 4
  %174 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %net_dev.i.i.i, align 4
  %tobool.not.i.i.i.i105 = icmp eq ptr %175, null
  br i1 %tobool.not.i.i.i.i105, label %if.then.i.i.do.end.i.i.i108_crit_edge, label %do.body1.i.i.i.i

if.then.i.i.do.end.i.i.i108_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i108

do.body1.i.i.i.i:                                 ; preds = %if.then.i.i
  %176 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %175, i32 0, i32 118
  %177 = ptrtoint ptr %pcpu_refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pcpu_refcnt.i.i.i.i, align 4
  %179 = ptrtoint ptr %178 to i32
  %180 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i106 = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i.i.i106 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %183
  %184 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %185, %179
  %186 = inttoptr i32 %add.i.i.i.i to ptr
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  %add13.i.i.i.i = add i32 %188, -1
  store i32 %add13.i.i.i.i, ptr %186, align 4
  %189 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i107 = and i32 %189, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i107)
  %tobool24.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i107, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then28.i.i.i.i, label %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge, !prof !113

do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i

do.end30.i.i.i.i:                                 ; preds = %if.then28.i.i.i.i, %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %176) #10, !srcloc !114
  br label %do.end.i.i.i108

do.end.i.i.i108:                                  ; preds = %do.end30.i.i.i.i, %if.then.i.i.do.end.i.i.i108_crit_edge
  %rcu.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %hard_iface.0, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %out

out:                                              ; preds = %do.end.i.i.i108, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge
  %tobool.not.i109 = icmp eq ptr %primary_if.0, null
  br i1 %tobool.not.i109, label %out.cleanup_crit_edge, label %if.end.i114

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i114:                                      ; preds = %out
  %refcount.i110 = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_if.0, i32 0, i32 5
  %call.i.i.i.i.i.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i110, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %refcount.i110, i32 1, i32 3, i32 1) #10
  %190 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i110, ptr %refcount.i110, i32 1, ptr elementtype(i32) %refcount.i110) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i112 = extractvalue { i32, i32, i32 } %190, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i112)
  %cmp.i.i.i.i.i113 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i112, 1
  br i1 %cmp.i.i.i.i.i113, label %if.then.i.i120, label %if.end5.i.i.i.i.i116

if.end5.i.i.i.i.i116:                             ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i112)
  %.not.i.i.i.i.i115 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i112, 0
  br i1 %.not.i.i.i.i.i115, label %if.end5.i.i.i.i.i116.cleanup_crit_edge, label %if.then10.i.i.i.i.i117, !prof !117

if.end5.i.i.i.i.i116.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i117:                           ; preds = %if.end5.i.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i110, i32 noundef 3) #10
  br label %cleanup

if.then.i.i120:                                   ; preds = %if.end.i114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %net_dev.i.i.i118 = getelementptr %struct.batadv_hard_iface, ptr %primary_if.0, i32 0, i32 4
  %191 = ptrtoint ptr %net_dev.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %net_dev.i.i.i118, align 4
  %tobool.not.i.i.i.i119 = icmp eq ptr %192, null
  br i1 %tobool.not.i.i.i.i119, label %if.then.i.i120.do.end.i.i.i133_crit_edge, label %do.body1.i.i.i.i129

if.then.i.i120.do.end.i.i.i133_crit_edge:         ; preds = %if.then.i.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i133

do.body1.i.i.i.i129:                              ; preds = %if.then.i.i120
  %193 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i121 = getelementptr inbounds %struct.net_device, ptr %192, i32 0, i32 118
  %194 = ptrtoint ptr %pcpu_refcnt.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pcpu_refcnt.i.i.i.i121, align 4
  %196 = ptrtoint ptr %195 to i32
  %197 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i122 = and i32 %197, -16384
  %198 = inttoptr i32 %and.i.i.i.i.i122 to ptr
  %cpu.i.i.i.i123 = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 3
  %199 = ptrtoint ptr %cpu.i.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %cpu.i.i.i.i123, align 4
  %arrayidx.i.i.i.i124 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %200
  %201 = ptrtoint ptr %arrayidx.i.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i.i.i.i124, align 4
  %add.i.i.i.i125 = add i32 %202, %196
  %203 = inttoptr i32 %add.i.i.i.i125 to ptr
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %203, align 4
  %add13.i.i.i.i126 = add i32 %205, -1
  store i32 %add13.i.i.i.i126, ptr %203, align 4
  %206 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i127 = and i32 %206, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i127)
  %tobool24.not.i.i.i.i128 = icmp eq i32 %and.i.i.i.i.i.i127, 0
  br i1 %tobool24.not.i.i.i.i128, label %if.then28.i.i.i.i130, label %do.body1.i.i.i.i129.do.end30.i.i.i.i131_crit_edge, !prof !113

do.body1.i.i.i.i129.do.end30.i.i.i.i131_crit_edge: ; preds = %do.body1.i.i.i.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i131

if.then28.i.i.i.i130:                             ; preds = %do.body1.i.i.i.i129
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i131

do.end30.i.i.i.i131:                              ; preds = %if.then28.i.i.i.i130, %do.body1.i.i.i.i129.do.end30.i.i.i.i131_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %193) #10, !srcloc !114
  br label %do.end.i.i.i133

do.end.i.i.i133:                                  ; preds = %do.end30.i.i.i.i131, %if.then.i.i120.do.end.i.i.i133_crit_edge
  %rcu.i.i.i132 = getelementptr %struct.batadv_hard_iface, ptr %primary_if.0, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i132, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i.i133, %if.then10.i.i.i.i.i117, %if.end5.i.i.i.i.i116.cleanup_crit_edge, %out.cleanup_crit_edge, %do.end30.i108.i, %dev_hold.exit.i.cleanup_crit_edge, %if.end16.i.i.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end3.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb.i, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

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
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_iflink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_primary_if_update_addr(ptr noundef %bat_priv, ptr noundef %oldif) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.batadv_hardif_put.exit_crit_edge, label %if.end.i

entry.batadv_hardif_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.end.i:                                         ; preds = %entry
  %net_dev.i = getelementptr %struct.batadv_hard_iface, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx58.i.i.i = getelementptr i8, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx58.i.i.i, align 1
  %conv59.i.i.i = zext i8 %5 to i32
  %shl60.i.i.i = shl nuw nsw i32 %conv59.i.i.i, 8
  %add61.i.i.i = add nuw nsw i32 %shl60.i.i.i, -559038731
  %arrayidx63.i.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %arrayidx63.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx63.i.i.i, align 1
  %conv64.i.i.i = zext i8 %7 to i32
  %add65.i.i.i = add nuw nsw i32 %add61.i.i.i, %conv64.i.i.i
  %arrayidx67.i.i.i = getelementptr i8, ptr %3, i32 3
  %8 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx67.i.i.i, align 1
  %conv68.i.i.i = zext i8 %9 to i32
  %shl69.i.i.i = shl nuw i32 %conv68.i.i.i, 24
  %add70.i.i.i = add i32 %shl69.i.i.i, -559038731
  %arrayidx72.i.i.i = getelementptr i8, ptr %3, i32 2
  %10 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx72.i.i.i, align 1
  %conv73.i.i.i = zext i8 %11 to i32
  %shl74.i.i.i = shl nuw nsw i32 %conv73.i.i.i, 16
  %add75.i.i.i = add i32 %add70.i.i.i, %shl74.i.i.i
  %arrayidx77.i.i.i = getelementptr i8, ptr %3, i32 1
  %12 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx77.i.i.i, align 1
  %conv78.i.i.i = zext i8 %13 to i32
  %shl79.i.i.i = shl nuw nsw i32 %conv78.i.i.i, 8
  %add80.i.i.i = add i32 %add75.i.i.i, %shl79.i.i.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  %conv83.i.i.i = zext i8 %15 to i32
  %add84.i.i.i = add i32 %add80.i.i.i, %conv83.i.i.i
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
  %dat.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 38
  %16 = ptrtoint ptr %dat.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %dat.i, align 4
  tail call void @batadv_bla_update_orig_address(ptr noundef %bat_priv, ptr noundef nonnull %call, ptr noundef %oldif) #10
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hardif_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_hardif_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %18 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.do.end.i.i.i_crit_edge, label %do.body1.i.i.i.i

if.then.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

do.body1.i.i.i.i:                                 ; preds = %if.then.i.i
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !111
  %pcpu_refcnt.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i.i.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i.i.i.i = add i32 %32, -1
  store i32 %add13.i.i.i.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !112
  %and.i.i.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then28.i.i.i.i, label %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge, !prof !113

do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i.i.i.i

do.end30.i.i.i.i:                                 ; preds = %if.then28.i.i.i.i, %do.body1.i.i.i.i.do.end30.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #10, !srcloc !114
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end30.i.i.i.i, %if.then.i.i.do.end.i.i.i_crit_edge
  %rcu.i.i.i = getelementptr %struct.batadv_hard_iface, ptr %call, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %batadv_hardif_put.exit

batadv_hardif_put.exit:                           ; preds = %do.end.i.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_put.exit_crit_edge, %entry.batadv_hardif_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_bla_update_orig_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_softif_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_check_known_mac_addr(ptr noundef readonly %net_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
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
  %.b56 = load i1, ptr @batadv_check_known_mac_addr.__warned, align 1
  br i1 %.b56, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_check_known_mac_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 510, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.066 = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not67 = icmp eq ptr %hard_iface.066, @batadv_hardif_list
  br i1 %cmp.not67, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %dev_addr24 = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 86
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hard_iface.068 = phi ptr [ %hard_iface.066, %for.body.lr.ph ], [ %hard_iface.0, %for.inc.for.body_crit_edge ]
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.068, i32 0, i32 1
  %4 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_status, align 4
  %.off = add i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %net_dev18 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.068, i32 0, i32 4
  %6 = ptrtoint ptr %net_dev18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev18, align 4
  %cmp19 = icmp eq ptr %7, %net_dev
  br i1 %cmp19, label %if.end17.for.inc_crit_edge, label %if.end22

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end22:                                         ; preds = %if.end17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = ptrtoint ptr %dev_addr24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr24, align 64
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %xor.i.i.i = xor i32 %15, %13
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %11, i32 4
  %18 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %19, %17
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end30, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %11, ptr noundef %7) #13
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end30, %if.end22.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %hard_iface.068 to i32
  call void @__asan_load4_noabort(i32 %20)
  %hard_iface.0 = load volatile ptr, ptr %hard_iface.068, align 4
  %cmp.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i57, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %for.end
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #10
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %21 = tail call i32 @llvm.read_register.i32(metadata !101) #10
  %and.i.i.i.i.i64 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_softif_create_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_v_hardif_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !54, !55, !56, !58, !60, !61, !62, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/batman-adv/hard-interface.c", i32 69, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/batman-adv/hard-interface.c", i32 409, i32 10}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../net/batman-adv/hard-interface.c", i32 416, i32 6}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/batman-adv/hard-interface.c", i32 584, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/batman-adv/hard-interface.c", i32 727, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @batadv_hardif_enable_interface._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @batadv_hardif_enable_interface._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/batman-adv/hard-interface.c", i32 732, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @batadv_hardif_enable_interface._entry.8, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @batadv_hardif_enable_interface._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/batman-adv/hard-interface.c", i32 739, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @batadv_hardif_enable_interface._entry.12, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @batadv_hardif_enable_interface._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/batman-adv/hard-interface.c", i32 747, i32 3}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @batadv_hardif_enable_interface._entry.16, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @batadv_hardif_enable_interface._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/batman-adv/hard-interface.c", i32 809, i32 2}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @batadv_hardif_disable_interface._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @batadv_hardif_disable_interface._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @batadv_hard_if_notifier, !39, !"batadv_hard_if_notifier", i1 false, i1 false}
!39 = !{!"../net/batman-adv/hard-interface.c", i32 1002, i32 23}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../net/batman-adv/hard-interface.c", i32 222, i32 2}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/batman-adv/hard-interface.c", i32 659, i32 2}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @batadv_hardif_activate_interface._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @batadv_hardif_activate_interface._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/batman-adv/hard-interface.c", i32 542, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/batman-adv/hard-interface.c", i32 680, i32 2}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @batadv_hardif_deactivate_interface._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @batadv_hardif_deactivate_interface._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../net/batman-adv/hard-interface.c", i32 442, i32 2}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../net/batman-adv/hard-interface.c", i32 478, i32 2}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../net/batman-adv/hard-interface.c", i32 483, i32 20}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/batman-adv/hard-interface.c", i32 784, i32 2}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../net/batman-adv/hard-interface.c", i32 851, i32 2}
!77 = !{ptr @batadv_hardif_add_interface.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../net/batman-adv/hard-interface.c", i32 869, i32 2}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @batadv_hardif_add_interface.__key.34, !81, !"__key", i1 false, i1 false}
!81 = !{!"../net/batman-adv/hard-interface.c", i32 870, i32 2}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/batman-adv/hard-interface.c", i32 173, i32 3}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @batadv_is_on_batman_iface._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @batadv_is_on_batman_iface._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../net/batman-adv/hard-interface.c", i32 897, i32 2}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../net/batman-adv/hard-interface.c", i32 510, i32 2}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/batman-adv/hard-interface.c", i32 522, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @batadv_check_known_mac_addr._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @batadv_check_known_mac_addr._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/batman-adv/hard-interface.c", i32 524, i32 3}
!99 = !{ptr @batadv_check_known_mac_addr._entry.40, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @batadv_check_known_mac_addr._entry_ptr.42, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 613151, i64 613212}
!112 = !{i64 615883}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 616168}
!115 = !{i64 2149705819}
!116 = !{i64 534658, i64 534682, i64 534703, i64 534720, i64 534737}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2149706085}
!119 = !{i64 2148249355}
!120 = !{i64 2148163819, i64 2148163851, i64 2148163880, i64 2148163914, i64 2148163945, i64 2148163968}
!121 = !{i64 2150580366}
!122 = !{i64 2148161354, i64 2148161386, i64 2148161415, i64 2148161449, i64 2148161480, i64 2148161503}
!123 = !{i64 2156464869}
!124 = !{i64 2149731211}
