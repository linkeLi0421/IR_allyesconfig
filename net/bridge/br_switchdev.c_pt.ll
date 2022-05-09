; ModuleID = '/llk/IR_all_yes/net/bridge/br_switchdev.c_pt.bc'
source_filename = "../net/bridge/br_switchdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.list_head = type { ptr, ptr }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.hlist_head = type { ptr }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.155 }
%union.anon.155 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.switchdev_notifier_port_attr_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.net_bridge_fdb_entry = type { %struct.rhash_head, ptr, %struct.net_bridge_fdb_key, %struct.hlist_node, i32, [100 x i8], i32, i32, %struct.callback_head, [112 x i8] }
%struct.rhash_head = type { ptr }
%struct.net_bridge_fdb_key = type { %struct.mac_addr, i16 }
%struct.mac_addr = type { [6 x i8] }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.149, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.149 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.150, %union.anon.151, i16, i16 }
%union.anon.150 = type { %struct.in6_addr }
%union.anon.151 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.net_bridge_mdb_entry = type { %struct.rhash_head, ptr, ptr, %struct.br_ip, i8, %struct.timer_list, %struct.hlist_node, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.net_bridge_mcast_gc = type { %struct.hlist_node, ptr }
%struct.net_bridge_port_group = type { ptr, %struct.net_bridge_port_group_sg_key, [6 x i8], i8, i8, i8, i8, %struct.hlist_head, i32, %struct.timer_list, %struct.timer_list, %struct.hlist_node, %struct.rb_root, %struct.rb_root, %struct.rhash_head, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.net_bridge_port_group_sg_key = type { ptr, %struct.br_ip }
%struct.br_switchdev_mdb_complete_info = type { ptr, %struct.br_ip }
%struct.switchdev_notifier_port_obj_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.net_bridge_vlan_group = type { %struct.rhashtable, %struct.rhashtable, %struct.list_head, i16, i16, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@br_switchdev_tx_fwd_offload = internal global { %struct.static_key_false, [24 x i8] } zeroinitializer, align 32
@br_switchdev_set_port_flag.__msg = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bridge: bridge flag offload is not supported\00", [51 x i8] zeroinitializer }, align 32
@br_switchdev_set_port_flag.__msg.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bridge: error setting offload flag on port\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@br_switchdev_mdb_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/bridge/br_switchdev.c\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@nbp_switchdev_add.__msg = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"bridge: Same bridge port cannot be offloaded by two physical switches\00", [58 x i8] zeroinitializer }, align 32
@br_switchdev_vlan_replay.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@br_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@br_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nbp_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_switchdev_mdb_replay.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_switchdev_mdb_replay.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@br_switchdev_mdb_replay.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@br_switchdev_fdb_replay.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 29]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 84, i64 85]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 84, i64 85]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"br_switchdev_tx_fwd_offload\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 12, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 107, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 118, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 443, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 236, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 368, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1471, i32 9 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 618, i32 2 }
@___asan_gen_.48 = private constant [29 x i8] c"../net/bridge/br_switchdev.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 632, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @br_switchdev_tx_fwd_offload, ptr @br_switchdev_set_port_flag.__msg, ptr @br_switchdev_set_port_flag.__msg.1, ptr @.str, ptr @.str.2, ptr @nbp_switchdev_add.__msg, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_switchdev_tx_fwd_offload to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_switchdev_set_port_flag.__msg to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_switchdev_set_port_flag.__msg.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nbp_switchdev_add.__msg to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_switchdev_frame_uses_tx_fwd_offload(ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @br_switchdev_tx_fwd_offload, ptr blockaddress(@br_switchdev_frame_uses_tx_fwd_offload, %if.end)) #9
          to label %return [label %if.end], !srcloc !49

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_fwd_offload = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %tx_fwd_offload to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %tx_fwd_offload, align 1
  %1 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3 = icmp ne i8 %1, 0
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ %tobool3, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_switchdev_frame_set_offload_fwd_mark(ptr nocapture noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @br_switchdev_tx_fwd_offload, ptr blockaddress(@br_switchdev_frame_set_offload_fwd_mark, %if.end.i)) #9
          to label %br_switchdev_frame_uses_tx_fwd_offload.exit [label %if.end.i], !srcloc !49

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_fwd_offload.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %tx_fwd_offload.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %tx_fwd_offload.i, align 1
  %1 = and i8 %bf.load.i, 4
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 18
  br label %br_switchdev_frame_uses_tx_fwd_offload.exit

br_switchdev_frame_uses_tx_fwd_offload.exit:      ; preds = %if.end.i, %entry
  %4 = phi i32 [ %3, %if.end.i ], [ 0, %entry ]
  %offload_fwd_mark4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %5 = ptrtoint ptr %offload_fwd_mark4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load6 = load i32, ptr %offload_fwd_mark4, align 2
  %bf.clear = and i32 %bf.load6, -1048577
  %bf.set = or i32 %bf.clear, %4
  store i32 %bf.set, ptr %offload_fwd_mark4, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nbp_switchdev_frame_mark_tx_fwd_offload(ptr nocapture noundef readonly %p, ptr nocapture noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @br_switchdev_tx_fwd_offload, ptr blockaddress(@nbp_switchdev_frame_mark_tx_fwd_offload, %if.end.i)) #9
          to label %if.end [label %if.end.i], !srcloc !49

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %land.rhs.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i:                                       ; preds = %if.end.i
  %hwdom.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 31
  %2 = ptrtoint ptr %hwdom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwdom.i, align 8
  %src_hwdom.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %src_hwdom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_hwdom.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not = icmp eq i32 %3, %5
  br i1 %cmp.i.not, label %land.rhs.i.if.end_crit_edge, label %if.then

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_fwd_offload = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %tx_fwd_offload to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %tx_fwd_offload, align 1
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %tx_fwd_offload, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nbp_switchdev_frame_mark_tx_fwd_to_hwdom(ptr nocapture noundef readonly %p, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @br_switchdev_tx_fwd_offload, ptr blockaddress(@nbp_switchdev_frame_mark_tx_fwd_to_hwdom, %if.end.i)) #9
          to label %if.end [label %if.end.i], !srcloc !49

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %land.rhs.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i:                                       ; preds = %if.end.i
  %hwdom.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 31
  %2 = ptrtoint ptr %hwdom.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwdom.i, align 8
  %src_hwdom.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %src_hwdom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_hwdom.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not = icmp eq i32 %3, %5
  br i1 %cmp.i.not, label %land.rhs.i.if.end_crit_edge, label %if.then

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %hwdom.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwdom.i, align 8
  %fwd_hwdoms = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  tail call void @_set_bit(i32 noundef %7, ptr noundef %fwd_hwdoms) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nbp_switchdev_frame_mark(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hwdom = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 31
  %0 = ptrtoint ptr %hwdom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwdom, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %src_hwdom = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %src_hwdom to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %src_hwdom, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nbp_switchdev_allowed_egress(ptr nocapture noundef readonly %p, ptr noundef %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hwdom = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 31
  %0 = ptrtoint ptr %hwdom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwdom, align 8
  %fwd_hwdoms = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %div3.i = lshr i32 %1, 5
  %arrayidx.i = getelementptr i32, ptr %fwd_hwdoms, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  %offload_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %offload_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %offload_fwd_mark, align 2
  %7 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.rhs.land.end_crit_edge, label %lor.rhs

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %src_hwdom = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %src_hwdom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_hwdom, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp = icmp ne i32 %9, %1
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %10 = phi i1 [ false, %entry.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ %cmp, %lor.rhs ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_switchdev_set_port_flag(ptr nocapture noundef readonly %p, i32 noundef %flags, i32 noundef %mask, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.switchdev_attr, align 4
  %info = alloca %struct.switchdev_notifier_port_attr_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %attr) #9
  %0 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %attr, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 12)
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %attr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #9
  %7 = call ptr @memset(ptr %info, i32 0, i32 20)
  %attr3 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %attr3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %attr, ptr %attr3, align 4
  %and = and i32 %mask, 18528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %0, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %10, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %9, align 4
  %call = call i32 @call_switchdev_notifiers(i32 noundef 9, ptr noundef %5, ptr noundef nonnull %info, ptr noundef %extack) #9
  %and.i = and i32 %call, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp sgt i32 %and.i, 1
  %sub.i = sub i32 1, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 0
  %14 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %if.then12 [
    i32 -95, label %if.end.cleanup_crit_edge
    i32 0, label %if.end21
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %if.then12.cleanup_crit_edge, label %land.lhs.true

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then12
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extack, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %0, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %1, align 4
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call25 = call i32 @switchdev_port_attr_set(ptr noundef %20, ptr noundef nonnull %attr, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end21.cleanup_crit_edge, label %if.then27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.end21
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %if.then27.cleanup_crit_edge, label %land.lhs.true29

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.then27
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extack, align 4
  %tobool31.not = icmp eq ptr %22, null
  br i1 %tobool31.not, label %land.lhs.true29.cleanup.sink.split_crit_edge, label %land.lhs.true29.cleanup_crit_edge

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true29.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true29.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %br_switchdev_set_port_flag.__msg.1.sink62 = phi ptr [ @br_switchdev_set_port_flag.__msg, %land.lhs.true.cleanup.sink.split_crit_edge ], [ @br_switchdev_set_port_flag.__msg.1, %land.lhs.true29.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -95, %land.lhs.true.cleanup.sink.split_crit_edge ], [ %call25, %land.lhs.true29.cleanup.sink.split_crit_edge ]
  call void @do_trace_netlink_extack(ptr noundef nonnull %br_switchdev_set_port_flag.__msg.1.sink62) #9
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %br_switchdev_set_port_flag.__msg.1.sink62, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true29.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %if.then12.cleanup_crit_edge ], [ %call25, %land.lhs.true29.cleanup_crit_edge ], [ %call25, %if.then27.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %attr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_port_attr_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_switchdev_fdb_notify(ptr nocapture noundef readonly %br, ptr noundef %fdb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %item = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %item) #9
  %0 = getelementptr inbounds i8, ptr %item, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %dst.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 1
  %2 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dst.i, align 4
  %key.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 2
  %addr2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %item, i32 0, i32 1
  %4 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %key.i, ptr %addr2.i, align 4
  %vlan_id.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vlan_id.i, align 2
  %vid.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %item, i32 0, i32 2
  %7 = ptrtoint ptr %vid.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %vid.i, align 4
  %flags.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = trunc i32 %9 to i8
  %added_by_user.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %item, i32 0, i32 3
  %11 = shl i8 %10, 4
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = trunc i32 %12 to i8
  %conv6.i = and i8 %13, 32
  %bf.set.i = and i8 %11, -128
  %bf.clear10.i = or i8 %bf.set.i, %conv6.i
  %bf.set11.i = or i8 %bf.clear10.i, 31
  %14 = load volatile i32, ptr %flags.i, align 4
  %and1.i44.i = and i32 %14, 1
  %conv14.i = trunc i32 %and1.i44.i to i8
  %bf.value16.i = shl nuw nsw i8 %conv14.i, 6
  %bf.set19.i = or i8 %bf.value16.i, %bf.set11.i
  %15 = ptrtoint ptr %added_by_user.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.set19.i, ptr %added_by_user.i, align 2
  %tobool.not.i = icmp ne ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i44.i)
  %tobool24.not.i = icmp eq i32 %and1.i44.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool24.not.i, i1 false
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %dev25.i = getelementptr inbounds %struct.net_bridge_port, ptr %3, i32 0, i32 1
  %cond.in.i = select i1 %or.cond.i, ptr %dev25.i, ptr %dev.i
  %16 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %17 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond.i, ptr %item, align 4
  %ctx28.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %item, i32 0, i32 2
  %18 = ptrtoint ptr %ctx28.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ctx28.i, align 4
  %19 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 29, label %entry.sw.epilog.sink.split_crit_edge
    i32 28, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb2 ], [ 4, %entry.sw.epilog.sink.split_crit_edge ]
  %call6 = call i32 @call_switchdev_notifiers(i32 noundef %.sink, ptr noundef %cond.i, ptr noundef nonnull %item, ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %item) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_switchdev_port_vlan_add(ptr noundef %dev, i16 noundef zeroext %vid, i16 noundef zeroext %flags, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca %struct.switchdev_obj_port_vlan, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %v) #9
  %0 = getelementptr inbounds %struct.switchdev_obj, ptr %v, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_obj, ptr %v, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_obj, ptr %v, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_obj, ptr %v, i32 0, i32 4
  %4 = getelementptr inbounds %struct.switchdev_obj, ptr %v, i32 0, i32 5
  %5 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %v, i32 0, i32 1
  %6 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %v, i32 0, i32 2
  %7 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %v, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %0, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %2, align 8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %4, align 8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %flags, ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %vid, ptr %6, align 2
  %call = call i32 @switchdev_port_obj_add(ptr noundef %dev, ptr noundef nonnull %v, ptr noundef %extack) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %v) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_port_obj_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_switchdev_port_vlan_del(ptr noundef %dev, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca %struct.switchdev_obj_port_vlan, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %v) #9
  %0 = getelementptr inbounds %struct.switchdev_obj, ptr %v, i32 0, i32 1
  %1 = getelementptr inbounds %struct.switchdev_obj, ptr %v, i32 0, i32 2
  %2 = getelementptr inbounds %struct.switchdev_obj, ptr %v, i32 0, i32 3
  %3 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %v, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %0, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %1, align 4
  %7 = call ptr @memset(ptr %2, i32 0, i32 14)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %vid, ptr %3, align 2
  %call = call i32 @switchdev_port_obj_del(ptr noundef %dev, ptr noundef nonnull %v) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %v) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_port_obj_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_switchdev_mdb_notify(ptr noundef %dev, ptr nocapture noundef readonly %mp, ptr noundef readonly %pg, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %mdb.i.i = alloca %struct.switchdev_obj_port_mdb, align 8
  %iter.i = alloca ptr, align 4
  %mdb = alloca %struct.switchdev_obj_port_mdb, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mdb) #9
  %0 = call ptr @memset(ptr %mdb, i32 0, i32 36)
  %1 = getelementptr inbounds %struct.switchdev_obj, ptr %mdb, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %1, align 4
  %3 = getelementptr inbounds %struct.switchdev_obj, ptr %mdb, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %3, align 4
  %tobool.not = icmp eq ptr %pg, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #9
  %lower.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lower.i, align 8
  %7 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next(ptr noundef %dev, ptr noundef nonnull %iter.i) #9
  %tobool.not6.i = icmp eq ptr %call.i, null
  br i1 %tobool.not6.i, label %if.then.br_switchdev_host_mdb.exit_crit_edge, label %for.body.lr.ph.i

