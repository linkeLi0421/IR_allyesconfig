; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/rocker/rocker_ofdpa.c_pt.bc'
source_filename = "../drivers/net/ethernet/rocker/rocker_ofdpa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rocker_world_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ofdpa_ctrl = type { ptr, ptr, i16, i8, i8, i8, i8 }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rocker = type { ptr, ptr, ptr, i32, ptr, %struct.anon.147, %struct.spinlock, %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info, %struct.notifier_block, ptr, ptr, ptr }
%struct.anon.147 = type { i64 }
%struct.rocker_dma_ring_info = type { i32, i32, i32, ptr, i32, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ofdpa = type { ptr, [65536 x %struct.hlist_head], %struct.spinlock, i64, [65536 x %struct.hlist_head], %struct.spinlock, %struct.timer_list, [65536 x %struct.hlist_head], %struct.spinlock, [8 x i32], [256 x %struct.hlist_head], %struct.spinlock, [65536 x %struct.hlist_head], %struct.spinlock, i32, i32, i8 }
%struct.hlist_head = type { ptr }
%struct.rocker_port = type { ptr, ptr, ptr, i32, i32, %struct.napi_struct, %struct.napi_struct, %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ofdpa_port = type { ptr, ptr, ptr, i32, ptr, i16, i32, i32, i32, [6 x i8], [128 x i32] }
%struct.ofdpa_flow_tbl_entry = type { %struct.hlist_node, i32, i64, %struct.ofdpa_flow_tbl_key, i32, i32, ptr }
%struct.ofdpa_flow_tbl_key = type { i32, i32, %union.anon.153 }
%union.anon.153 = type { %struct.anon.159 }
%struct.anon.159 = type { i32, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.fib_entry_notifier_info = type { %struct.fib_notifier_info, i32, i32, ptr, i8, i8, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.56, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.56 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.ofdpa_fdb_tbl_entry = type { %struct.hlist_node, i32, i8, i32, %struct.ofdpa_fdb_tbl_key }
%struct.ofdpa_fdb_tbl_key = type { ptr, [6 x i8], i16 }
%struct.ofdpa_fdb_learn_work = type { %struct.work_struct, ptr, i32, [6 x i8], i16 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.rocker_desc_info = type { ptr, i32, i32, ptr, i32 }
%struct.rocker_tlv = type { i32, i16 }
%struct.anon.155 = type { i32, i16, i16, i32, i8, i16 }
%struct.anon.158 = type { [6 x i8], [6 x i8], i32, i32, i16, i32, i32, i32, i8 }
%struct.ofdpa_internal_vlan_tbl_entry = type { %struct.hlist_node, i32, i32, i16 }
%struct.ofdpa_group_tbl_entry = type { %struct.hlist_node, i32, i32, i16, ptr, %union.anon.160 }
%union.anon.160 = type { %struct.anon.162 }
%struct.anon.162 = type { [6 x i8], [6 x i8], i16, i32 }
%struct.anon.163 = type { [6 x i8], [6 x i8], i16, i8, i32 }
%struct.ofdpa_neigh_tbl_entry = type { %struct.hlist_node, i32, ptr, i32, i32, [6 x i8], i8 }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ofdpa\00", [26 x i8] zeroinitializer }, align 32
@rocker_ofdpa_ops = dso_local global { %struct.rocker_world_ops, [48 x i8] } { %struct.rocker_world_ops { ptr @.str, i32 1049928, i32 556, i8 0, ptr @ofdpa_init, ptr @ofdpa_fini, ptr @ofdpa_port_pre_init, ptr @ofdpa_port_init, ptr @ofdpa_port_fini, ptr null, ptr @ofdpa_port_open, ptr @ofdpa_port_stop, ptr @ofdpa_port_attr_stp_state_set, ptr @ofdpa_port_attr_bridge_flags_set, ptr @ofdpa_port_attr_bridge_flags_support_get, ptr @ofdpa_port_attr_bridge_ageing_time_set, ptr @ofdpa_port_obj_vlan_add, ptr @ofdpa_port_obj_vlan_del, ptr @ofdpa_port_obj_fdb_add, ptr @ofdpa_port_obj_fdb_del, ptr @ofdpa_port_master_linked, ptr @ofdpa_port_master_unlinked, ptr @ofdpa_port_neigh_update, ptr @ofdpa_port_neigh_destroy, ptr @ofdpa_port_ev_mac_vlan_seen, ptr @ofdpa_fib4_add, ptr @ofdpa_fib4_del, ptr @ofdpa_fib4_abort }, [48 x i8] zeroinitializer }, align 32
@ofdpa_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ofdpa->flow_tbl_lock\00", [42 x i8] zeroinitializer }, align 32
@ofdpa_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ofdpa->group_tbl_lock\00", [41 x i8] zeroinitializer }, align 32
@ofdpa_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ofdpa->fdb_tbl_lock\00", [43 x i8] zeroinitializer }, align 32
@ofdpa_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&ofdpa->internal_vlan_tbl_lock\00", [33 x i8] zeroinitializer }, align 32
@ofdpa_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ofdpa->neigh_tbl_lock\00", [41 x i8] zeroinitializer }, align 32
@ofdpa_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&ofdpa->fdb_cleanup_timer)\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ofdpa_port_fdb_learn.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&lw->work)\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"install ig port table failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"install untagged VLAN failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error (%d) ingress port table entry\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Out of internal VLAN IDs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error (%d) port ctrl vlan add\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error (%d) port VLAN l2 groups\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error (%d) port VLAN l2 flood group\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error (%d) port VLAN table\0A\00", [36 x i8] zeroinitializer }, align 32
@ofdpa_ctrls = internal global { [6 x %struct.ofdpa_ctrl], [32 x i8] } { [6 x %struct.ofdpa_ctrl] [%struct.ofdpa_ctrl { ptr @ll_mac, ptr @ll_mask, i16 0, i8 1, i8 0, i8 0, i8 0 }, %struct.ofdpa_ctrl { ptr @zero_mac, ptr @zero_mac, i16 2054, i8 1, i8 0, i8 0, i8 0 }, %struct.ofdpa_ctrl { ptr @ipv4_mcast, ptr @ipv4_mask, i16 2048, i8 0, i8 0, i8 1, i8 1 }, %struct.ofdpa_ctrl { ptr @ipv6_mcast, ptr @ipv6_mask, i16 -31011, i8 0, i8 0, i8 1, i8 1 }, %struct.ofdpa_ctrl { ptr null, ptr null, i16 0, i8 0, i8 1, i8 0, i8 1 }, %struct.ofdpa_ctrl { ptr @zero_mac, ptr @zero_mac, i16 0, i8 1, i8 0, i8 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error (%d) ctrl ACL\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error (%d) ctrl FLOOD\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error (%d) ctrl term\0A\00", [42 x i8] zeroinitializer }, align 32
@ll_mac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\80\C2\00\00\00", [26 x i8] zeroinitializer }, align 32
@ll_mask = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\F0", [26 x i8] zeroinitializer }, align 32
@zero_mac = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@ipv4_mcast = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\00^\00\00\00", [26 x i8] zeroinitializer }, align 32
@ipv4_mask = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\80\00\00", [26 x i8] zeroinitializer }, align 32
@ipv6_mcast = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"33\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@ipv6_mask = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error (%d) port VLAN l2 group for pport %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error (%d) port VLAN l2 group for CPU port\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"openvswitch\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ifindex (%d) not found in internal VLAN tbl\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error (%d) L3 unicast group index %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error (%d) /32 unicast route %pI4 group 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/nexthop.h\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error (%d) IPv4 route %pI4\0A\00", [36 x i8] zeroinitializer }, align 32
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@___neigh_lookup_noref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/neighbour.h\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@___neigh_lookup_noref.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___neigh_lookup_noref.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 10, i64 20, i64 30, i64 50, i64 60]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2795, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"rocker_ofdpa_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2794, i32 25 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2353, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2356, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2359, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2362, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2365, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2367, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1872, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 282, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2441, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2451, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1806, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2258, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1753, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1761, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1768, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1776, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"ofdpa_ctrls\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1551, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1621, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1645, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1667, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"ll_mac\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 209, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant [8 x i8] c"ll_mask\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 210, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant [9 x i8] c"zero_mac\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 207, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"ipv4_mcast\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 212, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant [10 x i8] c"ipv4_mask\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 213, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"ipv6_mcast\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 214, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant [10 x i8] c"ipv6_mask\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 215, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1512, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1536, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 287, i32 41 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2326, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1323, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1337, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant [25 x i8] c"../include/net/nexthop.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 468, i32 2 }
@___asan_gen_.174 = private constant [46 x i8] c"../drivers/net/ethernet/rocker/rocker_ofdpa.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2306, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 749, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [27 x i8] c"../include/net/neighbour.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 305, i32 33 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 760, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @.str, ptr @rocker_ofdpa_ops, ptr @ofdpa_init.__key, ptr @.str.1, ptr @ofdpa_init.__key.2, ptr @.str.3, ptr @ofdpa_init.__key.4, ptr @.str.5, ptr @ofdpa_init.__key.6, ptr @.str.7, ptr @ofdpa_init.__key.8, ptr @.str.9, ptr @ofdpa_init.__key.10, ptr @.str.11, ptr @ofdpa_port_fdb_learn.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ofdpa_ctrls, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ll_mac, ptr @ll_mask, ptr @zero_mac, ptr @ipv4_mcast, ptr @ipv4_mask, ptr @ipv6_mcast, ptr @ipv6_mask, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_ofdpa_ops to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdpa_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdpa_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdpa_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdpa_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdpa_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdpa_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdpa_port_fdb_learn.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofdpa_ctrls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll_mask to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv4_mcast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv4_mask to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_mcast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_mask to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_init(ptr noundef %rocker) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 12
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rocker, ptr %1, align 8
  %flow_tbl = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 1
  %3 = call ptr @memset(ptr %flow_tbl, i32 0, i32 262144)
  %flow_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %flow_tbl_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ofdpa_init.__key, i16 noundef signext 3) #14
  %group_tbl = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 4
  %4 = call ptr @memset(ptr %group_tbl, i32 0, i32 262144)
  %group_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %group_tbl_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ofdpa_init.__key.2, i16 noundef signext 3) #14
  %fdb_tbl = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 7
  %5 = call ptr @memset(ptr %fdb_tbl, i32 0, i32 262144)
  %fdb_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %fdb_tbl_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @ofdpa_init.__key.4, i16 noundef signext 3) #14
  %internal_vlan_tbl = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 10
  %6 = call ptr @memset(ptr %internal_vlan_tbl, i32 0, i32 1024)
  %internal_vlan_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %internal_vlan_tbl_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ofdpa_init.__key.6, i16 noundef signext 3) #14
  %neigh_tbl = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 12
  %7 = call ptr @memset(ptr %neigh_tbl, i32 0, i32 262144)
  %neigh_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %neigh_tbl_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ofdpa_init.__key.8, i16 noundef signext 3) #14
  %fdb_cleanup_timer = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %fdb_cleanup_timer, ptr noundef nonnull @ofdpa_fdb_cleanup, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @ofdpa_init.__key.10) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call26 = tail call i32 @mod_timer(ptr noundef %fdb_cleanup_timer, i32 noundef %8) #14
  %ageing_time = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %ageing_time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 30000, ptr %ageing_time, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ofdpa_fini(ptr nocapture noundef readonly %rocker) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 12
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %fdb_cleanup_timer = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 6
  %call = tail call i32 @del_timer_sync(ptr noundef %fdb_cleanup_timer) #14
  %rocker_owq = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 11
  %2 = ptrtoint ptr %rocker_owq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rocker_owq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #14
  %flow_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flow_tbl_lock) #14
  br label %for.body

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %entry
  %bkt.0385 = phi i32 [ 0, %entry ], [ %inc, %for.inc32.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 1, i32 %bkt.0385
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool14.not383 = icmp eq ptr %5, null
  br i1 %tobool14.not383, label %for.body.for.inc32_crit_edge, label %for.body.land.rhs15_crit_edge

for.body.land.rhs15_crit_edge:                    ; preds = %for.body
  br label %land.rhs15

for.body.for.inc32_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc32

land.rhs15:                                       ; preds = %hash_del.exit.land.rhs15_crit_edge, %for.body.land.rhs15_crit_edge
  %flow_entry.1384 = phi ptr [ %7, %hash_del.exit.land.rhs15_crit_edge ], [ %5, %for.body.land.rhs15_crit_edge ]
  %6 = ptrtoint ptr %flow_entry.1384 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flow_entry.1384, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %flow_entry.1384, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.i.i, label %land.rhs15.hash_del.exit_crit_edge, label %if.then.i.i

land.rhs15.hash_del.exit_crit_edge:               ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %land.rhs15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %9, align 4
  %tobool.not.i3.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %12 = ptrtoint ptr %flow_entry.1384 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %flow_entry.1384, align 4
  %13 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %land.rhs15.hash_del.exit_crit_edge
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %hash_del.exit.for.inc32_crit_edge, label %hash_del.exit.land.rhs15_crit_edge

hash_del.exit.land.rhs15_crit_edge:               ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs15

hash_del.exit.for.inc32_crit_edge:                ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc32

for.inc32:                                        ; preds = %hash_del.exit.for.inc32_crit_edge, %for.body.for.inc32_crit_edge
  %inc = add nuw nsw i32 %bkt.0385, 1
  %exitcond.not = icmp eq i32 %inc, 65536
  br i1 %exitcond.not, label %for.end33, label %for.inc32.for.body_crit_edge

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end33:                                        ; preds = %for.inc32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flow_tbl_lock, i32 noundef %call4) #14
  %group_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 5
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %group_tbl_lock) #14
  br label %for.body55

for.body55:                                       ; preds = %for.inc90.for.body55_crit_edge, %for.end33
  %bkt.1388 = phi i32 [ 0, %for.end33 ], [ %inc91, %for.inc90.for.body55_crit_edge ]
  %arrayidx57 = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 4, i32 %bkt.1388
  %14 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx57, align 4
  %tobool69.not386 = icmp eq ptr %15, null
  br i1 %tobool69.not386, label %for.body55.for.inc90_crit_edge, label %for.body55.land.rhs70_crit_edge

for.body55.land.rhs70_crit_edge:                  ; preds = %for.body55
  br label %land.rhs70

for.body55.for.inc90_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc90

land.rhs70:                                       ; preds = %hash_del.exit358.land.rhs70_crit_edge, %for.body55.land.rhs70_crit_edge
  %group_entry.1387 = phi ptr [ %17, %hash_del.exit358.land.rhs70_crit_edge ], [ %15, %for.body55.land.rhs70_crit_edge ]
  %16 = ptrtoint ptr %group_entry.1387 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group_entry.1387, align 4
  %pprev.i.i.i351 = getelementptr inbounds %struct.hlist_node, ptr %group_entry.1387, i32 0, i32 1
  %18 = ptrtoint ptr %pprev.i.i.i351 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i.i351, align 4
  %tobool.not.i.not.i.i352 = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.i.i352, label %land.rhs70.hash_del.exit358_crit_edge, label %if.then.i.i354

land.rhs70.hash_del.exit358_crit_edge:            ; preds = %land.rhs70
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit358

if.then.i.i354:                                   ; preds = %land.rhs70
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %17, ptr %19, align 4
  %tobool.not.i3.i.i353 = icmp eq ptr %17, null
  br i1 %tobool.not.i3.i.i353, label %if.then.i.i354.__hlist_del.exit.i.i357_crit_edge, label %do.body13.i.i.i356

if.then.i.i354.__hlist_del.exit.i.i357_crit_edge: ; preds = %if.then.i.i354
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i357

do.body13.i.i.i356:                               ; preds = %if.then.i.i354
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i355 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %pprev14.i.i.i355 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %pprev14.i.i.i355, align 4
  br label %__hlist_del.exit.i.i357

__hlist_del.exit.i.i357:                          ; preds = %do.body13.i.i.i356, %if.then.i.i354.__hlist_del.exit.i.i357_crit_edge
  %22 = ptrtoint ptr %group_entry.1387 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %group_entry.1387, align 4
  %23 = ptrtoint ptr %pprev.i.i.i351 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %pprev.i.i.i351, align 4
  br label %hash_del.exit358

hash_del.exit358:                                 ; preds = %__hlist_del.exit.i.i357, %land.rhs70.hash_del.exit358_crit_edge
  %tobool69.not = icmp eq ptr %17, null
  br i1 %tobool69.not, label %hash_del.exit358.for.inc90_crit_edge, label %hash_del.exit358.land.rhs70_crit_edge

hash_del.exit358.land.rhs70_crit_edge:            ; preds = %hash_del.exit358
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs70

hash_del.exit358.for.inc90_crit_edge:             ; preds = %hash_del.exit358
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc90

for.inc90:                                        ; preds = %hash_del.exit358.for.inc90_crit_edge, %for.body55.for.inc90_crit_edge
  %inc91 = add nuw nsw i32 %bkt.1388, 1
  %exitcond398.not = icmp eq i32 %inc91, 65536
  br i1 %exitcond398.not, label %for.end92, label %for.inc90.for.body55_crit_edge

for.inc90.for.body55_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body55

for.end92:                                        ; preds = %for.inc90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %group_tbl_lock, i32 noundef %call43) #14
  %fdb_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 8
  %call102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fdb_tbl_lock) #14
  br label %for.body114

for.body114:                                      ; preds = %for.inc149.for.body114_crit_edge, %for.end92
  %bkt.2391 = phi i32 [ 0, %for.end92 ], [ %inc150, %for.inc149.for.body114_crit_edge ]
  %arrayidx116 = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 7, i32 %bkt.2391
  %24 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx116, align 4
  %tobool128.not389 = icmp eq ptr %25, null
  br i1 %tobool128.not389, label %for.body114.for.inc149_crit_edge, label %for.body114.land.rhs129_crit_edge

for.body114.land.rhs129_crit_edge:                ; preds = %for.body114
  br label %land.rhs129

for.body114.for.inc149_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc149

land.rhs129:                                      ; preds = %hash_del.exit366.land.rhs129_crit_edge, %for.body114.land.rhs129_crit_edge
  %fdb_entry.1390 = phi ptr [ %27, %hash_del.exit366.land.rhs129_crit_edge ], [ %25, %for.body114.land.rhs129_crit_edge ]
  %26 = ptrtoint ptr %fdb_entry.1390 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fdb_entry.1390, align 4
  %pprev.i.i.i359 = getelementptr inbounds %struct.hlist_node, ptr %fdb_entry.1390, i32 0, i32 1
  %28 = ptrtoint ptr %pprev.i.i.i359 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pprev.i.i.i359, align 4
  %tobool.not.i.not.i.i360 = icmp eq ptr %29, null
  br i1 %tobool.not.i.not.i.i360, label %land.rhs129.hash_del.exit366_crit_edge, label %if.then.i.i362

land.rhs129.hash_del.exit366_crit_edge:           ; preds = %land.rhs129
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit366

if.then.i.i362:                                   ; preds = %land.rhs129
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %27, ptr %29, align 4
  %tobool.not.i3.i.i361 = icmp eq ptr %27, null
  br i1 %tobool.not.i3.i.i361, label %if.then.i.i362.__hlist_del.exit.i.i365_crit_edge, label %do.body13.i.i.i364

if.then.i.i362.__hlist_del.exit.i.i365_crit_edge: ; preds = %if.then.i.i362
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i365

do.body13.i.i.i364:                               ; preds = %if.then.i.i362
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i363 = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %pprev14.i.i.i363 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %pprev14.i.i.i363, align 4
  br label %__hlist_del.exit.i.i365

__hlist_del.exit.i.i365:                          ; preds = %do.body13.i.i.i364, %if.then.i.i362.__hlist_del.exit.i.i365_crit_edge
  %32 = ptrtoint ptr %fdb_entry.1390 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %fdb_entry.1390, align 4
  %33 = ptrtoint ptr %pprev.i.i.i359 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %pprev.i.i.i359, align 4
  br label %hash_del.exit366

hash_del.exit366:                                 ; preds = %__hlist_del.exit.i.i365, %land.rhs129.hash_del.exit366_crit_edge
  %tobool128.not = icmp eq ptr %27, null
  br i1 %tobool128.not, label %hash_del.exit366.for.inc149_crit_edge, label %hash_del.exit366.land.rhs129_crit_edge

hash_del.exit366.land.rhs129_crit_edge:           ; preds = %hash_del.exit366
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs129

hash_del.exit366.for.inc149_crit_edge:            ; preds = %hash_del.exit366
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc149

for.inc149:                                       ; preds = %hash_del.exit366.for.inc149_crit_edge, %for.body114.for.inc149_crit_edge
  %inc150 = add nuw nsw i32 %bkt.2391, 1
  %exitcond399.not = icmp eq i32 %inc150, 65536
  br i1 %exitcond399.not, label %for.end151, label %for.inc149.for.body114_crit_edge

for.inc149.for.body114_crit_edge:                 ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body114

for.end151:                                       ; preds = %for.inc149
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fdb_tbl_lock, i32 noundef %call102) #14
  %internal_vlan_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 11
  %call161 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %internal_vlan_tbl_lock) #14
  br label %for.body173

for.body173:                                      ; preds = %for.inc208.for.body173_crit_edge, %for.end151
  %bkt.3394 = phi i32 [ 0, %for.end151 ], [ %inc209, %for.inc208.for.body173_crit_edge ]
  %arrayidx175 = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 10, i32 %bkt.3394
  %34 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx175, align 4
  %tobool187.not392 = icmp eq ptr %35, null
  br i1 %tobool187.not392, label %for.body173.for.inc208_crit_edge, label %for.body173.land.rhs188_crit_edge

for.body173.land.rhs188_crit_edge:                ; preds = %for.body173
  br label %land.rhs188

for.body173.for.inc208_crit_edge:                 ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc208

land.rhs188:                                      ; preds = %hash_del.exit374.land.rhs188_crit_edge, %for.body173.land.rhs188_crit_edge
  %internal_vlan_entry.1393 = phi ptr [ %37, %hash_del.exit374.land.rhs188_crit_edge ], [ %35, %for.body173.land.rhs188_crit_edge ]
  %36 = ptrtoint ptr %internal_vlan_entry.1393 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %internal_vlan_entry.1393, align 4
  %pprev.i.i.i367 = getelementptr inbounds %struct.hlist_node, ptr %internal_vlan_entry.1393, i32 0, i32 1
  %38 = ptrtoint ptr %pprev.i.i.i367 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev.i.i.i367, align 4
  %tobool.not.i.not.i.i368 = icmp eq ptr %39, null
  br i1 %tobool.not.i.not.i.i368, label %land.rhs188.hash_del.exit374_crit_edge, label %if.then.i.i370

land.rhs188.hash_del.exit374_crit_edge:           ; preds = %land.rhs188
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit374

if.then.i.i370:                                   ; preds = %land.rhs188
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %37, ptr %39, align 4
  %tobool.not.i3.i.i369 = icmp eq ptr %37, null
  br i1 %tobool.not.i3.i.i369, label %if.then.i.i370.__hlist_del.exit.i.i373_crit_edge, label %do.body13.i.i.i372

if.then.i.i370.__hlist_del.exit.i.i373_crit_edge: ; preds = %if.then.i.i370
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i373

do.body13.i.i.i372:                               ; preds = %if.then.i.i370
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i371 = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i.i371 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %pprev14.i.i.i371, align 4
  br label %__hlist_del.exit.i.i373

__hlist_del.exit.i.i373:                          ; preds = %do.body13.i.i.i372, %if.then.i.i370.__hlist_del.exit.i.i373_crit_edge
  %42 = ptrtoint ptr %internal_vlan_entry.1393 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %internal_vlan_entry.1393, align 4
  %43 = ptrtoint ptr %pprev.i.i.i367 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %pprev.i.i.i367, align 4
  br label %hash_del.exit374

hash_del.exit374:                                 ; preds = %__hlist_del.exit.i.i373, %land.rhs188.hash_del.exit374_crit_edge
  %tobool187.not = icmp eq ptr %37, null
  br i1 %tobool187.not, label %hash_del.exit374.for.inc208_crit_edge, label %hash_del.exit374.land.rhs188_crit_edge

hash_del.exit374.land.rhs188_crit_edge:           ; preds = %hash_del.exit374
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs188

hash_del.exit374.for.inc208_crit_edge:            ; preds = %hash_del.exit374
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc208

for.inc208:                                       ; preds = %hash_del.exit374.for.inc208_crit_edge, %for.body173.for.inc208_crit_edge
  %inc209 = add nuw nsw i32 %bkt.3394, 1
  %exitcond400.not = icmp eq i32 %inc209, 256
  br i1 %exitcond400.not, label %for.end210, label %for.inc208.for.body173_crit_edge

for.inc208.for.body173_crit_edge:                 ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body173

for.end210:                                       ; preds = %for.inc208
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %internal_vlan_tbl_lock, i32 noundef %call161) #14
  %neigh_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 13
  %call220 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %neigh_tbl_lock) #14
  br label %for.body232

for.body232:                                      ; preds = %for.inc267.for.body232_crit_edge, %for.end210
  %bkt.4397 = phi i32 [ 0, %for.end210 ], [ %inc268, %for.inc267.for.body232_crit_edge ]
  %arrayidx234 = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 12, i32 %bkt.4397
  %44 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx234, align 4
  %tobool246.not395 = icmp eq ptr %45, null
  br i1 %tobool246.not395, label %for.body232.for.inc267_crit_edge, label %for.body232.land.rhs247_crit_edge

for.body232.land.rhs247_crit_edge:                ; preds = %for.body232
  br label %land.rhs247

for.body232.for.inc267_crit_edge:                 ; preds = %for.body232
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc267

land.rhs247:                                      ; preds = %hash_del.exit382.land.rhs247_crit_edge, %for.body232.land.rhs247_crit_edge
  %neigh_entry.1396 = phi ptr [ %47, %hash_del.exit382.land.rhs247_crit_edge ], [ %45, %for.body232.land.rhs247_crit_edge ]
  %46 = ptrtoint ptr %neigh_entry.1396 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %neigh_entry.1396, align 4
  %pprev.i.i.i375 = getelementptr inbounds %struct.hlist_node, ptr %neigh_entry.1396, i32 0, i32 1
  %48 = ptrtoint ptr %pprev.i.i.i375 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pprev.i.i.i375, align 4
  %tobool.not.i.not.i.i376 = icmp eq ptr %49, null
  br i1 %tobool.not.i.not.i.i376, label %land.rhs247.hash_del.exit382_crit_edge, label %if.then.i.i378

land.rhs247.hash_del.exit382_crit_edge:           ; preds = %land.rhs247
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit382

if.then.i.i378:                                   ; preds = %land.rhs247
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %47, ptr %49, align 4
  %tobool.not.i3.i.i377 = icmp eq ptr %47, null
  br i1 %tobool.not.i3.i.i377, label %if.then.i.i378.__hlist_del.exit.i.i381_crit_edge, label %do.body13.i.i.i380

if.then.i.i378.__hlist_del.exit.i.i381_crit_edge: ; preds = %if.then.i.i378
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i381

do.body13.i.i.i380:                               ; preds = %if.then.i.i378
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i379 = getelementptr inbounds %struct.hlist_node, ptr %47, i32 0, i32 1
  %51 = ptrtoint ptr %pprev14.i.i.i379 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %pprev14.i.i.i379, align 4
  br label %__hlist_del.exit.i.i381

__hlist_del.exit.i.i381:                          ; preds = %do.body13.i.i.i380, %if.then.i.i378.__hlist_del.exit.i.i381_crit_edge
  %52 = ptrtoint ptr %neigh_entry.1396 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %neigh_entry.1396, align 4
  %53 = ptrtoint ptr %pprev.i.i.i375 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %pprev.i.i.i375, align 4
  br label %hash_del.exit382

hash_del.exit382:                                 ; preds = %__hlist_del.exit.i.i381, %land.rhs247.hash_del.exit382_crit_edge
  %tobool246.not = icmp eq ptr %47, null
  br i1 %tobool246.not, label %hash_del.exit382.for.inc267_crit_edge, label %hash_del.exit382.land.rhs247_crit_edge

hash_del.exit382.land.rhs247_crit_edge:           ; preds = %hash_del.exit382
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs247

hash_del.exit382.for.inc267_crit_edge:            ; preds = %hash_del.exit382
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc267

for.inc267:                                       ; preds = %hash_del.exit382.for.inc267_crit_edge, %for.body232.for.inc267_crit_edge
  %inc268 = add nuw nsw i32 %bkt.4397, 1
  %exitcond401.not = icmp eq i32 %inc268, 65536
  br i1 %exitcond401.not, label %for.end269, label %for.inc267.for.body232_crit_edge

for.inc267.for.body232_crit_edge:                 ; preds = %for.inc267
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body232

for.end269:                                       ; preds = %for.inc267
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %neigh_tbl_lock, i32 noundef %call220) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ofdpa_port_pre_init(ptr noundef %rocker_port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %rocker = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 1
  %2 = ptrtoint ptr %rocker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rocker, align 4
  %wpriv1 = getelementptr inbounds %struct.rocker, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %wpriv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wpriv1, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %1, align 4
  %rocker_port2 = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %rocker_port2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rocker_port, ptr %rocker_port2, align 4
  %8 = ptrtoint ptr %rocker_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rocker_port, align 8
  %dev3 = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dev3, align 4
  %pport = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 4
  %11 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pport, align 8
  %pport4 = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pport4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pport4, align 4
  %brport_flags = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %brport_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %brport_flags, align 4
  %ageing_time = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %ageing_time to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 30000, ptr %ageing_time, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_init(ptr noundef %rocker_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %brport_flags = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %brport_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brport_flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call = tail call i32 @rocker_port_set_learning(ptr noundef %rocker_port, i1 noundef zeroext %tobool) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %ofdpa_flow_tbl_ig_port.exit.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

ofdpa_flow_tbl_ig_port.exit.i:                    ; preds = %entry
  %key.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %key.i.i, align 8
  %tbl_id.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %tbl_id.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tbl_id.i.i, align 4
  %7 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 8
  %in_pport_mask6.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %in_pport_mask6.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -65536, ptr %in_pport_mask6.i.i, align 4
  %goto_tbl8.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %goto_tbl8.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %goto_tbl8.i.i, align 8
  %call9.i.i = tail call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %ofdpa_flow_tbl_ig_port.exit.i.if.then_crit_edge

ofdpa_flow_tbl_ig_port.exit.i.if.then_crit_edge:  ; preds = %ofdpa_flow_tbl_ig_port.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %ofdpa_flow_tbl_ig_port.exit.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i6.i = phi i32 [ %call9.i.i, %ofdpa_flow_tbl_ig_port.exit.i.if.then_crit_edge ], [ -12, %entry.if.then_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i6.i) #18
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.14) #18
  br label %cleanup

if.end:                                           ; preds = %ofdpa_flow_tbl_ig_port.exit.i
  %dev4 = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev4, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex, align 4
  %call5 = tail call fastcc zeroext i16 @ofdpa_port_internal_vlan_id_get(ptr noundef %1, i32 noundef %18)
  %internal_vlan_id = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %internal_vlan_id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call5, ptr %internal_vlan_id, align 4
  %call.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 0, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i25 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i25, label %if.end.i, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call fastcc i32 @ofdpa_port_router_mac(ptr noundef %1, i32 noundef 0, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 1, i16 noundef zeroext 0) #14
  br label %if.then8

if.then8:                                         ; preds = %if.then3.i, %if.end.if.then8_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.if.then8_crit_edge ]
  %20 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.15) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i.i27 = icmp eq ptr %call7.i.i.i.i26, null
  br i1 %tobool.not.i.i27, label %if.then8.if.then.i37_crit_edge, label %ofdpa_flow_tbl_ig_port.exit.i34

if.then8.if.then.i37_crit_edge:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i37

ofdpa_flow_tbl_ig_port.exit.i34:                  ; preds = %if.then8
  %key.i.i28 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3
  %23 = ptrtoint ptr %key.i.i28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %key.i.i28, align 8
  %tbl_id.i.i29 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %tbl_id.i.i29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tbl_id.i.i29, align 4
  %25 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %25, align 8
  %in_pport_mask6.i.i30 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %in_pport_mask6.i.i30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -65536, ptr %in_pport_mask6.i.i30, align 4
  %goto_tbl8.i.i31 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %goto_tbl8.i.i31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10, ptr %goto_tbl8.i.i31, align 8
  %call.i41 = tail call fastcc i32 @ofdpa_flow_tbl_del(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %call7.i.i.i.i26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i33 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i33, label %ofdpa_flow_tbl_ig_port.exit.i34.cleanup_crit_edge, label %ofdpa_flow_tbl_ig_port.exit.i34.if.then.i37_crit_edge

ofdpa_flow_tbl_ig_port.exit.i34.if.then.i37_crit_edge: ; preds = %ofdpa_flow_tbl_ig_port.exit.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i37

ofdpa_flow_tbl_ig_port.exit.i34.cleanup_crit_edge: ; preds = %ofdpa_flow_tbl_ig_port.exit.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i37:                                      ; preds = %ofdpa_flow_tbl_ig_port.exit.i34.if.then.i37_crit_edge, %if.then8.if.then.i37_crit_edge
  %retval.0.i6.i35 = phi i32 [ %call.i41, %ofdpa_flow_tbl_ig_port.exit.i34.if.then.i37_crit_edge ], [ -12, %if.then8.if.then.i37_crit_edge ]
  %29 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i6.i35) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then.i37, %ofdpa_flow_tbl_ig_port.exit.i34.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i6.i, %if.then ], [ 0, %if.end.i.cleanup_crit_edge ], [ %retval.0.i.ph, %ofdpa_flow_tbl_ig_port.exit.i34.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then.i37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ofdpa_port_fini(ptr nocapture noundef readonly %rocker_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.if.then.i_crit_edge, label %ofdpa_flow_tbl_ig_port.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

ofdpa_flow_tbl_ig_port.exit.i:                    ; preds = %entry
  %key.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %key.i.i, align 8
  %tbl_id.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %tbl_id.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tbl_id.i.i, align 4
  %5 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 8
  %in_pport_mask6.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %in_pport_mask6.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -65536, ptr %in_pport_mask6.i.i, align 4
  %goto_tbl8.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %goto_tbl8.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %goto_tbl8.i.i, align 8
  %call.i = tail call fastcc i32 @ofdpa_flow_tbl_del(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %call7.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ofdpa_flow_tbl_ig_port.exit.i.ofdpa_port_ig_tbl.exit_crit_edge, label %ofdpa_flow_tbl_ig_port.exit.i.if.then.i_crit_edge

ofdpa_flow_tbl_ig_port.exit.i.if.then.i_crit_edge: ; preds = %ofdpa_flow_tbl_ig_port.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

ofdpa_flow_tbl_ig_port.exit.i.ofdpa_port_ig_tbl.exit_crit_edge: ; preds = %ofdpa_flow_tbl_ig_port.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_ig_tbl.exit

if.then.i:                                        ; preds = %ofdpa_flow_tbl_ig_port.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %retval.0.i6.i = phi i32 [ %call.i, %ofdpa_flow_tbl_ig_port.exit.i.if.then.i_crit_edge ], [ -12, %entry.if.then.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i6.i) #18
  br label %ofdpa_port_ig_tbl.exit

ofdpa_port_ig_tbl.exit:                           ; preds = %if.then.i, %ofdpa_flow_tbl_ig_port.exit.i.ofdpa_port_ig_tbl.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_open(ptr nocapture noundef readonly %rocker_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %bridge_dev.i.i.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bridge_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_dev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.if.end.i_crit_edge, label %ofdpa_port_is_bridged.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

ofdpa_port_is_bridged.exit.i:                     ; preds = %entry
  %rtnl_link_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 136
  %4 = ptrtoint ptr %rtnl_link_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtnl_link_ops.i.i.i, align 4
  %kind2.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kind2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kind2.i.i.i, align 4
  %call.i.i.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %ofdpa_port_is_bridged.exit.i.ofdpa_port_fwd_enable.exit_crit_edge, label %ofdpa_port_is_bridged.exit.i.if.end.i_crit_edge

ofdpa_port_is_bridged.exit.i.if.end.i_crit_edge:  ; preds = %ofdpa_port_is_bridged.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

ofdpa_port_is_bridged.exit.i.ofdpa_port_fwd_enable.exit_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_fwd_enable.exit

if.end.i:                                         ; preds = %ofdpa_port_is_bridged.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call1.i = tail call fastcc i32 @ofdpa_port_stp_update(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 3) #14
  br label %ofdpa_port_fwd_enable.exit

ofdpa_port_fwd_enable.exit:                       ; preds = %if.end.i, %ofdpa_port_is_bridged.exit.i.ofdpa_port_fwd_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ 0, %ofdpa_port_is_bridged.exit.i.ofdpa_port_fwd_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ofdpa_port_stop(ptr nocapture noundef readonly %rocker_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %bridge_dev.i.i.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bridge_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_dev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.if.end.i_crit_edge, label %ofdpa_port_is_bridged.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

ofdpa_port_is_bridged.exit.i:                     ; preds = %entry
  %rtnl_link_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 136
  %4 = ptrtoint ptr %rtnl_link_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtnl_link_ops.i.i.i, align 4
  %kind2.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kind2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kind2.i.i.i, align 4
  %call.i.i.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %ofdpa_port_is_bridged.exit.i.ofdpa_port_fwd_disable.exit_crit_edge, label %ofdpa_port_is_bridged.exit.i.if.end.i_crit_edge

ofdpa_port_is_bridged.exit.i.if.end.i_crit_edge:  ; preds = %ofdpa_port_is_bridged.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

ofdpa_port_is_bridged.exit.i.ofdpa_port_fwd_disable.exit_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_fwd_disable.exit

if.end.i:                                         ; preds = %ofdpa_port_is_bridged.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call1.i = tail call fastcc i32 @ofdpa_port_stp_update(ptr noundef %1, i32 noundef 2, i8 noundef zeroext 0) #14
  br label %ofdpa_port_fwd_disable.exit

ofdpa_port_fwd_disable.exit:                      ; preds = %if.end.i, %ofdpa_port_is_bridged.exit.i.ofdpa_port_fwd_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_attr_stp_state_set(ptr nocapture noundef readonly %rocker_port, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %call = tail call fastcc i32 @ofdpa_port_stp_update(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %state)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_attr_bridge_flags_set(ptr nocapture noundef readonly %rocker_port, i32 noundef %brport_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %brport_flags1 = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %brport_flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brport_flags1, align 4
  store i32 %brport_flags, ptr %brport_flags1, align 4
  %xor = xor i32 %3, %brport_flags
  %and = and i32 %xor, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rocker_port4 = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rocker_port4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rocker_port4, align 4
  %and6 = and i32 %brport_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7 = icmp ne i32 %and6, 0
  %call = tail call i32 @rocker_port_set_learning(ptr noundef %5, i1 noundef zeroext %tobool7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ofdpa_port_attr_bridge_flags_support_get(ptr nocapture noundef readnone %rocker_port, ptr nocapture noundef writeonly %p_brport_flags_support) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_brport_flags_support to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %p_brport_flags_support, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_attr_bridge_ageing_time_set(ptr nocapture noundef readonly %rocker_port, i32 noundef %ageing_time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @clock_t_to_jiffies(i32 noundef %ageing_time) #14
  %ageing_time2 = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ageing_time2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %ageing_time2, align 4
  %ageing_time4 = getelementptr inbounds %struct.ofdpa, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %ageing_time4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ageing_time4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %6)
  %cmp = icmp ult i32 %call, %6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %ageing_time4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %ageing_time4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %fdb_cleanup_timer = getelementptr inbounds %struct.ofdpa, ptr %9, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %call8 = tail call i32 @mod_timer(ptr noundef %fdb_cleanup_timer, i32 noundef %10) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_obj_vlan_add(ptr nocapture noundef readonly %rocker_port, ptr nocapture noundef readonly %vlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  %call.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ofdpa_port_vlan_add.exit_crit_edge

entry.ofdpa_port_vlan_add.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_vlan_add.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call fastcc i32 @ofdpa_port_router_mac(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.ofdpa_port_vlan_add.exit_crit_edge, label %if.then3.i

if.end.i.ofdpa_port_vlan_add.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_vlan_add.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 1, i16 noundef zeroext %3) #14
  br label %ofdpa_port_vlan_add.exit

ofdpa_port_vlan_add.exit:                         ; preds = %if.then3.i, %if.end.i.ofdpa_port_vlan_add.exit_crit_edge, %entry.ofdpa_port_vlan_add.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.ofdpa_port_vlan_add.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.ofdpa_port_vlan_add.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_obj_vlan_del(ptr nocapture noundef readonly %rocker_port, ptr nocapture noundef readonly %vlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  %call.i = tail call fastcc i32 @ofdpa_port_router_mac(ptr noundef %1, i32 noundef 1, i16 noundef zeroext %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ofdpa_port_vlan_del.exit_crit_edge

entry.ofdpa_port_vlan_del.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_vlan_del.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 1, i16 noundef zeroext %3) #14
  br label %ofdpa_port_vlan_del.exit

ofdpa_port_vlan_del.exit:                         ; preds = %if.end.i, %entry.ofdpa_port_vlan_del.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %call.i, %entry.ofdpa_port_vlan_del.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_obj_fdb_add(ptr nocapture noundef readonly %rocker_port, i16 noundef zeroext %vid, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool1.not.i = icmp eq i16 %vid, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %entry.ofdpa_port_vid_to_vlan.exit_crit_edge

entry.ofdpa_port_vid_to_vlan.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_vid_to_vlan.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %internal_vlan_id.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %internal_vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %internal_vlan_id.i, align 4
  br label %ofdpa_port_vid_to_vlan.exit

ofdpa_port_vid_to_vlan.exit:                      ; preds = %if.then2.i, %entry.ofdpa_port_vid_to_vlan.exit_crit_edge
  %vlan_id.0.i = phi i16 [ %vid, %entry.ofdpa_port_vid_to_vlan.exit_crit_edge ], [ %3, %if.then2.i ]
  %bridge_dev.i.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge_dev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %ofdpa_port_vid_to_vlan.exit.cleanup_crit_edge, label %ofdpa_port_is_bridged.exit

ofdpa_port_vid_to_vlan.exit.cleanup_crit_edge:    ; preds = %ofdpa_port_vid_to_vlan.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ofdpa_port_is_bridged.exit:                       ; preds = %ofdpa_port_vid_to_vlan.exit
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 136
  %6 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %kind2.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %kind2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kind2.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end, label %ofdpa_port_is_bridged.exit.cleanup_crit_edge

ofdpa_port_is_bridged.exit.cleanup_crit_edge:     ; preds = %ofdpa_port_is_bridged.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %ofdpa_port_is_bridged.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call fastcc i32 @ofdpa_port_fdb(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vlan_id.0.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ofdpa_port_is_bridged.exit.cleanup_crit_edge, %ofdpa_port_vid_to_vlan.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %ofdpa_port_is_bridged.exit.cleanup_crit_edge ], [ -22, %ofdpa_port_vid_to_vlan.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_obj_fdb_del(ptr nocapture noundef readonly %rocker_port, i16 noundef zeroext %vid, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool1.not.i = icmp eq i16 %vid, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %entry.ofdpa_port_vid_to_vlan.exit_crit_edge

entry.ofdpa_port_vid_to_vlan.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_vid_to_vlan.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %internal_vlan_id.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %internal_vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %internal_vlan_id.i, align 4
  br label %ofdpa_port_vid_to_vlan.exit

ofdpa_port_vid_to_vlan.exit:                      ; preds = %if.then2.i, %entry.ofdpa_port_vid_to_vlan.exit_crit_edge
  %vlan_id.0.i = phi i16 [ %vid, %entry.ofdpa_port_vid_to_vlan.exit_crit_edge ], [ %3, %if.then2.i ]
  %bridge_dev.i.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge_dev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %ofdpa_port_vid_to_vlan.exit.cleanup_crit_edge, label %ofdpa_port_is_bridged.exit

ofdpa_port_vid_to_vlan.exit.cleanup_crit_edge:    ; preds = %ofdpa_port_vid_to_vlan.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ofdpa_port_is_bridged.exit:                       ; preds = %ofdpa_port_vid_to_vlan.exit
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 136
  %6 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %kind2.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %kind2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kind2.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end, label %ofdpa_port_is_bridged.exit.cleanup_crit_edge

ofdpa_port_is_bridged.exit.cleanup_crit_edge:     ; preds = %ofdpa_port_is_bridged.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %ofdpa_port_is_bridged.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call fastcc i32 @ofdpa_port_fdb(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vlan_id.0.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ofdpa_port_is_bridged.exit.cleanup_crit_edge, %ofdpa_port_vid_to_vlan.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %ofdpa_port_is_bridged.exit.cleanup_crit_edge ], [ -22, %ofdpa_port_vid_to_vlan.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_master_linked(ptr nocapture noundef readonly %rocker_port, ptr noundef %master, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %master, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %call.i.i = tail call fastcc i32 @ofdpa_port_router_mac(ptr noundef %1, i32 noundef 1, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %ofdpa_port_vlan_del.exit.i, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

ofdpa_port_vlan_del.exit.i:                       ; preds = %if.then
  %call1.i.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 1, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ofdpa_port_vlan_del.exit.i.if.end5_crit_edge

ofdpa_port_vlan_del.exit.i.if.end5_crit_edge:     ; preds = %ofdpa_port_vlan_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i:                                         ; preds = %ofdpa_port_vlan_del.exit.i
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex.i, align 4
  tail call fastcc void @ofdpa_port_internal_vlan_id_put(ptr noundef %1, i32 noundef %9) #14
  %ifindex3.i = getelementptr inbounds %struct.net_device, ptr %master, i32 0, i32 17
  %10 = ptrtoint ptr %ifindex3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex3.i, align 4
  %call4.i = tail call fastcc zeroext i16 @ofdpa_port_internal_vlan_id_get(ptr noundef %1, i32 noundef %11) #14
  %internal_vlan_id.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %internal_vlan_id.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call4.i, ptr %internal_vlan_id.i, align 4
  %bridge_dev.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %bridge_dev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %master, ptr %bridge_dev.i, align 4
  %call.i23.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 0, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool.not.i24.i, label %if.end.i26.i, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i26.i:                                     ; preds = %if.end.i
  %call1.i25.i = tail call fastcc i32 @ofdpa_port_router_mac(ptr noundef %1, i32 noundef 0, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i25.i, 0
  br i1 %tobool2.not.i.i, label %if.end8.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 1, i16 noundef zeroext 0) #14
  br label %if.end5

if.end8.i:                                        ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i = tail call i32 @switchdev_bridge_port_offload(ptr noundef %5, ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef %extack) #14
  br label %if.end5

if.else:                                          ; preds = %entry
  %and.i11 = and i64 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i11)
  %tobool.i12.not = icmp eq i64 %and.i11, 0
  br i1 %tobool.i12.not, label %if.else.if.end5_crit_edge, label %if.then3

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.else
  %bridge_dev.i13 = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %bridge_dev.i13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %master, ptr %bridge_dev.i13, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %master, null
  br i1 %tobool.not.i.i.i.i, label %if.then3.ofdpa_port_fwd_disable.exit.i_crit_edge, label %ofdpa_port_is_bridged.exit.i.i

if.then3.ofdpa_port_fwd_disable.exit.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_fwd_disable.exit.i

ofdpa_port_is_bridged.exit.i.i:                   ; preds = %if.then3
  %rtnl_link_ops.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %master, i32 0, i32 136
  %15 = ptrtoint ptr %rtnl_link_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtnl_link_ops.i.i.i.i, align 4
  %kind2.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %kind2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kind2.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %ofdpa_port_is_bridged.exit.i.i.if.end.i16_crit_edge, label %ofdpa_port_is_bridged.exit.i.i.ofdpa_port_fwd_disable.exit.i_crit_edge

ofdpa_port_is_bridged.exit.i.i.ofdpa_port_fwd_disable.exit.i_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_fwd_disable.exit.i

ofdpa_port_is_bridged.exit.i.i.if.end.i16_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i16

ofdpa_port_fwd_disable.exit.i:                    ; preds = %ofdpa_port_is_bridged.exit.i.i.ofdpa_port_fwd_disable.exit.i_crit_edge, %if.then3.ofdpa_port_fwd_disable.exit.i_crit_edge
  %call1.i.i14 = tail call fastcc i32 @ofdpa_port_stp_update(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i.i14, 0
  br i1 %tobool.not.i15, label %ofdpa_port_fwd_disable.exit.i.if.end.i16_crit_edge, label %ofdpa_port_fwd_disable.exit.i.if.end5_crit_edge

ofdpa_port_fwd_disable.exit.i.if.end5_crit_edge:  ; preds = %ofdpa_port_fwd_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

ofdpa_port_fwd_disable.exit.i.if.end.i16_crit_edge: ; preds = %ofdpa_port_fwd_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i16

if.end.i16:                                       ; preds = %ofdpa_port_fwd_disable.exit.i.if.end.i16_crit_edge, %ofdpa_port_is_bridged.exit.i.i.if.end.i16_crit_edge
  %19 = ptrtoint ptr %bridge_dev.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bridge_dev.i13, align 4
  %tobool.not.i.i.i7.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i7.i, label %if.end.i16.if.end.i14.i_crit_edge, label %ofdpa_port_is_bridged.exit.i12.i

if.end.i16.if.end.i14.i_crit_edge:                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i14.i

ofdpa_port_is_bridged.exit.i12.i:                 ; preds = %if.end.i16
  %rtnl_link_ops.i.i.i8.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 136
  %21 = ptrtoint ptr %rtnl_link_ops.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtnl_link_ops.i.i.i8.i, align 4
  %kind2.i.i.i9.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %kind2.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kind2.i.i.i9.i, align 4
  %call.i.i.i10.i = tail call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i10.i)
  %tobool3.not.i.i.i11.i = icmp eq i32 %call.i.i.i10.i, 0
  br i1 %tobool3.not.i.i.i11.i, label %ofdpa_port_is_bridged.exit.i12.i.if.end5_crit_edge, label %ofdpa_port_is_bridged.exit.i12.i.if.end.i14.i_crit_edge

ofdpa_port_is_bridged.exit.i12.i.if.end.i14.i_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i14.i

ofdpa_port_is_bridged.exit.i12.i.if.end5_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i14.i:                                     ; preds = %ofdpa_port_is_bridged.exit.i12.i.if.end.i14.i_crit_edge, %if.end.i16.if.end.i14.i_crit_edge
  %call1.i13.i = tail call fastcc i32 @ofdpa_port_stp_update(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 3) #14
  br label %if.end5

if.end5:                                          ; preds = %if.end.i14.i, %ofdpa_port_is_bridged.exit.i12.i.if.end5_crit_edge, %ofdpa_port_fwd_disable.exit.i.if.end5_crit_edge, %if.else.if.end5_crit_edge, %if.end8.i, %if.then3.i.i, %if.end.i.if.end5_crit_edge, %ofdpa_port_vlan_del.exit.i.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %err.0 = phi i32 [ 0, %if.else.if.end5_crit_edge ], [ %call9.i, %if.end8.i ], [ %call1.i.i, %ofdpa_port_vlan_del.exit.i.if.end5_crit_edge ], [ %call.i.i, %if.then.if.end5_crit_edge ], [ %call1.i25.i, %if.then3.i.i ], [ %call.i23.i, %if.end.i.if.end5_crit_edge ], [ %call1.i.i14, %ofdpa_port_fwd_disable.exit.i.if.end5_crit_edge ], [ %call1.i13.i, %if.end.i14.i ], [ 0, %ofdpa_port_is_bridged.exit.i12.i.if.end5_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_master_unlinked(ptr nocapture noundef readonly %rocker_port, ptr nocapture noundef readnone %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %bridge_dev.i.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_dev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end5_crit_edge, label %ofdpa_port_is_bridged.exit

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

ofdpa_port_is_bridged.exit:                       ; preds = %entry
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 136
  %4 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %kind2.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kind2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kind2.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then, label %ofdpa_port_is_ovsed.exit

if.then:                                          ; preds = %ofdpa_port_is_bridged.exit
  %dev1.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  tail call void @switchdev_bridge_port_unoffload(ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %call.i.i9 = tail call fastcc i32 @ofdpa_port_router_mac(ptr noundef %1, i32 noundef 1, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %call.i.i9, 0
  br i1 %tobool.not.i.i10, label %ofdpa_port_vlan_del.exit.i, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

ofdpa_port_vlan_del.exit.i:                       ; preds = %if.then
  %call1.i.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 1, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ofdpa_port_vlan_del.exit.i.if.end5_crit_edge

ofdpa_port_vlan_del.exit.i.if.end5_crit_edge:     ; preds = %ofdpa_port_vlan_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i:                                         ; preds = %ofdpa_port_vlan_del.exit.i
  %10 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bridge_dev.i.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex.i, align 4
  tail call fastcc void @ofdpa_port_internal_vlan_id_put(ptr noundef %1, i32 noundef %13) #14
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %ifindex3.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex3.i, align 4
  %call4.i = tail call fastcc zeroext i16 @ofdpa_port_internal_vlan_id_get(ptr noundef %1, i32 noundef %17) #14
  %internal_vlan_id.i = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %internal_vlan_id.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %call4.i, ptr %internal_vlan_id.i, align 4
  %19 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bridge_dev.i.i, align 4
  %call.i30.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 0, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %if.end.i33.i, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i33.i:                                     ; preds = %if.end.i
  %call1.i32.i = tail call fastcc i32 @ofdpa_port_router_mac(ptr noundef %1, i32 noundef 0, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i.i, label %if.end9.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i.i = tail call fastcc i32 @ofdpa_port_vlan(ptr noundef %1, i32 noundef 1, i16 noundef zeroext 0) #14
  br label %if.end5

if.end9.i:                                        ; preds = %if.end.i33.i
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end5_crit_edge, label %if.then12.i

if.end9.i.if.end5_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then12.i:                                      ; preds = %if.end9.i
  %24 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bridge_dev.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i.i, label %if.then12.i.if.end.i36.i_crit_edge, label %ofdpa_port_is_bridged.exit.i.i

if.then12.i.if.end.i36.i_crit_edge:               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i36.i

ofdpa_port_is_bridged.exit.i.i:                   ; preds = %if.then12.i
  %rtnl_link_ops.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 136
  %26 = ptrtoint ptr %rtnl_link_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtnl_link_ops.i.i.i.i, align 4
  %kind2.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %kind2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kind2.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @strcmp(ptr noundef %29, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %ofdpa_port_is_bridged.exit.i.i.if.end5_crit_edge, label %ofdpa_port_is_bridged.exit.i.i.if.end.i36.i_crit_edge

ofdpa_port_is_bridged.exit.i.i.if.end.i36.i_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i36.i

ofdpa_port_is_bridged.exit.i.i.if.end5_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i36.i:                                     ; preds = %ofdpa_port_is_bridged.exit.i.i.if.end.i36.i_crit_edge, %if.then12.i.if.end.i36.i_crit_edge
  %call1.i35.i = tail call fastcc i32 @ofdpa_port_stp_update(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 3) #14
  br label %if.end5

ofdpa_port_is_ovsed.exit:                         ; preds = %ofdpa_port_is_bridged.exit
  %30 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %kind2.i.i14 = getelementptr inbounds %struct.rtnl_link_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %kind2.i.i14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %kind2.i.i14, align 4
  %call.i.i15 = tail call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(12) @.str.27) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool3.not.i.i16 = icmp eq i32 %call.i.i15, 0
  br i1 %tobool3.not.i.i16, label %if.then3, label %ofdpa_port_is_ovsed.exit.if.end5_crit_edge

ofdpa_port_is_ovsed.exit.if.end5_crit_edge:       ; preds = %ofdpa_port_is_ovsed.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %ofdpa_port_is_ovsed.exit
  %34 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %bridge_dev.i.i, align 4
  %call1.i.i19 = tail call fastcc i32 @ofdpa_port_stp_update(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i.i19, 0
  br i1 %tobool.not.i20, label %if.end.i21, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i21:                                       ; preds = %if.then3
  %35 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bridge_dev.i.i, align 4
  %tobool.not.i.i.i7.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i7.i, label %if.end.i21.if.end.i14.i_crit_edge, label %ofdpa_port_is_bridged.exit.i12.i

if.end.i21.if.end.i14.i_crit_edge:                ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i14.i

ofdpa_port_is_bridged.exit.i12.i:                 ; preds = %if.end.i21
  %rtnl_link_ops.i.i.i8.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 136
  %37 = ptrtoint ptr %rtnl_link_ops.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtnl_link_ops.i.i.i8.i, align 4
  %kind2.i.i.i9.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %kind2.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %kind2.i.i.i9.i, align 4
  %call.i.i.i10.i = tail call i32 @strcmp(ptr noundef %40, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i10.i)
  %tobool3.not.i.i.i11.i = icmp eq i32 %call.i.i.i10.i, 0
  br i1 %tobool3.not.i.i.i11.i, label %ofdpa_port_is_bridged.exit.i12.i.if.end5_crit_edge, label %ofdpa_port_is_bridged.exit.i12.i.if.end.i14.i_crit_edge

ofdpa_port_is_bridged.exit.i12.i.if.end.i14.i_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i14.i

ofdpa_port_is_bridged.exit.i12.i.if.end5_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i14.i:                                     ; preds = %ofdpa_port_is_bridged.exit.i12.i.if.end.i14.i_crit_edge, %if.end.i21.if.end.i14.i_crit_edge
  %call1.i13.i = tail call fastcc i32 @ofdpa_port_stp_update(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 3) #14
  br label %if.end5

if.end5:                                          ; preds = %if.end.i14.i, %ofdpa_port_is_bridged.exit.i12.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %ofdpa_port_is_ovsed.exit.if.end5_crit_edge, %if.end.i36.i, %ofdpa_port_is_bridged.exit.i.i.if.end5_crit_edge, %if.end9.i.if.end5_crit_edge, %if.then3.i.i, %if.end.i.if.end5_crit_edge, %ofdpa_port_vlan_del.exit.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ 0, %ofdpa_port_is_ovsed.exit.if.end5_crit_edge ], [ %call1.i.i, %ofdpa_port_vlan_del.exit.i.if.end5_crit_edge ], [ 0, %if.end9.i.if.end5_crit_edge ], [ %call1.i35.i, %if.end.i36.i ], [ 0, %ofdpa_port_is_bridged.exit.i.i.if.end5_crit_edge ], [ %call.i.i9, %if.then.if.end5_crit_edge ], [ %call1.i32.i, %if.then3.i.i ], [ %call.i30.i, %if.end.i.if.end5_crit_edge ], [ %call1.i.i19, %if.then3.if.end5_crit_edge ], [ %call1.i13.i, %if.end.i14.i ], [ 0, %ofdpa_port_is_bridged.exit.i12.i.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_neigh_update(ptr nocapture noundef readonly %rocker_port, ptr noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 12
  %2 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nud_state, align 8
  %4 = and i8 %3, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = zext i1 %tobool.not to i32
  %or = or i32 %cond, 2
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 27
  %5 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %primary_key, align 4
  %ha = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 18
  %call = tail call fastcc i32 @ofdpa_port_ipv4_neigh(ptr noundef %1, i32 noundef %or, i32 noundef %6, ptr noundef %ha)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_neigh_destroy(ptr nocapture noundef readonly %rocker_port, ptr noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 27
  %2 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %primary_key, align 4
  %ha = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 18
  %call = tail call fastcc i32 @ofdpa_port_ipv4_neigh(ptr noundef %1, i32 noundef 3, i32 noundef %3, ptr noundef %ha)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_port_ev_mac_vlan_seen(ptr nocapture noundef readonly %rocker_port, ptr noundef %addr, i16 noundef zeroext %vlan_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 2
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %stp_state = getelementptr inbounds %struct.ofdpa_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %stp_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stp_state, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @ofdpa_port_fdb(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %vlan_id, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_fib4_add(ptr noundef %rocker, ptr nocapture noundef readonly %fen_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 12
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %fib_aborted = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %fib_aborted to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fib_aborted, align 8, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %fi = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %fen_info, i32 0, i32 3
  %4 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fi, align 4
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.fib_info_nh.exit_crit_edge, label %do.end.i, !prof !116

if.end.fib_info_nh.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fib_info_nh.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 468, i32 noundef 9, ptr noundef null) #14
  br label %fib_info_nh.exit

fib_info_nh.exit:                                 ; preds = %do.end.i, %if.end.fib_info_nh.exit_crit_edge
  %fib_nh.i = getelementptr inbounds %struct.fib_info, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %fib_nh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fib_nh.i, align 4
  %call.i = tail call ptr @rocker_port_dev_lower_find(ptr noundef %9, ptr noundef %rocker) #14
  %tobool.not.i23 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i23, label %fib_info_nh.exit.cleanup_crit_edge, label %ofdpa_port_dev_lower_find.exit

fib_info_nh.exit.cleanup_crit_edge:               ; preds = %fib_info_nh.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ofdpa_port_dev_lower_find.exit:                   ; preds = %fib_info_nh.exit
  %wpriv.i = getelementptr inbounds %struct.rocker_port, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %wpriv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wpriv.i, align 8
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %ofdpa_port_dev_lower_find.exit.cleanup_crit_edge, label %if.end4

ofdpa_port_dev_lower_find.exit.cleanup_crit_edge: ; preds = %ofdpa_port_dev_lower_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %ofdpa_port_dev_lower_find.exit
  %dst = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %fen_info, i32 0, i32 1
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst, align 4
  %dst_len = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %fen_info, i32 0, i32 2
  %14 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_len, align 4
  %16 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fi, align 4
  %call6 = tail call fastcc i32 @ofdpa_port_fib_ipv4(ptr noundef nonnull %11, i32 noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %fib_nh.i, i32 0, i32 6
  %18 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nhc_flags, align 1
  %20 = or i8 %19, 8
  store i8 %20, ptr %nhc_flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %ofdpa_port_dev_lower_find.exit.cleanup_crit_edge, %fib_info_nh.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %ofdpa_port_dev_lower_find.exit.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ 0, %fib_info_nh.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_fib4_del(ptr noundef %rocker, ptr nocapture noundef readonly %fen_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 12
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %fib_aborted = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %fib_aborted to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fib_aborted, align 8, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %fi = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %fen_info, i32 0, i32 3
  %4 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fi, align 4
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.fib_info_nh.exit_crit_edge, label %do.end.i, !prof !116

if.end.fib_info_nh.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fib_info_nh.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 468, i32 noundef 9, ptr noundef null) #14
  br label %fib_info_nh.exit

fib_info_nh.exit:                                 ; preds = %do.end.i, %if.end.fib_info_nh.exit_crit_edge
  %fib_nh.i = getelementptr inbounds %struct.fib_info, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %fib_nh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fib_nh.i, align 4
  %call.i = tail call ptr @rocker_port_dev_lower_find(ptr noundef %9, ptr noundef %rocker) #14
  %tobool.not.i18 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i18, label %fib_info_nh.exit.cleanup_crit_edge, label %ofdpa_port_dev_lower_find.exit

fib_info_nh.exit.cleanup_crit_edge:               ; preds = %fib_info_nh.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ofdpa_port_dev_lower_find.exit:                   ; preds = %fib_info_nh.exit
  %wpriv.i = getelementptr inbounds %struct.rocker_port, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %wpriv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wpriv.i, align 8
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %ofdpa_port_dev_lower_find.exit.cleanup_crit_edge, label %if.end4

ofdpa_port_dev_lower_find.exit.cleanup_crit_edge: ; preds = %ofdpa_port_dev_lower_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %ofdpa_port_dev_lower_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %fib_nh.i, i32 0, i32 6
  %12 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nhc_flags, align 1
  %14 = and i8 %13, -9
  store i8 %14, ptr %nhc_flags, align 1
  %dst = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %fen_info, i32 0, i32 1
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst, align 4
  %dst_len = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %fen_info, i32 0, i32 2
  %17 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_len, align 4
  %19 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fi, align 4
  %call8 = tail call fastcc i32 @ofdpa_port_fib_ipv4(ptr noundef nonnull %11, i32 noundef %16, i32 noundef %18, ptr noundef %20, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %ofdpa_port_dev_lower_find.exit.cleanup_crit_edge, %fib_info_nh.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %ofdpa_port_dev_lower_find.exit.cleanup_crit_edge ], [ 0, %fib_info_nh.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ofdpa_fib4_abort(ptr noundef %rocker) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wpriv = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 12
  %0 = ptrtoint ptr %wpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wpriv, align 8
  %fib_aborted = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %fib_aborted to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fib_aborted, align 8, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup48_crit_edge

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup48

do.body1:                                         ; preds = %entry
  %flow_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flow_tbl_lock) #14
  br label %for.body

for.body:                                         ; preds = %for.inc44.for.body_crit_edge, %do.body1
  %bkt.079 = phi i32 [ 0, %do.body1 ], [ %inc, %for.inc44.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 1, i32 %bkt.079
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool14.not77 = icmp eq ptr %5, null
  br i1 %tobool14.not77, label %for.body.for.inc44_crit_edge, label %for.body.land.rhs15_crit_edge

for.body.land.rhs15_crit_edge:                    ; preds = %for.body
  br label %land.rhs15

for.body.for.inc44_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc44

land.rhs15:                                       ; preds = %cleanup.land.rhs15_crit_edge, %for.body.land.rhs15_crit_edge
  %flow_entry.178 = phi ptr [ %7, %cleanup.land.rhs15_crit_edge ], [ %5, %for.body.land.rhs15_crit_edge ]
  %6 = ptrtoint ptr %flow_entry.178 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flow_entry.178, align 8
  %tbl_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %flow_entry.178, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %tbl_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tbl_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %9)
  %cmp21.not = icmp eq i32 %9, 30
  br i1 %cmp21.not, label %if.end24, label %land.rhs15.cleanup_crit_edge

land.rhs15.cleanup_crit_edge:                     ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %land.rhs15
  %fi = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %flow_entry.178, i32 0, i32 6
  %10 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fi, align 8
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end24.fib_info_nh.exit_crit_edge, label %do.end.i, !prof !116

if.end24.fib_info_nh.exit_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %fib_info_nh.exit

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 468, i32 noundef 9, ptr noundef null) #14
  br label %fib_info_nh.exit

fib_info_nh.exit:                                 ; preds = %do.end.i, %if.end24.fib_info_nh.exit_crit_edge
  %fib_nh.i = getelementptr inbounds %struct.fib_info, ptr %11, i32 0, i32 20
  %14 = ptrtoint ptr %fib_nh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fib_nh.i, align 4
  %call.i = tail call ptr @rocker_port_dev_lower_find(ptr noundef %15, ptr noundef %rocker) #14
  %tobool.not.i74 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i74, label %fib_info_nh.exit.cleanup_crit_edge, label %ofdpa_port_dev_lower_find.exit

fib_info_nh.exit.cleanup_crit_edge:               ; preds = %fib_info_nh.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ofdpa_port_dev_lower_find.exit:                   ; preds = %fib_info_nh.exit
  %wpriv.i = getelementptr inbounds %struct.rocker_port, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %wpriv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wpriv.i, align 8
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %ofdpa_port_dev_lower_find.exit.cleanup_crit_edge, label %if.end29

ofdpa_port_dev_lower_find.exit.cleanup_crit_edge: ; preds = %ofdpa_port_dev_lower_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %ofdpa_port_dev_lower_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %fib_nh.i, i32 0, i32 6
  %18 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nhc_flags, align 1
  %20 = and i8 %19, -9
  store i8 %20, ptr %nhc_flags, align 1
  %call33 = tail call fastcc i32 @ofdpa_flow_tbl_del(ptr noundef nonnull %17, i32 noundef 3, ptr noundef nonnull %flow_entry.178)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %ofdpa_port_dev_lower_find.exit.cleanup_crit_edge, %fib_info_nh.exit.cleanup_crit_edge, %land.rhs15.cleanup_crit_edge
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %cleanup.for.inc44_crit_edge, label %cleanup.land.rhs15_crit_edge

cleanup.land.rhs15_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs15

cleanup.for.inc44_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc44

for.inc44:                                        ; preds = %cleanup.for.inc44_crit_edge, %for.body.for.inc44_crit_edge
  %inc = add nuw nsw i32 %bkt.079, 1
  %exitcond.not = icmp eq i32 %inc, 65536
  br i1 %exitcond.not, label %for.end45, label %for.inc44.for.body_crit_edge

for.inc44.for.body_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end45:                                        ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flow_tbl_lock, i32 noundef %call3) #14
  %21 = ptrtoint ptr %fib_aborted to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %fib_aborted, align 8
  br label %cleanup48

cleanup48:                                        ; preds = %for.end45, %entry.cleanup48_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ofdpa_fdb_cleanup(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %ageing_time = getelementptr i8, ptr %t, i32 525528
  %1 = ptrtoint ptr %ageing_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ageing_time, align 4
  %add = add i32 %2, %0
  %fdb_tbl_lock = getelementptr i8, ptr %t, i32 262192
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fdb_tbl_lock) #14
  %fdb_tbl = getelementptr i8, ptr %t, i32 48
  br label %for.body

for.body:                                         ; preds = %for.inc51.for.body_crit_edge, %entry
  %next_timer.083 = phi i32 [ %add, %entry ], [ %next_timer.1.lcssa, %for.inc51.for.body_crit_edge ]
  %bkt.082 = phi i32 [ 0, %entry ], [ %inc, %for.inc51.for.body_crit_edge ]
  %arrayidx = getelementptr [65536 x %struct.hlist_head], ptr %fdb_tbl, i32 0, i32 %bkt.082
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool17.not79 = icmp eq ptr %4, null
  br i1 %tobool17.not79, label %for.body.for.inc51_crit_edge, label %for.body.land.rhs18_crit_edge

for.body.land.rhs18_crit_edge:                    ; preds = %for.body
  br label %land.rhs18

for.body.for.inc51_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc51

land.rhs18:                                       ; preds = %for.inc.land.rhs18_crit_edge, %for.body.land.rhs18_crit_edge
  %entry1.181 = phi ptr [ %6, %for.inc.land.rhs18_crit_edge ], [ %4, %for.body.land.rhs18_crit_edge ]
  %next_timer.180 = phi i32 [ %next_timer.2, %for.inc.land.rhs18_crit_edge ], [ %next_timer.083, %for.body.land.rhs18_crit_edge ]
  %5 = ptrtoint ptr %entry1.181 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry1.181, align 4
  %learned = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %entry1.181, i32 0, i32 2
  %7 = ptrtoint ptr %learned to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %learned, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool24.not = icmp eq i8 %8, 0
  br i1 %tobool24.not, label %land.rhs18.for.inc_crit_edge, label %if.end

land.rhs18.for.inc_crit_edge:                     ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %land.rhs18
  %key = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %entry1.181, i32 0, i32 4
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key, align 4
  %touched = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %entry1.181, i32 0, i32 3
  %11 = ptrtoint ptr %touched to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %touched, align 4
  %ageing_time26 = getelementptr inbounds %struct.ofdpa_port, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %ageing_time26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ageing_time26, align 4
  %add27 = add i32 %14, %12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %15, %add27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp28 = icmp sgt i32 %sub, -1
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end
  %addr = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %entry1.181, i32 0, i32 4, i32 1
  %vlan_id = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %entry1.181, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_id, align 2
  %call33 = tail call fastcc i32 @ofdpa_port_fdb_learn(ptr noundef %10, i32 noundef 7, ptr noundef %addr, i16 noundef zeroext %17)
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.181, i32 0, i32 1
  %18 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.i.i, label %if.then30.for.inc_crit_edge, label %if.then.i.i

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i.i:                                      ; preds = %if.then30
  %20 = ptrtoint ptr %entry1.181 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entry1.181, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %19, align 4
  %tobool.not.i3.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %24 = ptrtoint ptr %entry1.181 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %entry1.181, align 4
  %25 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub35 = sub i32 %add27, %next_timer.180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35)
  %cmp36 = icmp slt i32 %sub35, 0
  %spec.select77 = select i1 %cmp36, i32 %add27, i32 %next_timer.180
  br label %for.inc

for.inc:                                          ; preds = %if.else, %__hlist_del.exit.i.i, %if.then30.for.inc_crit_edge, %land.rhs18.for.inc_crit_edge
  %next_timer.2 = phi i32 [ %next_timer.180, %land.rhs18.for.inc_crit_edge ], [ %spec.select77, %if.else ], [ %next_timer.180, %if.then30.for.inc_crit_edge ], [ %next_timer.180, %__hlist_del.exit.i.i ]
  %tobool17.not = icmp eq ptr %6, null
  br i1 %tobool17.not, label %for.inc.for.inc51_crit_edge, label %for.inc.land.rhs18_crit_edge

for.inc.land.rhs18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs18

for.inc.for.inc51_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc51

for.inc51:                                        ; preds = %for.inc.for.inc51_crit_edge, %for.body.for.inc51_crit_edge
  %next_timer.1.lcssa = phi i32 [ %next_timer.083, %for.body.for.inc51_crit_edge ], [ %next_timer.2, %for.inc.for.inc51_crit_edge ]
  %inc = add nuw nsw i32 %bkt.082, 1
  %exitcond.not = icmp eq i32 %inc, 65536
  br i1 %exitcond.not, label %for.end52, label %for.inc51.for.body_crit_edge

for.inc51.for.body_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end52:                                        ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fdb_tbl_lock, i32 noundef %call5) #14
  %call54 = tail call i32 @round_jiffies_up(i32 noundef %next_timer.1.lcssa) #14
  %call55 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call54) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_port_fdb_learn(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef readonly %addr, i16 noundef zeroext %vlan_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_dev.i.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 4
  %0 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_dev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ofdpa_port_is_bridged.exit.thread_crit_edge, label %ofdpa_port_is_bridged.exit

entry.ofdpa_port_is_bridged.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_is_bridged.exit.thread

ofdpa_port_is_bridged.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pport = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 3
  %2 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pport, align 4
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 136
  %4 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %kind2.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kind2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kind2.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  %conv = zext i16 %vlan_id to i32
  %shl = shl nuw i32 %conv, 16
  %and = and i32 %shl, 268369920
  %and2 = and i32 %3, 65535
  %or3 = or i32 %and2, %and
  %spec.select = select i1 %tobool3.not.i.i, i32 %or3, i32 0
  br label %ofdpa_port_is_bridged.exit.thread

ofdpa_port_is_bridged.exit.thread:                ; preds = %ofdpa_port_is_bridged.exit, %entry.ofdpa_port_is_bridged.exit.thread_crit_edge
  %8 = phi i32 [ 0, %entry.ofdpa_port_is_bridged.exit.thread_crit_edge ], [ %spec.select, %ofdpa_port_is_bridged.exit ]
  %and4 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then5, label %ofdpa_port_is_bridged.exit.thread.if.end11_crit_edge

ofdpa_port_is_bridged.exit.thread.if.end11_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then5:                                         ; preds = %ofdpa_port_is_bridged.exit.thread
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id)
  %tobool.not.i = icmp eq i16 %vlan_id, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 96) #17
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.then5.cleanup_crit_edge, label %if.end.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  %tobool4.not.i = icmp eq ptr %addr, null
  %key.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3
  %tbl_id.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %tbl_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 50, ptr %tbl_id.i, align 4
  br i1 %tobool4.not.i, label %if.end13.i, label %if.else35.i

if.end13.i:                                       ; preds = %if.end.i
  br i1 %tobool.not.i, label %if.end13.i.if.else40.i_crit_edge, label %if.end13.i.ofdpa_flow_tbl_bridge.exit_crit_edge

if.end13.i.ofdpa_flow_tbl_bridge.exit_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_flow_tbl_bridge.exit

if.end13.i.if.else40.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else40.i

if.else35.i:                                      ; preds = %if.end.i
  %11 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %has_eth_dst.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %has_eth_dst.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %has_eth_dst.i, align 4
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %11, align 8
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr1.i.i, align 4
  br i1 %tobool.not.i, label %if.else35.i.if.else40.i_crit_edge, label %if.else35.i.ofdpa_flow_tbl_bridge.exit_crit_edge

if.else35.i.ofdpa_flow_tbl_bridge.exit_crit_edge: ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_flow_tbl_bridge.exit

if.else35.i.if.else40.i_crit_edge:                ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else40.i

if.else40.i:                                      ; preds = %if.else35.i.if.else40.i_crit_edge, %if.end13.i.if.else40.i_crit_edge
  %spec.select17.i = phi i32 [ 0, %if.end13.i.if.else40.i_crit_edge ], [ 3, %if.else35.i.if.else40.i_crit_edge ]
  %19 = xor i1 %tobool4.not.i, true
  %brmerge14.not.i = and i1 %tobool.not.i, %tobool4.not.i
  %20 = and i1 %tobool.not.i, %19
  %.mux.i = zext i1 %brmerge14.not.i to i32
  %spec.select18.i = select i1 %20, i32 %spec.select17.i, i32 %.mux.i
  br label %ofdpa_flow_tbl_bridge.exit

ofdpa_flow_tbl_bridge.exit:                       ; preds = %if.else40.i, %if.else35.i.ofdpa_flow_tbl_bridge.exit_crit_edge, %if.end13.i.ofdpa_flow_tbl_bridge.exit_crit_edge
  %priority.0.i = phi i32 [ 1, %if.end13.i.ofdpa_flow_tbl_bridge.exit_crit_edge ], [ 3, %if.else35.i.ofdpa_flow_tbl_bridge.exit_crit_edge ], [ %spec.select18.i, %if.else40.i ]
  %21 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %priority.0.i, ptr %key.i, align 8
  %vlan_id68.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 4
  %22 = ptrtoint ptr %vlan_id68.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %vlan_id, ptr %vlan_id68.i, align 4
  %tunnel_id70.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %tunnel_id70.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tunnel_id70.i, align 8
  %goto_tbl72.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %goto_tbl72.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 60, ptr %goto_tbl72.i, align 4
  %group_id74.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 6
  %25 = ptrtoint ptr %group_id74.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %8, ptr %group_id74.i, align 8
  %copy_to_cpu77.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 8
  %26 = ptrtoint ptr %copy_to_cpu77.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %copy_to_cpu77.i, align 4
  %call79.i = tail call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool8.not = icmp eq i32 %call79.i, 0
  br i1 %tobool8.not, label %ofdpa_flow_tbl_bridge.exit.if.end11_crit_edge, label %ofdpa_flow_tbl_bridge.exit.cleanup_crit_edge

ofdpa_flow_tbl_bridge.exit.cleanup_crit_edge:     ; preds = %ofdpa_flow_tbl_bridge.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ofdpa_flow_tbl_bridge.exit.if.end11_crit_edge:    ; preds = %ofdpa_flow_tbl_bridge.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %ofdpa_flow_tbl_bridge.exit.if.end11_crit_edge, %ofdpa_port_is_bridged.exit.thread.if.end11_crit_edge
  %27 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bridge_dev.i.i, align 4
  %tobool.not.i.i58 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i58, label %if.end11.cleanup_crit_edge, label %ofdpa_port_is_bridged.exit64

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ofdpa_port_is_bridged.exit64:                     ; preds = %if.end11
  %rtnl_link_ops.i.i59 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 136
  %29 = ptrtoint ptr %rtnl_link_ops.i.i59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rtnl_link_ops.i.i59, align 4
  %kind2.i.i60 = getelementptr inbounds %struct.rtnl_link_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %kind2.i.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kind2.i.i60, align 4
  %call.i.i61 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %tobool3.not.i.i62 = icmp eq i32 %call.i.i61, 0
  br i1 %tobool3.not.i.i62, label %if.end14, label %ofdpa_port_is_bridged.exit64.cleanup_crit_edge

ofdpa_port_is_bridged.exit64.cleanup_crit_edge:   ; preds = %ofdpa_port_is_bridged.exit64
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %ofdpa_port_is_bridged.exit64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 2848, i32 noundef 60) #17
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %do.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #14
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @ofdpa_port_fdb_learn.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry22 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry22, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ofdpa_port_fdb_learn_work, ptr %func, align 4
  %ofdpa_port24 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %ofdpa_port24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ofdpa_port, ptr %ofdpa_port24, align 4
  %flags25 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %flags, ptr %flags25, align 8
  %addr26 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, ptr %call7.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr, align 4
  %42 = ptrtoint ptr %addr26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %addr26, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ofdpa_fdb_learn_work, ptr %call7.i.i, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr1.i, align 8
  %46 = add i16 %vlan_id, -3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %46)
  %47 = icmp ult i16 %46, 255
  %.vlan_id.i = select i1 %47, i16 0, i16 %vlan_id
  %vid = getelementptr inbounds %struct.ofdpa_fdb_learn_work, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %.vlan_id.i, ptr %vid, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i65 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %49, ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end14.cleanup_crit_edge, %ofdpa_port_is_bridged.exit64.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %ofdpa_flow_tbl_bridge.exit.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ %call79.i, %ofdpa_flow_tbl_bridge.exit.cleanup_crit_edge ], [ 0, %ofdpa_port_is_bridged.exit64.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ -12, %if.then5.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ofdpa_port_fdb_learn_work(ptr noundef %work) #0 align 64 {
entry:
  %info = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ofdpa_fdb_learn_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #14
  %2 = call ptr @memset(ptr %info, i32 0, i32 20)
  %addr = getelementptr inbounds %struct.ofdpa_fdb_learn_work, ptr %work, i32 0, i32 3
  %addr5 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %addr5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %addr, ptr %addr5, align 4
  %vid = getelementptr inbounds %struct.ofdpa_fdb_learn_work, ptr %work, i32 0, i32 4
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 2
  %vid6 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %vid6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vid6, align 4
  tail call void @rtnl_lock() #14
  %7 = and i32 %1, 5
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.if.end18_crit_edge [
    i32 5, label %entry.if.end18.sink.split_crit_edge
    i32 4, label %if.then13
  ]

entry.if.end18.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.sink.split

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.then13, %entry.if.end18.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then13 ], [ 2, %entry.if.end18.sink.split_crit_edge ]
  %ofdpa_port14 = getelementptr inbounds %struct.ofdpa_fdb_learn_work, ptr %work, i32 0, i32 1
  %9 = ptrtoint ptr %ofdpa_port14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ofdpa_port14, align 4
  %dev15 = getelementptr inbounds %struct.ofdpa_port, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev15, align 4
  %call17 = call i32 @call_switchdev_notifiers(i32 noundef %.sink, ptr noundef %12, ptr noundef nonnull %info, ptr noundef null) #14
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %entry.if.end18_crit_edge
  call void @rtnl_unlock() #14
  call void @kfree(ptr noundef %work) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_flow_tbl_do(ptr nocapture noundef readonly %ofdpa_port, i32 noundef %flags, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @ofdpa_flow_tbl_del(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef %entry1)
  br label %return

if.else:                                          ; preds = %entry
  %0 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ofdpa_port, align 4
  %key_len2.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 4
  %2 = ptrtoint ptr %key_len2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_len2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %spec.select.i = select i1 %tobool.not.i, i32 56, i32 %3
  %key.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %key.i, i32 noundef %spec.select.i) #20
  %key_crc32.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 5
  %4 = ptrtoint ptr %key_crc32.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %key_crc32.i, align 4
  %flow_tbl_lock.i = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 2
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flow_tbl_lock.i) #14
  %5 = ptrtoint ptr %key_len2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_len2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 56, i32 %6
  %7 = ptrtoint ptr %key_crc32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_crc32.i, align 4
  %mul.i.i.i.i = mul i32 %8, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 16
  %arrayidx.i.i = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 1, i32 %shr.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.else
  %found.0.in.i.i = phi ptr [ %arrayidx.i.i, %if.else ], [ %found.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %found.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %found.0.i.i = load ptr, ptr %found.0.in.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %found.0.i.i, null
  br i1 %tobool9.not.i.i, label %if.else.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %key.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %found.0.i.i, i32 0, i32 3
  %bcmp.i.i = tail call i32 @bcmp(ptr %key.i.i, ptr %key.i, i32 %spec.select.i.i) #19
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

if.then.i:                                        ; preds = %for.body.i.i
  %cookie.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %found.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cookie.i, align 8
  %cookie11.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 2
  %12 = ptrtoint ptr %cookie11.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %cookie11.i, align 8
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %found.0.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then.i.hash_del.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.hash_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  %15 = ptrtoint ptr %found.0.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %found.0.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %14, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %19 = ptrtoint ptr %found.0.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %found.0.i.i, align 4
  %20 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del.exit.i

hash_del.exit.i:                                  ; preds = %__hlist_del.exit.i.i.i, %if.then.i.hash_del.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %found.0.i.i) #14
  br label %if.end.i

if.else.i:                                        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %flow_tbl_next_cookie.i = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %flow_tbl_next_cookie.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %flow_tbl_next_cookie.i, align 8
  %inc.i = add i64 %22, 1
  store i64 %inc.i, ptr %flow_tbl_next_cookie.i, align 8
  %cookie13.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 2
  %23 = ptrtoint ptr %cookie13.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %cookie13.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %hash_del.exit.i
  %.sink.i = phi i32 [ 3, %if.else.i ], [ 4, %hash_del.exit.i ]
  %cmd14.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 1
  %24 = ptrtoint ptr %cmd14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i, ptr %cmd14.i, align 8
  %25 = ptrtoint ptr %key_crc32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_crc32.i, align 4
  %mul.i.i.i = mul i32 %26, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 16
  %arrayidx.i = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 1, i32 %shr.i.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %entry1, align 4
  %tobool.not.i42.i = icmp eq ptr %28, null
  br i1 %tobool.not.i42.i, label %if.end.i.ofdpa_flow_tbl_add.exit_crit_edge, label %do.body12.i.i

if.end.i.ofdpa_flow_tbl_add.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_flow_tbl_add.exit

do.body12.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry1, ptr %pprev.i.i, align 4
  br label %ofdpa_flow_tbl_add.exit

ofdpa_flow_tbl_add.exit:                          ; preds = %do.body12.i.i, %if.end.i.ofdpa_flow_tbl_add.exit_crit_edge
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry1, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1, i32 0, i32 1
  %32 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flow_tbl_lock.i, i32 noundef %call6.i) #14
  %rocker_port.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 1
  %33 = ptrtoint ptr %rocker_port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rocker_port.i, align 4
  %and.i.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %call20.i = tail call i32 @rocker_cmd_exec(ptr noundef %34, i1 noundef zeroext %tobool.i.i, ptr noundef nonnull @ofdpa_cmd_flow_tbl_add, ptr noundef %entry1, ptr noundef null, ptr noundef null) #14
  br label %return

return:                                           ; preds = %ofdpa_flow_tbl_add.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call20.i, %ofdpa_flow_tbl_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_flow_tbl_del(ptr nocapture noundef readonly %ofdpa_port, i32 noundef %flags, ptr noundef %match) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ofdpa_port, align 4
  %key_len2 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %match, i32 0, i32 4
  %2 = ptrtoint ptr %key_len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_len2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 56, i32 %3
  %key = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %match, i32 0, i32 3
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %key, i32 noundef %spec.select) #20
  %key_crc32 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %match, i32 0, i32 5
  %4 = ptrtoint ptr %key_crc32 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %key_crc32, align 4
  %flow_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flow_tbl_lock) #14
  %5 = ptrtoint ptr %key_len2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_len2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i32 56, i32 %6
  %7 = ptrtoint ptr %key_crc32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_crc32, align 4
  %mul.i.i.i = mul i32 %8, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 16
  %arrayidx.i = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 1, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %found.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %found.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %found.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %found.0.i = load ptr, ptr %found.0.in.i, align 4
  %tobool9.not.i = icmp eq ptr %found.0.i, null
  br i1 %tobool9.not.i, label %if.end17.critedge, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %key.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %found.0.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key.i, ptr %key, i32 %spec.select.i) #19
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then:                                          ; preds = %for.body.i
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %found.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.not.i.i, label %if.then.hash_del.exit_crit_edge, label %if.then.i.i

if.then.hash_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.then
  %12 = ptrtoint ptr %found.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %found.0.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %11, align 4
  %tobool.not.i3.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %16 = ptrtoint ptr %found.0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %found.0.i, align 4
  %17 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then.hash_del.exit_crit_edge
  %cmd = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %found.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %cmd, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flow_tbl_lock, i32 noundef %call6) #14
  tail call void @kfree(ptr noundef %match) #14
  %rocker_port = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 1
  %19 = ptrtoint ptr %rocker_port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rocker_port, align 4
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %call16 = tail call i32 @rocker_cmd_exec(ptr noundef %20, i1 noundef zeroext %tobool.i, ptr noundef nonnull @ofdpa_cmd_flow_tbl_del, ptr noundef nonnull %found.0.i, ptr noundef null, ptr noundef null) #14
  tail call void @kfree(ptr noundef nonnull %found.0.i) #14
  br label %if.end17

if.end17.critedge:                                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flow_tbl_lock, i32 noundef %call6) #14
  tail call void @kfree(ptr noundef %match) #14
  br label %if.end17

if.end17:                                         ; preds = %if.end17.critedge, %hash_del.exit
  %err.0 = phi i32 [ %call16, %hash_del.exit ], [ 0, %if.end17.critedge ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rocker_cmd_exec(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_cmd_flow_tbl_del(ptr nocapture noundef readnone %rocker_port, ptr noundef %desc_info, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %tmp.i16 = alloca i64, align 8
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %conv = trunc i32 %1 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %5 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %6
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool3.not20 = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not = select i1 %cmp.i, i1 true, i1 %tobool3.not20
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cookie = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cookie, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i16) #14
  %9 = ptrtoint ptr %tmp.i16 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %tmp.i16, align 8
  %call.i17 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool7.not = icmp eq i32 %call.i17, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc_info, align 4
  %12 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %11, i32 %13
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rocker_tlv_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_cmd_flow_tbl_add(ptr nocapture noundef readnone %rocker_port, ptr noundef %desc_info, ptr noundef %priv) #0 align 64 {
entry:
  %tmp.i72 = alloca i64, align 8
  %tmp.i70 = alloca i32, align 4
  %tmp.i68 = alloca i32, align 4
  %tmp.i66 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %conv = trunc i32 %1 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %5 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %6
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool3.not78 = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not = select i1 %cmp.i, i1 true, i1 %tobool3.not78
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tbl_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %priv, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %tbl_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tbl_id, align 4
  %conv6 = trunc i32 %8 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i66) #14
  %9 = ptrtoint ptr %tmp.i66 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv6, ptr %tmp.i66, align 2
  %call.i67 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i66) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i66) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool8.not = icmp eq i32 %call.i67, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %key = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i68) #14
  %12 = ptrtoint ptr %tmp.i68 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i68, align 4
  %call.i69 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i68) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool13.not = icmp eq i32 %call.i69, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i70) #14
  %13 = ptrtoint ptr %tmp.i70 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tmp.i70, align 4
  %call.i71 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i70) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i70) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool17.not = icmp eq i32 %call.i71, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %cookie = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %priv, i32 0, i32 2
  %14 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cookie, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i72) #14
  %16 = ptrtoint ptr %tmp.i72 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tmp.i72, align 8
  %call.i73 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i72) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i72) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool21.not = icmp eq i32 %call.i73, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %tbl_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tbl_id, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %18, label %if.end23.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 10, label %sw.bb27
    i32 20, label %sw.bb29
    i32 30, label %sw.bb31
    i32 50, label %sw.bb33
    i32 60, label %sw.bb35
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = call fastcc i32 @ofdpa_cmd_flow_tbl_add_ig_port(ptr noundef %desc_info, ptr noundef %priv)
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call28 = call fastcc i32 @ofdpa_cmd_flow_tbl_add_vlan(ptr noundef %desc_info, ptr noundef %priv)
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call30 = call fastcc i32 @ofdpa_cmd_flow_tbl_add_term_mac(ptr noundef %desc_info, ptr noundef %priv)
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call32 = call fastcc i32 @ofdpa_cmd_flow_tbl_add_ucast_routing(ptr noundef %desc_info, ptr noundef %priv)
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call34 = call fastcc i32 @ofdpa_cmd_flow_tbl_add_bridge(ptr noundef %desc_info, ptr noundef %priv)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = call fastcc i32 @ofdpa_cmd_flow_tbl_add_acl(ptr noundef %desc_info, ptr noundef %priv)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb
  %err.0 = phi i32 [ %call36, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %call32, %sw.bb31 ], [ %call30, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %call26, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool37.not = icmp eq i32 %err.0, 0
  br i1 %tobool37.not, label %if.end39, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc_info, align 4
  %22 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %21, i32 %23
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i75 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %sw.epilog.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end5.cleanup_crit_edge ], [ -90, %if.end10.cleanup_crit_edge ], [ -90, %if.end15.cleanup_crit_edge ], [ -90, %if.end19.cleanup_crit_edge ], [ %err.0, %sw.epilog.cleanup_crit_edge ], [ -524, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_cmd_flow_tbl_add_ig_port(ptr noundef %desc_info, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i18 = alloca i16, align 2
  %tmp.i16 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i, align 4
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %in_pport_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %in_pport_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_pport_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i16) #14
  %6 = ptrtoint ptr %tmp.i16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i16, align 4
  %call.i17 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i16) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool4.not = icmp eq i32 %call.i17, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %goto_tbl = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %goto_tbl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %goto_tbl, align 8
  %conv = trunc i32 %8 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i18) #14
  %9 = ptrtoint ptr %tmp.i18 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %tmp.i18, align 2
  %call.i19 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i18) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool9.not = icmp eq i32 %call.i19, 0
  %. = select i1 %tobool9.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %entry.return_crit_edge ], [ -90, %if.end.return_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_cmd_flow_tbl_add_vlan(ptr noundef %desc_info, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i40 = alloca i16, align 2
  %tmp.i38 = alloca i16, align 2
  %tmp.i36 = alloca i16, align 2
  %tmp.i34 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i, align 4
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %vlan_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_id, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i34) #14
  %6 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %tmp.i34, align 2
  %call.i35 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i34) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool4.not = icmp eq i32 %call.i35, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end6:                                          ; preds = %if.end
  %vlan_id_mask = getelementptr inbounds %struct.anon.155, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %vlan_id_mask to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vlan_id_mask, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i36) #14
  %9 = ptrtoint ptr %tmp.i36 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tmp.i36, align 2
  %call.i37 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %tmp.i36) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool9.not = icmp eq i32 %call.i37, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end11:                                         ; preds = %if.end6
  %goto_tbl = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %goto_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %goto_tbl, align 8
  %conv = trunc i32 %11 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i38) #14
  %12 = ptrtoint ptr %tmp.i38 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %tmp.i38, align 2
  %call.i39 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i38) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool14.not = icmp eq i32 %call.i39, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end16:                                         ; preds = %if.end11
  %untagged = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %untagged to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %untagged, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %land.lhs.true

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end16
  %new_vlan_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %new_vlan_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %new_vlan_id, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i40) #14
  %17 = ptrtoint ptr %tmp.i40 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %tmp.i40, align 2
  %call.i41 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 19, i32 noundef 2, ptr noundef nonnull %tmp.i40) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool22.not = icmp eq i32 %call.i41, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  br label %return