if.then.br_switchdev_host_mdb.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_switchdev_host_mdb.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %orig_dev.i.i = getelementptr inbounds %struct.switchdev_obj, ptr %mdb.i.i, i32 0, i32 1
  %id.i.i = getelementptr inbounds %struct.switchdev_obj, ptr %mdb.i.i, i32 0, i32 2
  %flags.i.i = getelementptr inbounds %struct.switchdev_obj, ptr %mdb.i.i, i32 0, i32 3
  %complete_priv.i.i = getelementptr inbounds %struct.switchdev_obj, ptr %mdb.i.i, i32 0, i32 4
  %addr.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb.i.i, i32 0, i32 1
  %vid.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb.i.i, i32 0, i32 2
  %proto.i.i.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 2
  %arrayidx1.i31.i.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb.i.i, i32 0, i32 1, i32 1
  %add.ptr.i.i.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb.i.i, i32 0, i32 1, i32 2
  %arrayidx2.i32.i.i.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 3
  %dst.i.i.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1
  %arrayidx3.i.i.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb.i.i, i32 0, i32 1, i32 5
  %arrayidx6.i.i.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb.i.i, i32 0, i32 1, i32 4
  %arrayidx10.i.i.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb.i.i, i32 0, i32 1, i32 3
  %add.ptr.i33.i.i.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %vid.i.i.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %br_switchdev_host_mdb_one.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lower_dev.07.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call1.i, %br_switchdev_host_mdb_one.exit.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mdb.i.i) #9
  %8 = ptrtoint ptr %mdb.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %mdb.i.i, align 8
  %9 = ptrtoint ptr %orig_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %orig_dev.i.i, align 8
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %id.i.i, align 4
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %flags.i.i, align 8
  %12 = call ptr @memset(ptr %complete_priv.i.i, i32 0, i32 16)
  %13 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %proto.i.i.i, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %14, label %if.else14.i.i.i [
    i16 2048, label %if.then.i.i.i
    i16 -31011, label %if.then9.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst.i.i.i, align 4
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %addr.i.i, align 4
  %19 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 94, ptr %add.ptr.i.i.i.i, align 2
  %conv.i.i.i.i = trunc i32 %17 to i8
  %20 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i.i.i.i, ptr %arrayidx3.i.i.i.i, align 1
  %shr.i.i.i.i = lshr i32 %17, 8
  %conv5.i.i.i.i = trunc i32 %shr.i.i.i.i to i8
  %21 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv5.i.i.i.i, ptr %arrayidx6.i.i.i.i, align 8
  %shr7.i.i.i.i = lshr i32 %17, 16
  %22 = trunc i32 %shr7.i.i.i.i to i8
  %conv9.i.i.i.i = and i8 %22, 127
  %23 = ptrtoint ptr %arrayidx10.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv9.i.i.i.i, ptr %arrayidx10.i.i.i.i, align 1
  br label %br_switchdev_mdb_populate.exit.i.i

if.then9.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 51, ptr %addr.i.i, align 4
  %25 = ptrtoint ptr %arrayidx1.i31.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 51, ptr %arrayidx1.i31.i.i.i, align 1
  %26 = ptrtoint ptr %arrayidx2.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i32.i.i.i, align 4
  %28 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %add.ptr.i.i.i.i, align 2
  br label %br_switchdev_mdb_populate.exit.i.i

if.else14.i.i.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst.i.i.i, align 4
  %31 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %addr.i.i, align 4
  %32 = ptrtoint ptr %add.ptr.i33.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i33.i.i.i, align 2
  %34 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx6.i.i.i.i, align 8
  br label %br_switchdev_mdb_populate.exit.i.i

br_switchdev_mdb_populate.exit.i.i:               ; preds = %if.else14.i.i.i, %if.then9.i.i.i, %if.then.i.i.i
  %35 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vid.i.i.i, align 2
  %37 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %vid.i.i, align 2
  %38 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %type, label %br_switchdev_mdb_populate.exit.i.i.br_switchdev_host_mdb_one.exit.i_crit_edge [
    i32 84, label %sw.bb.i.i
    i32 85, label %sw.bb2.i.i
  ]

br_switchdev_mdb_populate.exit.i.i.br_switchdev_host_mdb_one.exit.i_crit_edge: ; preds = %br_switchdev_mdb_populate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_switchdev_host_mdb_one.exit.i

sw.bb.i.i:                                        ; preds = %br_switchdev_mdb_populate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @switchdev_port_obj_add(ptr noundef nonnull %lower_dev.07.i, ptr noundef nonnull %mdb.i.i, ptr noundef null) #9
  br label %br_switchdev_host_mdb_one.exit.i

sw.bb2.i.i:                                       ; preds = %br_switchdev_mdb_populate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i.i = call i32 @switchdev_port_obj_del(ptr noundef nonnull %lower_dev.07.i, ptr noundef nonnull %mdb.i.i) #9
  br label %br_switchdev_host_mdb_one.exit.i

br_switchdev_host_mdb_one.exit.i:                 ; preds = %sw.bb2.i.i, %sw.bb.i.i, %br_switchdev_mdb_populate.exit.i.i.br_switchdev_host_mdb_one.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %mdb.i.i) #9
  %call1.i = call ptr @netdev_lower_get_next(ptr noundef %dev, ptr noundef nonnull %iter.i) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %br_switchdev_host_mdb_one.exit.i.br_switchdev_host_mdb.exit_crit_edge, label %br_switchdev_host_mdb_one.exit.i.for.body.i_crit_edge

br_switchdev_host_mdb_one.exit.i.for.body.i_crit_edge: ; preds = %br_switchdev_host_mdb_one.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

br_switchdev_host_mdb_one.exit.i.br_switchdev_host_mdb.exit_crit_edge: ; preds = %br_switchdev_host_mdb_one.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_switchdev_host_mdb.exit

br_switchdev_host_mdb.exit:                       ; preds = %br_switchdev_host_mdb_one.exit.i.br_switchdev_host_mdb.exit_crit_edge, %if.then.br_switchdev_host_mdb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %proto.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %proto.i, align 4
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %40, label %if.else14.i [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then9.i
  ]

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dst.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dst.i, align 4
  %addr3.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %44 = ptrtoint ptr %addr3.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %addr3.i, align 4
  %arrayidx2.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 94, ptr %arrayidx2.i.i, align 2
  %conv.i.i = trunc i32 %43 to i8
  %arrayidx3.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 5
  %46 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i.i, ptr %arrayidx3.i.i, align 1
  %shr.i.i = lshr i32 %43, 8
  %conv5.i.i = trunc i32 %shr.i.i to i8
  %arrayidx6.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv5.i.i, ptr %arrayidx6.i.i, align 4
  %shr7.i.i = lshr i32 %43, 16
  %48 = trunc i32 %shr7.i.i to i8
  %conv9.i.i = and i8 %48, 127
  %arrayidx10.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv9.i.i, ptr %arrayidx10.i.i, align 1
  br label %br_switchdev_mdb_populate.exit

if.then9.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr12.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %50 = ptrtoint ptr %addr12.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 51, ptr %addr12.i, align 4
  %arrayidx1.i31.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %arrayidx1.i31.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 51, ptr %arrayidx1.i31.i, align 1
  %add.ptr.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 2
  %arrayidx2.i32.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx2.i32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2.i32.i, align 4
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %add.ptr.i.i, align 2
  br label %br_switchdev_mdb_populate.exit

if.else14.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr15.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %dst18.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %dst18.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dst18.i, align 4
  %57 = ptrtoint ptr %addr15.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %addr15.i, align 4
  %add.ptr.i33.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %58 = ptrtoint ptr %add.ptr.i33.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i33.i, align 2
  %add.ptr1.i.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %60 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %add.ptr1.i.i, align 4
  br label %br_switchdev_mdb_populate.exit

br_switchdev_mdb_populate.exit:                   ; preds = %if.else14.i, %if.then9.i, %if.then.i
  %vid.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vid.i, align 2
  %vid22.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %63 = ptrtoint ptr %vid22.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %vid22.i, align 2
  %key = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1
  %64 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %key, align 4
  %dev1 = getelementptr inbounds %struct.net_bridge_port, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1, align 4
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %mdb, i32 0, i32 1
  %68 = ptrtoint ptr %orig_dev to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %orig_dev, align 4
  %69 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %type, label %br_switchdev_mdb_populate.exit.cleanup_crit_edge [
    i32 84, label %sw.bb
    i32 85, label %sw.bb18
  ]

br_switchdev_mdb_populate.exit.cleanup_crit_edge: ; preds = %br_switchdev_mdb_populate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %br_switchdev_mdb_populate.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 2592, i32 noundef 40) #12
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %71 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %key, align 4
  %73 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %call7.i, align 8
  %ip = getelementptr inbounds %struct.br_switchdev_mdb_complete_info, ptr %call7.i, i32 0, i32 1
  %addr = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3
  %74 = call ptr @memcpy(ptr %ip, ptr %addr, i32 36)
  %complete_priv = getelementptr inbounds %struct.switchdev_obj, ptr %mdb, i32 0, i32 4
  %75 = ptrtoint ptr %complete_priv to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i, ptr %complete_priv, align 4
  %complete = getelementptr inbounds %struct.switchdev_obj, ptr %mdb, i32 0, i32 5
  %76 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @br_switchdev_mdb_complete, ptr %complete, align 4
  %dev12 = getelementptr inbounds %struct.net_bridge_port, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev12, align 4
  %call14 = call i32 @switchdev_port_obj_add(ptr noundef %78, ptr noundef nonnull %mdb, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end4.cleanup_crit_edge, label %if.then16

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

sw.bb18:                                          ; preds = %br_switchdev_mdb_populate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev1, align 4
  %call23 = call i32 @switchdev_port_obj_del(ptr noundef %80, ptr noundef nonnull %mdb) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %if.then16, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %br_switchdev_mdb_populate.exit.cleanup_crit_edge, %br_switchdev_host_mdb.exit
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %mdb) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_switchdev_mdb_complete(ptr nocapture noundef readnone %dev, i32 noundef %err, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %entry.err21_crit_edge

entry.err21_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err21

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %multicast_lock = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %multicast_lock) #9
  %ip = getelementptr inbounds %struct.br_switchdev_mdb_complete_info, ptr %priv, i32 0, i32 1
  %call = tail call ptr @br_mdb_ip_get(ptr noundef %3, ptr noundef %ip) #9
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  %ports = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %call, i32 0, i32 2
  %dep_map = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 32, i32 0, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end5
  %pp.0 = phi ptr [ %ports, %if.end5 ], [ %5, %for.cond.backedge ]
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %land.lhs.true, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b31 = load i1, ptr @br_switchdev_mdb_complete.__warned, align 1
  br i1 %.b31, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_switchdev_mdb_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 443, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %4 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp.0, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %do.end.out_crit_edge, label %for.body

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %do.end
  %key = getelementptr inbounds %struct.net_bridge_port_group, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %key, align 4
  %cmp16.not = icmp eq ptr %7, %1
  br i1 %cmp16.not, label %if.end18, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end18, %for.body.for.cond.backedge_crit_edge
  br label %for.cond

if.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.net_bridge_port_group, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 2
  %10 = or i8 %9, 2
  store i8 %10, ptr %flags, align 2
  br label %for.cond.backedge

out:                                              ; preds = %do.end.out_crit_edge, %if.end.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %multicast_lock) #9
  br label %err21

err21:                                            ; preds = %out, %entry.err21_crit_edge
  tail call void @kfree(ptr noundef %priv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_switchdev_port_offload(ptr nocapture noundef %p, ptr noundef %dev, ptr noundef %ctx, ptr noundef %atomic_nb, ptr noundef %blocking_nb, i1 noundef zeroext %tx_fwd_offload, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %ppid.i = alloca %struct.netdev_phys_item_id, align 4
  %ppid = alloca %struct.netdev_phys_item_id, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %ppid) #9
  %0 = call ptr @memset(ptr %ppid, i32 255, i32 33)
  %call = call i32 @dev_get_port_parent_id(ptr noundef %dev, ptr noundef nonnull %ppid, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ppid to i32
  call void @__asan_load4_noabort(i32 %1)
  %ppid.coerce.sroa.0.0.copyload = load i32, ptr %ppid, align 4
  %ppid.coerce.sroa.2.0.ppid.sroa_idx = getelementptr inbounds i8, ptr %ppid, i32 4
  %2 = ptrtoint ptr %ppid.coerce.sroa.2.0.ppid.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %ppid.coerce.sroa.2.0.copyload = load i32, ptr %ppid.coerce.sroa.2.0.ppid.sroa_idx, align 4
  %ppid.coerce.sroa.3.0.ppid.sroa_idx = getelementptr inbounds i8, ptr %ppid, i32 8
  %3 = ptrtoint ptr %ppid.coerce.sroa.3.0.ppid.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %ppid.coerce.sroa.3.0.copyload = load i32, ptr %ppid.coerce.sroa.3.0.ppid.sroa_idx, align 4
  %ppid.coerce.sroa.4.0.ppid.sroa_idx = getelementptr inbounds i8, ptr %ppid, i32 12
  %4 = ptrtoint ptr %ppid.coerce.sroa.4.0.ppid.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %ppid.coerce.sroa.4.0.copyload = load i32, ptr %ppid.coerce.sroa.4.0.ppid.sroa_idx, align 4
  %ppid.coerce.sroa.5.0.ppid.sroa_idx = getelementptr inbounds i8, ptr %ppid, i32 16
  %5 = ptrtoint ptr %ppid.coerce.sroa.5.0.ppid.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %ppid.coerce.sroa.5.0.copyload = load i32, ptr %ppid.coerce.sroa.5.0.ppid.sroa_idx, align 4
  %ppid.coerce.sroa.6.0.ppid.sroa_idx = getelementptr inbounds i8, ptr %ppid, i32 20
  %6 = ptrtoint ptr %ppid.coerce.sroa.6.0.ppid.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %ppid.coerce.sroa.6.0.copyload = load i32, ptr %ppid.coerce.sroa.6.0.ppid.sroa_idx, align 4
  %ppid.coerce.sroa.7.0.ppid.sroa_idx = getelementptr inbounds i8, ptr %ppid, i32 24
  %7 = ptrtoint ptr %ppid.coerce.sroa.7.0.ppid.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %ppid.coerce.sroa.7.0.copyload = load i32, ptr %ppid.coerce.sroa.7.0.ppid.sroa_idx, align 4
  %ppid.coerce.sroa.8.0.ppid.sroa_idx = getelementptr inbounds i8, ptr %ppid, i32 28
  %8 = ptrtoint ptr %ppid.coerce.sroa.8.0.ppid.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %ppid.coerce.sroa.8.0.copyload = load i32, ptr %ppid.coerce.sroa.8.0.ppid.sroa_idx, align 4
  %ppid.coerce.sroa.9.0.ppid.sroa_idx = getelementptr inbounds i8, ptr %ppid, i32 32
  %9 = ptrtoint ptr %ppid.coerce.sroa.9.0.ppid.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %ppid.coerce.sroa.9.0.copyload = load i8, ptr %ppid.coerce.sroa.9.0.ppid.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %ppid.i)
  %10 = ptrtoint ptr %ppid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ppid.coerce.sroa.0.0.copyload, ptr %ppid.i, align 4
  %tmp.coerce.sroa.2.0.ppid.sroa_idx.i = getelementptr inbounds i8, ptr %ppid.i, i32 4
  %11 = ptrtoint ptr %tmp.coerce.sroa.2.0.ppid.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ppid.coerce.sroa.2.0.copyload, ptr %tmp.coerce.sroa.2.0.ppid.sroa_idx.i, align 4
  %tmp.coerce.sroa.3.0.ppid.sroa_idx.i = getelementptr inbounds i8, ptr %ppid.i, i32 8
  %12 = ptrtoint ptr %tmp.coerce.sroa.3.0.ppid.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ppid.coerce.sroa.3.0.copyload, ptr %tmp.coerce.sroa.3.0.ppid.sroa_idx.i, align 4
  %tmp.coerce.sroa.4.0.ppid.sroa_idx.i = getelementptr inbounds i8, ptr %ppid.i, i32 12
  %13 = ptrtoint ptr %tmp.coerce.sroa.4.0.ppid.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ppid.coerce.sroa.4.0.copyload, ptr %tmp.coerce.sroa.4.0.ppid.sroa_idx.i, align 4
  %tmp.coerce.sroa.5.0.ppid.sroa_idx.i = getelementptr inbounds i8, ptr %ppid.i, i32 16
  %14 = ptrtoint ptr %tmp.coerce.sroa.5.0.ppid.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ppid.coerce.sroa.5.0.copyload, ptr %tmp.coerce.sroa.5.0.ppid.sroa_idx.i, align 4
  %tmp.coerce.sroa.6.0.ppid.sroa_idx.i = getelementptr inbounds i8, ptr %ppid.i, i32 20
  %15 = ptrtoint ptr %tmp.coerce.sroa.6.0.ppid.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ppid.coerce.sroa.6.0.copyload, ptr %tmp.coerce.sroa.6.0.ppid.sroa_idx.i, align 4
  %tmp.coerce.sroa.7.0.ppid.sroa_idx.i = getelementptr inbounds i8, ptr %ppid.i, i32 24
  %16 = ptrtoint ptr %tmp.coerce.sroa.7.0.ppid.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ppid.coerce.sroa.7.0.copyload, ptr %tmp.coerce.sroa.7.0.ppid.sroa_idx.i, align 4
  %tmp.coerce.sroa.8.0.ppid.sroa_idx.i = getelementptr inbounds i8, ptr %ppid.i, i32 28
  %17 = ptrtoint ptr %tmp.coerce.sroa.8.0.ppid.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %ppid.coerce.sroa.8.0.copyload, ptr %tmp.coerce.sroa.8.0.ppid.sroa_idx.i, align 4
  %tmp.coerce.sroa.9.0.ppid.sroa_idx.i = getelementptr inbounds i8, ptr %ppid.i, i32 32
  %18 = ptrtoint ptr %tmp.coerce.sroa.9.0.ppid.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %ppid.coerce.sroa.9.0.copyload, ptr %tmp.coerce.sroa.9.0.ppid.sroa_idx.i, align 4
  %offload_count.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 32
  %19 = ptrtoint ptr %offload_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offload_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %id_len.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 33, i32 1
  %21 = ptrtoint ptr %id_len.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %id_len.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %ppid.coerce.sroa.9.0.copyload)
  %cmp.i.i = icmp eq i8 %22, %ppid.coerce.sroa.9.0.copyload
  br i1 %cmp.i.i, label %netdev_phys_item_id_same.exit.i, label %if.then.i.do.body.i_crit_edge

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