return:                                           ; preds = %if.end24, %land.lhs.true.return_crit_edge, %if.end11.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -90, %entry.return_crit_edge ], [ -90, %if.end.return_crit_edge ], [ -90, %if.end6.return_crit_edge ], [ -90, %if.end11.return_crit_edge ], [ -90, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_cmd_flow_tbl_add_term_mac(ptr noundef %desc_info, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i76 = alloca i8, align 1
  %tmp.i74 = alloca i16, align 2
  %tmp.i72 = alloca i16, align 2
  %tmp.i70 = alloca i16, align 2
  %tmp.i68 = alloca i16, align 2
  %tmp.i66 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i, align 4
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %in_pport_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %in_pport_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_pport_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i66) #14
  %6 = ptrtoint ptr %tmp.i66 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i66, align 4
  %call.i67 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i66) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i66) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool4.not = icmp eq i32 %call.i67, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end6:                                          ; preds = %if.end
  %eth_type = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %eth_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %eth_type, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i68) #14
  %9 = ptrtoint ptr %tmp.i68 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tmp.i68, align 2
  %call.i69 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 23, i32 noundef 2, ptr noundef nonnull %tmp.i68) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool9.not = icmp eq i32 %call.i69, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end11:                                         ; preds = %if.end6
  %eth_dst = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 2, i32 2
  %call13 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 24, i32 noundef 6, ptr noundef %eth_dst) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end16:                                         ; preds = %if.end11
  %eth_dst_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 3, i32 2
  %call19 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 25, i32 noundef 6, ptr noundef %eth_dst_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.return_crit_edge

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end22:                                         ; preds = %if.end16
  %vlan_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_id, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i70) #14
  %12 = ptrtoint ptr %tmp.i70 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %tmp.i70, align 2
  %call.i71 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i70) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i70) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool25.not = icmp eq i32 %call.i71, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.return_crit_edge

if.end22.return_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end27:                                         ; preds = %if.end22
  %vlan_id_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %vlan_id_mask to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan_id_mask, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i72) #14
  %15 = ptrtoint ptr %tmp.i72 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %tmp.i72, align 2
  %call.i73 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %tmp.i72) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i72) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool30.not = icmp eq i32 %call.i73, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.return_crit_edge

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end32:                                         ; preds = %if.end27
  %goto_tbl = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %goto_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %goto_tbl, align 4
  %conv = trunc i32 %17 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i74) #14
  %18 = ptrtoint ptr %tmp.i74 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %tmp.i74, align 2
  %call.i75 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i74) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i74) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool35.not = icmp eq i32 %call.i75, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.return_crit_edge

if.end32.return_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end37:                                         ; preds = %if.end32
  %copy_to_cpu = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 6
  %19 = ptrtoint ptr %copy_to_cpu to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %copy_to_cpu, align 8, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool39.not = icmp eq i8 %20, 0
  br i1 %tobool39.not, label %if.end37.if.end48_crit_edge, label %land.lhs.true

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i76) #14
  %21 = ptrtoint ptr %tmp.i76 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %tmp.i76, align 1
  %call.i77 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 61, i32 noundef 1, ptr noundef nonnull %tmp.i76) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i76) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool46.not = icmp eq i32 %call.i77, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end48_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %if.end37.if.end48_crit_edge
  br label %return

return:                                           ; preds = %if.end48, %land.lhs.true.return_crit_edge, %if.end32.return_crit_edge, %if.end27.return_crit_edge, %if.end22.return_crit_edge, %if.end16.return_crit_edge, %if.end11.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -90, %entry.return_crit_edge ], [ -90, %if.end.return_crit_edge ], [ -90, %if.end6.return_crit_edge ], [ -90, %if.end11.return_crit_edge ], [ -90, %if.end16.return_crit_edge ], [ -90, %if.end22.return_crit_edge ], [ -90, %if.end27.return_crit_edge ], [ -90, %if.end32.return_crit_edge ], [ -90, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_cmd_flow_tbl_add_ucast_routing(ptr noundef %desc_info, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i36 = alloca i32, align 4
  %tmp.i34 = alloca i16, align 2
  %tmp.i32 = alloca i32, align 4
  %tmp.i30 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 23, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %dst4 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i30) #14
  %6 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i30, align 4
  %call.i31 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 36, i32 noundef 4, ptr noundef nonnull %tmp.i30) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool4.not = icmp eq i32 %call.i31, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end6:                                          ; preds = %if.end
  %dst4_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %dst4_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst4_mask, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i32) #14
  %9 = ptrtoint ptr %tmp.i32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i32, align 4
  %call.i33 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 37, i32 noundef 4, ptr noundef nonnull %tmp.i32) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool9.not = icmp eq i32 %call.i33, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end11:                                         ; preds = %if.end6
  %goto_tbl = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %goto_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %goto_tbl, align 4
  %conv = trunc i32 %11 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i34) #14
  %12 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %tmp.i34, align 2
  %call.i35 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i34) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool14.not = icmp eq i32 %call.i35, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %group_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %group_id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i36) #14
  %15 = ptrtoint ptr %tmp.i36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i36, align 4
  %call.i37 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i36) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool19.not = icmp eq i32 %call.i37, 0
  %. = select i1 %tobool19.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %if.end16, %if.end11.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %entry.return_crit_edge ], [ -90, %if.end.return_crit_edge ], [ -90, %if.end6.return_crit_edge ], [ -90, %if.end11.return_crit_edge ], [ %., %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_cmd_flow_tbl_add_bridge(ptr noundef %desc_info, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i77 = alloca i8, align 1
  %tmp.i75 = alloca i32, align 4
  %tmp.i73 = alloca i16, align 2
  %tmp.i71 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2
  %has_eth_dst = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 2, i32 4
  %1 = ptrtoint ptr %has_eth_dst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %has_eth_dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 24, i32 noundef 6, ptr noundef %0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %has_eth_dst_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %has_eth_dst_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %has_eth_dst_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %land.lhs.true6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true6:                                   ; preds = %if.end
  %eth_dst_mask = getelementptr inbounds %struct.anon.158, ptr %0, i32 0, i32 1
  %call9 = tail call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 25, i32 noundef 6, ptr noundef %eth_dst_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true6.if.end12_crit_edge, label %land.lhs.true6.return_crit_edge

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %vlan_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 4
  %5 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool14.not = icmp eq i16 %6, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %land.lhs.true15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true15:                                  ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %land.lhs.true15.if.end21_crit_edge, label %land.lhs.true15.return_crit_edge

land.lhs.true15.return_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true15.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %tunnel_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %tunnel_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tunnel_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool23.not = icmp eq i32 %9, 0
  br i1 %tobool23.not, label %if.end21.if.end30_crit_edge, label %land.lhs.true24

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true24:                                  ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i71) #14
  %10 = ptrtoint ptr %tmp.i71 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i71, align 4
  %call.i72 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i71) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i71) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool28.not = icmp eq i32 %call.i72, 0
  br i1 %tobool28.not, label %land.lhs.true24.if.end30_crit_edge, label %land.lhs.true24.return_crit_edge

land.lhs.true24.return_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true24.if.end30_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true24.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %goto_tbl = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %goto_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %goto_tbl, align 4
  %conv32 = trunc i32 %12 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i73) #14
  %13 = ptrtoint ptr %tmp.i73 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv32, ptr %tmp.i73, align 2
  %call.i74 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i73) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i73) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool34.not = icmp eq i32 %call.i74, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.return_crit_edge

if.end30.return_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end36:                                         ; preds = %if.end30
  %group_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 6
  %14 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %group_id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i75) #14
  %16 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i75, align 4
  %call.i76 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i75) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i75) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool39.not = icmp eq i32 %call.i76, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.return_crit_edge

if.end36.return_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end41:                                         ; preds = %if.end36
  %copy_to_cpu = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 8
  %17 = ptrtoint ptr %copy_to_cpu to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %copy_to_cpu, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool43.not = icmp eq i8 %18, 0
  br i1 %tobool43.not, label %if.end41.if.end53_crit_edge, label %land.lhs.true45

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

land.lhs.true45:                                  ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i77) #14
  %19 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %tmp.i77, align 1
  %call.i78 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 61, i32 noundef 1, ptr noundef nonnull %tmp.i77) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i77) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool51.not = icmp eq i32 %call.i78, 0
  br i1 %tobool51.not, label %land.lhs.true45.if.end53_crit_edge, label %land.lhs.true45.return_crit_edge

land.lhs.true45.return_crit_edge:                 ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true45.if.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true45.if.end53_crit_edge, %if.end41.if.end53_crit_edge
  br label %return

return:                                           ; preds = %if.end53, %land.lhs.true45.return_crit_edge, %if.end36.return_crit_edge, %if.end30.return_crit_edge, %land.lhs.true24.return_crit_edge, %land.lhs.true15.return_crit_edge, %land.lhs.true6.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -90, %land.lhs.true.return_crit_edge ], [ -90, %land.lhs.true6.return_crit_edge ], [ -90, %land.lhs.true15.return_crit_edge ], [ -90, %land.lhs.true24.return_crit_edge ], [ -90, %if.end30.return_crit_edge ], [ -90, %if.end36.return_crit_edge ], [ -90, %land.lhs.true45.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_cmd_flow_tbl_add_acl(ptr noundef %desc_info, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i151 = alloca i32, align 4
  %tmp.i149 = alloca i8, align 1
  %tmp.i147 = alloca i8, align 1
  %tmp.i145 = alloca i8, align 1
  %tmp.i143 = alloca i8, align 1
  %tmp.i141 = alloca i8, align 1
  %tmp.i139 = alloca i8, align 1
  %tmp.i137 = alloca i16, align 2
  %tmp.i135 = alloca i16, align 2
  %tmp.i133 = alloca i16, align 2
  %tmp.i131 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i, align 4
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %in_pport_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %in_pport_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_pport_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i131) #14
  %6 = ptrtoint ptr %tmp.i131 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i131, align 4
  %call.i132 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i131) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i131) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool4.not = icmp eq i32 %call.i132, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end6:                                          ; preds = %if.end
  %eth_src = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 2
  %call8 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 26, i32 noundef 6, ptr noundef %eth_src) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end11:                                         ; preds = %if.end6
  %eth_src_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 3
  %call14 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 27, i32 noundef 6, ptr noundef %eth_src_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end17:                                         ; preds = %if.end11
  %eth_dst = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 4
  %call20 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 24, i32 noundef 6, ptr noundef %eth_dst) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.return_crit_edge

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end23:                                         ; preds = %if.end17
  %eth_dst_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 5
  %call26 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 25, i32 noundef 6, ptr noundef %eth_dst_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end23.return_crit_edge

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end29:                                         ; preds = %if.end23
  %eth_type = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 6
  %7 = ptrtoint ptr %eth_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %eth_type, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i133) #14
  %9 = ptrtoint ptr %tmp.i133 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tmp.i133, align 2
  %call.i134 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 23, i32 noundef 2, ptr noundef nonnull %tmp.i133) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i133) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool32.not = icmp eq i32 %call.i134, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.return_crit_edge

if.end29.return_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end34:                                         ; preds = %if.end29
  %vlan_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 7
  %10 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_id, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i135) #14
  %12 = ptrtoint ptr %tmp.i135 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %tmp.i135, align 2
  %call.i136 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i135) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i135) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool37.not = icmp eq i32 %call.i136, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.return_crit_edge

if.end34.return_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end39:                                         ; preds = %if.end34
  %vlan_id_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 8
  %13 = ptrtoint ptr %vlan_id_mask to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan_id_mask, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i137) #14
  %15 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %tmp.i137, align 2
  %call.i138 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %tmp.i137) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i137) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool42.not = icmp eq i32 %call.i138, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.return_crit_edge

if.end39.return_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end44:                                         ; preds = %if.end39
  %16 = ptrtoint ptr %eth_type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %eth_type, align 8
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %17, label %if.end44.sw.epilog_crit_edge [
    i16 2048, label %if.end44.sw.bb_crit_edge
    i16 -31011, label %if.end44.sw.bb_crit_edge153
  ]

if.end44.sw.bb_crit_edge153:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end44.sw.bb_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end44.sw.bb_crit_edge, %if.end44.sw.bb_crit_edge153
  %ip_proto = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 9
  %19 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ip_proto, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i139) #14
  %21 = ptrtoint ptr %tmp.i139 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %tmp.i139, align 1
  %call.i140 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 28, i32 noundef 1, ptr noundef nonnull %tmp.i139) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i139) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool49.not = icmp eq i32 %call.i140, 0
  br i1 %tobool49.not, label %if.end51, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end51:                                         ; preds = %sw.bb
  %ip_proto_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 10
  %22 = ptrtoint ptr %ip_proto_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ip_proto_mask, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i141) #14
  %24 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %tmp.i141, align 1
  %call.i142 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 29, i32 noundef 1, ptr noundef nonnull %tmp.i141) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i141) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool54.not = icmp eq i32 %call.i142, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.return_crit_edge

if.end51.return_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end56:                                         ; preds = %if.end51
  %ip_tos = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 11
  %25 = ptrtoint ptr %ip_tos to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ip_tos, align 8
  %27 = and i8 %26, 63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i143) #14
  %28 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %tmp.i143, align 1
  %call.i144 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 30, i32 noundef 1, ptr noundef nonnull %tmp.i143) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i143) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool61.not = icmp eq i32 %call.i144, 0
  br i1 %tobool61.not, label %if.end63, label %if.end56.return_crit_edge

if.end56.return_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end63:                                         ; preds = %if.end56
  %ip_tos_mask = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 12
  %29 = ptrtoint ptr %ip_tos_mask to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ip_tos_mask, align 1
  %31 = and i8 %30, 63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i145) #14
  %32 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %tmp.i145, align 1
  %call.i146 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 31, i32 noundef 1, ptr noundef nonnull %tmp.i145) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i145) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool69.not = icmp eq i32 %call.i146, 0
  br i1 %tobool69.not, label %if.end71, label %if.end63.return_crit_edge

if.end63.return_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end71:                                         ; preds = %if.end63
  %33 = ptrtoint ptr %ip_tos to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ip_tos, align 8
  %35 = lshr i8 %34, 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i147) #14
  %36 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tmp.i147, align 1
  %call.i148 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 34, i32 noundef 1, ptr noundef nonnull %tmp.i147) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i147) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool78.not = icmp eq i32 %call.i148, 0
  br i1 %tobool78.not, label %if.end80, label %if.end71.return_crit_edge

if.end71.return_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end80:                                         ; preds = %if.end71
  %37 = ptrtoint ptr %ip_tos_mask to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ip_tos_mask, align 1
  %39 = lshr i8 %38, 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i149) #14
  %40 = ptrtoint ptr %tmp.i149 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %tmp.i149, align 1
  %call.i150 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 35, i32 noundef 1, ptr noundef nonnull %tmp.i149) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i149) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool88.not = icmp eq i32 %call.i150, 0
  br i1 %tobool88.not, label %if.end80.sw.epilog_crit_edge, label %if.end80.return_crit_edge

if.end80.return_crit_edge:                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end80.sw.epilog_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end80.sw.epilog_crit_edge, %if.end44.sw.epilog_crit_edge
  %group_id = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %entry1, i32 0, i32 3, i32 2, i32 0, i32 13
  %41 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %group_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not = icmp eq i32 %42, 0
  br i1 %cmp.not, label %sw.epilog.if.end98_crit_edge, label %land.lhs.true

sw.epilog.if.end98_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

land.lhs.true:                                    ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i151) #14
  %43 = ptrtoint ptr %tmp.i151 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i151, align 4
  %call.i152 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i151) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i151) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool96.not = icmp eq i32 %call.i152, 0
  br i1 %tobool96.not, label %land.lhs.true.if.end98_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.end98:                                         ; preds = %land.lhs.true.if.end98_crit_edge, %sw.epilog.if.end98_crit_edge
  br label %return

return:                                           ; preds = %if.end98, %land.lhs.true.return_crit_edge, %if.end80.return_crit_edge, %if.end71.return_crit_edge, %if.end63.return_crit_edge, %if.end56.return_crit_edge, %if.end51.return_crit_edge, %sw.bb.return_crit_edge, %if.end39.return_crit_edge, %if.end34.return_crit_edge, %if.end29.return_crit_edge, %if.end23.return_crit_edge, %if.end17.return_crit_edge, %if.end11.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end98 ], [ -90, %entry.return_crit_edge ], [ -90, %if.end.return_crit_edge ], [ -90, %if.end6.return_crit_edge ], [ -90, %if.end11.return_crit_edge ], [ -90, %if.end17.return_crit_edge ], [ -90, %if.end23.return_crit_edge ], [ -90, %if.end29.return_crit_edge ], [ -90, %if.end34.return_crit_edge ], [ -90, %if.end39.return_crit_edge ], [ -90, %sw.bb.return_crit_edge ], [ -90, %if.end51.return_crit_edge ], [ -90, %if.end56.return_crit_edge ], [ -90, %if.end63.return_crit_edge ], [ -90, %if.end71.return_crit_edge ], [ -90, %if.end80.return_crit_edge ], [ -90, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rocker_port_set_learning(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @ofdpa_port_internal_vlan_id_get(ptr nocapture noundef readonly %ofdpa_port, i32 noundef %ifindex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ofdpa_port, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifindex3 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %ifindex3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ifindex, ptr %ifindex3, align 8
  %internal_vlan_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 11
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %internal_vlan_tbl_lock) #14
  %mul.i.i.i = mul i32 %ifindex, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 10, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %found.0.in.i = phi ptr [ %arrayidx.i, %if.end ], [ %found.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %found.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %found.0.i = load ptr, ptr %found.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %found.0.i, null
  br i1 %tobool2.not.i, label %if.end12, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %ifindex3.i = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, ptr %found.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %ifindex3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex3.i, align 4
  %cmp.i = icmp eq i32 %6, %ifindex
  br i1 %cmp.i, label %if.then11, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then11:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %found23

if.end12:                                         ; preds = %for.cond.i
  %7 = ptrtoint ptr %ifindex3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex3, align 8
  %mul.i.i = mul i32 %8, 1640531527
  %shr.i = lshr i32 %mul.i.i, 24
  %arrayidx = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 10, i32 %shr.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end12.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end12.hlist_add_head.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end12.hlist_add_head.exit_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  %internal_vlan_bitmap = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %hlist_add_head.exit
  %i.050 = phi i32 [ 0, %hlist_add_head.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %call18 = tail call i32 @_test_and_set_bit(i32 noundef %i.050, ptr noundef %internal_vlan_bitmap) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %for.inc

if.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %15 = trunc i32 %i.050 to i16
  %conv22 = add i16 %15, 3840
  %vlan_id = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv22, ptr %vlan_id, align 8
  br label %found23

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.17) #18
  br label %found23

found23:                                          ; preds = %for.end, %if.end21, %if.then11
  %found.0 = phi ptr [ %found.0.i, %if.then11 ], [ %call7.i.i, %if.end21 ], [ %call7.i.i, %for.end ]
  %ref_count = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, ptr %found.0, i32 0, i32 2
  %19 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ref_count, align 4
  %inc24 = add i32 %20, 1
  store i32 %inc24, ptr %ref_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %internal_vlan_tbl_lock, i32 noundef %call6) #14
  %vlan_id26 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, ptr %found.0, i32 0, i32 3
  %21 = ptrtoint ptr %vlan_id26 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan_id26, align 4
  br label %cleanup

cleanup:                                          ; preds = %found23, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %22, %found23 ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_port_vlan(ptr noundef %ofdpa_port, i32 noundef %flags, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pport = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 3
  %0 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pport, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool1.not11.i = icmp eq i16 %vid, 0
  br i1 %tobool1.not11.i, label %if.then4.i, label %entry.ofdpa_port_vid_to_vlan.exit_crit_edge

entry.ofdpa_port_vid_to_vlan.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_vid_to_vlan.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %internal_vlan_id12.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 5
  %2 = ptrtoint ptr %internal_vlan_id12.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %internal_vlan_id12.i, align 4
  br label %ofdpa_port_vid_to_vlan.exit

ofdpa_port_vid_to_vlan.exit:                      ; preds = %if.then4.i, %entry.ofdpa_port_vid_to_vlan.exit_crit_edge
  %vlan_id.0.i = phi i16 [ %3, %if.then4.i ], [ %vid, %entry.ofdpa_port_vid_to_vlan.exit_crit_edge ]
  %conv = zext i16 %vlan_id.0.i to i32
  %vlan_bitmap = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 10
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %vlan_bitmap, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true5.critedge

land.lhs.true:                                    ; preds = %ofdpa_port_vid_to_vlan.exit
  br i1 %tobool3.not, label %if.then17, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true5.critedge:                          ; preds = %ofdpa_port_vid_to_vlan.exit
  br i1 %tobool3.not, label %land.lhs.true5.critedge.cleanup_crit_edge, label %if.end12

land.lhs.true5.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true5.critedge
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_change_bit(i32 noundef %conv, ptr noundef %vlan_bitmap) #14
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  tail call void @_change_bit(i32 noundef %conv, ptr noundef %vlan_bitmap) #14
  %arrayidx.i90 = getelementptr %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 0
  %8 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i90, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then17.for.inc.i_crit_edge, label %if.then.i

if.then17.for.inc.i_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then17
  %call.i = tail call fastcc i32 @ofdpa_port_ctrl_vlan(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull @ofdpa_ctrls, i16 noundef zeroext %vlan_id.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.if.then20_crit_edge

if.then.i.if.then20_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %if.then17.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1.i, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.1.i = icmp eq i8 %11, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %call.1.i = tail call fastcc i32 @ofdpa_port_ctrl_vlan(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef getelementptr inbounds ([6 x %struct.ofdpa_ctrl], ptr @ofdpa_ctrls, i32 0, i32 1), i16 noundef zeroext %vlan_id.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool2.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool2.not.1.i, label %if.then.1.i.for.inc.1.i_crit_edge, label %if.then.1.i.if.then20_crit_edge

if.then.1.i.if.then20_crit_edge:                  ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then.1.i.for.inc.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2.i, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.2.i = icmp eq i8 %13, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %call.2.i = tail call fastcc i32 @ofdpa_port_ctrl_vlan(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef getelementptr inbounds ([6 x %struct.ofdpa_ctrl], ptr @ofdpa_ctrls, i32 0, i32 2), i16 noundef zeroext %vlan_id.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool2.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool2.not.2.i, label %if.then.2.i.for.inc.2.i_crit_edge, label %if.then.2.i.if.then20_crit_edge

if.then.2.i.if.then20_crit_edge:                  ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then.2.i.for.inc.2.i_crit_edge:                ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.3.i, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.3.i = icmp eq i8 %15, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %call.3.i = tail call fastcc i32 @ofdpa_port_ctrl_vlan(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef getelementptr inbounds ([6 x %struct.ofdpa_ctrl], ptr @ofdpa_ctrls, i32 0, i32 3), i16 noundef zeroext %vlan_id.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool2.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool2.not.3.i, label %if.then.3.i.for.inc.3.i_crit_edge, label %if.then.3.i.if.then20_crit_edge

if.then.3.i.if.then20_crit_edge:                  ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then.3.i.for.inc.3.i_crit_edge:                ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4.i, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.4.i = icmp eq i8 %17, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  %call.4.i = tail call fastcc i32 @ofdpa_port_ctrl_vlan(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef getelementptr inbounds ([6 x %struct.ofdpa_ctrl], ptr @ofdpa_ctrls, i32 0, i32 4), i16 noundef zeroext %vlan_id.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool2.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool2.not.4.i, label %if.then.4.i.for.inc.4.i_crit_edge, label %if.then.4.i.if.then20_crit_edge

if.then.4.i.if.then20_crit_edge:                  ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then.4.i.for.inc.4.i_crit_edge:                ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 5
  %18 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.5.i, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.5.i = icmp eq i8 %19, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.if.end22_crit_edge, label %if.then.5.i

for.inc.4.i.if.end22_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then.5.i:                                      ; preds = %for.inc.4.i
  %call.5.i = tail call fastcc i32 @ofdpa_port_ctrl_vlan(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef getelementptr inbounds ([6 x %struct.ofdpa_ctrl], ptr @ofdpa_ctrls, i32 0, i32 5), i16 noundef zeroext %vlan_id.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool2.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool2.not.5.i, label %if.then.5.i.if.end22_crit_edge, label %if.then.5.i.if.then20_crit_edge

if.then.5.i.if.then20_crit_edge:                  ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.then.5.i.if.end22_crit_edge:                   ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then20:                                        ; preds = %if.then.5.i.if.then20_crit_edge, %if.then.4.i.if.then20_crit_edge, %if.then.3.i.if.then20_crit_edge, %if.then.2.i.if.then20_crit_edge, %if.then.1.i.if.then20_crit_edge, %if.then.i.if.then20_crit_edge
  %retval.0.i.ph = phi i32 [ %call.5.i, %if.then.5.i.if.then20_crit_edge ], [ %call.4.i, %if.then.4.i.if.then20_crit_edge ], [ %call.3.i, %if.then.3.i.if.then20_crit_edge ], [ %call.2.i, %if.then.2.i.if.then20_crit_edge ], [ %call.1.i, %if.then.1.i.if.then20_crit_edge ], [ %call.i, %if.then.i.if.then20_crit_edge ]
  %dev = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.ph) #18
  br label %err_flood_group

if.end22:                                         ; preds = %if.then.5.i.if.end22_crit_edge, %for.inc.4.i.if.end22_crit_edge, %if.end12
  %22 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ofdpa_port, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %port_count2.i = getelementptr inbounds %struct.rocker, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %port_count2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_count2.i, align 4
  %stp_state.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 6
  %28 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stp_state.i, align 4
  %30 = and i32 %29, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %switch.i = icmp eq i32 %30, 2
  br i1 %switch.i, label %if.then.i93, label %if.end22.if.end9.i_crit_edge

if.end22.if.end9.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then.i93:                                      ; preds = %if.end22
  %31 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pport, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 44) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i93.if.then8.i_crit_edge, label %ofdpa_group_l2_interface.exit.i

if.then.i93.if.then8.i_crit_edge:                 ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i

ofdpa_group_l2_interface.exit.i:                  ; preds = %if.then.i93
  %shl.i.i = shl nuw i32 %conv, 16
  %and.i73.i = and i32 %shl.i.i, 268369920
  %and3.i.i = and i32 %32, 65535
  %or4.i.i = or i32 %and3.i.i, %and.i73.i
  %group_id.i.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %group_id.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or4.i.i, ptr %group_id.i.i, align 4
  %conv5.i.i = zext i1 %tobool1.not11.i to i8
  %35 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv5.i.i, ptr %35, align 8
  %call7.i.i = tail call fastcc i32 @ofdpa_group_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool7.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool7.not.i, label %ofdpa_group_l2_interface.exit.i.if.end9.i_crit_edge, label %ofdpa_group_l2_interface.exit.i.if.then8.i_crit_edge

ofdpa_group_l2_interface.exit.i.if.then8.i_crit_edge: ; preds = %ofdpa_group_l2_interface.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i

ofdpa_group_l2_interface.exit.i.if.end9.i_crit_edge: ; preds = %ofdpa_group_l2_interface.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then8.i:                                       ; preds = %ofdpa_group_l2_interface.exit.i.if.then8.i_crit_edge, %if.then.i93.if.then8.i_crit_edge
  %retval.0.i89.i = phi i32 [ %call7.i.i, %ofdpa_group_l2_interface.exit.i.if.then8.i_crit_edge ], [ -12, %if.then.i93.if.then8.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i89.i, i32 noundef %32) #18
  br label %if.then26

if.end9.i:                                        ; preds = %ofdpa_group_l2_interface.exit.i.if.end9.i_crit_edge, %if.end22.if.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1095.not.i = icmp eq i32 %27, 0
  br i1 %cmp1095.not.i, label %if.end9.i.land.lhs.true24.i_crit_edge, label %for.body.lr.ph.i

if.end9.i.land.lhs.true24.i_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true24.i

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %23, align 8
  %ports.i.i = getelementptr inbounds %struct.rocker, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ports.i.i, align 8
  %div3.i.i = lshr i32 %conv, 5
  %and.i.i = and i32 %conv, 31
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i94.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.097.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc19.i, %for.inc.i94.for.body.i_crit_edge ]
  %ref.096.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ref.1.i, %for.inc.i94.for.body.i_crit_edge ]
  %arrayidx.i74.i = getelementptr ptr, ptr %42, i32 %i.097.i
  %43 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i74.i, align 4
  %tobool.not.i75.i = icmp eq ptr %44, null
  br i1 %tobool.not.i75.i, label %for.body.i.for.inc.i94_crit_edge, label %ofdpa_port_get.exit.i

for.body.i.for.inc.i94_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i94

ofdpa_port_get.exit.i:                            ; preds = %for.body.i
  %wpriv.i.i = getelementptr inbounds %struct.rocker_port, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %wpriv.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wpriv.i.i, align 8
  %tobool13.not.i = icmp eq ptr %46, null
  br i1 %tobool13.not.i, label %ofdpa_port_get.exit.i.for.inc.i94_crit_edge, label %land.lhs.true.i

ofdpa_port_get.exit.i.for.inc.i94_crit_edge:      ; preds = %ofdpa_port_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i94

land.lhs.true.i:                                  ; preds = %ofdpa_port_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_bitmap.i = getelementptr inbounds %struct.ofdpa_port, ptr %46, i32 0, i32 10
  %arrayidx.i.i = getelementptr i32, ptr %vlan_bitmap.i, i32 %div3.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i.i, align 4
  %49 = lshr i32 %48, %and.i.i
  %50 = and i32 %49, 1
  %spec.select.i = add i32 %50, %ref.096.i
  br label %for.inc.i94

for.inc.i94:                                      ; preds = %land.lhs.true.i, %ofdpa_port_get.exit.i.for.inc.i94_crit_edge, %for.body.i.for.inc.i94_crit_edge
  %ref.1.i = phi i32 [ %ref.096.i, %ofdpa_port_get.exit.i.for.inc.i94_crit_edge ], [ %spec.select.i, %land.lhs.true.i ], [ %ref.096.i, %for.body.i.for.inc.i94_crit_edge ]
  %inc19.i = add nuw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, %27
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i94.for.body.i_crit_edge

for.inc.i94.for.body.i_crit_edge:                 ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ref.1.i)
  %cmp22.not.i = icmp eq i32 %ref.1.i, 1
  %or.cond.i = select i1 %tobool.not, i1 %cmp22.not.i, i1 false
  br i1 %or.cond.i, label %for.end.i.if.end31.i_crit_edge, label %for.end.i.land.lhs.true24.i_crit_edge

for.end.i.land.lhs.true24.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true24.i

for.end.i.if.end31.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

land.lhs.true24.i:                                ; preds = %for.end.i.land.lhs.true24.i_crit_edge, %if.end9.i.land.lhs.true24.i_crit_edge
  %ref.0.lcssa101.i = phi i32 [ %ref.1.i, %for.end.i.land.lhs.true24.i_crit_edge ], [ 0, %if.end9.i.land.lhs.true24.i_crit_edge ]
  %tobool.not.not.i = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ref.0.lcssa101.i)
  %cmp28.not.i = icmp eq i32 %ref.0.lcssa101.i, 0
  %or.cond72.i = select i1 %tobool.not.not.i, i1 %cmp28.not.i, i1 false
  br i1 %or.cond72.i, label %land.lhs.true24.i.if.end31.i_crit_edge, label %land.lhs.true24.i.if.end28_crit_edge

land.lhs.true24.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

land.lhs.true24.i.if.end28_crit_edge:             ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = shl nuw i32 %conv, 16
  %.pre143 = and i32 %.pre, 268369920
  br label %if.end28

if.end31.i:                                       ; preds = %land.lhs.true24.i.if.end31.i_crit_edge, %for.end.i.if.end31.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i76.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 44) #17
  %tobool.not.i77.i = icmp eq ptr %call7.i.i.i76.i, null
  br i1 %tobool.not.i77.i, label %if.end31.i.if.then36.i_crit_edge, label %ofdpa_group_l2_interface.exit86.i

if.end31.i.if.then36.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36.i

ofdpa_group_l2_interface.exit86.i:                ; preds = %if.end31.i
  %shl.i79.i = shl nuw i32 %conv, 16
  %and.i80.i = and i32 %shl.i79.i, 268369920
  %group_id.i81.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i76.i, i32 0, i32 2
  %52 = ptrtoint ptr %group_id.i81.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i80.i, ptr %group_id.i81.i, align 4
  %conv5.i82.i = zext i1 %tobool1.not11.i to i8
  %53 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i76.i, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv5.i82.i, ptr %53, align 8
  %call7.i83.i = tail call fastcc i32 @ofdpa_group_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i76.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i83.i)
  %tobool35.not.i = icmp eq i32 %call7.i83.i, 0
  br i1 %tobool35.not.i, label %ofdpa_group_l2_interface.exit86.i.if.end28_crit_edge, label %ofdpa_group_l2_interface.exit86.i.if.then36.i_crit_edge

ofdpa_group_l2_interface.exit86.i.if.then36.i_crit_edge: ; preds = %ofdpa_group_l2_interface.exit86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36.i

ofdpa_group_l2_interface.exit86.i.if.end28_crit_edge: ; preds = %ofdpa_group_l2_interface.exit86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then36.i:                                      ; preds = %ofdpa_group_l2_interface.exit86.i.if.then36.i_crit_edge, %if.end31.i.if.then36.i_crit_edge
  %retval.0.i8594.i = phi i32 [ %call7.i83.i, %ofdpa_group_l2_interface.exit86.i.if.then36.i_crit_edge ], [ -12, %if.end31.i.if.then36.i_crit_edge ]
  %dev37.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %55 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev37.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i8594.i) #18
  br label %if.then26

if.then26:                                        ; preds = %if.then36.i, %if.then8.i
  %retval.0.i95 = phi i32 [ %retval.0.i89.i, %if.then8.i ], [ %retval.0.i8594.i, %if.then36.i ]
  %dev27 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %57 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %58, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i95) #18
  br label %err_flood_group

if.end28:                                         ; preds = %ofdpa_group_l2_interface.exit86.i.if.end28_crit_edge, %land.lhs.true24.i.if.end28_crit_edge
  %and.i97.pre-phi = phi i32 [ %.pre143, %land.lhs.true24.i.if.end28_crit_edge ], [ %and.i80.i, %ofdpa_group_l2_interface.exit86.i.if.end28_crit_edge ]
  %59 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ofdpa_port, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %port_count2.i96 = getelementptr inbounds %struct.rocker, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %port_count2.i96 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port_count2.i96, align 4
  %or.i = or i32 %and.i97.pre-phi, 1073741824
  %65 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %64, i32 4) #14
  %66 = extractvalue { i32, i1 } %65, 1
  br i1 %66, label %if.end28.if.then31_crit_edge, label %if.end7.i.i.i, !prof !117

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31

if.end7.i.i.i:                                    ; preds = %if.end28
  %67 = extractvalue { i32, i1 } %65, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef 3520) #21
  %tobool.not.i99 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i99, label %if.end7.i.i.i.if.then31_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.then31_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then31

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp71.not.i = icmp eq i32 %64, 0
  br i1 %cmp71.not.i, label %for.cond.preheader.i.if.end33_crit_edge, label %for.body.lr.ph.i102

for.cond.preheader.i.if.end33_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

for.body.lr.ph.i102:                              ; preds = %for.cond.preheader.i
  %div3.i.i100 = lshr i32 %conv, 5
  %and.i.i101 = and i32 %conv, 31
  %68 = shl nuw i32 1, %and.i.i101
  br label %for.body.i105

for.body.i105:                                    ; preds = %for.inc.i113.for.body.i105_crit_edge, %for.body.lr.ph.i102
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i102 ], [ %inc24.i, %for.inc.i113.for.body.i105_crit_edge ]
  %group_count.072.i = phi i8 [ 0, %for.body.lr.ph.i102 ], [ %group_count.1.i, %for.inc.i113.for.body.i105_crit_edge ]
  %69 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %60, align 8
  %ports.i.i103 = getelementptr inbounds %struct.rocker, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %ports.i.i103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ports.i.i103, align 8
  %arrayidx.i60.i = getelementptr ptr, ptr %72, i32 %i.073.i
  %73 = ptrtoint ptr %arrayidx.i60.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i60.i, align 4
  %tobool.not.i.i104 = icmp eq ptr %74, null
  br i1 %tobool.not.i.i104, label %for.body.i105.for.inc.i113_crit_edge, label %ofdpa_port_get.exit.i107

for.body.i105.for.inc.i113_crit_edge:             ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i113