netdev_phys_item_id_same.exit.i:                  ; preds = %if.then.i
  %ppid1.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 33
  %conv.i.i = zext i8 %ppid.coerce.sroa.9.0.copyload to i32
  %bcmp.i.i = call i32 @bcmp(ptr %ppid1.i, ptr nonnull %ppid.i, i32 %conv.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp8.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp8.i.i, label %if.end5.i, label %netdev_phys_item_id_same.exit.i.do.body.i_crit_edge

netdev_phys_item_id_same.exit.i.do.body.i_crit_edge: ; preds = %netdev_phys_item_id_same.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %netdev_phys_item_id_same.exit.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @nbp_switchdev_add.__msg) #9
  %tobool3.not.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i, label %do.body.i.nbp_switchdev_add.exit_crit_edge, label %if.then4.i

do.body.i.nbp_switchdev_add.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_switchdev_add.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @nbp_switchdev_add.__msg, ptr %extack, align 4
  br label %nbp_switchdev_add.exit

if.end5.i:                                        ; preds = %netdev_phys_item_id_same.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add i32 %20, 1
  %24 = ptrtoint ptr %offload_count.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc.i, ptr %offload_count.i, align 4
  br label %if.end5

if.end7.i:                                        ; preds = %if.end
  %ppid8.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 33
  %25 = call ptr @memcpy(ptr %ppid8.i, ptr %ppid.i, i32 33)
  %26 = ptrtoint ptr %offload_count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %offload_count.i, align 4
  %27 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p, align 8
  %port_list.i.i = getelementptr inbounds %struct.net_bridge, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %port_list.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn31.i.i = load ptr, ptr %port_list.i.i, align 4
  %cmp.not32.i.i = icmp eq ptr %.pn31.i.i, %port_list.i.i
  br i1 %cmp.not32.i.i, label %if.end7.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end7.i.for.end.i.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end7.i
  %id_len.i.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 33, i32 1
  %30 = ptrtoint ptr %id_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %id_len.i.i.i, align 1
  %conv.i.i.i = zext i8 %31 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn33.i.i = phi ptr [ %.pn31.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ]
  %id_len1.i.i.i = getelementptr i8, ptr %.pn33.i.i, i32 652
  %32 = ptrtoint ptr %id_len1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %id_len1.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp.i.i.i = icmp eq i8 %31, %33
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %for.body.i.i.for.cond.backedge.i.i_crit_edge

for.body.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i.i
  %ppid3.i.i = getelementptr i8, ptr %.pn33.i.i, i32 620
  %bcmp.i.i.i = call i32 @bcmp(ptr %ppid8.i, ptr %ppid3.i.i, i32 %conv.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp8.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp8.i.i.i, label %if.then.i.i, label %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge

land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %land.rhs.i.i.i.for.cond.backedge.i.i_crit_edge, %for.body.i.i.for.cond.backedge.i.i_crit_edge
  %34 = ptrtoint ptr %.pn33.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i.i = load ptr, ptr %.pn33.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %port_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.backedge.i.i.for.end.i.i_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.backedge.i.i.for.end.i.i_crit_edge:      ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %hwdom4.i.i = getelementptr i8, ptr %.pn33.i.i, i32 612
  %35 = ptrtoint ptr %hwdom4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hwdom4.i.i, align 8
  br label %nbp_switchdev_hwdom_set.exit.i

for.end.i.i:                                      ; preds = %for.cond.backedge.i.i.for.end.i.i_crit_edge, %if.end7.i.for.end.i.i_crit_edge
  %busy_hwdoms.i.i = getelementptr inbounds %struct.net_bridge, ptr %28, i32 0, i32 45
  %call11.i.i = call i32 @_find_next_zero_bit_be(ptr noundef %busy_hwdoms.i.i, i32 noundef 32, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call11.i.i)
  %cmp12.i.i = icmp sgt i32 %call11.i.i, 31
  br i1 %cmp12.i.i, label %for.end.i.i.nbp_switchdev_add.exit_crit_edge, label %if.end14.i.i

for.end.i.i.nbp_switchdev_add.exit_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_switchdev_add.exit

if.end14.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef %call11.i.i, ptr noundef %busy_hwdoms.i.i) #9
  br label %nbp_switchdev_hwdom_set.exit.i

nbp_switchdev_hwdom_set.exit.i:                   ; preds = %if.end14.i.i, %if.then.i.i
  %call11.sink.i.i = phi i32 [ %call11.i.i, %if.end14.i.i ], [ %36, %if.then.i.i ]
  %hwdom16.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 31
  %37 = ptrtoint ptr %hwdom16.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call11.sink.i.i, ptr %hwdom16.i.i, align 8
  br i1 %tx_fwd_offload, label %if.then15.i, label %nbp_switchdev_hwdom_set.exit.i.if.end5_crit_edge

nbp_switchdev_hwdom_set.exit.i.if.end5_crit_edge: ; preds = %nbp_switchdev_hwdom_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then15.i:                                      ; preds = %nbp_switchdev_hwdom_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %39, 1048576
  store i32 %or.i, ptr %flags.i, align 4
  call void @static_key_slow_inc(ptr noundef nonnull @br_switchdev_tx_fwd_offload) #9
  br label %if.end5

nbp_switchdev_add.exit:                           ; preds = %for.end.i.i.nbp_switchdev_add.exit_crit_edge, %if.then4.i, %do.body.i.nbp_switchdev_add.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %ppid.i)
  br label %cleanup

if.end5:                                          ; preds = %if.then15.i, %nbp_switchdev_hwdom_set.exit.i.if.end5_crit_edge, %if.end5.i
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %ppid.i)
  %40 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %p, align 8
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %44 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev2.i, align 4
  %call.i = call fastcc i32 @br_switchdev_vlan_replay(ptr noundef %43, ptr noundef %45, ptr noundef %ctx, i1 noundef zeroext true, ptr noundef %blocking_nb, ptr noundef %extack) #9
  %46 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call.i, label %if.end5.nbp_switchdev_sync_objs.exit_crit_edge [
    i32 0, label %if.end5.if.end.i_crit_edge
    i32 -95, label %if.end5.if.end.i_crit_edge39
  ]

if.end5.if.end.i_crit_edge39:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end5.nbp_switchdev_sync_objs.exit_crit_edge:   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_switchdev_sync_objs.exit

if.end.i:                                         ; preds = %if.end5.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge39
  %call3.i = call fastcc i32 @br_switchdev_mdb_replay(ptr noundef %43, ptr noundef %45, ptr noundef %ctx, i1 noundef zeroext true, ptr noundef %blocking_nb, ptr noundef %extack) #9
  %47 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call3.i, label %if.end.i.nbp_switchdev_sync_objs.exit_crit_edge [
    i32 0, label %if.end.i.if.end8.i_crit_edge
    i32 -95, label %if.end.i.if.end8.i_crit_edge40
  ]

if.end.i.if.end8.i_crit_edge40:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i.nbp_switchdev_sync_objs.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_switchdev_sync_objs.exit

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge40
  %call9.i = call fastcc i32 @br_switchdev_fdb_replay(ptr noundef %43, ptr noundef %ctx, i1 noundef zeroext true, ptr noundef %atomic_nb) #9
  %48 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call9.i, label %if.end8.i.nbp_switchdev_sync_objs.exit_crit_edge [
    i32 0, label %if.end8.i.cleanup_crit_edge
    i32 -95, label %if.end8.i.cleanup_crit_edge41
  ]

if.end8.i.cleanup_crit_edge41:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.nbp_switchdev_sync_objs.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_switchdev_sync_objs.exit

nbp_switchdev_sync_objs.exit:                     ; preds = %if.end8.i.nbp_switchdev_sync_objs.exit_crit_edge, %if.end.i.nbp_switchdev_sync_objs.exit_crit_edge, %if.end5.nbp_switchdev_sync_objs.exit_crit_edge
  %retval.0.i19 = phi i32 [ %call.i, %if.end5.nbp_switchdev_sync_objs.exit_crit_edge ], [ %call3.i, %if.end.i.nbp_switchdev_sync_objs.exit_crit_edge ], [ %call9.i, %if.end8.i.nbp_switchdev_sync_objs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i19)
  %tobool7.not = icmp eq i32 %retval.0.i19, 0
  br i1 %tobool7.not, label %nbp_switchdev_sync_objs.exit.cleanup_crit_edge, label %out_switchdev_del

nbp_switchdev_sync_objs.exit.cleanup_crit_edge:   ; preds = %nbp_switchdev_sync_objs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_switchdev_del:                                ; preds = %nbp_switchdev_sync_objs.exit
  %49 = ptrtoint ptr %offload_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offload_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i21 = icmp eq i32 %50, 0
  br i1 %tobool.not.i21, label %do.end.i, label %if.end23.critedge.i, !prof !50

do.end.i:                                         ; preds = %out_switchdev_del
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23.critedge.i:                              ; preds = %out_switchdev_del
  %dec.i = add i32 %50, -1
  %51 = ptrtoint ptr %offload_count.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %dec.i, ptr %offload_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end23.critedge.i.cleanup_crit_edge

if.end23.critedge.i.cleanup_crit_edge:            ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28.i:                                       ; preds = %if.end23.critedge.i
  %hwdom.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 31
  %52 = ptrtoint ptr %hwdom.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hwdom.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool29.not.i = icmp eq i32 %53, 0
  br i1 %tobool29.not.i, label %if.end28.i.if.end31.i_crit_edge, label %if.then30.i

if.end28.i.if.end31.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.end28.i
  %54 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p, align 8
  %port_list.i.i22 = getelementptr inbounds %struct.net_bridge, ptr %55, i32 0, i32 9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i25.for.cond.i.i_crit_edge, %if.then30.i
  %.pn.in.i.i = phi ptr [ %port_list.i.i22, %if.then30.i ], [ %.pn.i.i23, %for.body.i.i25.for.cond.i.i_crit_edge ]
  %56 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i.i23 = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i24 = icmp eq ptr %.pn.i.i23, %port_list.i.i22
  br i1 %cmp.not.i.i24, label %for.end.i.i27, label %for.body.i.i25

for.body.i.i25:                                   ; preds = %for.cond.i.i
  %hwdom.i.i = getelementptr i8, ptr %.pn.i.i23, i32 612
  %57 = ptrtoint ptr %hwdom.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hwdom.i.i, align 8
  %cmp4.i.i = icmp eq i32 %58, %53
  br i1 %cmp4.i.i, label %for.body.i.i25.if.end31.i_crit_edge, label %for.body.i.i25.for.cond.i.i_crit_edge

for.body.i.i25.for.cond.i.i_crit_edge:            ; preds = %for.body.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.body.i.i25.if.end31.i_crit_edge:              ; preds = %for.body.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

for.end.i.i27:                                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %busy_hwdoms.i.i26 = getelementptr inbounds %struct.net_bridge, ptr %55, i32 0, i32 45
  call void @_clear_bit(i32 noundef %53, ptr noundef %busy_hwdoms.i.i26) #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %for.end.i.i27, %for.body.i.i25.if.end31.i_crit_edge, %if.end28.i.if.end31.i_crit_edge
  %flags.i28 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %59 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i28, align 4
  %and.i = and i32 %60, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool32.not.i, label %if.end31.i.cleanup_crit_edge, label %if.then33.i

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %and35.i = and i32 %60, -1048577
  %61 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and35.i, ptr %flags.i28, align 4
  call void @static_key_slow_dec(ptr noundef nonnull @br_switchdev_tx_fwd_offload) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then33.i, %if.end31.i.cleanup_crit_edge, %if.end23.critedge.i.cleanup_crit_edge, %do.end.i, %nbp_switchdev_sync_objs.exit.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge41, %nbp_switchdev_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -16, %nbp_switchdev_add.exit ], [ 0, %nbp_switchdev_sync_objs.exit.cleanup_crit_edge ], [ %retval.0.i19, %do.end.i ], [ %retval.0.i19, %if.end23.critedge.i.cleanup_crit_edge ], [ %retval.0.i19, %if.end31.i.cleanup_crit_edge ], [ %retval.0.i19, %if.then33.i ], [ 0, %if.end8.i.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge41 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %ppid) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_port_parent_id(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_switchdev_port_unoffload(ptr nocapture noundef %p, ptr noundef %ctx, ptr noundef %atomic_nb, ptr noundef %blocking_nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2.i, align 4
  %call.i = tail call fastcc i32 @br_switchdev_vlan_replay(ptr noundef %3, ptr noundef %5, ptr noundef %ctx, i1 noundef zeroext false, ptr noundef %blocking_nb, ptr noundef null) #9
  %call3.i = tail call fastcc i32 @br_switchdev_mdb_replay(ptr noundef %3, ptr noundef %5, ptr noundef %ctx, i1 noundef zeroext false, ptr noundef %blocking_nb, ptr noundef null) #9
  %call4.i = tail call fastcc i32 @br_switchdev_fdb_replay(ptr noundef %3, ptr noundef %ctx, i1 noundef zeroext false, ptr noundef %atomic_nb) #9
  %offload_count.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 32
  %6 = ptrtoint ptr %offload_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offload_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.critedge.i, !prof !50

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef null) #9
  br label %nbp_switchdev_del.exit

if.end23.critedge.i:                              ; preds = %entry
  %dec.i = add i32 %7, -1
  %8 = ptrtoint ptr %offload_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i, ptr %offload_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end23.critedge.i.nbp_switchdev_del.exit_crit_edge

if.end23.critedge.i.nbp_switchdev_del.exit_crit_edge: ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_switchdev_del.exit

if.end28.i:                                       ; preds = %if.end23.critedge.i
  %hwdom.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 31
  %9 = ptrtoint ptr %hwdom.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwdom.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool29.not.i = icmp eq i32 %10, 0
  br i1 %tobool29.not.i, label %if.end28.i.if.end31.i_crit_edge, label %if.then30.i

if.end28.i.if.end31.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.end28.i
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p, align 8
  %port_list.i.i = getelementptr inbounds %struct.net_bridge, ptr %12, i32 0, i32 9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then30.i
  %.pn.in.i.i = phi ptr [ %port_list.i.i, %if.then30.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %13 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %port_list.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %hwdom.i.i = getelementptr i8, ptr %.pn.i.i, i32 612
  %14 = ptrtoint ptr %hwdom.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwdom.i.i, align 8
  %cmp4.i.i = icmp eq i32 %15, %10
  br i1 %cmp4.i.i, label %for.body.i.i.if.end31.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.body.i.i.if.end31.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %busy_hwdoms.i.i = getelementptr inbounds %struct.net_bridge, ptr %12, i32 0, i32 45
  tail call void @_clear_bit(i32 noundef %10, ptr noundef %busy_hwdoms.i.i) #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %for.end.i.i, %for.body.i.i.if.end31.i_crit_edge, %if.end28.i.if.end31.i_crit_edge
  %flags.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool32.not.i, label %if.end31.i.nbp_switchdev_del.exit_crit_edge, label %if.then33.i

if.end31.i.nbp_switchdev_del.exit_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_switchdev_del.exit

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %and35.i = and i32 %17, -1048577
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and35.i, ptr %flags.i, align 4
  tail call void @static_key_slow_dec(ptr noundef nonnull @br_switchdev_tx_fwd_offload) #9
  br label %nbp_switchdev_del.exit

nbp_switchdev_del.exit:                           ; preds = %if.then33.i, %if.end31.i.nbp_switchdev_del.exit_crit_edge, %if.end23.critedge.i.nbp_switchdev_del.exit_crit_edge, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_mdb_ip_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_switchdev_vlan_replay(ptr nocapture noundef readonly %br_dev, ptr noundef %dev, ptr noundef %ctx, i1 noundef zeroext %adding, ptr noundef %nb, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %obj_info.i = alloca %struct.switchdev_notifier_port_obj_info, align 4
  %vlan = alloca %struct.switchdev_obj_port_vlan, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b147 = load i1, ptr @br_switchdev_vlan_replay.__already_done, align 1
  br i1 %.b147, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !51

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_switchdev_vlan_replay.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 368, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 368) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %tobool38.not = icmp eq ptr %nb, null
  br i1 %tobool38.not, label %if.end30.cleanup119_crit_edge, label %if.end40

if.end30.cleanup119_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end40:                                         ; preds = %if.end30
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %br_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end40.cleanup119_crit_edge, label %if.end43

if.end40.cleanup119_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end43:                                         ; preds = %if.end40
  %priv_flags.i149 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i149 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i149, align 16
  %and.i150 = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i150)
  %tobool.i151.not = icmp eq i64 %and.i150, 0
  br i1 %tobool.i151.not, label %land.lhs.true, label %if.then49

land.lhs.true:                                    ; preds = %if.end43
  %and.i153 = and i64 %3, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i153)
  %tobool.i154.not = icmp eq i64 %and.i153, 0
  br i1 %tobool.i154.not, label %land.lhs.true.cleanup119_crit_edge, label %do.body.i

land.lhs.true.cleanup119_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.then49:                                        ; preds = %if.end43
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i, label %if.then49.br_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then49.br_vlan_group.exit_crit_edge:           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then49
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.br_vlan_group.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1471, ptr noundef nonnull @.str.2) #9
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i.br_vlan_group.exit_crit_edge, %if.then49.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %dev, i32 2408
  br label %if.end91