ofdpa_port_get.exit.i107:                         ; preds = %for.body.i105
  %wpriv.i.i106 = getelementptr inbounds %struct.rocker_port, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %wpriv.i.i106 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wpriv.i.i106, align 8
  %tobool6.not.i = icmp eq ptr %76, null
  br i1 %tobool6.not.i, label %ofdpa_port_get.exit.i107.for.inc.i113_crit_edge, label %if.end8.i

ofdpa_port_get.exit.i107.for.inc.i113_crit_edge:  ; preds = %ofdpa_port_get.exit.i107
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i113

if.end8.i:                                        ; preds = %ofdpa_port_get.exit.i107
  %bridge_dev.i.i.i = getelementptr inbounds %struct.ofdpa_port, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %bridge_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bridge_dev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i.i, label %if.end8.i.for.inc.i113_crit_edge, label %ofdpa_port_is_bridged.exit.i

if.end8.i.for.inc.i113_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i113

ofdpa_port_is_bridged.exit.i:                     ; preds = %if.end8.i
  %rtnl_link_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 136
  %79 = ptrtoint ptr %rtnl_link_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rtnl_link_ops.i.i.i, align 4
  %kind2.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %kind2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %kind2.i.i.i, align 4
  %call.i.i.i = tail call i32 @strcmp(ptr noundef %82, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end11.i, label %ofdpa_port_is_bridged.exit.i.for.inc.i113_crit_edge

ofdpa_port_is_bridged.exit.i.for.inc.i113_crit_edge: ; preds = %ofdpa_port_is_bridged.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i113

if.end11.i:                                       ; preds = %ofdpa_port_is_bridged.exit.i
  %vlan_bitmap.i108 = getelementptr inbounds %struct.ofdpa_port, ptr %76, i32 0, i32 10
  %arrayidx.i.i109 = getelementptr i32, ptr %vlan_bitmap.i108, i32 %div3.i.i100
  %83 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %arrayidx.i.i109, align 4
  %85 = and i32 %84, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool14.not.i = icmp eq i32 %85, 0
  br i1 %tobool14.not.i, label %if.end11.i.for.inc.i113_crit_edge, label %if.then15.i

if.end11.i.for.inc.i113_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i113

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %pport.i110 = getelementptr inbounds %struct.ofdpa_port, ptr %76, i32 0, i32 3
  %86 = ptrtoint ptr %pport.i110 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pport.i110, align 4
  %and21.i = and i32 %87, 65535
  %or22.i = or i32 %and21.i, %and.i97.pre-phi
  %inc.i = add i8 %group_count.072.i, 1
  %idxprom.i = zext i8 %group_count.072.i to i32
  %arrayidx.i111 = getelementptr i32, ptr %call8.i.i.i, i32 %idxprom.i
  %88 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or22.i, ptr %arrayidx.i111, align 4
  br label %for.inc.i113

for.inc.i113:                                     ; preds = %if.then15.i, %if.end11.i.for.inc.i113_crit_edge, %ofdpa_port_is_bridged.exit.i.for.inc.i113_crit_edge, %if.end8.i.for.inc.i113_crit_edge, %ofdpa_port_get.exit.i107.for.inc.i113_crit_edge, %for.body.i105.for.inc.i113_crit_edge
  %group_count.1.i = phi i8 [ %inc.i, %if.then15.i ], [ %group_count.072.i, %if.end11.i.for.inc.i113_crit_edge ], [ %group_count.072.i, %ofdpa_port_is_bridged.exit.i.for.inc.i113_crit_edge ], [ %group_count.072.i, %ofdpa_port_get.exit.i107.for.inc.i113_crit_edge ], [ %group_count.072.i, %for.body.i105.for.inc.i113_crit_edge ], [ %group_count.072.i, %if.end8.i.for.inc.i113_crit_edge ]
  %inc24.i = add nuw i32 %i.073.i, 1
  %exitcond.not.i112 = icmp eq i32 %inc24.i, %64
  br i1 %exitcond.not.i112, label %for.end.i114, label %for.inc.i113.for.body.i105_crit_edge

for.inc.i113.for.body.i105_crit_edge:             ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i105

for.end.i114:                                     ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %group_count.1.i)
  %cmp26.i = icmp eq i8 %group_count.1.i, 0
  br i1 %cmp26.i, label %for.end.i114.if.end33_crit_edge, label %if.end29.i

for.end.i114.if.end33_crit_edge:                  ; preds = %for.end.i114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end29.i:                                       ; preds = %for.end.i114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3520, i32 noundef 44) #17
  %tobool.not.i.i61.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i61.i, label %if.end29.i.ofdpa_port_vlan_flood_group.exit_crit_edge, label %if.end.i.i62.i

if.end29.i.ofdpa_port_vlan_flood_group.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_vlan_flood_group.exit

if.end.i.i62.i:                                   ; preds = %if.end29.i
  %group_id2.i.i.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %90 = ptrtoint ptr %group_id2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or.i, ptr %group_id2.i.i.i, align 4
  %conv.i.i.i = zext i8 %group_count.1.i to i16
  %group_count3.i.i.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %group_count3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i.i.i, ptr %group_count3.i.i.i, align 8
  %conv4.i.i.i = zext i8 %group_count.1.i to i32
  %92 = shl nuw nsw i32 %conv4.i.i.i, 2
  %call8.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %92, i32 noundef 3520) #21
  %group_ids6.i.i.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %93 = ptrtoint ptr %group_ids6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call8.i.i.i.i.i, ptr %group_ids6.i.i.i, align 4
  %tobool8.not.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %if.then9.i.i.i, label %ofdpa_group_l2_flood.exit.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i62.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #14
  br label %ofdpa_port_vlan_flood_group.exit

ofdpa_group_l2_flood.exit.i:                      ; preds = %if.end.i.i62.i
  %94 = call ptr @memcpy(ptr %call8.i.i.i.i.i, ptr %call8.i.i.i, i32 %92)
  %call13.i.i.i = tail call fastcc i32 @ofdpa_group_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool31.not.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool31.not.i, label %ofdpa_group_l2_flood.exit.i.if.end33_crit_edge, label %ofdpa_group_l2_flood.exit.i.ofdpa_port_vlan_flood_group.exit_crit_edge

ofdpa_group_l2_flood.exit.i.ofdpa_port_vlan_flood_group.exit_crit_edge: ; preds = %ofdpa_group_l2_flood.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_vlan_flood_group.exit

ofdpa_group_l2_flood.exit.i.if.end33_crit_edge:   ; preds = %ofdpa_group_l2_flood.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

ofdpa_port_vlan_flood_group.exit:                 ; preds = %ofdpa_group_l2_flood.exit.i.ofdpa_port_vlan_flood_group.exit_crit_edge, %if.then9.i.i.i, %if.end29.i.ofdpa_port_vlan_flood_group.exit_crit_edge
  %retval.0.i.i6370.i = phi i32 [ %call13.i.i.i, %ofdpa_group_l2_flood.exit.i.ofdpa_port_vlan_flood_group.exit_crit_edge ], [ -12, %if.then9.i.i.i ], [ -12, %if.end29.i.ofdpa_port_vlan_flood_group.exit_crit_edge ]
  %dev.i115 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %95 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i115, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %96, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i.i6370.i) #18
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #14
  br label %if.then31

if.then31:                                        ; preds = %ofdpa_port_vlan_flood_group.exit, %if.end7.i.i.i.if.then31_crit_edge, %if.end28.if.then31_crit_edge
  %retval.0.i116135 = phi i32 [ %retval.0.i.i6370.i, %ofdpa_port_vlan_flood_group.exit ], [ -12, %if.end7.i.i.i.if.then31_crit_edge ], [ -12, %if.end28.if.then31_crit_edge ]
  %dev32 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %97 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %98, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i116135) #18
  br label %err_flood_group

if.end33:                                         ; preds = %ofdpa_group_l2_flood.exit.i.if.end33_crit_edge, %for.end.i114.if.end33_crit_edge, %for.cond.preheader.i.if.end33_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %99 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %99, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i117 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i117, label %if.end33.if.then37_crit_edge, label %ofdpa_flow_tbl_vlan.exit

if.end33.if.then37_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

ofdpa_flow_tbl_vlan.exit:                         ; preds = %if.end33
  %frombool.i = zext i1 %tobool1.not11.i to i8
  %key.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3
  %100 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %key.i, align 8
  %tbl_id.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %tbl_id.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 10, ptr %tbl_id.i, align 4
  %102 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %1, ptr %102, align 8
  %vlan_id6.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 1
  %104 = ptrtoint ptr %vlan_id6.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %vid, ptr %vlan_id6.i, align 4
  %vlan_id_mask8.i = getelementptr inbounds %struct.anon.155, ptr %102, i32 0, i32 2
  %105 = ptrtoint ptr %vlan_id_mask8.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -1, ptr %vlan_id_mask8.i, align 2
  %goto_tbl10.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 2
  %106 = ptrtoint ptr %goto_tbl10.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 20, ptr %goto_tbl10.i, align 8
  %untagged13.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 2, i32 4
  %107 = ptrtoint ptr %untagged13.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %frombool.i, ptr %untagged13.i, align 4
  %new_vlan_id16.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 3
  %108 = ptrtoint ptr %new_vlan_id16.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %vlan_id.0.i, ptr %new_vlan_id16.i, align 2
  %call17.i = tail call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool36.not = icmp eq i32 %call17.i, 0
  br i1 %tobool36.not, label %ofdpa_flow_tbl_vlan.exit.cleanup_crit_edge, label %ofdpa_flow_tbl_vlan.exit.if.then37_crit_edge

ofdpa_flow_tbl_vlan.exit.if.then37_crit_edge:     ; preds = %ofdpa_flow_tbl_vlan.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

ofdpa_flow_tbl_vlan.exit.cleanup_crit_edge:       ; preds = %ofdpa_flow_tbl_vlan.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then37:                                        ; preds = %ofdpa_flow_tbl_vlan.exit.if.then37_crit_edge, %if.end33.if.then37_crit_edge
  %retval.0.i118142 = phi i32 [ %call17.i, %ofdpa_flow_tbl_vlan.exit.if.then37_crit_edge ], [ -12, %if.end33.if.then37_crit_edge ]
  %dev38 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %109 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %110, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i118142) #18
  br label %cleanup

err_flood_group:                                  ; preds = %if.then31, %if.then26, %if.then20
  %err.0 = phi i32 [ %retval.0.i.ph, %if.then20 ], [ %retval.0.i95, %if.then26 ], [ %retval.0.i116135, %if.then31 ]
  tail call void @_change_bit(i32 noundef %conv, ptr noundef %vlan_bitmap) #14
  br label %cleanup

cleanup:                                          ; preds = %err_flood_group, %if.then37, %ofdpa_flow_tbl_vlan.exit.cleanup_crit_edge, %land.lhs.true5.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_flood_group ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true5.critedge.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %ofdpa_flow_tbl_vlan.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_port_router_mac(ptr nocapture noundef readonly %ofdpa_port, i32 noundef %flags, i16 noundef zeroext %vlan_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id)
  %cmp = icmp eq i16 %vlan_id, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %internal_vlan_id = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 5
  %0 = ptrtoint ptr %internal_vlan_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %internal_vlan_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vlan_id.addr.0 = phi i16 [ %1, %if.then ], [ %vlan_id, %entry.if.end_crit_edge ]
  %pport = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 3
  %2 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pport, align 4
  %dev = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %ofdpa_flow_tbl_term_mac.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ofdpa_flow_tbl_term_mac.exit:                     ; preds = %if.end
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %7, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  %not.tobool.i.not.i = xor i1 %tobool.i.not.i, true
  %spec.select.i = zext i1 %not.tobool.i.not.i to i32
  %spec.select4.i = select i1 %tobool.i.not.i, i32 30, i32 40
  %12 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select4.i, ptr %14, align 4
  %tbl_id.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %tbl_id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 20, ptr %tbl_id.i, align 4
  %17 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %3, ptr %17, align 8
  %in_pport_mask14.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %in_pport_mask14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %in_pport_mask14.i, align 4
  %eth_type16.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %eth_type16.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2048, ptr %eth_type16.i, align 8
  %eth_dst18.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %eth_dst18.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %10, ptr %eth_dst18.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 3
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i.i, align 2
  %eth_dst_mask20.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %eth_dst_mask20.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %eth_dst_mask20.i, align 8
  %add.ptr1.i2.i = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 4
  %26 = ptrtoint ptr %add.ptr1.i2.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %add.ptr1.i2.i, align 4
  %vlan_id23.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %vlan_id23.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %vlan_id.addr.0, ptr %vlan_id23.i, align 2
  %vlan_id_mask25.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %vlan_id_mask25.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %vlan_id_mask25.i, align 8
  %copy_to_cpu28.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 6
  %29 = ptrtoint ptr %copy_to_cpu28.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %copy_to_cpu28.i, align 8
  %call30.i = tail call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool2.not = icmp eq i32 %call30.i, 0
  br i1 %tobool2.not, label %if.end4, label %ofdpa_flow_tbl_term_mac.exit.cleanup_crit_edge

ofdpa_flow_tbl_term_mac.exit.cleanup_crit_edge:   ; preds = %ofdpa_flow_tbl_term_mac.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %ofdpa_flow_tbl_term_mac.exit
  %30 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pport, align 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %dev_addr7 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 86
  %34 = ptrtoint ptr %dev_addr7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr7, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i32 = icmp eq ptr %call7.i.i.i31, null
  br i1 %tobool.not.i32, label %if.end4.cleanup_crit_edge, label %if.end.i49

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i49:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %35, align 4
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i33 = icmp eq i32 %39, 0
  %not.tobool.i.not.i34 = xor i1 %tobool.i.not.i33, true
  %spec.select.i35 = zext i1 %not.tobool.i.not.i34 to i32
  %spec.select4.i36 = select i1 %tobool.i.not.i33, i32 30, i32 40
  %40 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select.i35, ptr %40, align 8
  %42 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select4.i36, ptr %42, align 4
  %tbl_id.i37 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %tbl_id.i37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 20, ptr %tbl_id.i37, align 4
  %45 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %31, ptr %45, align 8
  %in_pport_mask14.i38 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 1
  %47 = ptrtoint ptr %in_pport_mask14.i38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %in_pport_mask14.i38, align 4
  %eth_type16.i39 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 2
  %48 = ptrtoint ptr %eth_type16.i39 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -31011, ptr %eth_type16.i39, align 8
  %eth_dst18.i40 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %eth_dst18.i40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %38, ptr %eth_dst18.i40, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %35, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i41 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr.i.i41, align 2
  %add.ptr1.i.i42 = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 3
  %52 = ptrtoint ptr %add.ptr1.i.i42 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %add.ptr1.i.i42, align 2
  %eth_dst_mask20.i43 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 3, i32 2
  %53 = ptrtoint ptr %eth_dst_mask20.i43 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %eth_dst_mask20.i43, align 8
  %add.ptr1.i2.i44 = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 4
  %54 = ptrtoint ptr %add.ptr1.i2.i44 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %add.ptr1.i2.i44, align 4
  %vlan_id23.i45 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 4, i32 2
  %55 = ptrtoint ptr %vlan_id23.i45 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %vlan_id.addr.0, ptr %vlan_id23.i45, align 2
  %vlan_id_mask25.i46 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 4, i32 4
  %56 = ptrtoint ptr %vlan_id_mask25.i46 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %vlan_id_mask25.i46, align 8
  %copy_to_cpu28.i47 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i31, i32 0, i32 3, i32 2, i32 0, i32 6
  %57 = ptrtoint ptr %copy_to_cpu28.i47 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %copy_to_cpu28.i47, align 8
  %call30.i48 = tail call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i31) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i49, %if.end4.cleanup_crit_edge, %ofdpa_flow_tbl_term_mac.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30.i, %ofdpa_flow_tbl_term_mac.exit.cleanup_crit_edge ], [ %call30.i48, %if.end.i49 ], [ -12, %if.end4.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_port_ctrl_vlan(ptr nocapture noundef readonly %ofdpa_port, i32 noundef %flags, ptr nocapture noundef readonly %ctrl, i16 noundef zeroext %vlan_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %acl = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %acl, align 2, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pport.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 3
  %2 = ptrtoint ptr %pport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pport.i, align 4
  %conv.i = zext i16 %vlan_id to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %and.i = and i32 %shl.i, 268369920
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %eth_dst_mask.i = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 1
  %6 = ptrtoint ptr %eth_dst_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eth_dst_mask.i, align 4
  %eth_type.i = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 2
  %8 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %eth_type.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.if.then.i_crit_edge, label %if.end.i.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.then
  %tobool2.not.i.i = icmp eq ptr %5, null
  %tobool3.not.i.i = icmp eq ptr %7, null
  %or.cond.i.i = or i1 %tobool2.not.i.i, %tobool3.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor3.i.i.i = zext i16 %14 to i32
  %15 = or i32 %12, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %15)
  %cmp.i.i.i = icmp eq i32 %15, 16777216
  br i1 %cmp.i.i.i, label %if.then4.i.i.if.end11.i.i_crit_edge, label %if.else.i.i

if.then4.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

if.else.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %xor.i1.i.i = xor i32 %17, 25215488
  %arrayidx.i.i.i = getelementptr i16, ptr %5, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i.i, align 2
  %20 = and i16 %19, -16
  %and.i.i.i = zext i16 %20 to i32
  %or.i2.i.i = or i32 %xor.i1.i.i, %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i2.i.i)
  %cmp.i3.i.i = icmp eq i32 %or.i2.i.i, 0
  %spec.select.i.i = select i1 %cmp.i3.i.i, i32 3, i32 2
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.else.i.i, %if.then4.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %priority.0.i.i = phi i32 [ 2, %if.end.i.i.if.end11.i.i_crit_edge ], [ 1, %if.then4.i.i.if.end11.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i ]
  %key.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %priority.0.i.i, ptr %key.i.i, align 8
  %tbl_id.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %tbl_id.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 60, ptr %tbl_id.i.i, align 4
  %23 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %3, ptr %23, align 8
  %in_pport_mask17.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %in_pport_mask17.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %in_pport_mask17.i.i, align 4
  br i1 %tobool2.not.i.i, label %if.end11.i.i.if.end34.i.i_crit_edge, label %if.then30.i.i

if.end11.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i.i

if.then30.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %eth_dst32.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %5, align 4
  %28 = ptrtoint ptr %eth_dst32.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %eth_dst32.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %5, i32 4
  %29 = ptrtoint ptr %add.ptr.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i4.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %add.ptr1.i.i.i, align 8
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then30.i.i, %if.end11.i.i.if.end34.i.i_crit_edge
  br i1 %tobool3.not.i.i, label %if.end34.i.i.ofdpa_flow_tbl_acl.exit.i_crit_edge, label %if.then36.i.i

if.end34.i.i.ofdpa_flow_tbl_acl.exit.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_flow_tbl_acl.exit.i

if.then36.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %eth_dst_mask38.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 5
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %7, align 4
  %34 = ptrtoint ptr %eth_dst_mask38.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %eth_dst_mask38.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %7, i32 4
  %35 = ptrtoint ptr %add.ptr.i5.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i5.i.i, align 2
  %add.ptr1.i6.i.i = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 5, i32 4
  %37 = ptrtoint ptr %add.ptr1.i6.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %add.ptr1.i6.i.i, align 2
  br label %ofdpa_flow_tbl_acl.exit.i

ofdpa_flow_tbl_acl.exit.i:                        ; preds = %if.then36.i.i, %if.end34.i.i.ofdpa_flow_tbl_acl.exit.i_crit_edge
  %eth_type42.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 6
  %38 = ptrtoint ptr %eth_type42.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %9, ptr %eth_type42.i.i, align 8
  %vlan_id44.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 7
  %39 = ptrtoint ptr %vlan_id44.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %vlan_id, ptr %vlan_id44.i.i, align 2
  %vlan_id_mask46.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 8
  %40 = ptrtoint ptr %vlan_id_mask46.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %vlan_id_mask46.i.i, align 4
  %ip_proto48.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 9
  %group_id56.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2, i32 0, i32 13
  %41 = ptrtoint ptr %ip_proto48.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 0, ptr %ip_proto48.i.i, align 2
  %42 = ptrtoint ptr %group_id56.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i, ptr %group_id56.i.i, align 4
  %call57.i.i = tail call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool.not.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool.not.i, label %ofdpa_flow_tbl_acl.exit.i.return_crit_edge, label %ofdpa_flow_tbl_acl.exit.i.if.then.i_crit_edge

ofdpa_flow_tbl_acl.exit.i.if.then.i_crit_edge:    ; preds = %ofdpa_flow_tbl_acl.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

ofdpa_flow_tbl_acl.exit.i.return_crit_edge:       ; preds = %ofdpa_flow_tbl_acl.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i:                                        ; preds = %ofdpa_flow_tbl_acl.exit.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %retval.0.i13.i = phi i32 [ %call57.i.i, %ofdpa_flow_tbl_acl.exit.i.if.then.i_crit_edge ], [ -12, %if.then.if.then.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i13.i) #18
  br label %return

if.end:                                           ; preds = %entry
  %bridge = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 4
  %45 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bridge, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool1.not = icmp eq i8 %46, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %bridge_dev.i.i.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 4
  %47 = ptrtoint ptr %bridge_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bridge_dev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i, label %if.then2.return_crit_edge, label %ofdpa_port_is_bridged.exit.i

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

ofdpa_port_is_bridged.exit.i:                     ; preds = %if.then2
  %rtnl_link_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 136
  %49 = ptrtoint ptr %rtnl_link_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rtnl_link_ops.i.i.i, align 4
  %kind2.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %kind2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %kind2.i.i.i, align 4
  %call.i.i.i = tail call i32 @strcmp(ptr noundef %52, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i, label %ofdpa_port_is_bridged.exit.i.return_crit_edge

ofdpa_port_is_bridged.exit.i.return_crit_edge:    ; preds = %ofdpa_port_is_bridged.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %ofdpa_port_is_bridged.exit.i
  %conv.i20 = zext i16 %vlan_id to i32
  %shl.i21 = shl nuw i32 %conv.i20, 16
  %and.i22 = and i32 %shl.i21, 268369920
  %or.i = or i32 %and.i22, 1073741824
  %53 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl, align 4
  %eth_dst_mask.i23 = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 1
  %55 = ptrtoint ptr %eth_dst_mask.i23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %eth_dst_mask.i23, align 4
  %copy_to_cpu.i = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 6
  %57 = ptrtoint ptr %copy_to_cpu.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %copy_to_cpu.i, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id)
  %tobool.not.i.i24 = icmp eq i16 %vlan_id, 0
  %tobool4.not.i.i = icmp eq ptr %54, null
  %tobool5.i.i = icmp ne ptr %56, null
  %spec.select.i.i25 = or i1 %tobool4.not.i.i, %tobool5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 2848, i32 noundef 96) #17
  %tobool7.not.i.i = icmp eq ptr %call7.i.i.i.i26, null
  br i1 %tobool7.not.i.i, label %if.end.i.if.then4.i_crit_edge, label %if.end.i.i29

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

if.end.i.i29:                                     ; preds = %if.end.i
  %key.i.i27 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3
  %tbl_id.i.i28 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %tbl_id.i.i28 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 50, ptr %tbl_id.i.i28, align 4
  br i1 %tobool4.not.i.i, label %if.end.i.i29.if.end13.i.i_crit_edge, label %if.then9.i.i

if.end.i.i29.if.end13.i.i_crit_edge:              ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #16
  %61 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2
  %has_eth_dst.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 2, i32 4
  %62 = ptrtoint ptr %has_eth_dst.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %has_eth_dst.i.i, align 4
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %54, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %61, align 8
  %add.ptr.i.i.i30 = getelementptr i8, ptr %54, i32 4
  %66 = ptrtoint ptr %add.ptr.i.i.i30 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i.i.i30, align 2
  %add.ptr1.i.i.i31 = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 1
  %68 = ptrtoint ptr %add.ptr1.i.i.i31 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %add.ptr1.i.i.i31, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i29.if.end13.i.i_crit_edge
  %tobool14.not.i.i = icmp eq ptr %56, null
  br i1 %tobool14.not.i.i, label %if.end23.thread.i.i, label %if.end23.i.i

if.end23.thread.i.i:                              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %spec.select.not23.i.i = xor i1 %spec.select.i.i25, true
  %brmerge24.i.i = or i1 %tobool.not.i.i24, %spec.select.not23.i.i
  br label %if.else.i.i34

if.end23.i.i:                                     ; preds = %if.end13.i.i
  %69 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2
  %has_eth_dst_mask.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %has_eth_dst_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %has_eth_dst_mask.i.i, align 8
  %eth_dst_mask18.i.i = getelementptr inbounds %struct.anon.158, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %56, align 4
  %73 = ptrtoint ptr %eth_dst_mask18.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %eth_dst_mask18.i.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %56, i32 4
  %74 = ptrtoint ptr %add.ptr.i19.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i19.i.i, align 2
  %add.ptr1.i20.i.i = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 2, i32 2
  %76 = ptrtoint ptr %add.ptr1.i20.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %add.ptr1.i20.i.i, align 2
  %xor.i.i.i = xor i32 %72, -1
  %xor37.i.i.i = xor i16 %75, -1
  %xor3.i.i.i32 = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor3.i.i.i32, %xor.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i33 = icmp ne i32 %or.i.i.i, 0
  %spec.select.not.i.i = xor i1 %spec.select.i.i25, true
  %brmerge.i.i = or i1 %tobool.not.i.i24, %spec.select.not.i.i
  %wild.0.off0.not.i.i = xor i1 %cmp.i.i.i33, true
  %brmerge2.i.i = select i1 %brmerge.i.i, i1 true, i1 %wild.0.off0.not.i.i
  br i1 %brmerge2.i.i, label %if.end23.i.i.if.else.i.i34_crit_edge, label %if.end23.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge

if.end23.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_flow_tbl_bridge.exit.i

if.end23.i.i.if.else.i.i34_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i34

if.else.i.i34:                                    ; preds = %if.end23.i.i.if.else.i.i34_crit_edge, %if.end23.thread.i.i
  %wild.0.off0.not30.i.i = phi i1 [ true, %if.end23.thread.i.i ], [ %wild.0.off0.not.i.i, %if.end23.i.i.if.else.i.i34_crit_edge ]
  %brmerge29.i.i = phi i1 [ %brmerge24.i.i, %if.end23.thread.i.i ], [ %brmerge.i.i, %if.end23.i.i.if.else.i.i34_crit_edge ]
  %spec.select.not28.i.i = phi i1 [ %spec.select.not23.i.i, %if.end23.thread.i.i ], [ %spec.select.not.i.i, %if.end23.i.i.if.else.i.i34_crit_edge ]
  %wild.0.off027.i.i = phi i1 [ false, %if.end23.thread.i.i ], [ %cmp.i.i.i33, %if.end23.i.i.if.else.i.i34_crit_edge ]
  %brmerge5.i.i = select i1 %brmerge29.i.i, i1 true, i1 %wild.0.off027.i.i
  br i1 %brmerge5.i.i, label %if.else35.i.i, label %if.else.i.i34.ofdpa_flow_tbl_bridge.exit.i_crit_edge

if.else.i.i34.ofdpa_flow_tbl_bridge.exit.i_crit_edge: ; preds = %if.else.i.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_flow_tbl_bridge.exit.i

if.else35.i.i:                                    ; preds = %if.else.i.i34
  %brmerge6.i.i = or i1 %tobool.not.i.i24, %spec.select.i.i25
  br i1 %brmerge6.i.i, label %if.else40.i.i, label %if.else35.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge

if.else35.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge: ; preds = %if.else35.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_flow_tbl_bridge.exit.i

if.else40.i.i:                                    ; preds = %if.else35.i.i
  %tobool.not.not.i.i = xor i1 %tobool.not.i.i24, true
  %brmerge8.i.i = or i1 %spec.select.not28.i.i, %tobool.not.not.i.i
  %brmerge10.i.i = select i1 %brmerge8.i.i, i1 true, i1 %wild.0.off0.not30.i.i
  br i1 %brmerge10.i.i, label %if.else47.i.i, label %if.else40.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge

if.else40.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge: ; preds = %if.else40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_flow_tbl_bridge.exit.i

if.else47.i.i:                                    ; preds = %if.else40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %brmerge14.i.i = select i1 %brmerge8.i.i, i1 true, i1 %wild.0.off027.i.i
  %brmerge14.not.i.i = xor i1 %brmerge14.i.i, true
  %77 = and i1 %tobool.not.i.i24, %brmerge14.i.i
  %.mux.i.i = zext i1 %brmerge14.not.i.i to i32
  %spec.select17.i.i = select i1 %spec.select.i.i25, i32 0, i32 3
  %spec.select18.i.i = select i1 %77, i32 %spec.select17.i.i, i32 %.mux.i.i
  br label %ofdpa_flow_tbl_bridge.exit.i

ofdpa_flow_tbl_bridge.exit.i:                     ; preds = %if.else47.i.i, %if.else40.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge, %if.else35.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge, %if.else.i.i34.ofdpa_flow_tbl_bridge.exit.i_crit_edge, %if.end23.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge
  %priority.0.i.i35 = phi i32 [ 2, %if.end23.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge ], [ 1, %if.else.i.i34.ofdpa_flow_tbl_bridge.exit.i_crit_edge ], [ 3, %if.else35.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge ], [ 2, %if.else40.i.i.ofdpa_flow_tbl_bridge.exit.i_crit_edge ], [ %spec.select18.i.i, %if.else47.i.i ]
  %78 = ptrtoint ptr %key.i.i27 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %priority.0.i.i35, ptr %key.i.i27, align 8
  %vlan_id68.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 4
  %79 = ptrtoint ptr %vlan_id68.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %vlan_id, ptr %vlan_id68.i.i, align 4
  %tunnel_id70.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 4, i32 4
  %80 = ptrtoint ptr %tunnel_id70.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %tunnel_id70.i.i, align 8
  %goto_tbl72.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 5, i32 2
  %81 = ptrtoint ptr %goto_tbl72.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 60, ptr %goto_tbl72.i.i, align 4
  %group_id74.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 6
  %82 = ptrtoint ptr %group_id74.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or.i, ptr %group_id74.i.i, align 8
  %copy_to_cpu77.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i26, i32 0, i32 3, i32 2, i32 0, i32 8
  %83 = ptrtoint ptr %copy_to_cpu77.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %58, ptr %copy_to_cpu77.i.i, align 4
  %call79.i.i = tail call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i.i26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i.i)
  %tobool3.not.i = icmp eq i32 %call79.i.i, 0
  br i1 %tobool3.not.i, label %ofdpa_flow_tbl_bridge.exit.i.return_crit_edge, label %ofdpa_flow_tbl_bridge.exit.i.if.then4.i_crit_edge

ofdpa_flow_tbl_bridge.exit.i.if.then4.i_crit_edge: ; preds = %ofdpa_flow_tbl_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

ofdpa_flow_tbl_bridge.exit.i.return_crit_edge:    ; preds = %ofdpa_flow_tbl_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then4.i:                                       ; preds = %ofdpa_flow_tbl_bridge.exit.i.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %retval.0.i18.i = phi i32 [ %call79.i.i, %ofdpa_flow_tbl_bridge.exit.i.if.then4.i_crit_edge ], [ -12, %if.end.i.if.then4.i_crit_edge ]
  %dev.i36 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %84 = ptrtoint ptr %dev.i36 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i36, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %85, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i18.i) #18
  br label %return

if.end4:                                          ; preds = %if.end
  %term = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 5
  %86 = ptrtoint ptr %term to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %term, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool5.not = icmp eq i8 %87, 0
  br i1 %tobool5.not, label %if.end4.return_crit_edge, label %if.then6

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id)
  %cmp.i = icmp eq i16 %vlan_id, 0
  br i1 %cmp.i, label %if.then.i37, label %if.then6.if.end.i44_crit_edge

if.then6.if.end.i44_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i44

if.then.i37:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %internal_vlan_id.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 5
  %88 = ptrtoint ptr %internal_vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %internal_vlan_id.i, align 4
  br label %if.end.i44

if.end.i44:                                       ; preds = %if.then.i37, %if.then6.if.end.i44_crit_edge
  %vlan_id.addr.0.i = phi i16 [ %89, %if.then.i37 ], [ %vlan_id, %if.then6.if.end.i44_crit_edge ]
  %pport.i38 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 3
  %90 = ptrtoint ptr %pport.i38 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pport.i38, align 4
  %eth_type.i39 = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 2
  %92 = ptrtoint ptr %eth_type.i39 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %eth_type.i39, align 4
  %94 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctrl, align 4
  %eth_dst_mask.i40 = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 1
  %96 = ptrtoint ptr %eth_dst_mask.i40 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %eth_dst_mask.i40, align 4
  %copy_to_cpu.i41 = getelementptr inbounds %struct.ofdpa_ctrl, ptr %ctrl, i32 0, i32 6
  %98 = ptrtoint ptr %copy_to_cpu.i41 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %copy_to_cpu.i41, align 1, !range !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i.i43 = icmp eq ptr %call7.i.i.i.i42, null
  br i1 %tobool.not.i.i43, label %if.end.i44.if.then3.i_crit_edge, label %ofdpa_flow_tbl_term_mac.exit.i