do.body.i:                                        ; preds = %land.lhs.true
  %call1.i158 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call1.i158, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i160

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl.exit

land.lhs.true.i160:                               ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i159 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i159, label %land.lhs.true.i160.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i160.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i160
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i161

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl.exit

if.then.i161:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 422, ptr noundef nonnull @.str.2) #9
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i161, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i160.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %4 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool54.not = icmp eq ptr %5, null
  br i1 %tobool54.not, label %do.end72, label %if.end88, !prof !50

do.end72:                                         ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 385, i32 noundef 9, ptr noundef null) #9
  br label %cleanup119

if.end88:                                         ; preds = %br_port_get_rtnl.exit
  %call.i162 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i162, label %if.end88.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i165

if.end88.nbp_vlan_group.exit_crit_edge:           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_vlan_group.exit

land.lhs.true.i165:                               ; preds = %if.end88
  %call1.i163 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool.not.i164 = icmp eq i32 %call1.i163, 0
  br i1 %tobool.not.i164, label %land.lhs.true.i165.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i167

land.lhs.true.i165.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_vlan_group.exit

land.lhs.true2.i167:                              ; preds = %land.lhs.true.i165
  %.b4.i166 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i166, label %land.lhs.true2.i167.nbp_vlan_group.exit_crit_edge, label %if.then.i168

land.lhs.true2.i167.nbp_vlan_group.exit_crit_edge: ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_vlan_group.exit

if.then.i168:                                     ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1477, ptr noundef nonnull @.str.2) #9
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i168, %land.lhs.true2.i167.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i165.nbp_vlan_group.exit_crit_edge, %if.end88.nbp_vlan_group.exit_crit_edge
  %vlgrp.i169 = getelementptr inbounds %struct.net_bridge_port, ptr %5, i32 0, i32 5
  br label %if.end91

if.end91:                                         ; preds = %nbp_vlan_group.exit, %br_vlan_group.exit
  %vg.0.in = phi ptr [ %vlgrp.i, %br_vlan_group.exit ], [ %vlgrp.i169, %nbp_vlan_group.exit ]
  %6 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %tobool92.not = icmp eq ptr %vg.0, null
  br i1 %tobool92.not, label %if.end91.cleanup119_crit_edge, label %br_get_pvid.exit

if.end91.cleanup119_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

br_get_pvid.exit:                                 ; preds = %if.end91
  %. = select i1 %adding, i32 7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  %pvid.i = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 4
  %7 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pvid.i, align 2
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 2
  %9 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn183 = load ptr, ptr %vlan_list, align 4
  %cmp.not184 = icmp eq ptr %.pn183, %vlan_list
  br i1 %cmp.not184, label %br_get_pvid.exit.cleanup119_crit_edge, label %for.body.lr.ph

br_get_pvid.exit.cleanup119_crit_edge:            ; preds = %br_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

for.body.lr.ph:                                   ; preds = %br_get_pvid.exit
  %10 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 1
  %11 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 2
  %12 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 3
  %13 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 4
  %14 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 5
  %15 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %16 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %17 = getelementptr inbounds i8, ptr %obj_info.i, i32 16
  %extack2.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %obj_info.i, i32 0, i32 1
  %ctx3.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %obj_info.i, i32 0, i32 2
  %obj.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %obj_info.i, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %vlan, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn185 = phi ptr [ %.pn183, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vlan) #9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %18, align 8
  %20 = ptrtoint ptr %vlan to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %vlan, align 8
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %10, align 8
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %11, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %12, align 8
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %13, align 4
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %14, align 8
  %vid.i = getelementptr i8, ptr %.pn185, i32 -548
  %26 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vid.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %8)
  %cmp.i = icmp eq i16 %27, %8
  %flags.i = getelementptr i8, ptr %.pn185, i32 -546
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags.i, align 2
  %or.i = or i16 %29, 2
  %cond.i173 = select i1 %cmp.i, i16 %or.i, i16 %29
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %cond.i173, ptr %15, align 4
  %31 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vid.i, align 8
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %16, align 2
  %34 = load i16, ptr %flags.i, align 2
  %35 = and i16 %34, 33
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %.not = icmp eq i16 %35, 1
  br i1 %.not, label %for.body.for.inc_crit_edge, label %if.end109

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end109:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %obj_info.i) #9
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777215, ptr %17, align 4
  %37 = ptrtoint ptr %obj_info.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %obj_info.i, align 4
  %38 = ptrtoint ptr %extack2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %extack, ptr %extack2.i, align 4
  %39 = ptrtoint ptr %ctx3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ctx, ptr %ctx3.i, align 4
  %40 = ptrtoint ptr %obj.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %vlan, ptr %obj.i, align 4
  %41 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nb, align 4
  %call.i174 = call i32 %42(ptr noundef nonnull %nb, i32 noundef %., ptr noundef nonnull %obj_info.i) #9
  %and.i.i175 = and i32 %call.i174, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i175)
  %cmp.i.i = icmp slt i32 %and.i.i175, 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %obj_info.i) #9
  br i1 %cmp.i.i, label %if.end109.for.inc_crit_edge, label %cleanup

if.end109.for.inc_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub nsw i32 1, %and.i.i175
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan) #9
  br label %cleanup119

for.inc:                                          ; preds = %if.end109.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan) #9
  %43 = ptrtoint ptr %.pn185 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load ptr, ptr %.pn185, align 4
  %cmp.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp.not, label %for.inc.cleanup119_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup119_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

cleanup119:                                       ; preds = %for.inc.cleanup119_crit_edge, %cleanup, %br_get_pvid.exit.cleanup119_crit_edge, %if.end91.cleanup119_crit_edge, %do.end72, %land.lhs.true.cleanup119_crit_edge, %if.end40.cleanup119_crit_edge, %if.end30.cleanup119_crit_edge
  %retval.2 = phi i32 [ %sub.i.i, %cleanup ], [ -22, %do.end72 ], [ 0, %if.end30.cleanup119_crit_edge ], [ -22, %if.end40.cleanup119_crit_edge ], [ -22, %land.lhs.true.cleanup119_crit_edge ], [ 0, %if.end91.cleanup119_crit_edge ], [ 0, %br_get_pvid.exit.cleanup119_crit_edge ], [ 0, %for.inc.cleanup119_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_switchdev_mdb_replay(ptr noundef %br_dev, ptr noundef %dev, ptr noundef %ctx, i1 noundef zeroext %adding, ptr noundef %nb, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %obj_info.i = alloca %struct.switchdev_notifier_port_obj_info, align 4
  %mdb_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mdb_list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %mdb_list, i32 0, i32 1
  %1 = ptrtoint ptr %mdb_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mdb_list, ptr %mdb_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdb_list, ptr %0, align 4
  %call = call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b222 = load i1, ptr @br_switchdev_mdb_replay.__already_done, align 1
  br i1 %.b222, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !51

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_switchdev_mdb_replay.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 595) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %tobool39.not = icmp eq ptr %nb, null
  br i1 %tobool39.not, label %if.end31.cleanup181_crit_edge, label %if.end41

if.end31.cleanup181_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end41:                                         ; preds = %if.end31
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %br_dev, i32 0, i32 15
  %3 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %4, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end41.cleanup181_crit_edge, label %lor.lhs.false

if.end41.cleanup181_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

lor.lhs.false:                                    ; preds = %if.end41
  %priv_flags.i224 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags.i224 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i224, align 16
  %and.i225 = and i64 %6, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i225)
  %tobool.i226.not = icmp eq i64 %and.i225, 0
  br i1 %tobool.i226.not, label %lor.lhs.false.cleanup181_crit_edge, label %if.end45

lor.lhs.false.cleanup181_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end45:                                         ; preds = %lor.lhs.false
  %options.i = getelementptr i8, ptr %br_dev, i32 2400
  %7 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %options.i, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool48.not = icmp eq i32 %9, 0
  br i1 %tobool48.not, label %if.end45.cleanup181_crit_edge, label %if.end50

if.end45.cleanup181_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

if.end50:                                         ; preds = %if.end45
  %10 = call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end50.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end50.rcu_read_lock.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end50
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end50.rcu_read_lock.exit_crit_edge
  %call52 = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end61_crit_edge

rcu_read_lock.exit.do.end61_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call54 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true.do.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true
  %.b218221 = load i1, ptr @br_switchdev_mdb_replay.__warned, align 1
  br i1 %.b218221, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_switchdev_mdb_replay.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 618, ptr noundef nonnull @.str.5) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true.do.end61_crit_edge, %rcu_read_lock.exit.do.end61_crit_edge
  %mdb_list66 = getelementptr i8, ptr %br_dev, i32 3900
  %14 = ptrtoint ptr %mdb_list66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %mdb_list66, align 4
  %tobool69.not = icmp eq ptr %15, null
  %add.ptr = getelementptr i8, ptr %15, i32 -100
  %tobool71.not263269 = icmp eq ptr %add.ptr, null
  %tobool71.not263 = or i1 %tobool69.not, %tobool71.not263269
  br i1 %tobool71.not263, label %do.end61.for.end125_crit_edge, label %do.end61.for.body_crit_edge

do.end61.for.body_crit_edge:                      ; preds = %do.end61
  br label %for.body

do.end61.for.end125_crit_edge:                    ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end125

for.body:                                         ; preds = %for.inc108.for.body_crit_edge, %do.end61.for.body_crit_edge
  %mp.0264 = phi ptr [ %add.ptr121, %for.inc108.for.body_crit_edge ], [ %add.ptr, %do.end61.for.body_crit_edge ]
  %host_joined = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp.0264, i32 0, i32 4
  %16 = ptrtoint ptr %host_joined to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %host_joined, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool72.not = icmp eq i8 %17, 0
  br i1 %tobool72.not, label %for.body.if.end78_crit_edge, label %if.then73

for.body.if.end78_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then73:                                        ; preds = %for.body
  %call74 = call fastcc i32 @br_switchdev_mdb_queue_one(ptr noundef nonnull %mdb_list, i32 noundef 3, ptr noundef nonnull %mp.0264, ptr noundef %br_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.if.end78_crit_edge, label %if.then76

if.then73.if.end78_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then76:                                        ; preds = %if.then73
  %call.i227 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i227, label %if.then76.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i230

if.then76.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i230:                               ; preds = %if.then76
  %call1.i228 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i228)
  %tobool.not.i229 = icmp eq i32 %call1.i228, 0
  br i1 %tobool.not.i229, label %land.lhs.true.i230.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i232

land.lhs.true.i230.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i232:                              ; preds = %land.lhs.true.i230
  %.b4.i231 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i231, label %land.lhs.true2.i232.rcu_read_unlock.exit_crit_edge, label %if.then.i233

land.lhs.true2.i232.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i232
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i233:                                     ; preds = %land.lhs.true2.i232
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i233, %land.lhs.true2.i232.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i230.rcu_read_unlock.exit_crit_edge, %if.then76.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  br label %out_free_mdb.sink.split

if.end78:                                         ; preds = %if.then73.if.end78_crit_edge, %for.body.if.end78_crit_edge
  %ports = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp.0264, i32 0, i32 2
  br label %for.cond79

for.cond79:                                       ; preds = %for.cond79.backedge, %if.end78
  %pp.0 = phi ptr [ %ports, %if.end78 ], [ %19, %for.cond79.backedge ]
  %18 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %pp.0, align 4
  %call85 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.lhs.true87, label %for.cond79.do.end95_crit_edge

for.cond79.do.end95_crit_edge:                    ; preds = %for.cond79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end95

land.lhs.true87:                                  ; preds = %for.cond79
  %call88 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.lhs.true87.do.end95_crit_edge, label %land.lhs.true90

land.lhs.true87.do.end95_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end95

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %.b219220 = load i1, ptr @br_switchdev_mdb_replay.__warned.6, align 1
  br i1 %.b219220, label %land.lhs.true90.do.end95_crit_edge, label %if.then92

land.lhs.true90.do.end95_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end95

if.then92:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_switchdev_mdb_replay.__warned.6, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 632, ptr noundef nonnull @.str.7) #9
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %land.lhs.true90.do.end95_crit_edge, %land.lhs.true87.do.end95_crit_edge, %for.cond79.do.end95_crit_edge
  %cmp.not = icmp eq ptr %19, null
  br i1 %cmp.not, label %for.inc108, label %for.body97

for.body97:                                       ; preds = %do.end95
  %key = getelementptr inbounds %struct.net_bridge_port_group, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %key, align 4
  %dev98 = getelementptr inbounds %struct.net_bridge_port, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev98, align 4
  %cmp99.not = icmp eq ptr %23, %dev
  br i1 %cmp99.not, label %if.end101, label %for.body97.for.cond79.backedge_crit_edge

for.body97.for.cond79.backedge_crit_edge:         ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond79.backedge

if.end101:                                        ; preds = %for.body97
  %call102 = call fastcc i32 @br_switchdev_mdb_queue_one(ptr noundef nonnull %mdb_list, i32 noundef 2, ptr noundef nonnull %mp.0264, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end101.for.cond79.backedge_crit_edge, label %if.then104

if.end101.for.cond79.backedge_crit_edge:          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond79.backedge

for.cond79.backedge:                              ; preds = %if.end101.for.cond79.backedge_crit_edge, %for.body97.for.cond79.backedge_crit_edge
  br label %for.cond79

if.then104:                                       ; preds = %if.end101
  %call.i236 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i236, label %if.then104.rcu_read_unlock.exit246_crit_edge, label %land.lhs.true.i239

if.then104.rcu_read_unlock.exit246_crit_edge:     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit246

land.lhs.true.i239:                               ; preds = %if.then104
  %call1.i237 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i237)
  %tobool.not.i238 = icmp eq i32 %call1.i237, 0
  br i1 %tobool.not.i238, label %land.lhs.true.i239.rcu_read_unlock.exit246_crit_edge, label %land.lhs.true2.i241

land.lhs.true.i239.rcu_read_unlock.exit246_crit_edge: ; preds = %land.lhs.true.i239
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit246

land.lhs.true2.i241:                              ; preds = %land.lhs.true.i239
  %.b4.i240 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i240, label %land.lhs.true2.i241.rcu_read_unlock.exit246_crit_edge, label %if.then.i242

land.lhs.true2.i241.rcu_read_unlock.exit246_crit_edge: ; preds = %land.lhs.true2.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit246

if.then.i242:                                     ; preds = %land.lhs.true2.i241
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit246

rcu_read_unlock.exit246:                          ; preds = %if.then.i242, %land.lhs.true2.i241.rcu_read_unlock.exit246_crit_edge, %land.lhs.true.i239.rcu_read_unlock.exit246_crit_edge, %if.then104.rcu_read_unlock.exit246_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  br label %out_free_mdb.sink.split

for.inc108:                                       ; preds = %do.end95
  %mdb_node = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp.0264, i32 0, i32 6
  %24 = ptrtoint ptr %mdb_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %mdb_node, align 4
  %tobool117.not = icmp eq ptr %25, null
  %add.ptr121 = getelementptr i8, ptr %25, i32 -100
  %tobool71.not271 = icmp eq ptr %add.ptr121, null
  %tobool71.not = or i1 %tobool117.not, %tobool71.not271
  br i1 %tobool71.not, label %for.inc108.for.end125_crit_edge, label %for.inc108.for.body_crit_edge

for.inc108.for.body_crit_edge:                    ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc108.for.end125_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end125

for.end125:                                       ; preds = %for.inc108.for.end125_crit_edge, %do.end61.for.end125_crit_edge
  %call.i247 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i247, label %for.end125.rcu_read_unlock.exit257_crit_edge, label %land.lhs.true.i250

for.end125.rcu_read_unlock.exit257_crit_edge:     ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit257

land.lhs.true.i250:                               ; preds = %for.end125
  %call1.i248 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i248)
  %tobool.not.i249 = icmp eq i32 %call1.i248, 0
  br i1 %tobool.not.i249, label %land.lhs.true.i250.rcu_read_unlock.exit257_crit_edge, label %land.lhs.true2.i252

land.lhs.true.i250.rcu_read_unlock.exit257_crit_edge: ; preds = %land.lhs.true.i250
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit257

land.lhs.true2.i252:                              ; preds = %land.lhs.true.i250
  %.b4.i251 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i251, label %land.lhs.true2.i252.rcu_read_unlock.exit257_crit_edge, label %if.then.i253

land.lhs.true2.i252.rcu_read_unlock.exit257_crit_edge: ; preds = %land.lhs.true2.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit257

if.then.i253:                                     ; preds = %land.lhs.true2.i252
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit257

rcu_read_unlock.exit257:                          ; preds = %if.then.i253, %land.lhs.true2.i252.rcu_read_unlock.exit257_crit_edge, %land.lhs.true.i250.rcu_read_unlock.exit257_crit_edge, %for.end125.rcu_read_unlock.exit257_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %26 = call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i254 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i254 to ptr
  %preempt_count.i.i.i.i255 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i255, align 4
  %sub.i.i.i256 = add i32 %29, -1
  store volatile i32 %sub.i.i.i256, ptr %preempt_count.i.i.i.i255, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %. = select i1 %adding, i32 7, i32 8
  %30 = getelementptr inbounds i8, ptr %obj_info.i, i32 16
  %extack2.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %obj_info.i, i32 0, i32 1
  %ctx3.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %obj_info.i, i32 0, i32 2
  %obj.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %obj_info.i, i32 0, i32 1
  br label %for.cond133

for.cond133:                                      ; preds = %for.body137.for.cond133_crit_edge, %rcu_read_unlock.exit257
  %obj.0.in = phi ptr [ %mdb_list, %rcu_read_unlock.exit257 ], [ %obj.0, %for.body137.for.cond133_crit_edge ]
  %31 = ptrtoint ptr %obj.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %obj.0 = load ptr, ptr %obj.0.in, align 4
  %cmp134.not = icmp eq ptr %obj.0, %mdb_list
  br i1 %cmp134.not, label %for.cond133.out_free_mdb_crit_edge, label %for.body137

for.cond133.out_free_mdb_crit_edge:               ; preds = %for.cond133
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_mdb

for.body137:                                      ; preds = %for.cond133
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %obj_info.i) #9
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16777215, ptr %30, align 4
  %33 = ptrtoint ptr %obj_info.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %obj_info.i, align 4
  %34 = ptrtoint ptr %extack2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %extack, ptr %extack2.i, align 4
  %35 = ptrtoint ptr %ctx3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ctx, ptr %ctx3.i, align 4
  %36 = ptrtoint ptr %obj.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %obj.0, ptr %obj.i, align 4
  %37 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nb, align 4
  %call.i258 = call i32 %38(ptr noundef nonnull %nb, i32 noundef %., ptr noundef nonnull %obj_info.i) #9
  %and.i.i = and i32 %call.i258, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp sgt i32 %and.i.i, 1
  %sub.i.i = sub i32 1, %and.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %obj_info.i) #9
  %tobool142.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool142.not, label %for.body137.for.cond133_crit_edge, label %for.body137.out_free_mdb_crit_edge

for.body137.out_free_mdb_crit_edge:               ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_mdb

for.body137.for.cond133_crit_edge:                ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond133

out_free_mdb.sink.split:                          ; preds = %rcu_read_unlock.exit246, %rcu_read_unlock.exit
  %err.6.ph = phi i32 [ %call74, %rcu_read_unlock.exit ], [ %call102, %rcu_read_unlock.exit246 ]
  %39 = call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i234 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i234 to ptr
  %preempt_count.i.i.i.i235 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i235, align 4
  %sub.i.i.i245 = add i32 %42, -1
  store volatile i32 %sub.i.i.i245, ptr %preempt_count.i.i.i.i235, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %out_free_mdb

out_free_mdb:                                     ; preds = %out_free_mdb.sink.split, %for.body137.out_free_mdb_crit_edge, %for.cond133.out_free_mdb_crit_edge
  %err.6 = phi i32 [ %err.6.ph, %out_free_mdb.sink.split ], [ 0, %for.cond133.out_free_mdb_crit_edge ], [ %spec.select.i.i, %for.body137.out_free_mdb_crit_edge ]
  %43 = ptrtoint ptr %mdb_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdb_list, align 4
  %cmp163.not266 = icmp eq ptr %44, %mdb_list
  br i1 %cmp163.not266, label %out_free_mdb.cleanup181_crit_edge, label %out_free_mdb.for.body166_crit_edge