if.end.i44.if.then3.i_crit_edge:                  ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i

ofdpa_flow_tbl_term_mac.exit.i:                   ; preds = %if.end.i44
  %101 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %95, align 4
  %103 = and i32 %102, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.i.not.i.i = icmp eq i32 %103, 0
  %not.tobool.i.not.i.i = xor i1 %tobool.i.not.i.i, true
  %spec.select.i.i45 = zext i1 %not.tobool.i.not.i.i to i32
  %spec.select4.i.i = select i1 %tobool.i.not.i.i, i32 30, i32 40
  %104 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %spec.select.i.i45, ptr %104, align 8
  %106 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 5, i32 2
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %spec.select4.i.i, ptr %106, align 4
  %tbl_id.i.i46 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %tbl_id.i.i46 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 20, ptr %tbl_id.i.i46, align 4
  %109 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %91, ptr %109, align 8
  %in_pport_mask14.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 1
  %111 = ptrtoint ptr %in_pport_mask14.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %in_pport_mask14.i.i, align 4
  %eth_type16.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 2
  %112 = ptrtoint ptr %eth_type16.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %93, ptr %eth_type16.i.i, align 8
  %eth_dst18.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 2, i32 2
  %113 = ptrtoint ptr %eth_dst18.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %102, ptr %eth_dst18.i.i, align 4
  %add.ptr.i.i.i47 = getelementptr i8, ptr %95, i32 4
  %114 = ptrtoint ptr %add.ptr.i.i.i47 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr.i.i.i47, align 2
  %add.ptr1.i.i.i48 = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 3
  %116 = ptrtoint ptr %add.ptr1.i.i.i48 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %add.ptr1.i.i.i48, align 2
  %eth_dst_mask20.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 3, i32 2
  %117 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %97, align 4
  %119 = ptrtoint ptr %eth_dst_mask20.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %eth_dst_mask20.i.i, align 8
  %add.ptr.i1.i.i = getelementptr i8, ptr %97, i32 4
  %120 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.i1.i.i, align 2
  %add.ptr1.i2.i.i = getelementptr %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 4
  %122 = ptrtoint ptr %add.ptr1.i2.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %add.ptr1.i2.i.i, align 4
  %vlan_id23.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 4, i32 2
  %123 = ptrtoint ptr %vlan_id23.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %vlan_id.addr.0.i, ptr %vlan_id23.i.i, align 2
  %vlan_id_mask25.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 4, i32 4
  %124 = ptrtoint ptr %vlan_id_mask25.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -1, ptr %vlan_id_mask25.i.i, align 8
  %copy_to_cpu28.i.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i.i42, i32 0, i32 3, i32 2, i32 0, i32 6
  %125 = ptrtoint ptr %copy_to_cpu28.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %99, ptr %copy_to_cpu28.i.i, align 8
  %call30.i.i = tail call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i.i42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool2.not.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool2.not.i, label %ofdpa_flow_tbl_term_mac.exit.i.return_crit_edge, label %ofdpa_flow_tbl_term_mac.exit.i.if.then3.i_crit_edge

ofdpa_flow_tbl_term_mac.exit.i.if.then3.i_crit_edge: ; preds = %ofdpa_flow_tbl_term_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i

ofdpa_flow_tbl_term_mac.exit.i.return_crit_edge:  ; preds = %ofdpa_flow_tbl_term_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then3.i:                                       ; preds = %ofdpa_flow_tbl_term_mac.exit.i.if.then3.i_crit_edge, %if.end.i44.if.then3.i_crit_edge
  %retval.0.i16.i = phi i32 [ %call30.i.i, %ofdpa_flow_tbl_term_mac.exit.i.if.then3.i_crit_edge ], [ -12, %if.end.i44.if.then3.i_crit_edge ]
  %dev.i49 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %126 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i49, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %127, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i16.i) #18
  br label %return

return:                                           ; preds = %if.then3.i, %ofdpa_flow_tbl_term_mac.exit.i.return_crit_edge, %if.end4.return_crit_edge, %if.then4.i, %ofdpa_flow_tbl_bridge.exit.i.return_crit_edge, %ofdpa_port_is_bridged.exit.i.return_crit_edge, %if.then2.return_crit_edge, %if.then.i, %ofdpa_flow_tbl_acl.exit.i.return_crit_edge
  %retval.0 = phi i32 [ -95, %if.end4.return_crit_edge ], [ %retval.0.i13.i, %if.then.i ], [ 0, %ofdpa_flow_tbl_acl.exit.i.return_crit_edge ], [ 0, %ofdpa_port_is_bridged.exit.i.return_crit_edge ], [ %retval.0.i18.i, %if.then4.i ], [ 0, %ofdpa_flow_tbl_bridge.exit.i.return_crit_edge ], [ 0, %if.then2.return_crit_edge ], [ %retval.0.i16.i, %if.then3.i ], [ 0, %ofdpa_flow_tbl_term_mac.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_group_tbl_do(ptr nocapture noundef readonly %ofdpa_port, i32 noundef %flags, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ofdpa_port, align 4
  %group_tbl_lock.i7 = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 5
  %call3.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %group_tbl_lock.i7) #14
  %group_id.i.i9 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %group_id.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %group_id.i.i9, align 4
  %mul.i.i.i.i10 = mul i32 %3, 1640531527
  %shr.i.i.i11 = lshr i32 %mul.i.i.i.i10, 16
  %arrayidx.i.i12 = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 4, i32 %shr.i.i.i11
  br i1 %tobool.not, label %entry.for.cond.i.i16_crit_edge, label %entry.for.cond.i.i_crit_edge

entry.for.cond.i.i_crit_edge:                     ; preds = %entry
  br label %for.cond.i.i

entry.for.cond.i.i16_crit_edge:                   ; preds = %entry
  br label %for.cond.i.i16

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry.for.cond.i.i_crit_edge
  %found.0.in.i.i = phi ptr [ %found.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %arrayidx.i.i12, %entry.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %found.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %found.0.i.i = load ptr, ptr %found.0.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %found.0.i.i, null
  br i1 %tobool2.not.i.i, label %if.end13.critedge.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %group_id3.i.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %found.0.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %group_id3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %group_id3.i.i, align 4
  %cmp.i.i = icmp eq i32 %6, %3
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

if.then.i:                                        ; preds = %for.body.i.i
  %group_id3.i.i.le = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %found.0.i.i, i32 0, i32 2
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %found.0.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then.i.hash_del.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.hash_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  %9 = ptrtoint ptr %found.0.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %found.0.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %8, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %13 = ptrtoint ptr %found.0.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %found.0.i.i, align 4
  %14 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del.exit.i

hash_del.exit.i:                                  ; preds = %__hlist_del.exit.i.i.i, %if.then.i.hash_del.exit.i_crit_edge
  %cmd.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %found.0.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %cmd.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %group_tbl_lock.i7, i32 noundef %call3.i8) #14
  %16 = ptrtoint ptr %group_id.i.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %group_id.i.i9, align 4
  %shr.i.i = lshr i32 %17, 28
  %shr.off.i.i = add nsw i32 %shr.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off.i.i)
  %switch.i.i = icmp ult i32 %shr.off.i.i, 2
  br i1 %switch.i.i, label %sw.bb.i.i, label %hash_del.exit.i.ofdpa_group_tbl_entry_free.exit.i_crit_edge

hash_del.exit.i.ofdpa_group_tbl_entry_free.exit.i_crit_edge: ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_group_tbl_entry_free.exit.i

sw.bb.i.i:                                        ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %group_ids.i.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 4
  %18 = ptrtoint ptr %group_ids.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group_ids.i.i, align 4
  tail call void @kfree(ptr noundef %19) #14
  br label %ofdpa_group_tbl_entry_free.exit.i

ofdpa_group_tbl_entry_free.exit.i:                ; preds = %sw.bb.i.i, %hash_del.exit.i.ofdpa_group_tbl_entry_free.exit.i_crit_edge
  tail call void @kfree(ptr noundef %entry1) #14
  %rocker_port.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 1
  %20 = ptrtoint ptr %rocker_port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rocker_port.i, align 4
  %and.i.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %call12.i = tail call i32 @rocker_cmd_exec(ptr noundef %21, i1 noundef zeroext %tobool.i.i, ptr noundef nonnull @ofdpa_cmd_group_tbl_del, ptr noundef nonnull %found.0.i.i, ptr noundef null, ptr noundef null) #14
  %22 = ptrtoint ptr %group_id3.i.i.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %group_id3.i.i.le, align 4
  %shr.i25.i = lshr i32 %23, 28
  %shr.off.i26.i = add nsw i32 %shr.i25.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off.i26.i)
  %switch.i27.i = icmp ult i32 %shr.off.i26.i, 2
  br i1 %switch.i27.i, label %sw.bb.i29.i, label %ofdpa_group_tbl_entry_free.exit.i.ofdpa_group_tbl_entry_free.exit30.i_crit_edge

ofdpa_group_tbl_entry_free.exit.i.ofdpa_group_tbl_entry_free.exit30.i_crit_edge: ; preds = %ofdpa_group_tbl_entry_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_group_tbl_entry_free.exit30.i

sw.bb.i29.i:                                      ; preds = %ofdpa_group_tbl_entry_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %group_ids.i28.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %found.0.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %group_ids.i28.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %group_ids.i28.i, align 4
  tail call void @kfree(ptr noundef %25) #14
  br label %ofdpa_group_tbl_entry_free.exit30.i

ofdpa_group_tbl_entry_free.exit30.i:              ; preds = %sw.bb.i29.i, %ofdpa_group_tbl_entry_free.exit.i.ofdpa_group_tbl_entry_free.exit30.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %found.0.i.i) #14
  br label %return

if.end13.critedge.i:                              ; preds = %for.cond.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %group_tbl_lock.i7, i32 noundef %call3.i8) #14
  %26 = ptrtoint ptr %group_id.i.i9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %group_id.i.i9, align 4
  %shr.i32.i = lshr i32 %27, 28
  %shr.off.i33.i = add nsw i32 %shr.i32.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off.i33.i)
  %switch.i34.i = icmp ult i32 %shr.off.i33.i, 2
  br i1 %switch.i34.i, label %sw.bb.i36.i, label %if.end13.critedge.i.ofdpa_group_tbl_entry_free.exit37.i_crit_edge

if.end13.critedge.i.ofdpa_group_tbl_entry_free.exit37.i_crit_edge: ; preds = %if.end13.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_group_tbl_entry_free.exit37.i

sw.bb.i36.i:                                      ; preds = %if.end13.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  %group_ids.i35.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 4
  %28 = ptrtoint ptr %group_ids.i35.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %group_ids.i35.i, align 4
  tail call void @kfree(ptr noundef %29) #14
  br label %ofdpa_group_tbl_entry_free.exit37.i

ofdpa_group_tbl_entry_free.exit37.i:              ; preds = %sw.bb.i36.i, %if.end13.critedge.i.ofdpa_group_tbl_entry_free.exit37.i_crit_edge
  tail call void @kfree(ptr noundef %entry1) #14
  br label %return

for.cond.i.i16:                                   ; preds = %for.body.i.i19.for.cond.i.i16_crit_edge, %entry.for.cond.i.i16_crit_edge
  %found.0.in.i.i13 = phi ptr [ %found.0.i.i14, %for.body.i.i19.for.cond.i.i16_crit_edge ], [ %arrayidx.i.i12, %entry.for.cond.i.i16_crit_edge ]
  %30 = ptrtoint ptr %found.0.in.i.i13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %found.0.i.i14 = load ptr, ptr %found.0.in.i.i13, align 4
  %tobool2.not.i.i15 = icmp eq ptr %found.0.i.i14, null
  br i1 %tobool2.not.i.i15, label %for.cond.i.i16.if.end.i_crit_edge, label %for.body.i.i19

for.cond.i.i16.if.end.i_crit_edge:                ; preds = %for.cond.i.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

for.body.i.i19:                                   ; preds = %for.cond.i.i16
  %group_id3.i.i17 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %found.0.i.i14, i32 0, i32 2
  %31 = ptrtoint ptr %group_id3.i.i17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %group_id3.i.i17, align 4
  %cmp.i.i18 = icmp eq i32 %32, %3
  br i1 %cmp.i.i18, label %if.then.i23, label %for.body.i.i19.for.cond.i.i16_crit_edge

for.body.i.i19.for.cond.i.i16_crit_edge:          ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i16

if.then.i23:                                      ; preds = %for.body.i.i19
  %group_id3.i.i17.le = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %found.0.i.i14, i32 0, i32 2
  %pprev.i.i.i.i21 = getelementptr inbounds %struct.hlist_node, ptr %found.0.i.i14, i32 0, i32 1
  %33 = ptrtoint ptr %pprev.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pprev.i.i.i.i21, align 4
  %tobool.not.i.not.i.i.i22 = icmp eq ptr %34, null
  br i1 %tobool.not.i.not.i.i.i22, label %if.then.i23.hash_del.exit.i32_crit_edge, label %if.then.i.i.i25

if.then.i23.hash_del.exit.i32_crit_edge:          ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit.i32

if.then.i.i.i25:                                  ; preds = %if.then.i23
  %35 = ptrtoint ptr %found.0.i.i14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %found.0.i.i14, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %34, align 4
  %tobool.not.i3.i.i.i24 = icmp eq ptr %36, null
  br i1 %tobool.not.i3.i.i.i24, label %if.then.i.i.i25.__hlist_del.exit.i.i.i28_crit_edge, label %do.body13.i.i.i.i27

if.then.i.i.i25.__hlist_del.exit.i.i.i28_crit_edge: ; preds = %if.then.i.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i.i28

do.body13.i.i.i.i27:                              ; preds = %if.then.i.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i26 = getelementptr inbounds %struct.hlist_node, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %pprev14.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %34, ptr %pprev14.i.i.i.i26, align 4
  br label %__hlist_del.exit.i.i.i28

__hlist_del.exit.i.i.i28:                         ; preds = %do.body13.i.i.i.i27, %if.then.i.i.i25.__hlist_del.exit.i.i.i28_crit_edge
  %39 = ptrtoint ptr %found.0.i.i14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %found.0.i.i14, align 4
  %40 = ptrtoint ptr %pprev.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %pprev.i.i.i.i21, align 4
  br label %hash_del.exit.i32

hash_del.exit.i32:                                ; preds = %__hlist_del.exit.i.i.i28, %if.then.i23.hash_del.exit.i32_crit_edge
  %41 = ptrtoint ptr %group_id3.i.i17.le to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %group_id3.i.i17.le, align 4
  %shr.i.i29 = lshr i32 %42, 28
  %shr.off.i.i30 = add nsw i32 %shr.i.i29, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off.i.i30)
  %switch.i.i31 = icmp ult i32 %shr.off.i.i30, 2
  br i1 %switch.i.i31, label %sw.bb.i.i34, label %hash_del.exit.i32.ofdpa_group_tbl_entry_free.exit.i35_crit_edge

hash_del.exit.i32.ofdpa_group_tbl_entry_free.exit.i35_crit_edge: ; preds = %hash_del.exit.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_group_tbl_entry_free.exit.i35

sw.bb.i.i34:                                      ; preds = %hash_del.exit.i32
  call void @__sanitizer_cov_trace_pc() #16
  %group_ids.i.i33 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %found.0.i.i14, i32 0, i32 4
  %43 = ptrtoint ptr %group_ids.i.i33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %group_ids.i.i33, align 4
  tail call void @kfree(ptr noundef %44) #14
  br label %ofdpa_group_tbl_entry_free.exit.i35

ofdpa_group_tbl_entry_free.exit.i35:              ; preds = %sw.bb.i.i34, %hash_del.exit.i32.ofdpa_group_tbl_entry_free.exit.i35_crit_edge
  tail call void @kfree(ptr noundef nonnull %found.0.i.i14) #14
  br label %if.end.i

if.end.i:                                         ; preds = %ofdpa_group_tbl_entry_free.exit.i35, %for.cond.i.i16.if.end.i_crit_edge
  %.sink.i = phi i32 [ 8, %ofdpa_group_tbl_entry_free.exit.i35 ], [ 7, %for.cond.i.i16.if.end.i_crit_edge ]
  %cmd8.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 1
  %45 = ptrtoint ptr %cmd8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink.i, ptr %cmd8.i, align 4
  %46 = ptrtoint ptr %group_id.i.i9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %group_id.i.i9, align 4
  %mul.i.i.i = mul i32 %47, 1640531527
  %shr.i28.i = lshr i32 %mul.i.i.i, 16
  %arrayidx.i = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 4, i32 %shr.i28.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %49, ptr %entry1, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.end.i.ofdpa_group_tbl_add.exit_crit_edge, label %do.body12.i.i

if.end.i.ofdpa_group_tbl_add.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_group_tbl_add.exit

do.body12.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %49, i32 0, i32 1
  %51 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry1, ptr %pprev.i.i, align 4
  br label %ofdpa_group_tbl_add.exit

ofdpa_group_tbl_add.exit:                         ; preds = %do.body12.i.i, %if.end.i.ofdpa_group_tbl_add.exit_crit_edge
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry1, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1, i32 0, i32 1
  %53 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %group_tbl_lock.i7, i32 noundef %call3.i8) #14
  %rocker_port.i36 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 1
  %54 = ptrtoint ptr %rocker_port.i36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rocker_port.i36, align 4
  %and.i.i37 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.i.i38 = icmp ne i32 %and.i.i37, 0
  %call13.i = tail call i32 @rocker_cmd_exec(ptr noundef %55, i1 noundef zeroext %tobool.i.i38, ptr noundef nonnull @ofdpa_cmd_group_tbl_add, ptr noundef %entry1, ptr noundef null, ptr noundef null) #14
  br label %return

return:                                           ; preds = %ofdpa_group_tbl_add.exit, %ofdpa_group_tbl_entry_free.exit37.i, %ofdpa_group_tbl_entry_free.exit30.i
  %retval.0 = phi i32 [ %call13.i, %ofdpa_group_tbl_add.exit ], [ %call12.i, %ofdpa_group_tbl_entry_free.exit30.i ], [ 0, %ofdpa_group_tbl_entry_free.exit37.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_cmd_group_tbl_del(ptr nocapture noundef readnone %rocker_port, ptr noundef %desc_info, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %tmp.i16 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 4
  %conv = trunc i32 %1 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %5 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %6
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool3.not20 = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not = select i1 %cmp.i, i1 true, i1 %tobool3.not20
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %group_id = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %group_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i16) #14
  %9 = ptrtoint ptr %tmp.i16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i16, align 4
  %call.i17 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i16) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool7.not = icmp eq i32 %call.i17, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc_info, align 4
  %12 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %11, i32 %13
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofdpa_cmd_group_tbl_add(ptr nocapture noundef readnone %rocker_port, ptr noundef %desc_info, ptr noundef %priv) #0 align 64 {
entry:
  %tmp.i23.i = alloca i32, align 4
  %tmp.i.i = alloca i16, align 2
  %tmp.i38 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 4
  %conv = trunc i32 %1 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %5 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %6
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool3.not49 = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not = select i1 %cmp.i, i1 true, i1 %tobool3.not49
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %group_id = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %group_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i38) #14
  %9 = ptrtoint ptr %tmp.i38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i38, align 4
  %call.i39 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i38) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool7.not = icmp eq i32 %call.i39, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %group_id, align 4
  %shr = lshr i32 %11, 28
  %12 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %shr, label %if.end9.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 4, label %if.end9.sw.bb14_crit_edge
    i32 3, label %if.end9.sw.bb14_crit_edge50
    i32 2, label %sw.bb16
  ]

if.end9.sw.bb14_crit_edge50:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

if.end9.sw.bb14_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = call fastcc i32 @ofdpa_cmd_group_tbl_add_l2_interface(ptr noundef %desc_info, ptr noundef %priv)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = call fastcc i32 @ofdpa_cmd_group_tbl_add_l2_rewrite(ptr noundef %desc_info, ptr noundef %priv)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end9.sw.bb14_crit_edge, %if.end9.sw.bb14_crit_edge50
  %group_count.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %priv, i32 0, i32 3
  %13 = ptrtoint ptr %group_count.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %group_count.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #14
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 12, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb14
  %16 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_info, align 4
  %18 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %19
  %call1.i.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 13, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool3.not27.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool3.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool3.not27.i
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end.i
  %group_ids8.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %priv, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %i.0.i = phi i32 [ %add.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.cond.preheader.i ]
  %20 = ptrtoint ptr %group_count.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %group_count.i, align 4
  %conv.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %conv.i)
  %cmp.i40 = icmp ult i32 %i.0.i, %conv.i
  br i1 %cmp.i40, label %for.body.i, label %sw.epilog.thread46

for.body.i:                                       ; preds = %for.cond.i
  %add.i = add nuw nsw i32 %i.0.i, 1
  %22 = ptrtoint ptr %group_ids8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group_ids8.i, align 4
  %arrayidx.i = getelementptr i32, ptr %23, i32 %i.0.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i23.i) #14
  %26 = ptrtoint ptr %tmp.i23.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i23.i, align 4
  %call.i24.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef %add.i, i32 noundef 4, ptr noundef nonnull %tmp.i23.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i23.i) #14
  %tobool10.not.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool10.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

sw.epilog.thread46:                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc_info, align 4
  %29 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %28, i32 %30
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i26.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %len.i.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i, ptr %len.i.i, align 4
  br label %if.end20

sw.bb16:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = call fastcc i32 @ofdpa_cmd_group_tbl_add_l3_unicast(ptr noundef %desc_info, ptr noundef %priv)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb12, %sw.bb
  %err.0 = phi i32 [ %call17, %sw.bb16 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool18.not = icmp eq i32 %err.0, 0
  br i1 %tobool18.not, label %sw.epilog.if.end20_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end20:                                         ; preds = %sw.epilog.if.end20_crit_edge, %sw.epilog.thread46
  %32 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc_info, align 4
  %34 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %33, i32 %35
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i42 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i43 = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i43, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %sw.epilog.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end5.cleanup_crit_edge ], [ %err.0, %sw.epilog.cleanup_crit_edge ], [ -90, %if.end.i.cleanup_crit_edge ], [ -90, %sw.bb14.cleanup_crit_edge ], [ -524, %if.end9.cleanup_crit_edge ], [ -90, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_cmd_group_tbl_add_l2_interface(ptr noundef %desc_info, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i8 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %group_id = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %group_id, align 4
  %and = and i32 %1, 65535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %tmp.i, align 4
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i8) #14
  %6 = ptrtoint ptr %tmp.i8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tmp.i8, align 1
  %call.i9 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 59, i32 noundef 1, ptr noundef nonnull %tmp.i8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool3.not = icmp eq i32 %call.i9, 0
  %. = select i1 %tobool3.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_cmd_group_tbl_add_l2_rewrite(ptr noundef %desc_info, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i38 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5
  %group_id = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 3
  %1 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %group_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i, align 4
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %0, align 4
  %add.ptr.i = getelementptr %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %7 to i32
  %or.i = or i32 %5, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %call5 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 26, i32 noundef 6, ptr noundef %0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %eth_dst = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %eth_dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eth_dst, align 4
  %add.ptr.i34 = getelementptr %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i34, align 2
  %conv.i35 = zext i16 %11 to i32
  %or.i36 = or i32 %9, %conv.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i36)
  %cmp.i37 = icmp eq i32 %or.i36, 0
  br i1 %cmp.i37, label %if.end8.if.end17_crit_edge, label %land.lhs.true11

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true11:                                  ; preds = %if.end8
  %call14 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 24, i32 noundef 6, ptr noundef %eth_dst) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true11.if.end17_crit_edge, label %land.lhs.true11.return_crit_edge

land.lhs.true11.return_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true11.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %vlan_id = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 2
  %12 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool18.not = icmp eq i16 %13, 0
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %land.lhs.true19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true19:                                  ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i38) #14
  %14 = ptrtoint ptr %tmp.i38 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tmp.i38, align 2
  %call.i39 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i38) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool22.not = icmp eq i32 %call.i39, 0
  br i1 %tobool22.not, label %land.lhs.true19.if.end24_crit_edge, label %land.lhs.true19.return_crit_edge

land.lhs.true19.return_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true19.if.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  br label %return

return:                                           ; preds = %if.end24, %land.lhs.true19.return_crit_edge, %land.lhs.true11.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -90, %entry.return_crit_edge ], [ -90, %land.lhs.true.return_crit_edge ], [ -90, %land.lhs.true11.return_crit_edge ], [ -90, %land.lhs.true19.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_cmd_group_tbl_add_l3_unicast(ptr noundef %desc_info, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %tmp.i48 = alloca i32, align 4
  %tmp.i46 = alloca i8, align 1
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %add.ptr.i = getelementptr %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 0, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %4 to i32
  %or.i = or i32 %2, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 26, i32 noundef 6, ptr noundef %0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %eth_dst = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %eth_dst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eth_dst, align 4
  %add.ptr.i42 = getelementptr %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i42, align 2
  %conv.i43 = zext i16 %8 to i32
  %or.i44 = or i32 %6, %conv.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i44)
  %cmp.i45 = icmp eq i32 %or.i44, 0
  br i1 %cmp.i45, label %if.end.if.end13_crit_edge, label %land.lhs.true7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true7:                                   ; preds = %if.end
  %call10 = tail call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 24, i32 noundef 6, ptr noundef %eth_dst) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true7.if.end13_crit_edge, label %land.lhs.true7.return_crit_edge

land.lhs.true7.return_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true7.if.end13_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true7.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %vlan_id = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 2
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool14.not = icmp eq i16 %10, 0
  br i1 %tobool14.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true15

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true15:                                  ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.end20_crit_edge, label %land.lhs.true15.return_crit_edge

land.lhs.true15.return_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true15.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %ttl_check = getelementptr inbounds %struct.anon.163, ptr %0, i32 0, i32 3
  %12 = ptrtoint ptr %ttl_check to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ttl_check, align 2, !range !115
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i46) #14
  %14 = ptrtoint ptr %tmp.i46 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i46, align 1
  %call.i47 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 60, i32 noundef 1, ptr noundef nonnull %tmp.i46) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i46) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool24.not = icmp eq i32 %call.i47, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.return_crit_edge

if.end20.return_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %group_id = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %entry1, i32 0, i32 5, i32 0, i32 3
  %15 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %group_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i48) #14
  %17 = ptrtoint ptr %tmp.i48 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i48, align 4
  %call.i49 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i48) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool28.not = icmp eq i32 %call.i49, 0
  %. = select i1 %tobool28.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %if.end26, %if.end20.return_crit_edge, %land.lhs.true15.return_crit_edge, %land.lhs.true7.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ -90, %land.lhs.true.return_crit_edge ], [ -90, %land.lhs.true7.return_crit_edge ], [ -90, %land.lhs.true15.return_crit_edge ], [ -90, %if.end20.return_crit_edge ], [ %., %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_port_stp_update(ptr noundef %ofdpa_port, i32 noundef %flags, i8 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  %want = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %want) #14
  %0 = call ptr @memset(ptr %want, i32 0, i32 6)
  %ctrls = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9
  %1 = ptrtoint ptr %ctrls to i32
  call void @__asan_load1_noabort(i32 %1)
  %prev_ctrls.sroa.0.0.copyload = load i8, ptr %ctrls, align 4
  %prev_ctrls.sroa.5.0.arraydecay1.sroa_idx = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %prev_ctrls.sroa.5.0.arraydecay1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %prev_ctrls.sroa.5.0.copyload = load i8, ptr %prev_ctrls.sroa.5.0.arraydecay1.sroa_idx, align 1
  %prev_ctrls.sroa.6.0.arraydecay1.sroa_idx = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %prev_ctrls.sroa.6.0.arraydecay1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %prev_ctrls.sroa.6.0.copyload = load i8, ptr %prev_ctrls.sroa.6.0.arraydecay1.sroa_idx, align 2
  %prev_ctrls.sroa.7.0.arraydecay1.sroa_idx = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %prev_ctrls.sroa.7.0.arraydecay1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %prev_ctrls.sroa.7.0.copyload = load i8, ptr %prev_ctrls.sroa.7.0.arraydecay1.sroa_idx, align 1
  %prev_ctrls.sroa.8.0.arraydecay1.sroa_idx = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 4
  %5 = ptrtoint ptr %prev_ctrls.sroa.8.0.arraydecay1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %prev_ctrls.sroa.8.0.copyload = load i8, ptr %prev_ctrls.sroa.8.0.arraydecay1.sroa_idx, align 4
  %prev_ctrls.sroa.9.0.arraydecay1.sroa_idx = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 5
  %6 = ptrtoint ptr %prev_ctrls.sroa.9.0.arraydecay1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %prev_ctrls.sroa.9.0.copyload = load i8, ptr %prev_ctrls.sroa.9.0.arraydecay1.sroa_idx, align 1
  %stp_state = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 6
  %7 = ptrtoint ptr %stp_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stp_state, align 4
  %conv3 = zext i8 %state to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv3)
  %cmp = icmp eq i32 %8, %conv3
  br i1 %cmp, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup61

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %stp_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv3, ptr %stp_state, align 4
  %10 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %state, label %if.end.sw.epilog_crit_edge [
    i8 3, label %if.end.sw.bb8_crit_edge
    i8 1, label %if.end.sw.bb_crit_edge
    i8 4, label %if.end.sw.bb_crit_edge153
    i8 2, label %if.end.sw.bb8_crit_edge154
  ]

if.end.sw.bb8_crit_edge154:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb8

if.end.sw.bb_crit_edge153:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb8

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge153
  %11 = ptrtoint ptr %want to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %want, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge154
  %bridge_dev.i.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 4
  %12 = ptrtoint ptr %bridge_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge_dev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %ofdpa_port_is_ovsed.exit113.thread, label %ofdpa_port_is_ovsed.exit

ofdpa_port_is_ovsed.exit113.thread:               ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %want to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %want, align 1
  %arrayidx12136 = getelementptr inbounds [6 x i8], ptr %want, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx12136 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx12136, align 1
  %arrayidx13137 = getelementptr inbounds [6 x i8], ptr %want, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx13137 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx13137, align 1
  br label %if.else20

ofdpa_port_is_ovsed.exit:                         ; preds = %sw.bb8
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 136
  %17 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %kind2.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %kind2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kind2.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %20, ptr noundef nonnull dereferenceable(12) @.str.27) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %ofdpa_port_is_ovsed.exit.ofdpa_port_is_bridged.exit_crit_edge, label %if.end11

ofdpa_port_is_ovsed.exit.ofdpa_port_is_bridged.exit_crit_edge: ; preds = %ofdpa_port_is_ovsed.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_is_bridged.exit

if.end11:                                         ; preds = %ofdpa_port_is_ovsed.exit
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %want to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %want, align 1
  br label %ofdpa_port_is_bridged.exit

ofdpa_port_is_bridged.exit:                       ; preds = %if.end11, %ofdpa_port_is_ovsed.exit.ofdpa_port_is_bridged.exit_crit_edge
  %22 = getelementptr inbounds [6 x i8], ptr %want, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %22, align 1
  %24 = getelementptr inbounds [6 x i8], ptr %want, i32 0, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %24, align 1
  %26 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %kind2.i.i102 = getelementptr inbounds %struct.rtnl_link_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %kind2.i.i102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kind2.i.i102, align 4
  %call.i.i103 = tail call i32 @strcmp(ptr noundef %29, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %tobool3.not.i.i104 = icmp eq i32 %call.i.i103, 0
  br i1 %tobool3.not.i.i104, label %if.then15, label %ofdpa_port_is_ovsed.exit113

if.then15:                                        ; preds = %ofdpa_port_is_bridged.exit
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx16 = getelementptr inbounds [6 x i8], ptr %want, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx16, align 1
  br label %sw.epilog

ofdpa_port_is_ovsed.exit113:                      ; preds = %ofdpa_port_is_bridged.exit
  %31 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %kind2.i.i109 = getelementptr inbounds %struct.rtnl_link_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %kind2.i.i109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %kind2.i.i109, align 4
  %call.i.i110 = tail call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(12) @.str.27) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %tobool3.not.i.i111 = icmp eq i32 %call.i.i110, 0
  br i1 %tobool3.not.i.i111, label %if.then18, label %ofdpa_port_is_ovsed.exit113.if.else20_crit_edge

ofdpa_port_is_ovsed.exit113.if.else20_crit_edge:  ; preds = %ofdpa_port_is_ovsed.exit113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else20

if.then18:                                        ; preds = %ofdpa_port_is_ovsed.exit113
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx19 = getelementptr inbounds [6 x i8], ptr %want, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx19, align 1
  br label %sw.epilog