out_free_mdb.for.body166_crit_edge:               ; preds = %out_free_mdb
  br label %for.body166

out_free_mdb.cleanup181_crit_edge:                ; preds = %out_free_mdb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

for.body166:                                      ; preds = %list_del.exit.for.body166_crit_edge, %out_free_mdb.for.body166_crit_edge
  %obj.1267 = phi ptr [ %tmp.0, %list_del.exit.for.body166_crit_edge ], [ %44, %out_free_mdb.for.body166_crit_edge ]
  %45 = ptrtoint ptr %obj.1267 to i32
  call void @__asan_load4_noabort(i32 %45)
  %tmp.0 = load ptr, ptr %obj.1267, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %obj.1267) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body166.list_del.exit_crit_edge

for.body166.list_del.exit_crit_edge:              ; preds = %for.body166
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body166
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %obj.1267, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %obj.1267 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %obj.1267, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body166.list_del.exit_crit_edge
  %52 = ptrtoint ptr %obj.1267 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %obj.1267, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %obj.1267, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %obj.1267) #9
  %cmp163.not = icmp eq ptr %tmp.0, %mdb_list
  br i1 %cmp163.not, label %list_del.exit.cleanup181_crit_edge, label %list_del.exit.for.body166_crit_edge

list_del.exit.for.body166_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body166

list_del.exit.cleanup181_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup181

cleanup181:                                       ; preds = %list_del.exit.cleanup181_crit_edge, %out_free_mdb.cleanup181_crit_edge, %if.end45.cleanup181_crit_edge, %lor.lhs.false.cleanup181_crit_edge, %if.end41.cleanup181_crit_edge, %if.end31.cleanup181_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31.cleanup181_crit_edge ], [ -22, %lor.lhs.false.cleanup181_crit_edge ], [ -22, %if.end41.cleanup181_crit_edge ], [ 0, %if.end45.cleanup181_crit_edge ], [ %err.6, %out_free_mdb.cleanup181_crit_edge ], [ %err.6, %list_del.exit.cleanup181_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mdb_list) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_switchdev_fdb_replay(ptr noundef %br_dev, ptr noundef %ctx, i1 noundef zeroext %adding, ptr noundef %nb) unnamed_addr #0 align 64 {
entry:
  %item.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %br_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %. = select i1 %adding, i32 3, i32 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end2.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end2.rcu_read_lock.exit_crit_edge:             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end2
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end2.rcu_read_lock.exit_crit_edge
  %call7 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b54 = load i1, ptr @br_switchdev_fdb_replay.__warned, align 1
  br i1 %.b54, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_switchdev_fdb_replay.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 322, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %fdb_list = getelementptr i8, ptr %br_dev, i32 4208
  %6 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fdb_list, align 4
  %tobool20.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -16
  %tobool22.not6871 = icmp eq ptr %add.ptr, null
  %tobool22.not68 = or i1 %tobool20.not, %tobool22.not6871
  br i1 %tobool22.not68, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %8 = getelementptr inbounds i8, ptr %item.i, i32 4
  %addr2.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %item.i, i32 0, i32 1
  %vid.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %item.i, i32 0, i32 2
  %added_by_user.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %item.i, i32 0, i32 3
  %dev.i.i = getelementptr i8, ptr %br_dev, i32 2396
  %ctx28.i.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %item.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fdb.069 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr38, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %item.i) #9
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %dst.i.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb.069, i32 0, i32 1
  %10 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %dst.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb.069, i32 0, i32 2
  %12 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %key.i.i, ptr %addr2.i.i, align 4
  %vlan_id.i.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb.069, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan_id.i.i, align 2
  %15 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %vid.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb.069, i32 0, i32 4
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i.i, align 4
  %18 = trunc i32 %17 to i8
  %19 = shl i8 %18, 4
  %20 = load volatile i32, ptr %flags.i.i, align 4
  %21 = trunc i32 %20 to i8
  %conv6.i.i = and i8 %21, 32
  %bf.set.i.i = and i8 %19, -128
  %22 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i44.i.i = and i32 %22, 1
  %conv14.i.i = trunc i32 %and1.i44.i.i to i8
  %bf.value16.i.i = shl nuw nsw i8 %conv14.i.i, 6
  %bf.clear10.i.i = or i8 %conv6.i.i, %bf.set.i.i
  %bf.set11.i.i = or i8 %bf.clear10.i.i, %bf.value16.i.i
  %bf.set19.i.i = or i8 %bf.set11.i.i, 31
  %23 = ptrtoint ptr %added_by_user.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.set19.i.i, ptr %added_by_user.i.i, align 2
  %tobool.not.i.i = icmp ne ptr %11, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i44.i.i)
  %tobool24.not.i.i = icmp eq i32 %and1.i44.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool24.not.i.i, i1 false
  %dev25.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %11, i32 0, i32 1
  %cond.in.i.i = select i1 %or.cond.i.i, ptr %dev25.i.i, ptr %dev.i.i
  %24 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %25 = ptrtoint ptr %item.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cond.i.i, ptr %item.i, align 4
  %26 = ptrtoint ptr %ctx28.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ctx, ptr %ctx28.i.i, align 4
  %27 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nb, align 4
  %call.i56 = call i32 %28(ptr noundef nonnull %nb, i32 noundef %., ptr noundef nonnull %item.i) #9
  %and.i.i = and i32 %call.i56, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp sgt i32 %and.i.i, 1
  %sub.i.i = sub i32 1, %and.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %item.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool24.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool24.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %fdb_node = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %fdb.069, i32 0, i32 3
  %29 = ptrtoint ptr %fdb_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %fdb_node, align 16
  %tobool34.not = icmp eq ptr %30, null
  %add.ptr38 = getelementptr i8, ptr %30, i32 -16
  %tobool22.not72 = icmp eq ptr %add.ptr38, null
  %tobool22.not = or i1 %tobool34.not, %tobool22.not72
  br i1 %tobool22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %err.1 = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %spec.select.i.i, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %call.i57 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i57, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %for.end
  %call1.i58 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %31 = call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i64 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_switchdev_mdb_queue_one(ptr noundef %mdb_list, i32 noundef %id, ptr nocapture noundef readonly %mp, ptr noundef %orig_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %id1 = getelementptr inbounds %struct.switchdev_obj, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %id, ptr %id1, align 4
  %orig_dev3 = getelementptr inbounds %struct.switchdev_obj, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %orig_dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %orig_dev, ptr %orig_dev3, align 8
  %proto.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %proto.i, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %4, label %if.else14.i [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then9.i
  ]

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dst.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst.i, align 4
  %addr3.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %addr3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %addr3.i, align 4
  %arrayidx1.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %arrayidx2.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 94, ptr %arrayidx2.i.i, align 2
  %conv.i.i = trunc i32 %7 to i8
  %arrayidx3.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i.i, ptr %arrayidx3.i.i, align 1
  %shr.i.i = lshr i32 %7, 8
  %conv5.i.i = trunc i32 %shr.i.i to i8
  %arrayidx6.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5.i.i, ptr %arrayidx6.i.i, align 8
  %shr7.i.i = lshr i32 %7, 16
  %13 = trunc i32 %shr7.i.i to i8
  %conv9.i.i = and i8 %13, 127
  %arrayidx10.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.i.i, ptr %arrayidx10.i.i, align 1
  br label %br_switchdev_mdb_populate.exit

if.then9.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr12.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %addr12.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 51, ptr %addr12.i, align 4
  %arrayidx1.i31.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx1.i31.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 51, ptr %arrayidx1.i31.i, align 1
  %add.ptr.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1, i32 2
  %arrayidx2.i32.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx2.i32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.i32.i, align 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %add.ptr.i.i, align 2
  br label %br_switchdev_mdb_populate.exit

if.else14.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr15.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1
  %dst18.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %dst18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst18.i, align 4
  %22 = ptrtoint ptr %addr15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %addr15.i, align 4
  %add.ptr.i33.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %add.ptr.i33.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i33.i, align 2
  %add.ptr1.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr1.i.i, align 8
  br label %br_switchdev_mdb_populate.exit

br_switchdev_mdb_populate.exit:                   ; preds = %if.else14.i, %if.then9.i, %if.then.i
  %vid.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vid.i, align 2
  %vid22.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %vid22.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vid22.i, align 2
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mdb_list, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %30, ptr noundef %mdb_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %br_switchdev_mdb_populate.exit.cleanup_crit_edge

br_switchdev_mdb_populate.exit.cleanup_crit_edge: ; preds = %br_switchdev_mdb_populate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %br_switchdev_mdb_populate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %mdb_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %br_switchdev_mdb_populate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %br_switchdev_mdb_populate.exit.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @br_switchdev_set_port_flag.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../net/bridge/br_switchdev.c", i32 107, i32 4}
!2 = !{ptr @br_switchdev_set_port_flag.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../net/bridge/br_switchdev.c", i32 118, i32 4}
!4 = !{ptr @br_switchdev_tx_fwd_offload, !5, !"br_switchdev_tx_fwd_offload", i1 false, i1 false}
!5 = !{!"../net/bridge/br_switchdev.c", i32 12, i32 32}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/bridge/br_switchdev.c", i32 443, i32 29}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nbp_switchdev_add.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/bridge/br_switchdev.c", i32 236, i32 4}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/bridge/br_switchdev.c", i32 368, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/bridge/br_private.h", i32 1471, i32 9}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/bridge/br_private.h", i32 422, i32 3}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/bridge/br_private.h", i32 1477, i32 9}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../net/bridge/br_switchdev.c", i32 595, i32 2}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/bridge/br_switchdev.c", i32 618, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/bridge/br_switchdev.c", i32 632, i32 30}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/bridge/br_switchdev.c", i32 322, i32 2}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148707856, i64 2148707861, i64 2148707874, i64 2148707918, i64 2148707952, i64 2148707973}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2157999880}
!53 = !{i64 2149604425}
!54 = !{i8 0, i8 2}
!55 = !{i64 2149604691}