if.else20:                                        ; preds = %ofdpa_port_is_ovsed.exit113.if.else20_crit_edge, %ofdpa_port_is_ovsed.exit113.thread
  %arrayidx21 = getelementptr inbounds [6 x i8], ptr %want, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx21, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else20, %if.then18, %if.then15, %sw.bb, %if.end.sw.epilog_crit_edge
  %vlan_bitmap.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %i.0151 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx26 = getelementptr [6 x i8], ptr %want, i32 0, i32 %i.0151
  %37 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx26, align 1, !range !115
  %arrayidx29 = getelementptr %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 9, i32 %i.0151
  %39 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx29, align 1, !range !115
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp32.not = icmp eq i8 %38, %40
  br i1 %cmp32.not, label %for.body.for.inc_crit_edge, label %if.then34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then34:                                        ; preds = %for.body
  %41 = xor i8 %38, 1
  %42 = zext i8 %41 to i32
  %or = or i32 %42, %flags
  %arrayidx38 = getelementptr [6 x %struct.ofdpa_ctrl], ptr @ofdpa_ctrls, i32 0, i32 %i.0151
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then34
  %indvars.iv.i = phi i32 [ 1, %if.then34 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %indvars.iv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %vlan_bitmap.i, i32 %div3.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %indvars.iv.i, 31
  %45 = shl nuw i32 1, %and.i.i
  %46 = and i32 %45, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %47 = trunc i32 %indvars.iv.i to i16
  %call3.i = tail call fastcc i32 @ofdpa_port_ctrl_vlan(ptr noundef %ofdpa_port, i32 noundef %or, ptr noundef %arrayidx38, i16 noundef zeroext %47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.err_port_fwding_crit_edge

if.end.i.err_port_fwding_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_port_fwding

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 4096
  br i1 %exitcond.not.i, label %cleanup.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cleanup.thread:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %38, ptr %arrayidx29, align 1
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0151, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %49 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ofdpa_port, align 4
  %51 = ptrtoint ptr %stp_state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stp_state, align 4
  %53 = and i32 %52, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %switch.i = icmp eq i32 %53, 2
  br i1 %switch.i, label %for.end.if.end51_crit_edge, label %if.end.i114

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.end.i114:                                      ; preds = %for.end
  %or.i = or i32 %flags, 3
  %fdb_tbl_lock.i = getelementptr inbounds %struct.ofdpa, ptr %50, i32 0, i32 8
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fdb_tbl_lock.i) #14
  br label %for.body.i115

for.body.i115:                                    ; preds = %for.inc49.i.for.body.i115_crit_edge, %if.end.i114
  %bkt.082.i = phi i32 [ 0, %if.end.i114 ], [ %inc.i, %for.inc49.i.for.body.i115_crit_edge ]
  %arrayidx.i = getelementptr %struct.ofdpa, ptr %50, i32 0, i32 7, i32 %bkt.082.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %tobool17.not80.i = icmp eq ptr %55, null
  br i1 %tobool17.not80.i, label %for.body.i115.for.inc49.i_crit_edge, label %for.body.i115.land.rhs18.i_crit_edge

for.body.i115.land.rhs18.i_crit_edge:             ; preds = %for.body.i115
  br label %land.rhs18.i

for.body.i115.for.inc49.i_crit_edge:              ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc49.i

land.rhs18.i:                                     ; preds = %for.inc.i116.land.rhs18.i_crit_edge, %for.body.i115.land.rhs18.i_crit_edge
  %found.181.i = phi ptr [ %57, %for.inc.i116.land.rhs18.i_crit_edge ], [ %55, %for.body.i115.land.rhs18.i_crit_edge ]
  %56 = ptrtoint ptr %found.181.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %found.181.i, align 4
  %key.i = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %found.181.i, i32 0, i32 4
  %58 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %key.i, align 4
  %cmp25.not.i = icmp eq ptr %59, %ofdpa_port
  br i1 %cmp25.not.i, label %if.end28.i, label %land.rhs18.i.for.inc.i116_crit_edge

land.rhs18.i.for.inc.i116_crit_edge:              ; preds = %land.rhs18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i116

if.end28.i:                                       ; preds = %land.rhs18.i
  %learned.i = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %found.181.i, i32 0, i32 2
  %60 = ptrtoint ptr %learned.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %learned.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool29.not.i = icmp eq i8 %61, 0
  br i1 %tobool29.not.i, label %if.end28.i.for.inc.i116_crit_edge, label %if.end31.i

if.end28.i.for.inc.i116_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i116

if.end31.i:                                       ; preds = %if.end28.i
  %addr.i = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %found.181.i, i32 0, i32 4, i32 1
  %vlan_id.i = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %found.181.i, i32 0, i32 4, i32 2
  %62 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vlan_id.i, align 2
  %call34.i = tail call fastcc i32 @ofdpa_port_fdb_learn(ptr noundef %ofdpa_port, i32 noundef %or.i, ptr noundef %addr.i, i16 noundef zeroext %63) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %ofdpa_port_fdb_flush.exit

if.end37.i:                                       ; preds = %if.end31.i
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %found.181.i, i32 0, i32 1
  %64 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end37.i.for.inc.i116_crit_edge, label %if.then.i.i.i

if.end37.i.for.inc.i116_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i116

if.then.i.i.i:                                    ; preds = %if.end37.i
  %66 = ptrtoint ptr %found.181.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %found.181.i, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %67, ptr %65, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %67, i32 0, i32 1
  %69 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %65, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %70 = ptrtoint ptr %found.181.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %found.181.i, align 4
  %71 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %for.inc.i116

for.inc.i116:                                     ; preds = %__hlist_del.exit.i.i.i, %if.end37.i.for.inc.i116_crit_edge, %if.end28.i.for.inc.i116_crit_edge, %land.rhs18.i.for.inc.i116_crit_edge
  %tobool17.not.i = icmp eq ptr %57, null
  br i1 %tobool17.not.i, label %for.inc.i116.for.inc49.i_crit_edge, label %for.inc.i116.land.rhs18.i_crit_edge

for.inc.i116.land.rhs18.i_crit_edge:              ; preds = %for.inc.i116
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs18.i

for.inc.i116.for.inc49.i_crit_edge:               ; preds = %for.inc.i116
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %for.inc.i116.for.inc49.i_crit_edge, %for.body.i115.for.inc49.i_crit_edge
  %inc.i = add nuw nsw i32 %bkt.082.i, 1
  %exitcond.not.i117 = icmp eq i32 %inc.i, 65536
  br i1 %exitcond.not.i117, label %ofdpa_port_fdb_flush.exit.thread146, label %for.inc49.i.for.body.i115_crit_edge

for.inc49.i.for.body.i115_crit_edge:              ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i115

ofdpa_port_fdb_flush.exit.thread146:              ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fdb_tbl_lock.i, i32 noundef %call7.i) #14
  br label %if.end51

ofdpa_port_fdb_flush.exit:                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fdb_tbl_lock.i, i32 noundef %call7.i) #14
  br label %err_port_fwding

if.end51:                                         ; preds = %ofdpa_port_fdb_flush.exit.thread146, %for.end.if.end51_crit_edge
  %72 = ptrtoint ptr %stp_state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stp_state, align 4
  %74 = and i32 %73, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %switch.i119 = icmp ne i32 %74, 2
  %or.i120 = zext i1 %switch.i119 to i32
  %spec.select.i = or i32 %or.i120, %flags
  %pport.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 3
  %75 = ptrtoint ptr %pport.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pport.i, align 4
  %and3.i.i = and i32 %76, 65535
  br label %for.body.i127

for.body.i127:                                    ; preds = %for.inc.i131.for.body.i127_crit_edge, %if.end51
  %indvars.iv.i122 = phi i32 [ 1, %if.end51 ], [ %indvars.iv.next.i129, %for.inc.i131.for.body.i127_crit_edge ]
  %div3.i.i123 = lshr i32 %indvars.iv.i122, 5
  %arrayidx.i.i124 = getelementptr i32, ptr %vlan_bitmap.i, i32 %div3.i.i123
  %77 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %arrayidx.i.i124, align 4
  %and.i.i125 = and i32 %indvars.iv.i122, 31
  %79 = shl nuw i32 1, %and.i.i125
  %80 = and i32 %79, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i126 = icmp eq i32 %80, 0
  br i1 %tobool.not.i126, label %for.body.i127.for.inc.i131_crit_edge, label %if.end7.i

for.body.i127.for.inc.i131_crit_edge:             ; preds = %for.body.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i131

if.end7.i:                                        ; preds = %for.body.i127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 44) #17
  %tobool.not.i.i128 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i128, label %if.end7.i.ofdpa_port_fwding.exit_crit_edge, label %ofdpa_group_l2_interface.exit.i

if.end7.i.ofdpa_port_fwding.exit_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_fwding.exit

ofdpa_group_l2_interface.exit.i:                  ; preds = %if.end7.i
  %82 = trunc i32 %indvars.iv.i122 to i16
  %83 = add i16 %82, -3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %83)
  %84 = icmp ult i16 %83, 255
  %shl.i.i = shl nuw nsw i32 %indvars.iv.i122, 16
  %or4.i.i = or i32 %shl.i.i, %and3.i.i
  %group_id.i.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %group_id.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or4.i.i, ptr %group_id.i.i, align 4
  %conv5.i.i = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv5.i.i, ptr %86, align 8
  %call7.i.i = tail call fastcc i32 @ofdpa_group_tbl_do(ptr noundef %ofdpa_port, i32 noundef %spec.select.i, ptr noundef nonnull %call7.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool12.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool12.not.i, label %ofdpa_group_l2_interface.exit.i.for.inc.i131_crit_edge, label %ofdpa_group_l2_interface.exit.i.ofdpa_port_fwding.exit_crit_edge

ofdpa_group_l2_interface.exit.i.ofdpa_port_fwding.exit_crit_edge: ; preds = %ofdpa_group_l2_interface.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_fwding.exit

ofdpa_group_l2_interface.exit.i.for.inc.i131_crit_edge: ; preds = %ofdpa_group_l2_interface.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i131

for.inc.i131:                                     ; preds = %ofdpa_group_l2_interface.exit.i.for.inc.i131_crit_edge, %for.body.i127.for.inc.i131_crit_edge
  %indvars.iv.next.i129 = add nuw nsw i32 %indvars.iv.i122, 1
  %exitcond.not.i130 = icmp eq i32 %indvars.iv.next.i129, 4096
  br i1 %exitcond.not.i130, label %for.inc.i131.cleanup61_crit_edge, label %for.inc.i131.for.body.i127_crit_edge

for.inc.i131.for.body.i127_crit_edge:             ; preds = %for.inc.i131
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i127

for.inc.i131.cleanup61_crit_edge:                 ; preds = %for.inc.i131
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup61

ofdpa_port_fwding.exit:                           ; preds = %ofdpa_group_l2_interface.exit.i.ofdpa_port_fwding.exit_crit_edge, %if.end7.i.ofdpa_port_fwding.exit_crit_edge
  %retval.0.i35.i = phi i32 [ %call7.i.i, %ofdpa_group_l2_interface.exit.i.ofdpa_port_fwding.exit_crit_edge ], [ -12, %if.end7.i.ofdpa_port_fwding.exit_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %89, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i35.i, i32 noundef %76) #18
  br label %err_port_fwding

err_port_fwding:                                  ; preds = %ofdpa_port_fwding.exit, %ofdpa_port_fdb_flush.exit, %if.end.i.err_port_fwding_crit_edge
  %err.0 = phi i32 [ %call34.i, %ofdpa_port_fdb_flush.exit ], [ %retval.0.i35.i, %ofdpa_port_fwding.exit ], [ %call3.i, %if.end.i.err_port_fwding_crit_edge ]
  %90 = ptrtoint ptr %ctrls to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %prev_ctrls.sroa.0.0.copyload, ptr %ctrls, align 4
  %91 = ptrtoint ptr %prev_ctrls.sroa.5.0.arraydecay1.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %prev_ctrls.sroa.5.0.copyload, ptr %prev_ctrls.sroa.5.0.arraydecay1.sroa_idx, align 1
  %92 = ptrtoint ptr %prev_ctrls.sroa.6.0.arraydecay1.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %prev_ctrls.sroa.6.0.copyload, ptr %prev_ctrls.sroa.6.0.arraydecay1.sroa_idx, align 2
  %93 = ptrtoint ptr %prev_ctrls.sroa.7.0.arraydecay1.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %prev_ctrls.sroa.7.0.copyload, ptr %prev_ctrls.sroa.7.0.arraydecay1.sroa_idx, align 1
  %94 = ptrtoint ptr %prev_ctrls.sroa.8.0.arraydecay1.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %prev_ctrls.sroa.8.0.copyload, ptr %prev_ctrls.sroa.8.0.arraydecay1.sroa_idx, align 4
  %95 = ptrtoint ptr %prev_ctrls.sroa.9.0.arraydecay1.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %prev_ctrls.sroa.9.0.copyload, ptr %prev_ctrls.sroa.9.0.arraydecay1.sroa_idx, align 1
  %conv59 = and i32 %8, 255
  %96 = ptrtoint ptr %stp_state to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv59, ptr %stp_state, align 4
  br label %cleanup61

cleanup61:                                        ; preds = %err_port_fwding, %for.inc.i131.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_port_fwding ], [ 0, %entry.cleanup61_crit_edge ], [ 0, %for.inc.i131.cleanup61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %want) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_port_fdb(ptr noundef %ofdpa_port, ptr noundef %addr, i16 noundef zeroext %vlan_id, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ofdpa_port, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #17
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %learned = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %call7.i.i, i32 0, i32 2
  %3 = trunc i32 %flags to i8
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 1
  %6 = ptrtoint ptr %learned to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %learned, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %touched = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %touched to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %touched, align 8
  %key = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ofdpa_port, ptr %key, align 4
  %addr8 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %12 = ptrtoint ptr %addr8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %addr8, align 8
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ofdpa_fdb_tbl_entry, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 4
  %vlan_id10 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %call7.i.i, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %vlan_id10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %vlan_id, ptr %vlan_id10, align 2
  %call12 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %key, i32 noundef 12) #20
  %key_crc32 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %key_crc32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call12, ptr %key_crc32, align 8
  %fdb_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 8
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fdb_tbl_lock) #14
  %18 = ptrtoint ptr %key_crc32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_crc32, align 8
  %mul.i.i.i = mul i32 %19, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 16
  %arrayidx.i = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 7, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %found.0.in.i = phi ptr [ %arrayidx.i, %if.end ], [ %found.0.i, %for.body.i.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %found.0.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %found.0.i = load ptr, ptr %found.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %found.0.i, null
  br i1 %tobool2.not.i, label %if.else, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %key.i = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %found.0.i, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %key.i, ptr noundef dereferenceable(12) %key, i32 12) #19
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then20, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then20:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %touched21 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, ptr %found.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %touched21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %touched21, align 4
  br i1 %tobool.not, label %if.then20.if.end32_crit_edge, label %if.then23

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then23:                                        ; preds = %if.then20
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %found.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.not.i.i, label %if.then23.if.end32_crit_edge, label %if.then.i.i

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then.i.i:                                      ; preds = %if.then23
  %25 = ptrtoint ptr %found.0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %found.0.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %24, align 4
  %tobool.not.i3.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %24, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %29 = ptrtoint ptr %found.0.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %found.0.i, align 4
  %30 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %if.end32

if.else:                                          ; preds = %for.cond.i
  br i1 %tobool.not, label %if.then27, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then27:                                        ; preds = %if.else
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.then27.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then27.hlist_add_head.exit_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then27.hlist_add_head.exit_crit_edge
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i.i, ptr %arrayidx.i, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %arrayidx.i, ptr %pprev34.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %hlist_add_head.exit, %if.else.if.end32_crit_edge, %__hlist_del.exit.i.i, %if.then23.if.end32_crit_edge, %if.then20.if.end32_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fdb_tbl_lock, i32 noundef %call15) #14
  %lnot.ext = zext i1 %tobool2.not.i to i32
  %37 = xor i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %lnot.ext)
  %cmp38.not = icmp eq i32 %37, %lnot.ext
  br i1 %cmp38.not, label %if.end32.if.end46_crit_edge, label %if.then40

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then40:                                        ; preds = %if.end32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %tobool19.not.not = xor i1 %tobool2.not.i, true
  %brmerge = or i1 %tobool.not, %tobool19.not.not
  br i1 %brmerge, label %if.end45, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end45:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %flags, 8
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end32.if.end46_crit_edge
  %flags.addr.0 = phi i32 [ %or, %if.end45 ], [ %flags, %if.end32.if.end46_crit_edge ]
  %call47 = tail call fastcc i32 @ofdpa_port_fdb_learn(ptr noundef %ofdpa_port, i32 noundef %flags.addr.0, ptr noundef %addr, i16 noundef zeroext %vlan_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then40.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end46 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ofdpa_port_internal_vlan_id_put(ptr nocapture noundef readonly %ofdpa_port, i32 noundef %ifindex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ofdpa_port, align 4
  %internal_vlan_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %internal_vlan_tbl_lock) #14
  %mul.i.i.i = mul i32 %ifindex, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 10, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %found.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %found.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %found.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %found.0.i = load ptr, ptr %found.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %found.0.i, null
  br i1 %tobool2.not.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %ifindex3.i = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, ptr %found.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %ifindex3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex3.i, align 4
  %cmp.i = icmp eq i32 %4, %ifindex
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then:                                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %ifindex) #18
  br label %not_found

if.end:                                           ; preds = %for.body.i
  %ref_count = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, ptr %found.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref_count, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then9, label %if.end.not_found_crit_edge

if.end.not_found_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %not_found

if.then9:                                         ; preds = %if.end
  %vlan_id = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, ptr %found.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 4
  %conv10 = zext i16 %10 to i32
  %sub = add nsw i32 %conv10, -3840
  %internal_vlan_bitmap = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef %sub, ptr noundef %internal_vlan_bitmap) #14
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %found.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.not.i.i, label %if.then9.hash_del.exit_crit_edge, label %if.then.i.i

if.then9.hash_del.exit_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.then9
  %13 = ptrtoint ptr %found.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %found.0.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %14, ptr %12, align 4
  %tobool.not.i3.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %12, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %17 = ptrtoint ptr %found.0.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %found.0.i, align 4
  %18 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then9.hash_del.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %found.0.i) #14
  br label %not_found

not_found:                                        ; preds = %hash_del.exit, %if.end.not_found_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %internal_vlan_tbl_lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_port_ipv4_neigh(ptr nocapture noundef readonly %ofdpa_port, i32 noundef %flags, i32 noundef %ip_addr, ptr noundef readonly %eth_dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ofdpa_port, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body4:                                         ; preds = %entry
  %neigh_tbl_lock = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 13
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %neigh_tbl_lock) #14
  %mul.i.i.i = mul i32 %ip_addr, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 16
  %arrayidx.i = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 12, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body4
  %found.0.in.i = phi ptr [ %arrayidx.i, %do.body4 ], [ %found.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %found.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %found.0.i = load ptr, ptr %found.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %found.0.i, null
  br i1 %tobool2.not.i, label %ofdpa_neigh_tbl_find.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %ip_addr3.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %ip_addr3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ip_addr3.i, align 4
  %cmp.i = icmp eq i32 %5, %ip_addr
  br i1 %cmp.i, label %ofdpa_neigh_tbl_find.exit.thread, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

ofdpa_neigh_tbl_find.exit.thread:                 ; preds = %for.body.i
  br i1 %tobool.not, label %if.then35, label %if.then32

ofdpa_neigh_tbl_find.exit:                        ; preds = %for.cond.i
  br i1 %tobool.not, label %if.then27, label %if.end39

if.then27:                                        ; preds = %ofdpa_neigh_tbl_find.exit
  %ip_addr28 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ip_addr28 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ip_addr, ptr %ip_addr28, align 8
  %dev = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev29 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %dev29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %dev29, align 4
  %eth_dst30 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %eth_dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eth_dst, align 4
  %12 = ptrtoint ptr %eth_dst30 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %eth_dst30, align 8
  %add.ptr.i = getelementptr i8, ptr %eth_dst, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 4
  %ttl_check = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %ttl_check to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %ttl_check, align 2
  %neigh_tbl_next_index.i = getelementptr inbounds %struct.ofdpa, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %neigh_tbl_next_index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %neigh_tbl_next_index.i, align 8
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %neigh_tbl_next_index.i, align 8
  %index.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %index.i, align 4
  %ref_count.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ref_count.i, align 8
  %inc2.i = add i32 %21, 1
  store i32 %inc2.i, ptr %ref_count.i, align 8
  %22 = load i32, ptr %ip_addr28, align 8
  %mul.i.i.i132 = mul i32 %22, 1640531527
  %shr.i.i133 = lshr i32 %mul.i.i.i132, 16
  %arrayidx.i134 = getelementptr %struct.ofdpa, ptr %1, i32 0, i32 12, i32 %shr.i.i133
  %23 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i134, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %call7.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then27.ofdpa_neigh_add.exit_crit_edge, label %do.body12.i.i

if.then27.ofdpa_neigh_add.exit_crit_edge:         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_neigh_add.exit

do.body12.i.i:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i, ptr %pprev.i.i, align 4
  br label %ofdpa_neigh_add.exit

ofdpa_neigh_add.exit:                             ; preds = %do.body12.i.i, %if.then27.ofdpa_neigh_add.exit_crit_edge
  %27 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %arrayidx.i134, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx.i134, ptr %pprev34.i.i, align 4
  br label %if.end43

if.then32:                                        ; preds = %ofdpa_neigh_tbl_find.exit.thread
  %29 = call ptr @memcpy(ptr %call7.i.i, ptr %found.0.i, i32 32)
  %ref_count.i135 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i, i32 0, i32 3
  %30 = ptrtoint ptr %ref_count.i135 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ref_count.i135, align 4
  %dec.i = add i32 %31, -1
  store i32 %dec.i, ptr %ref_count.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i136 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i136, label %if.then.i, label %if.then32.if.end43_crit_edge

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then.i:                                        ; preds = %if.then32
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %found.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then.i.hash_del.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.hash_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  %34 = ptrtoint ptr %found.0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %found.0.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %35, ptr %33, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %33, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %38 = ptrtoint ptr %found.0.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %found.0.i, align 4
  %39 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del.exit.i

hash_del.exit.i:                                  ; preds = %__hlist_del.exit.i.i.i, %if.then.i.hash_del.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %found.0.i) #14
  br label %if.end43

if.then35:                                        ; preds = %ofdpa_neigh_tbl_find.exit.thread
  %tobool.not.i = icmp eq ptr %eth_dst, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i137

if.then.i137:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %eth_dst2.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i, i32 0, i32 5
  %40 = ptrtoint ptr %eth_dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eth_dst, align 4
  %42 = ptrtoint ptr %eth_dst2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %eth_dst2.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %eth_dst, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i, i32 0, i32 5, i32 4
  %45 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr1.i.i, align 2
  %ttl_check4.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i, i32 0, i32 6
  %46 = ptrtoint ptr %ttl_check4.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %ttl_check4.i, align 2
  br label %ofdpa_neigh_update.exit

if.else.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %ref_count.i138 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i, i32 0, i32 3
  %47 = ptrtoint ptr %ref_count.i138 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ref_count.i138, align 4
  %inc.i139 = add i32 %48, 1
  store i32 %inc.i139, ptr %ref_count.i138, align 4
  br label %ofdpa_neigh_update.exit

ofdpa_neigh_update.exit:                          ; preds = %if.else.i, %if.then.i137
  %49 = call ptr @memcpy(ptr %call7.i.i, ptr %found.0.i, i32 32)
  br label %if.end43

if.end39:                                         ; preds = %ofdpa_neigh_tbl_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %neigh_tbl_lock, i32 noundef %call6) #14
  br label %if.then71

if.end43:                                         ; preds = %ofdpa_neigh_update.exit, %hash_del.exit.i, %if.then32.if.end43_crit_edge, %ofdpa_neigh_add.exit
  %.ph151 = phi i1 [ true, %hash_del.exit.i ], [ true, %if.then32.if.end43_crit_edge ], [ false, %ofdpa_neigh_add.exit ], [ false, %ofdpa_neigh_update.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %neigh_tbl_lock, i32 noundef %call6) #14
  %index = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index, align 4
  %dev44 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %52 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev44, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 86
  %54 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_addr, align 64
  %eth_dst45 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 5
  %internal_vlan_id = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 5
  %56 = ptrtoint ptr %internal_vlan_id to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %internal_vlan_id, align 4
  %ttl_check47 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %ttl_check47 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ttl_check47, align 2, !range !115
  %pport = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 3
  %60 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pport, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 44) #17
  %tobool.not.i140 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i140, label %if.end43.if.then51_crit_edge, label %if.end.i

if.end43.if.then51_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51

if.end.i:                                         ; preds = %if.end43
  %and.i = and i32 %51, 268435455
  %or.i = or i32 %and.i, 536870912
  %group_id.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %group_id.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i, ptr %group_id.i, align 4
  %tobool2.not.i141 = icmp eq ptr %55, null
  br i1 %tobool2.not.i141, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %64 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i, i32 0, i32 5
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %55, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %64, align 8
  %add.ptr.i.i142 = getelementptr i8, ptr %55, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i142 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i.i142, align 2
  %add.ptr1.i.i143 = getelementptr %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 0, i32 4
  %70 = ptrtoint ptr %add.ptr1.i.i143 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %add.ptr1.i.i143, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %tobool5.not.i = icmp eq ptr %eth_dst45, null
  br i1 %tobool5.not.i, label %if.end4.i.ofdpa_group_l3_unicast.exit_crit_edge, label %if.then6.i

if.end4.i.ofdpa_group_l3_unicast.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_group_l3_unicast.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %eth_dst.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 1
  %71 = ptrtoint ptr %eth_dst45 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %eth_dst45, align 8
  %73 = ptrtoint ptr %eth_dst.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %eth_dst.i, align 4
  %add.ptr.i31.i = getelementptr %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 5, i32 4
  %74 = ptrtoint ptr %add.ptr.i31.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i31.i, align 4
  %add.ptr1.i32.i = getelementptr %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 1, i32 4
  %76 = ptrtoint ptr %add.ptr1.i32.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %add.ptr1.i32.i, align 2
  br label %ofdpa_group_l3_unicast.exit

ofdpa_group_l3_unicast.exit:                      ; preds = %if.then6.i, %if.end4.i.ofdpa_group_l3_unicast.exit_crit_edge
  %77 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i, i32 0, i32 5
  %vlan_id9.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 2
  %78 = ptrtoint ptr %vlan_id9.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %57, ptr %vlan_id9.i, align 4
  %ttl_check11.i = getelementptr inbounds %struct.anon.163, ptr %77, i32 0, i32 3
  %79 = ptrtoint ptr %ttl_check11.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %59, ptr %ttl_check11.i, align 2
  %conv.i = zext i16 %57 to i32
  %shl13.i = shl nuw i32 %conv.i, 16
  %and14.i = and i32 %shl13.i, 268369920
  %and17.i = and i32 %61, 65535
  %or18.i = or i32 %and14.i, %and17.i
  %group_id19.i = getelementptr inbounds %struct.ofdpa_group_tbl_entry, ptr %call7.i.i.i, i32 0, i32 5, i32 0, i32 3
  %80 = ptrtoint ptr %group_id19.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or18.i, ptr %group_id19.i, align 8
  %call20.i = tail call fastcc i32 @ofdpa_group_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool50.not = icmp eq i32 %call20.i, 0
  br i1 %tobool50.not, label %if.end54, label %ofdpa_group_l3_unicast.exit.if.then51_crit_edge

ofdpa_group_l3_unicast.exit.if.then51_crit_edge:  ; preds = %ofdpa_group_l3_unicast.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51

if.then51:                                        ; preds = %ofdpa_group_l3_unicast.exit.if.then51_crit_edge, %if.end43.if.then51_crit_edge
  %retval.0.i156 = phi i32 [ %call20.i, %ofdpa_group_l3_unicast.exit.if.then51_crit_edge ], [ -12, %if.end43.if.then51_crit_edge ]
  %81 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev44, align 4
  %83 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %82, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i156, i32 noundef %84) #18
  br i1 %tobool2.not.i, label %if.then51.cleanup_crit_edge, label %if.then51.if.then71_crit_edge

if.then51.if.then71_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then71

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end54:                                         ; preds = %ofdpa_group_l3_unicast.exit
  %brmerge = or i1 %tobool2.not.i, %.ph151
  br i1 %brmerge, label %if.then59, label %if.end54.err_out_crit_edge

if.end54.err_out_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.then59:                                        ; preds = %if.end54
  %85 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %index, align 4
  %and61 = and i32 %86, 268435455
  %or = or i32 %and61, 536870912
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %87 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i144 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i145 = icmp eq ptr %call7.i.i.i144, null
  br i1 %tobool.not.i145, label %if.then59.if.then65_crit_edge, label %ofdpa_flow_tbl_ucast4_routing.exit

if.then59.if.then65_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

ofdpa_flow_tbl_ucast4_routing.exit:               ; preds = %if.then59
  %key.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i144, i32 0, i32 3
  %tbl_id.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i144, i32 0, i32 3, i32 1
  %88 = ptrtoint ptr %tbl_id.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 30, ptr %tbl_id.i, align 4
  %89 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %key.i, align 8
  %90 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i144, i32 0, i32 3, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 2048, ptr %90, align 8
  %dst4.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i144, i32 0, i32 3, i32 2, i32 0, i32 1
  %92 = ptrtoint ptr %dst4.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %ip_addr, ptr %dst4.i, align 4
  %dst4_mask.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i144, i32 0, i32 3, i32 2, i32 0, i32 2
  %93 = ptrtoint ptr %dst4_mask.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %dst4_mask.i, align 8
  %goto_tbl9.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i144, i32 0, i32 3, i32 2, i32 0, i32 2, i32 4
  %94 = ptrtoint ptr %goto_tbl9.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 60, ptr %goto_tbl9.i, align 4
  %group_id11.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i144, i32 0, i32 3, i32 2, i32 0, i32 3, i32 2
  %95 = ptrtoint ptr %group_id11.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or, ptr %group_id11.i, align 8
  %key_len.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i144, i32 0, i32 4
  %96 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 24, ptr %key_len.i, align 8
  %fi12.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i144, i32 0, i32 6
  %97 = ptrtoint ptr %fi12.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %fi12.i, align 8
  %call13.i = tail call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i144) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool64.not = icmp eq i32 %call13.i, 0
  br i1 %tobool64.not, label %ofdpa_flow_tbl_ucast4_routing.exit.err_out_crit_edge, label %ofdpa_flow_tbl_ucast4_routing.exit.if.then65_crit_edge

ofdpa_flow_tbl_ucast4_routing.exit.if.then65_crit_edge: ; preds = %ofdpa_flow_tbl_ucast4_routing.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

ofdpa_flow_tbl_ucast4_routing.exit.err_out_crit_edge: ; preds = %ofdpa_flow_tbl_ucast4_routing.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.then65:                                        ; preds = %ofdpa_flow_tbl_ucast4_routing.exit.if.then65_crit_edge, %if.then59.if.then65_crit_edge
  %retval.0.i147159 = phi i32 [ %call13.i, %ofdpa_flow_tbl_ucast4_routing.exit.if.then65_crit_edge ], [ -12, %if.then59.if.then65_crit_edge ]
  %98 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev44, align 4
  %ip_addr67 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i, i32 0, i32 1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %99, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i147159, ptr noundef %ip_addr67, i32 noundef %or) #18
  br i1 %tobool2.not.i, label %if.then65.cleanup_crit_edge, label %if.then65.if.then71_crit_edge

if.then65.if.then71_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then71

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_out:                                          ; preds = %ofdpa_flow_tbl_ucast4_routing.exit.err_out_crit_edge, %if.end54.err_out_crit_edge
  br i1 %tobool2.not.i, label %err_out.cleanup_crit_edge, label %err_out.if.then71_crit_edge

err_out.if.then71_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then71

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then71:                                        ; preds = %err_out.if.then71_crit_edge, %if.then65.if.then71_crit_edge, %if.then51.if.then71_crit_edge, %if.end39
  %err.1160 = phi i32 [ -2, %if.end39 ], [ 0, %err_out.if.then71_crit_edge ], [ %retval.0.i156, %if.then51.if.then71_crit_edge ], [ %retval.0.i147159, %if.then65.if.then71_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %err_out.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.1160, %if.then71 ], [ 0, %err_out.cleanup_crit_edge ], [ %retval.0.i156, %if.then51.cleanup_crit_edge ], [ %retval.0.i147159, %if.then65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ofdpa_port_fib_ipv4(ptr nocapture noundef readonly %ofdpa_port, i32 noundef %dst, i32 noundef %dst_len, ptr noundef %fi, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  %ip_addr.addr.i.i = alloca i32, align 4
  %dst.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dst, ptr %dst.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_len)
  %tobool.not.i = icmp eq i32 %dst_len, 0
  %sub.i = sub i32 32, %dst_len
  %notmask.i = shl nsw i32 -1, %sub.i
  %retval.0.i = select i1 %tobool.not.i, i32 0, i32 %notmask.i
  %internal_vlan_id1 = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 5
  %1 = ptrtoint ptr %internal_vlan_id1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %internal_vlan_id1, align 4
  %fib_priority = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 13
  %3 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fib_priority, align 4
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %5 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nh.i, align 4
  %tobool.not.i1 = icmp eq ptr %6, null
  br i1 %tobool.not.i1, label %entry.fib_info_nh.exit_crit_edge, label %do.end.i, !prof !116

entry.fib_info_nh.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fib_info_nh.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 468, i32 noundef 9, ptr noundef null) #14
  br label %fib_info_nh.exit

fib_info_nh.exit:                                 ; preds = %do.end.i, %entry.fib_info_nh.exit_crit_edge
  %dev = getelementptr inbounds %struct.ofdpa_port, ptr %ofdpa_port, i32 0, i32 2
  %nhc_gw = getelementptr inbounds %struct.fib_info, ptr %fi, i32 1, i32 2, i32 1
  %7 = ptrtoint ptr %nhc_gw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nhc_gw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %fib_info_nh.exit.if.else_crit_edge, label %land.lhs.true

fib_info_nh.exit.if.else_crit_edge:               ; preds = %fib_info_nh.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %fib_info_nh.exit
  %fib_nh.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 20
  %9 = ptrtoint ptr %fib_nh.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fib_nh.i, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %cmp = icmp eq ptr %10, %12
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %ofdpa_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ofdpa_port, align 4
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i2 = icmp eq i32 %and.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 32) #17
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.then.cleanup_crit_edge, label %do.body4.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body4.i:                                       ; preds = %if.then
  %neigh_tbl_lock.i = getelementptr inbounds %struct.ofdpa, ptr %14, i32 0, i32 13
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %neigh_tbl_lock.i) #14
  %mul.i.i.i.i = mul i32 %8, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 16
  %arrayidx.i.i = getelementptr %struct.ofdpa, ptr %14, i32 0, i32 12, i32 %shr.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.body4.i
  %found.0.in.i.i = phi ptr [ %arrayidx.i.i, %do.body4.i ], [ %found.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %16 = ptrtoint ptr %found.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %found.0.i.i = load ptr, ptr %found.0.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %found.0.i.i, null
  br i1 %tobool2.not.i.i, label %ofdpa_neigh_tbl_find.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %ip_addr3.i.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %ip_addr3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ip_addr3.i.i, align 4
  %cmp.i.i = icmp eq i32 %18, %8
  br i1 %cmp.i.i, label %ofdpa_neigh_tbl_find.exit.thread.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

ofdpa_neigh_tbl_find.exit.thread.i:               ; preds = %for.body.i.i
  br i1 %tobool.not.i2, label %49, label %if.then32.i

ofdpa_neigh_tbl_find.exit.i:                      ; preds = %for.cond.i.i
  br i1 %tobool.not.i2, label %if.then27.i, label %ofdpa_neigh_tbl_find.exit.i.if.end48.i_crit_edge

ofdpa_neigh_tbl_find.exit.i.if.end48.i_crit_edge: ; preds = %ofdpa_neigh_tbl_find.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then27.i:                                      ; preds = %ofdpa_neigh_tbl_find.exit.i
  %ip_addr28.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %ip_addr28.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %8, ptr %ip_addr28.i, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %dev29.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %dev29.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dev29.i, align 4
  %neigh_tbl_next_index.i.i = getelementptr inbounds %struct.ofdpa, ptr %14, i32 0, i32 14
  %23 = ptrtoint ptr %neigh_tbl_next_index.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %neigh_tbl_next_index.i.i, align 8
  %inc.i.i = add i32 %24, 1
  store i32 %inc.i.i, ptr %neigh_tbl_next_index.i.i, align 8
  %index.i.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %index.i.i, align 4
  %ref_count.i.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %call7.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %ref_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_count.i.i, align 8
  %inc2.i.i = add i32 %27, 1
  store i32 %inc2.i.i, ptr %ref_count.i.i, align 8
  %28 = load i32, ptr %ip_addr28.i, align 8
  %mul.i.i.i91.i = mul i32 %28, 1640531527
  %shr.i.i92.i = lshr i32 %mul.i.i.i91.i, 16
  %arrayidx.i93.i = getelementptr %struct.ofdpa, ptr %14, i32 0, i32 12, i32 %shr.i.i92.i
  %29 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i93.i, align 4
  %31 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %30, ptr %call7.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.then27.i..thread141.i_crit_edge, label %do.body12.i.i.i

if.then27.i..thread141.i_crit_edge:               ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread141.i

do.body12.i.i.i:                                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i.i, align 4
  br label %.thread141.i

.thread141.i:                                     ; preds = %do.body12.i.i.i, %if.then27.i..thread141.i_crit_edge
  %33 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i93.i, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx.i93.i, ptr %pprev34.i.i.i, align 4
  %35 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %neigh_tbl_lock.i, i32 noundef %call6.i) #14
  br label %if.then53.i

if.then32.i:                                      ; preds = %ofdpa_neigh_tbl_find.exit.thread.i
  %index33.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %index33.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index33.i, align 4
  %ref_count.i94.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %ref_count.i94.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ref_count.i94.i, align 4
  %dec.i.i = add i32 %40, -1
  store i32 %dec.i.i, ptr %ref_count.i94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i95.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i95.i, label %if.then.i.i, label %if.then32.i.if.end48.i_crit_edge

if.then32.i.if.end48.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then.i.i:                                      ; preds = %if.then32.i
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %found.0.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.not.i.i.i.i, label %if.then.i.i..thread143.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i..thread143.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread143.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %43 = ptrtoint ptr %found.0.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %found.0.i.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %44, ptr %42, align 4
  %tobool.not.i3.i.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %42, ptr %pprev14.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge
  %47 = ptrtoint ptr %found.0.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %found.0.i.i, align 4
  %48 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  br label %.thread143.i

.thread143.i:                                     ; preds = %__hlist_del.exit.i.i.i.i, %if.then.i.i..thread143.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %found.0.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %neigh_tbl_lock.i, i32 noundef %call6.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %if.end

if.end48.i:                                       ; preds = %if.then32.i.if.end48.i_crit_edge, %ofdpa_neigh_tbl_find.exit.i.if.end48.i_crit_edge
  %index.0 = phi i32 [ -1, %ofdpa_neigh_tbl_find.exit.i.if.end48.i_crit_edge ], [ %38, %if.then32.i.if.end48.i_crit_edge ]
  %spec.select.i = phi i32 [ -2, %ofdpa_neigh_tbl_find.exit.i.if.end48.i_crit_edge ], [ 0, %if.then32.i.if.end48.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %neigh_tbl_lock.i, i32 noundef %call6.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %ofdpa_port_ipv4_nh.exit

49:                                               ; preds = %ofdpa_neigh_tbl_find.exit.thread.i
  %ref_count.i96.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %ref_count.i96.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ref_count.i96.i, align 4
  %inc.i97.i = add i32 %51, 1
  store i32 %inc.i97.i, ptr %ref_count.i96.i, align 4
  %eth_dst.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %eth_dst.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %eth_dst.i, align 4
  %add.ptr.i.i = getelementptr %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i.i, i32 0, i32 5, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %55 to i32
  %or.i.i = or i32 %53, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i98.not.i = icmp eq i32 %or.i.i, 0
  %index40.i = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, ptr %found.0.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %index40.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index40.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %neigh_tbl_lock.i, i32 noundef %call6.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br i1 %cmp.i98.not.i, label %.if.then53.i_crit_edge, label %.if.end_crit_edge

.if.end_crit_edge:                                ; preds = %49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

.if.then53.i_crit_edge:                           ; preds = %49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then53.i

if.then53.i:                                      ; preds = %.if.then53.i_crit_edge, %.thread141.i
  %index.1 = phi i32 [ %36, %.thread141.i ], [ %57, %.if.then53.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_addr.addr.i.i) #14
  %58 = ptrtoint ptr %ip_addr.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %8, ptr %ip_addr.addr.i.i, align 4
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  tail call fastcc void @local_bh_disable() #14
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #14
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i.i, label %if.then53.i.rcu_read_lock_bh.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then53.i.rcu_read_lock_bh.exit.i.i.i_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock_bh.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then53.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock_bh.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock_bh.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock_bh.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock_bh.exit.i.i.i_crit_edge, label %if.then.i.i.i99.i

land.lhs.true2.i.i.i.i.rcu_read_lock_bh.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock_bh.exit.i.i.i

if.then.i.i.i99.i:                                ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 750, ptr noundef nonnull @.str.34) #14
  br label %rcu_read_lock_bh.exit.i.i.i

rcu_read_lock_bh.exit.i.i.i:                      ; preds = %if.then.i.i.i99.i, %land.lhs.true2.i.i.i.i.rcu_read_lock_bh.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock_bh.exit.i.i.i_crit_edge, %if.then53.i.rcu_read_lock_bh.exit.i.i.i_crit_edge
  %flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %62, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %spec.store.select.i.i.i.i = select i1 %tobool.not.i4.i.i.i, i32 %8, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31) to i32))
  %63 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %call.i.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %rcu_read_lock_bh.exit.i.i.i.do.end8.i.i.i.i.i_crit_edge

rcu_read_lock_bh.exit.i.i.i.do.end8.i.i.i.i.i_crit_edge: ; preds = %rcu_read_lock_bh.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %rcu_read_lock_bh.exit.i.i.i
  %call3.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call3.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.do.end8.i.i.i.i.i_crit_edge, label %land.lhs.true5.i.i.i.i.i

land.lhs.true.i.i.i.i.i.do.end8.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i.i.i.i

land.lhs.true5.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b3.i.i.i.i.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b3.i.i.i.i.i, label %land.lhs.true5.i.i.i.i.i.do.end8.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true5.i.i.i.i.i.do.end8.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 305, ptr noundef nonnull @.str.36) #14
  br label %do.end8.i.i.i.i.i

do.end8.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i, %land.lhs.true5.i.i.i.i.i.do.end8.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.do.end8.i.i.i.i.i_crit_edge, %rcu_read_lock_bh.exit.i.i.i.do.end8.i.i.i.i.i_crit_edge
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %60 to i32
  %xor.i.i.i.i.i.i = xor i32 %spec.store.select.i.i.i.i, %64
  %65 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hash_rnd.i.i.i.i.i, align 4
  %mul.i.i.i.i.i.i = mul i32 %66, %xor.i.i.i.i.i.i
  %hash_shift.i.i.i.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %63, i32 0, i32 1
  %67 = ptrtoint ptr %hash_shift.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hash_shift.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = sub i32 32, %68
  %shr.i.i.i.i.i = lshr i32 %mul.i.i.i.i.i.i, %sub.i.i.i.i.i
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %63, align 4
  %arrayidx.i.i.i.i.i = getelementptr ptr, ptr %70, i32 %shr.i.i.i.i.i
  %71 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %call16.i.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i.i.i)
  %tobool17.not.i.i.i.i.i = icmp eq i32 %call16.i.i.i.i.i, 0
  br i1 %tobool17.not.i.i.i.i.i, label %land.lhs.true18.i.i.i.i.i, label %do.end8.i.i.i.i.i.do.end26.i.i.i.i.i_crit_edge

do.end8.i.i.i.i.i.do.end26.i.i.i.i.i_crit_edge:   ; preds = %do.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i.i.i.i.i

land.lhs.true18.i.i.i.i.i:                        ; preds = %do.end8.i.i.i.i.i
  %call19.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i.i.i)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %call19.i.i.i.i.i, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.lhs.true18.i.i.i.i.i.do.end26.i.i.i.i.i_crit_edge, label %land.lhs.true21.i.i.i.i.i

land.lhs.true18.i.i.i.i.i.do.end26.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true18.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i.i.i.i.i

land.lhs.true21.i.i.i.i.i:                        ; preds = %land.lhs.true18.i.i.i.i.i
  %.b612.i.i.i.i.i = load i1, ptr @___neigh_lookup_noref.__warned.37, align 1
  br i1 %.b612.i.i.i.i.i, label %land.lhs.true21.i.i.i.i.i.do.end26.i.i.i.i.i_crit_edge, label %if.then23.i.i.i.i.i

land.lhs.true21.i.i.i.i.i.do.end26.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true21.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end26.i.i.i.i.i

if.then23.i.i.i.i.i:                              ; preds = %land.lhs.true21.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @___neigh_lookup_noref.__warned.37, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 310, ptr noundef nonnull @.str.36) #14
  br label %do.end26.i.i.i.i.i

do.end26.i.i.i.i.i:                               ; preds = %if.then23.i.i.i.i.i, %land.lhs.true21.i.i.i.i.i.do.end26.i.i.i.i.i_crit_edge, %land.lhs.true18.i.i.i.i.i.do.end26.i.i.i.i.i_crit_edge, %do.end8.i.i.i.i.i.do.end26.i.i.i.i.i_crit_edge
  %cmp.not4.i.i.i.i.i = icmp eq ptr %72, null
  br i1 %cmp.not4.i.i.i.i.i, label %do.end26.i.i.i.i.i.if.end.i.i.i_crit_edge, label %do.end26.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

do.end26.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %do.end26.i.i.i.i.i
  br label %for.body.i.i.i.i.i

do.end26.i.i.i.i.i.if.end.i.i.i_crit_edge:        ; preds = %do.end26.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

for.body.i.i.i.i.i:                               ; preds = %do.end49.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %do.end26.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %n.05.i.i.i.i.i = phi ptr [ %78, %do.end49.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %72, %do.end26.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %dev28.i.i.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.05.i.i.i.i.i, i32 0, i32 25
  %73 = ptrtoint ptr %dev28.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev28.i.i.i.i.i, align 4
  %cmp29.i.i.i.i.i = icmp eq ptr %74, %60
  br i1 %cmp29.i.i.i.i.i, label %land.lhs.true30.i.i.i.i.i, label %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i.i.i

land.lhs.true30.i.i.i.i.i:                        ; preds = %for.body.i.i.i.i.i
  %primary_key.i.i.i.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.05.i.i.i.i.i, i32 0, i32 27
  %75 = ptrtoint ptr %primary_key.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %primary_key.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %spec.store.select.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %76, %spec.store.select.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %land.lhs.true.i.i.i, label %land.lhs.true30.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge

land.lhs.true30.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true30.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %land.lhs.true30.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.for.inc.i.i.i.i.i_crit_edge
  %77 = ptrtoint ptr %n.05.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %n.05.i.i.i.i.i, align 8
  %call39.i.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i.i.i.i)
  %tobool40.not.i.i.i.i.i = icmp eq i32 %call39.i.i.i.i.i, 0
  br i1 %tobool40.not.i.i.i.i.i, label %land.lhs.true41.i.i.i.i.i, label %for.inc.i.i.i.i.i.do.end49.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.do.end49.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49.i.i.i.i.i

land.lhs.true41.i.i.i.i.i:                        ; preds = %for.inc.i.i.i.i.i
  %call42.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i.i.i.i)
  %tobool43.not.i.i.i.i.i = icmp eq i32 %call42.i.i.i.i.i, 0
  br i1 %tobool43.not.i.i.i.i.i, label %land.lhs.true41.i.i.i.i.i.do.end49.i.i.i.i.i_crit_edge, label %land.lhs.true44.i.i.i.i.i

land.lhs.true41.i.i.i.i.i.do.end49.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49.i.i.i.i.i

land.lhs.true44.i.i.i.i.i:                        ; preds = %land.lhs.true41.i.i.i.i.i
  %.b621.i.i.i.i.i = load i1, ptr @___neigh_lookup_noref.__warned.38, align 1
  br i1 %.b621.i.i.i.i.i, label %land.lhs.true44.i.i.i.i.i.do.end49.i.i.i.i.i_crit_edge, label %if.then46.i.i.i.i.i

land.lhs.true44.i.i.i.i.i.do.end49.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true44.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49.i.i.i.i.i

if.then46.i.i.i.i.i:                              ; preds = %land.lhs.true44.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @___neigh_lookup_noref.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 312, ptr noundef nonnull @.str.36) #14
  br label %do.end49.i.i.i.i.i

do.end49.i.i.i.i.i:                               ; preds = %if.then46.i.i.i.i.i, %land.lhs.true44.i.i.i.i.i.do.end49.i.i.i.i.i_crit_edge, %land.lhs.true41.i.i.i.i.i.do.end49.i.i.i.i.i_crit_edge, %for.inc.i.i.i.i.i.do.end49.i.i.i.i.i_crit_edge
  %cmp.not.i.i.i.i.i = icmp eq ptr %78, null
  br i1 %cmp.not.i.i.i.i.i, label %do.end49.i.i.i.i.i.if.end.i.i.i_crit_edge, label %do.end49.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

do.end49.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %do.end49.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i.i

do.end49.i.i.i.i.i.if.end.i.i.i_crit_edge:        ; preds = %do.end49.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true30.i.i.i.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.05.i.i.i.i.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #14
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i.i.i, i32 noundef 4) #14
  %79 = ptrtoint ptr %refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %refcnt.i.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i
  %81 = phi i32 [ %80, %land.lhs.true.i.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %82 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %81, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #14
  %83 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %85 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 %84, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %refcnt.i.i.i) #14, !srcloc !118
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %85, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %85, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %84
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !116

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %86 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %87, 1
  %88 = or i32 %add5.i.i.i.i.i.i, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %.not.i.i.i.i.i.i = icmp sgt i32 %88, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.refcount_inc_not_zero.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !116

if.end4.i.i.i.i.i.i.refcount_inc_not_zero.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit.i.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 0) #14
  br label %refcount_inc_not_zero.exit.i.i.i

refcount_inc_not_zero.exit.i.i.i:                 ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.refcount_inc_not_zero.exit.i.i.i_crit_edge
  %89 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool12.i.i.i.not.i.i.i = icmp eq i32 %90, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #14
  %spec.select.i.i.i = select i1 %tobool12.i.i.i.not.i.i.i, ptr null, ptr %n.05.i.i.i.i.i
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %refcount_inc_not_zero.exit.i.i.i, %do.end49.i.i.i.i.i.if.end.i.i.i_crit_edge, %do.end26.i.i.i.i.i.if.end.i.i.i_crit_edge
  %n.0.i.i.i = phi ptr [ %spec.select.i.i.i, %refcount_inc_not_zero.exit.i.i.i ], [ null, %do.end26.i.i.i.i.i.if.end.i.i.i_crit_edge ], [ null, %do.end49.i.i.i.i.i.if.end.i.i.i_crit_edge ]
  %call.i5.i.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i5.i.i.i, label %if.end.i.i.i.__ipv4_neigh_lookup.exit.i.i_crit_edge, label %land.lhs.true.i8.i.i.i

if.end.i.i.i.__ipv4_neigh_lookup.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ipv4_neigh_lookup.exit.i.i

land.lhs.true.i8.i.i.i:                           ; preds = %if.end.i.i.i
  %call1.i6.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i.i.i)
  %tobool.not.i7.i.i.i = icmp eq i32 %call1.i6.i.i.i, 0
  br i1 %tobool.not.i7.i.i.i, label %land.lhs.true.i8.i.i.i.__ipv4_neigh_lookup.exit.i.i_crit_edge, label %land.lhs.true2.i10.i.i.i

land.lhs.true.i8.i.i.i.__ipv4_neigh_lookup.exit.i.i_crit_edge: ; preds = %land.lhs.true.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ipv4_neigh_lookup.exit.i.i

land.lhs.true2.i10.i.i.i:                         ; preds = %land.lhs.true.i8.i.i.i
  %.b4.i9.i.i.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i9.i.i.i, label %land.lhs.true2.i10.i.i.i.__ipv4_neigh_lookup.exit.i.i_crit_edge, label %if.then.i11.i.i.i

land.lhs.true2.i10.i.i.i.__ipv4_neigh_lookup.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i10.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ipv4_neigh_lookup.exit.i.i

if.then.i11.i.i.i:                                ; preds = %land.lhs.true2.i10.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 761, ptr noundef nonnull @.str.39) #14
  br label %__ipv4_neigh_lookup.exit.i.i

__ipv4_neigh_lookup.exit.i.i:                     ; preds = %if.then.i11.i.i.i, %land.lhs.true2.i10.i.i.i.__ipv4_neigh_lookup.exit.i.i_crit_edge, %land.lhs.true.i8.i.i.i.__ipv4_neigh_lookup.exit.i.i_crit_edge, %if.end.i.i.i.__ipv4_neigh_lookup.exit.i.i_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #14
  call fastcc void @local_bh_enable() #14
  %tobool.not.i.i = icmp eq ptr %n.0.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i100.i, label %__ipv4_neigh_lookup.exit.i.i.if.end6.i.i_crit_edge

__ipv4_neigh_lookup.exit.i.i.if.end6.i.i_crit_edge: ; preds = %__ipv4_neigh_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i

if.then.i100.i:                                   ; preds = %__ipv4_neigh_lookup.exit.i.i
  %call.i.i.i = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %ip_addr.addr.i.i, ptr noundef %60, i1 noundef zeroext true) #14
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then4.i.i, label %if.then.i100.i.if.end6.i.i_crit_edge

if.then.i100.i.if.end6.i.i_crit_edge:             ; preds = %if.then.i100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.then.i100.i
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %call.i.i.i to i32
  br label %ofdpa_port_ipv4_resolve.exit.i

if.end6.i.i:                                      ; preds = %if.then.i100.i.if.end6.i.i_crit_edge, %__ipv4_neigh_lookup.exit.i.i.if.end6.i.i_crit_edge
  %n.0.i.i = phi ptr [ %n.0.i.i.i, %__ipv4_neigh_lookup.exit.i.i.if.end6.i.i_crit_edge ], [ %call.i.i.i, %if.then.i100.i.if.end6.i.i_crit_edge ]
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %n.0.i.i, i32 0, i32 12
  %92 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %nud_state.i.i, align 8
  %94 = and i8 %93, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool7.not.i.i = icmp eq i8 %94, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %ip_addr.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ip_addr.addr.i.i, align 4
  %ha.i.i = getelementptr inbounds %struct.neighbour, ptr %n.0.i.i, i32 0, i32 18
  %call9.i.i = call fastcc i32 @ofdpa_port_ipv4_neigh(ptr noundef %ofdpa_port, i32 noundef 0, i32 noundef %96, ptr noundef %ha.i.i) #14
  br label %if.end11.i.i

if.else.i.i:                                      ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %used.i.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.0.i.i, i32 0, i32 10
  %98 = ptrtoint ptr %used.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %used.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %97)
  %cmp.not.i.i.i.i = icmp eq i32 %99, %97
  br i1 %cmp.not.i.i.i.i, label %if.else.i.i.if.end.i.i.i.i_crit_edge, label %do.body5.i.i.i.i

if.else.i.i.if.end.i.i.i.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i

do.body5.i.i.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %used.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %97, ptr %used.i.i.i.i, align 8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.body5.i.i.i.i, %if.else.i.i.if.end.i.i.i.i_crit_edge
  %101 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %nud_state.i.i, align 8
  %103 = and i8 %102, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i22.i.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i.i22.i.i, label %if.then11.i.i.i.i, label %if.end.i.i.i.i.if.end11.i.i_crit_edge

if.end.i.i.i.i.if.end11.i.i_crit_edge:            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i23.i.i = call i32 @__neigh_event_send(ptr noundef %n.0.i.i, ptr noundef null, i1 noundef zeroext true) #14
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then11.i.i.i.i, %if.end.i.i.i.i.if.end11.i.i_crit_edge, %if.then8.i.i
  %err.0.i.i = phi i32 [ %call9.i.i, %if.then8.i.i ], [ 0, %if.end.i.i.i.i.if.end11.i.i_crit_edge ], [ 0, %if.then11.i.i.i.i ]
  %refcnt.i24.i.i = getelementptr inbounds %struct.neighbour, ptr %n.0.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i25.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i24.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !119
  call void @llvm.prefetch.p0(ptr %refcnt.i24.i.i, i32 1, i32 3, i32 1) #14
  %104 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i24.i.i, ptr %refcnt.i24.i.i, i32 1, ptr elementtype(i32) %refcnt.i24.i.i) #14, !srcloc !120
  %asmresult.i.i.i.i.i.i.i26.i.i = extractvalue { i32, i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i26.i.i)
  %cmp.i.i.i.i27.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i26.i.i, 1
  br i1 %cmp.i.i.i.i27.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i26.i.i)
  %.not.i.i.i.i28.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i26.i.i, 0
  br i1 %.not.i.i.i.i28.i.i, label %if.end5.i.i.i.i.i.i.ofdpa_port_ipv4_resolve.exit.i_crit_edge, label %if.then10.i.i.i.i29.i.i, !prof !116

if.end5.i.i.i.i.i.i.ofdpa_port_ipv4_resolve.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ofdpa_port_ipv4_resolve.exit.i

if.then10.i.i.i.i29.i.i:                          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i24.i.i, i32 noundef 3) #14
  br label %ofdpa_port_ipv4_resolve.exit.i

if.then.i.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !121
  call void @neigh_destroy(ptr noundef %n.0.i.i) #14
  br label %ofdpa_port_ipv4_resolve.exit.i

ofdpa_port_ipv4_resolve.exit.i:                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i29.i.i, %if.end5.i.i.i.i.i.i.ofdpa_port_ipv4_resolve.exit.i_crit_edge, %if.then4.i.i
  %retval.0.i.i = phi i32 [ %91, %if.then4.i.i ], [ %err.0.i.i, %if.end5.i.i.i.i.i.i.ofdpa_port_ipv4_resolve.exit.i_crit_edge ], [ %err.0.i.i, %if.then10.i.i.i.i29.i.i ], [ %err.0.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_addr.addr.i.i) #14
  br label %ofdpa_port_ipv4_nh.exit

ofdpa_port_ipv4_nh.exit:                          ; preds = %ofdpa_port_ipv4_resolve.exit.i, %if.end48.i
  %index.2 = phi i32 [ %index.1, %ofdpa_port_ipv4_resolve.exit.i ], [ %index.0, %if.end48.i ]
  %retval.0.i3 = phi i32 [ %retval.0.i.i, %ofdpa_port_ipv4_resolve.exit.i ], [ %spec.select.i, %if.end48.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i3)
  %tobool11.not = icmp eq i32 %retval.0.i3, 0
  br i1 %tobool11.not, label %ofdpa_port_ipv4_nh.exit.if.end_crit_edge, label %ofdpa_port_ipv4_nh.exit.cleanup_crit_edge

ofdpa_port_ipv4_nh.exit.cleanup_crit_edge:        ; preds = %ofdpa_port_ipv4_nh.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ofdpa_port_ipv4_nh.exit.if.end_crit_edge:         ; preds = %ofdpa_port_ipv4_nh.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %ofdpa_port_ipv4_nh.exit.if.end_crit_edge, %.if.end_crit_edge, %.thread143.i
  %index.210 = phi i32 [ %index.2, %ofdpa_port_ipv4_nh.exit.if.end_crit_edge ], [ %38, %.thread143.i ], [ %57, %.if.end_crit_edge ]
  %and = and i32 %index.210, 268435455
  %or = or i32 %and, 536870912
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %fib_info_nh.exit.if.else_crit_edge
  %conv = zext i16 %2 to i32
  %shl13 = shl nuw i32 %conv, 16
  %and14 = and i32 %shl13, 268369920
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  %group_id.0 = phi i32 [ %or, %if.end ], [ %and14, %if.else ]
  %105 = ptrtoint ptr %dst.addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dst.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %107 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i4 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %107, i32 noundef 3520, i32 noundef 96) #17
  %tobool.not.i5 = icmp eq ptr %call7.i.i.i4, null
  br i1 %tobool.not.i5, label %if.end17.if.then20_crit_edge, label %ofdpa_flow_tbl_ucast4_routing.exit

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

ofdpa_flow_tbl_ucast4_routing.exit:               ; preds = %if.end17
  %key.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i4, i32 0, i32 3
  %tbl_id.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i4, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %tbl_id.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 30, ptr %tbl_id.i, align 4
  %109 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %4, ptr %key.i, align 8
  %110 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i4, i32 0, i32 3, i32 2
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 2048, ptr %110, align 8
  %dst4.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i4, i32 0, i32 3, i32 2, i32 0, i32 1
  %112 = ptrtoint ptr %dst4.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %106, ptr %dst4.i, align 4
  %dst4_mask.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i4, i32 0, i32 3, i32 2, i32 0, i32 2
  %113 = ptrtoint ptr %dst4_mask.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %retval.0.i, ptr %dst4_mask.i, align 8
  %goto_tbl9.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i4, i32 0, i32 3, i32 2, i32 0, i32 2, i32 4
  %114 = ptrtoint ptr %goto_tbl9.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 60, ptr %goto_tbl9.i, align 4
  %group_id11.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i4, i32 0, i32 3, i32 2, i32 0, i32 3, i32 2
  %115 = ptrtoint ptr %group_id11.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %group_id.0, ptr %group_id11.i, align 8
  %key_len.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i4, i32 0, i32 4
  %116 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 24, ptr %key_len.i, align 8
  %fi12.i = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, ptr %call7.i.i.i4, i32 0, i32 6
  %117 = ptrtoint ptr %fi12.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %fi, ptr %fi12.i, align 8
  %call13.i = call fastcc i32 @ofdpa_flow_tbl_do(ptr noundef %ofdpa_port, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool19.not = icmp eq i32 %call13.i, 0
  br i1 %tobool19.not, label %ofdpa_flow_tbl_ucast4_routing.exit.cleanup_crit_edge, label %ofdpa_flow_tbl_ucast4_routing.exit.if.then20_crit_edge

ofdpa_flow_tbl_ucast4_routing.exit.if.then20_crit_edge: ; preds = %ofdpa_flow_tbl_ucast4_routing.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

ofdpa_flow_tbl_ucast4_routing.exit.cleanup_crit_edge: ; preds = %ofdpa_flow_tbl_ucast4_routing.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20:                                        ; preds = %ofdpa_flow_tbl_ucast4_routing.exit.if.then20_crit_edge, %if.end17.if.then20_crit_edge
  %retval.0.i617 = phi i32 [ %call13.i, %ofdpa_flow_tbl_ucast4_routing.exit.if.then20_crit_edge ], [ -12, %if.end17.if.then20_crit_edge ]
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %119, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i617, ptr noundef nonnull %dst.addr) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %ofdpa_flow_tbl_ucast4_routing.exit.cleanup_crit_edge, %ofdpa_port_ipv4_nh.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i3, %ofdpa_port_ipv4_nh.exit.cleanup_crit_edge ], [ %retval.0.i617, %if.then20 ], [ 0, %ofdpa_flow_tbl_ucast4_routing.exit.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rocker_port_dev_lower_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2795, i32 10}
!2 = !{ptr @rocker_ofdpa_ops, !3, !"rocker_ofdpa_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2794, i32 25}
!4 = !{ptr @ofdpa_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2353, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ofdpa_init.__key.2, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2356, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ofdpa_init.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2359, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ofdpa_init.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2362, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ofdpa_init.__key.8, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2365, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ofdpa_init.__key.10, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2367, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ofdpa_port_fdb_learn.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1872, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 282, i32 41}
!27 = distinct !{null, !28, !"ff_mac", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 208, i32 17}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2441, i32 31}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2451, i32 31}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1806, i32 31}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2258, i32 30}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1753, i32 32}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1761, i32 31}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1768, i32 31}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1776, i32 31}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1621, i32 31}
!47 = distinct !{null, !48, !"mcast_mac", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 211, i32 17}
!49 = distinct !{null, !50, !"b", i1 false, i1 false}
!50 = !{!"../include/linux/etherdevice.h", i32 86, i32 23}
!51 = distinct !{null, !52, !"m", i1 false, i1 false}
!52 = !{!"../include/linux/etherdevice.h", i32 87, i32 22}
!53 = distinct !{null, !54, !"eth_reserved_addr_base", i1 false, i1 false}
!54 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1645, i32 31}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1667, i32 31}
!59 = !{ptr @ofdpa_ctrls, !60, !"ofdpa_ctrls", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1551, i32 3}
!61 = !{ptr @ll_mac, !62, !"ll_mac", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 209, i32 17}
!63 = !{ptr @ll_mask, !64, !"ll_mask", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 210, i32 17}
!65 = !{ptr @zero_mac, !66, !"zero_mac", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 207, i32 17}
!67 = !{ptr @ipv4_mcast, !68, !"ipv4_mcast", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 212, i32 17}
!69 = !{ptr @ipv4_mask, !70, !"ipv4_mask", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 213, i32 17}
!71 = !{ptr @ipv6_mcast, !72, !"ipv6_mcast", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 214, i32 17}
!73 = !{ptr @ipv6_mask, !74, !"ipv6_mask", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 215, i32 17}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1512, i32 32}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1536, i32 31}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 287, i32 41}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2326, i32 7}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1323, i32 31}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 1337, i32 32}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/net/nexthop.h", i32 468, i32 2}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/rocker/rocker_ofdpa.c", i32 2306, i32 31}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!93 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/net/neighbour.h", i32 305, i32 33}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/net/neighbour.h", i32 310, i32 11}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/net/neighbour.h", i32 312, i32 11}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!105 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i8 0, i8 2}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{!"branch_weights", i32 1, i32 2000}
!118 = !{i64 768308, i64 768332, i64 768353, i64 768370, i64 768387}
!119 = !{i64 2148374103}
!120 = !{i64 2148288567, i64 2148288599, i64 2148288628, i64 2148288662, i64 2148288693, i64 2148288716}
!121 = !{i64 2149898872}
