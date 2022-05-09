; ModuleID = '/llk/IR_all_yes/net/bridge/br_cfm.c_pt.bc'
source_filename = "../net/bridge/br_cfm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.br_frame_type = type { i16, ptr, %struct.hlist_node }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.br_cfm_mep_create = type { i32, i32, i32 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.list_head = type { ptr, ptr }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.144, %union.anon.145, i16, i16 }
%union.anon.144 = type { %struct.in6_addr }
%union.anon.145 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.br_cfm_mep = type { %struct.hlist_node, i32, %struct.br_cfm_mep_create, %struct.br_cfm_mep_config, %struct.br_cfm_cc_config, %struct.br_cfm_cc_ccm_tx_info, %struct.hlist_head, ptr, i32, %struct.delayed_work, i32, i32, %struct.br_cfm_mep_status, i8, %struct.callback_head }
%struct.br_cfm_mep_config = type { i32, i32, %struct.mac_addr }
%struct.mac_addr = type { [6 x i8] }
%struct.br_cfm_cc_config = type { %struct.br_cfm_maid, i32, i8 }
%struct.br_cfm_maid = type { [48 x i8] }
%struct.br_cfm_cc_ccm_tx_info = type { %struct.mac_addr, i32, i8, i8, i8, i8, i8 }
%struct.br_cfm_mep_status = type { i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%union.anon.6 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.br_cfm_common_hdr = type { i8, i8, i8, i8 }
%struct.br_cfm_peer_mep = type { %struct.hlist_node, ptr, %struct.delayed_work, i32, %struct.br_cfm_cc_peer_status, i32, %struct.callback_head }
%struct.br_cfm_cc_peer_status = type { i8, i8, i8 }

@br_cfm_mep_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/bridge/br_cfm.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@br_cfm_mep_create.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bridge: VLAN domain not supported\00", [62 x i8] zeroinitializer }, align 32
@br_cfm_mep_create.__msg.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bridge: Invalid domain value\00", [35 x i8] zeroinitializer }, align 32
@br_cfm_mep_create.__msg.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bridge: Up-MEP not supported\00", [35 x i8] zeroinitializer }, align 32
@br_cfm_mep_create.__msg.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bridge: Invalid direction value\00", [32 x i8] zeroinitializer }, align 32
@br_cfm_mep_create.__msg.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bridge: Port is not related to bridge\00", [58 x i8] zeroinitializer }, align 32
@br_cfm_mep_create.__msg.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bridge: MEP instance already exists\00", [60 x i8] zeroinitializer }, align 32
@br_cfm_mep_create.__msg.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bridge: Only one Port MEP on a port allowed\00", [52 x i8] zeroinitializer }, align 32
@br_cfm_mep_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&mep->ccm_tx_dwork)->work)\00", [49 x i8] zeroinitializer }, align 32
@br_cfm_mep_create.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&mep->ccm_tx_dwork)->timer\00", [35 x i8] zeroinitializer }, align 32
@cfm_frame_type = internal global %struct.br_frame_type { i16 -30462, ptr @br_cfm_frame_rx, %struct.hlist_node zeroinitializer }, section ".data..read_mostly", align 4
@br_cfm_mep_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_cfm_mep_delete.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bridge: MEP instance does not exists\00", [59 x i8] zeroinitializer }, align 32
@br_cfm_mep_config_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_cfm_mep_config_set.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bridge: MEP instance does not exists\00", [59 x i8] zeroinitializer }, align 32
@br_cfm_cc_config_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_cfm_cc_config_set.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bridge: MEP instance does not exists\00", [59 x i8] zeroinitializer }, align 32
@br_cfm_cc_peer_mep_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_cfm_cc_peer_mep_add.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bridge: MEP instance does not exists\00", [59 x i8] zeroinitializer }, align 32
@br_cfm_cc_peer_mep_add.__msg.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bridge: Peer MEP-ID already exists\00", [61 x i8] zeroinitializer }, align 32
@br_cfm_cc_peer_mep_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&peer_mep->ccm_rx_dwork)->work)\00", [44 x i8] zeroinitializer }, align 32
@br_cfm_cc_peer_mep_add.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&peer_mep->ccm_rx_dwork)->timer\00", [62 x i8] zeroinitializer }, align 32
@br_cfm_cc_peer_mep_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_cfm_cc_peer_mep_remove.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bridge: MEP instance does not exists\00", [59 x i8] zeroinitializer }, align 32
@br_cfm_cc_peer_mep_remove.__msg.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bridge: Peer MEP-ID does not exists\00", [60 x i8] zeroinitializer }, align 32
@br_cfm_cc_rdi_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_cfm_cc_rdi_set.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bridge: MEP instance does not exists\00", [59 x i8] zeroinitializer }, align 32
@br_cfm_cc_ccm_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_cfm_cc_ccm_tx.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bridge: MEP instance does not exists\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@br_cfm_mep_count.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@br_cfm_peer_mep_count.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_cfm_peer_mep_count.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_cfm_port_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_mep_find_ifindex.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ccm_frame_build.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mep_delete_implementation.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_peer_mep_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ccm_rx_work_expired.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.ccm_tx_work_expired = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3300, i32 10000, i32 100000, i32 1000000, i32 10000000, i32 60000000, i32 600000000], [36 x i8] zeroinitializer }, align 32
@switch.table.br_cfm_cc_config_set = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 825, i32 2500, i32 25000, i32 250000, i32 2500000, i32 15000000, i32 150000000], [36 x i8] zeroinitializer }, align 32
@switch.table.br_cfm_cc_peer_mep_add = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 825, i32 2500, i32 25000, i32 250000, i32 2500000, i32 15000000, i32 150000000], [36 x i8] zeroinitializer }, align 32
@switch.table.ccm_rx_work_expired = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 825, i32 2500, i32 25000, i32 250000, i32 2500000, i32 15000000, i32 150000000], [36 x i8] zeroinitializer }, align 32
@switch.table.ccm_rx_timer_start = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 825, i32 2500, i32 25000, i32 250000, i32 2500000, i32 15000000, i32 150000000], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 505, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 508, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 513, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 518, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 523, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 529, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 535, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 544, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 559, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 604, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 625, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 647, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 684, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 691, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 702, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 723, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 730, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 752, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 772, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 827, i32 2 }
@___asan_gen_.106 = private constant [23 x i8] c"../net/bridge/br_cfm.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 180, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 695, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 723, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [33 x i8] c"switch.table.ccm_tx_work_expired\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [34 x i8] c"switch.table.br_cfm_cc_config_set\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [36 x i8] c"switch.table.br_cfm_cc_peer_mep_add\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [33 x i8] c"switch.table.ccm_rx_work_expired\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [32 x i8] c"switch.table.ccm_rx_timer_start\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @.str, ptr @.str.1, ptr @br_cfm_mep_create.__msg, ptr @br_cfm_mep_create.__msg.2, ptr @br_cfm_mep_create.__msg.3, ptr @br_cfm_mep_create.__msg.4, ptr @br_cfm_mep_create.__msg.5, ptr @br_cfm_mep_create.__msg.6, ptr @br_cfm_mep_create.__msg.7, ptr @br_cfm_mep_create.__key, ptr @.str.8, ptr @br_cfm_mep_create.__key.9, ptr @.str.10, ptr @br_cfm_mep_delete.__msg, ptr @br_cfm_mep_config_set.__msg, ptr @br_cfm_cc_config_set.__msg, ptr @br_cfm_cc_peer_mep_add.__msg, ptr @br_cfm_cc_peer_mep_add.__msg.11, ptr @br_cfm_cc_peer_mep_add.__key, ptr @.str.12, ptr @br_cfm_cc_peer_mep_add.__key.13, ptr @.str.14, ptr @br_cfm_cc_peer_mep_remove.__msg, ptr @br_cfm_cc_peer_mep_remove.__msg.15, ptr @br_cfm_cc_rdi_set.__msg, ptr @br_cfm_cc_ccm_tx.__msg, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @switch.table.ccm_tx_work_expired, ptr @switch.table.br_cfm_cc_config_set, ptr @switch.table.br_cfm_cc_peer_mep_add, ptr @switch.table.ccm_rx_work_expired, ptr @switch.table.ccm_rx_timer_start], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create.__msg.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create.__msg.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create.__msg.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create.__msg.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create.__msg.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create.__msg.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_create.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_delete.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_mep_config_set.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_config_set.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_peer_mep_add.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_peer_mep_add.__msg.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_peer_mep_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_peer_mep_add.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_peer_mep_remove.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_peer_mep_remove.__msg.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_rdi_set.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_cfm_cc_ccm_tx.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccm_tx_work_expired to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.br_cfm_cc_config_set to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.br_cfm_cc_peer_mep_add to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccm_rx_work_expired to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ccm_rx_timer_start to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_mep_create(ptr noundef %br, i32 noundef %instance, ptr nocapture noundef readonly %create, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b232 = load i1, ptr @br_cfm_mep_create.__already_done, align 1
  br i1 %.b232, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !99

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_mep_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 505) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %create, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body48 [
    i32 1, label %do.body38
    i32 0, label %if.end56
  ]

do.body38:                                        ; preds = %if.end29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_mep_create.__msg) #8
  %tobool39.not = icmp eq ptr %extack, null
  br i1 %tobool39.not, label %do.body38.cleanup_crit_edge, label %if.then40

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @br_cfm_mep_create.__msg, ptr %extack, align 4
  br label %cleanup

do.body48:                                        ; preds = %if.end29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_mep_create.__msg.2) #8
  %tobool50.not = icmp eq ptr %extack, null
  br i1 %tobool50.not, label %do.body48.cleanup_crit_edge, label %if.then51

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then51:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @br_cfm_mep_create.__msg.2, ptr %extack, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end29
  %direction = getelementptr inbounds %struct.br_cfm_mep_create, ptr %create, i32 0, i32 1
  %5 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %direction, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %6, label %do.body71 [
    i32 1, label %do.body59
    i32 0, label %if.end79
  ]

do.body59:                                        ; preds = %if.end56
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_mep_create.__msg.3) #8
  %tobool61.not = icmp eq ptr %extack, null
  br i1 %tobool61.not, label %do.body59.cleanup_crit_edge, label %if.then62

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then62:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @br_cfm_mep_create.__msg.3, ptr %extack, align 4
  br label %cleanup

do.body71:                                        ; preds = %if.end56
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_mep_create.__msg.4) #8
  %tobool73.not = icmp eq ptr %extack, null
  br i1 %tobool73.not, label %do.body71.cleanup_crit_edge, label %if.then74

do.body71.cleanup_crit_edge:                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then74:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @br_cfm_mep_create.__msg.4, ptr %extack, align 4
  br label %cleanup

if.end79:                                         ; preds = %if.end56
  %ifindex = getelementptr inbounds %struct.br_cfm_mep_create, ptr %create, i32 0, i32 2
  %10 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex, align 4
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end79
  %.pn.in.i = phi ptr [ %port_list.i, %if.end79 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.body83_crit_edge, label %for.body.i

for.cond.i.do.body83_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

for.body.i:                                       ; preds = %for.cond.i
  %dev.i = getelementptr i8, ptr %.pn.i, i32 -8
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %ifindex2.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ifindex2.i, align 4
  %cmp3.i = icmp eq i32 %16, %11
  br i1 %cmp3.i, label %br_mep_get_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

br_mep_get_port.exit:                             ; preds = %for.body.i
  %port.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool81.not = icmp eq ptr %port.0.le.i, null
  br i1 %tobool81.not, label %br_mep_get_port.exit.do.body83_crit_edge, label %if.end91

br_mep_get_port.exit.do.body83_crit_edge:         ; preds = %br_mep_get_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

do.body83:                                        ; preds = %br_mep_get_port.exit.do.body83_crit_edge, %for.cond.i.do.body83_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_mep_create.__msg.5) #8
  %tobool85.not = icmp eq ptr %extack, null
  br i1 %tobool85.not, label %do.body83.cleanup_crit_edge, label %if.then86

do.body83.cleanup_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then86:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @br_cfm_mep_create.__msg.5, ptr %extack, align 4
  br label %cleanup

if.end91:                                         ; preds = %br_mep_get_port.exit
  %mep_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  br label %for.cond.i233

for.cond.i233:                                    ; preds = %for.body.i234.for.cond.i233_crit_edge, %if.end91
  %mep.0.in.i = phi ptr [ %mep_list.i, %if.end91 ], [ %mep.0.i, %for.body.i234.for.cond.i233_crit_edge ]
  %18 = ptrtoint ptr %mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %mep.0.i = load ptr, ptr %mep.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %mep.0.i, null
  br i1 %tobool2.not.i, label %if.then106, label %for.body.i234

for.body.i234:                                    ; preds = %for.cond.i233
  %instance3.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %instance3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %instance3.i, align 4
  %cmp.i = icmp eq i32 %20, %instance
  br i1 %cmp.i, label %do.body95, label %for.body.i234.for.cond.i233_crit_edge

for.body.i234.for.cond.i233_crit_edge:            ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i233

do.body95:                                        ; preds = %for.body.i234
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_mep_create.__msg.6) #8
  %tobool97.not = icmp eq ptr %extack, null
  br i1 %tobool97.not, label %do.body95.cleanup_crit_edge, label %if.then98

do.body95.cleanup_crit_edge:                      ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then98:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @br_cfm_mep_create.__msg.6, ptr %extack, align 4
  br label %cleanup

if.then106:                                       ; preds = %for.cond.i233
  %call108 = tail call fastcc ptr @br_mep_find_ifindex(ptr noundef %br, i32 noundef %11)
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %if.end120, label %do.body111

do.body111:                                       ; preds = %if.then106
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_mep_create.__msg.7) #8
  %tobool113.not = icmp eq ptr %extack, null
  br i1 %tobool113.not, label %do.body111.cleanup_crit_edge, label %if.then114

do.body111.cleanup_crit_edge:                     ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then114:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @br_cfm_mep_create.__msg.7, ptr %extack, align 4
  br label %cleanup

if.end120:                                        ; preds = %if.then106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 248) #11
  %tobool122.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool122.not, label %if.end120.cleanup_crit_edge, label %if.end124

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end124:                                        ; preds = %if.end120
  %create125 = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %create125, ptr %create, i32 12)
  %instance126 = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %instance126 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %instance, ptr %instance126, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !100
  %b_port152 = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %b_port152 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %port.0.le.i, ptr %b_port152, align 8
  %peer_mep_list = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %peer_mep_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %peer_mep_list, align 4
  %ccm_tx_dwork = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %ccm_tx_dwork, i32 noundef 0) #8
  %28 = ptrtoint ptr %ccm_tx_dwork to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %ccm_tx_dwork, align 8
  %lockdep_map = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @br_cfm_mep_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry172 = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %29 = ptrtoint ptr %entry172 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry172, ptr %entry172, align 4
  %prev.i = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry172, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 2
  %31 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ccm_tx_work_expired, ptr %func, align 4
  %timer = getelementptr inbounds %struct.br_cfm_mep, ptr %call7.i.i, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @br_cfm_mep_create.__key.9) #8
  %32 = ptrtoint ptr %mep_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %mep_list.i, align 4
  %tobool.not.i.not = icmp eq ptr %33, null
  br i1 %tobool.not.i.not, label %if.then185, label %if.end124.if.end186_crit_edge

if.end124.if.end186_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

if.then185:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_add_frame(ptr noundef %br, ptr noundef nonnull @cfm_frame_type) #8
  br label %if.end186

if.end186:                                        ; preds = %if.then185, %if.end124.if.end186_crit_edge
  tail call fastcc void @hlist_add_tail_rcu(ptr noundef nonnull %call7.i.i, ptr noundef %mep_list.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end186, %if.end120.cleanup_crit_edge, %if.then114, %do.body111.cleanup_crit_edge, %if.then98, %do.body95.cleanup_crit_edge, %if.then86, %do.body83.cleanup_crit_edge, %if.then74, %do.body71.cleanup_crit_edge, %if.then62, %do.body59.cleanup_crit_edge, %if.then51, %do.body48.cleanup_crit_edge, %if.then40, %do.body38.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end186 ], [ -22, %if.then40 ], [ -22, %do.body38.cleanup_crit_edge ], [ -22, %if.then51 ], [ -22, %do.body48.cleanup_crit_edge ], [ -22, %if.then62 ], [ -22, %do.body59.cleanup_crit_edge ], [ -22, %if.then74 ], [ -22, %do.body71.cleanup_crit_edge ], [ -22, %if.then86 ], [ -22, %do.body83.cleanup_crit_edge ], [ -17, %if.then98 ], [ -17, %do.body95.cleanup_crit_edge ], [ -22, %if.then114 ], [ -22, %do.body111.cleanup_crit_edge ], [ -12, %if.end120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_mep_find_ifindex(ptr noundef %br, i32 noundef %ifindex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true2.do.end_crit_edge, label %land.lhs.true5

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %.b39 = load i1, ptr @br_mep_find_ifindex.__warned, align 1
  br i1 %.b39, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_mep_find_ifindex.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 24, ptr noundef nonnull @.str.16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mep_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %mep.0.in = phi ptr [ %mep_list, %do.end ], [ %mep.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %mep.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0 = load volatile ptr, ptr %mep.0.in, align 4
  %tobool14.not = icmp eq ptr %mep.0, null
  br i1 %tobool14.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %ifindex15 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %ifindex15 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ifindex15, align 4
  %cmp = icmp eq i32 %2, %ifindex
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret ptr %mep.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccm_tx_work_expired(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %ccm_tx_end = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %ccm_tx_end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ccm_tx_end, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %period = getelementptr i8, ptr %work, i32 -24
  %3 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %period, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cc_ccm_tx_info1 = getelementptr i8, ptr %work, i32 -32
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 101, i32 noundef 2592) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %if.end.i17

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i17:                                       ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end.i17.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i17.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i17
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i17.rcu_read_lock.exit.i_crit_edge
  %b_port1.i = getelementptr i8, ptr %work, i32 -8
  %8 = ptrtoint ptr %b_port1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %b_port1.i, align 4
  %call3.i18 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i18)
  %tobool4.not.i = icmp eq i32 %call3.i18, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b102.i = load i1, ptr @ccm_frame_build.__warned, align 1
  br i1 %.b102.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ccm_frame_build.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 180, ptr noundef nonnull @.str.18) #8
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %9, null
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %do.end12.i
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  %call.i103.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i103.i, label %if.then15.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i106.i

if.then15.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i106.i:                             ; preds = %if.then15.i
  %call1.i104.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104.i)
  %tobool.not.i105.i = icmp eq i32 %call1.i104.i, 0
  br i1 %tobool.not.i105.i, label %land.lhs.true.i106.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i108.i

land.lhs.true.i106.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i108.i:                            ; preds = %land.lhs.true.i106.i
  %.b4.i107.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i107.i, label %land.lhs.true2.i108.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i109.i

land.lhs.true2.i108.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i109.i:                                   ; preds = %land.lhs.true2.i108.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i109.i, %land.lhs.true2.i108.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i106.i.rcu_read_unlock.exit.i_crit_edge, %if.then15.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %10 = tail call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i110.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i110.i to ptr
  %preempt_count.i.i.i.i111.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i111.i, align 4
  %sub.i.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i111.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end4

if.end16.i:                                       ; preds = %do.end12.i
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = getelementptr inbounds %struct.anon.4, ptr %call.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %16, align 8
  %call.i112.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i112.i, label %if.end16.i.rcu_read_unlock.exit122.i_crit_edge, label %land.lhs.true.i115.i

if.end16.i.rcu_read_unlock.exit122.i_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit122.i

land.lhs.true.i115.i:                             ; preds = %if.end16.i
  %call1.i113.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113.i)
  %tobool.not.i114.i = icmp eq i32 %call1.i113.i, 0
  br i1 %tobool.not.i114.i, label %land.lhs.true.i115.i.rcu_read_unlock.exit122.i_crit_edge, label %land.lhs.true2.i117.i

land.lhs.true.i115.i.rcu_read_unlock.exit122.i_crit_edge: ; preds = %land.lhs.true.i115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit122.i

land.lhs.true2.i117.i:                            ; preds = %land.lhs.true.i115.i
  %.b4.i116.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i116.i, label %land.lhs.true2.i117.i.rcu_read_unlock.exit122.i_crit_edge, label %if.then.i118.i

land.lhs.true2.i117.i.rcu_read_unlock.exit122.i_crit_edge: ; preds = %land.lhs.true2.i117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit122.i

if.then.i118.i:                                   ; preds = %land.lhs.true2.i117.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit122.i

rcu_read_unlock.exit122.i:                        ; preds = %if.then.i118.i, %land.lhs.true2.i117.i.rcu_read_unlock.exit122.i_crit_edge, %land.lhs.true.i115.i.rcu_read_unlock.exit122.i_crit_edge, %if.end16.i.rcu_read_unlock.exit122.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %18 = tail call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i119.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i119.i to ptr
  %preempt_count.i.i.i.i120.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i120.i, align 4
  %sub.i.i.i121.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i121.i, ptr %preempt_count.i.i.i.i120.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %22 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -30462, ptr %protocol.i, align 8
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 6
  %23 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %priority.i, align 4
  %call17.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 14) #8
  %24 = ptrtoint ptr %cc_ccm_tx_info1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cc_ccm_tx_info1, align 4
  %26 = ptrtoint ptr %call17.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call17.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %work, i32 -28
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call17.i, i32 4
  %29 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr1.i.i, align 2
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call17.i, i32 0, i32 1
  %config.i = getelementptr i8, ptr %work, i32 -104
  %unicast_mac.i = getelementptr i8, ptr %work, i32 -96
  %30 = ptrtoint ptr %unicast_mac.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unicast_mac.i, align 4
  %32 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %h_source.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %work, i32 -92
  %33 = ptrtoint ptr %add.ptr.i123.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i123.i, align 2
  %add.ptr1.i124.i = getelementptr %struct.ethhdr, ptr %call17.i, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %add.ptr1.i124.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i124.i, align 2
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call17.i, i32 0, i32 2
  %36 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 -30462, ptr %h_proto.i, align 1
  %call22.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #8
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %config.i, align 4
  %.tr.i = trunc i32 %38 to i8
  %conv.i = shl i8 %.tr.i, 5
  %39 = ptrtoint ptr %call22.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %call22.i, align 1
  %opcode.i = getelementptr inbounds %struct.br_cfm_common_hdr, ptr %call22.i, i32 0, i32 1
  %40 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %opcode.i, align 1
  %rdi.i = getelementptr i8, ptr %work, i32 111
  %41 = ptrtoint ptr %rdi.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rdi.i, align 1, !range !103
  %43 = shl nuw i8 %42, 7
  %cc_config.i = getelementptr i8, ptr %work, i32 -88
  %exp_interval.i = getelementptr i8, ptr %work, i32 -40
  %44 = ptrtoint ptr %exp_interval.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %exp_interval.i, align 4
  %switch.tableidx = add i32 %45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %46 = icmp ult i32 %switch.tableidx, 7
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %retval.0.i.i = select i1 %46, i8 %switch.offset, i8 0
  %conv28.i = or i8 %retval.0.i.i, %43
  %flags.i = getelementptr inbounds %struct.br_cfm_common_hdr, ptr %call22.i, i32 0, i32 2
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv28.i, ptr %flags.i, align 1
  %tlv_offset.i = getelementptr inbounds %struct.br_cfm_common_hdr, ptr %call22.i, i32 0, i32 3
  %48 = ptrtoint ptr %tlv_offset.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 70, ptr %tlv_offset.i, align 1
  %call29.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #8
  %seq_no_update.i = getelementptr i8, ptr %work, i32 -20
  %49 = ptrtoint ptr %seq_no_update.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %seq_no_update.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool30.not.i = icmp eq i8 %50, 0
  br i1 %tobool30.not.i, label %if.else.i19, label %if.then31.i

if.then31.i:                                      ; preds = %rcu_read_unlock.exit122.i
  call void @__sanitizer_cov_trace_pc() #10
  %ccm_tx_snumber.i = getelementptr i8, ptr %work, i32 100
  %51 = ptrtoint ptr %ccm_tx_snumber.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ccm_tx_snumber.i, align 4
  %53 = ptrtoint ptr %call29.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %call29.i, align 4
  %54 = load i32, ptr %ccm_tx_snumber.i, align 4
  %add.i = add i32 %54, 1
  store i32 %add.i, ptr %ccm_tx_snumber.i, align 4
  br label %if.end33.i

if.else.i19:                                      ; preds = %rcu_read_unlock.exit122.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %call29.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %call29.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i19, %if.then31.i
  %call34.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #8
  %mepid36.i = getelementptr i8, ptr %work, i32 -100
  %56 = ptrtoint ptr %mepid36.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mepid36.i, align 4
  %conv37.i = trunc i32 %57 to i16
  %58 = ptrtoint ptr %call34.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv37.i, ptr %call34.i, align 2
  %call38.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 48) #8
  %59 = call ptr @memcpy(ptr %call38.i, ptr %cc_config.i, i32 48)
  %call43.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 16) #8
  %60 = call ptr @memset(ptr %call43.i, i32 0, i32 16)
  %port_tlv.i = getelementptr i8, ptr %work, i32 -17
  %61 = ptrtoint ptr %port_tlv.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %port_tlv.i, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool44.not.i = icmp eq i8 %62, 0
  br i1 %tobool44.not.i, label %if.end33.i.if.end49.i_crit_edge, label %if.then45.i

if.end33.i.if.end49.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %call46.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #8
  %port_tlv_value.i = getelementptr i8, ptr %work, i32 -16
  %63 = ptrtoint ptr %port_tlv_value.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %port_tlv_value.i, align 4
  %conv47.i = zext i8 %64 to i32
  %or48.i = or i32 %conv47.i, 33554688
  %65 = ptrtoint ptr %call46.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or48.i, ptr %call46.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i, %if.end33.i.if.end49.i_crit_edge
  %if_tlv.i = getelementptr i8, ptr %work, i32 -19
  %66 = ptrtoint ptr %if_tlv.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %if_tlv.i, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool50.not.i = icmp eq i8 %67, 0
  br i1 %tobool50.not.i, label %if.end49.i.if.then3_crit_edge, label %if.then51.i

if.end49.i.if.then3_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then51.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %call52.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #8
  %if_tlv_value.i = getelementptr i8, ptr %work, i32 -18
  %68 = ptrtoint ptr %if_tlv_value.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %if_tlv_value.i, align 2
  %conv53.i = zext i8 %69 to i32
  %or55.i = or i32 %conv53.i, 67109120
  %70 = ptrtoint ptr %call52.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or55.i, ptr %call52.i, align 4
  br label %if.then3

if.then3:                                         ; preds = %if.then51.i, %if.end49.i.if.then3_crit_edge
  %call57.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #8
  %71 = ptrtoint ptr %call57.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %call57.i, align 1
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %72 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %74 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %75 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 20
  %76 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %call.i21 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i.i) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %rcu_read_unlock.exit.i, %if.end.if.end4_crit_edge
  %exp_interval = getelementptr i8, ptr %work, i32 -40
  %77 = ptrtoint ptr %exp_interval to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %exp_interval, align 4
  %switch.tableidx27 = add i32 %78, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx27)
  %79 = icmp ult i32 %switch.tableidx27, 7
  br i1 %79, label %switch.lookup26, label %if.end4.interval_to_us.exit_crit_edge

if.end4.interval_to_us.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %interval_to_us.exit

switch.lookup26:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ccm_tx_work_expired, i32 0, i32 %switch.tableidx27
  %80 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %80)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %interval_to_us.exit

interval_to_us.exit:                              ; preds = %switch.lookup26, %if.end4.interval_to_us.exit_crit_edge
  %retval.0.i22 = phi i32 [ 0, %if.end4.interval_to_us.exit_crit_edge ], [ %switch.load, %switch.lookup26 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %81 = load ptr, ptr @system_wq, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %retval.0.i22) #8
  %call.i23 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %work, i32 noundef %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %interval_to_us.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_add_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hlist_add_tail_rcu(ptr noundef %n, ptr noundef %h) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %last.0 = phi ptr [ null, %entry ], [ %i.0, %for.cond.for.cond_crit_edge ]
  %i.0.in = phi ptr [ %h, %entry ], [ %i.0, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %i.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %i.0 = load ptr, ptr %i.0.in, align 4
  %tobool.not = icmp eq ptr %i.0, null
  br i1 %tobool.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tobool1.not = icmp eq ptr %last.0, null
  br i1 %tobool1.not, label %if.else47, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %last.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %last.0, align 4
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %n, align 4
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %n, i32 0, i32 1
  %4 = ptrtoint ptr %pprev to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %last.0, ptr %pprev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !104
  br label %if.end48.sink.split

if.else47:                                        ; preds = %for.end
  %5 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %h, align 4
  %7 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %n, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %n, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %h, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !105
  %9 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %n, ptr %h, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else47.if.end48_crit_edge, label %do.body49.i

if.else47.if.end48_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.body49.i:                                      ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %do.body49.i, %if.then
  %pprev51.i.sink = phi ptr [ %pprev51.i, %do.body49.i ], [ %last.0, %if.then ]
  %10 = ptrtoint ptr %pprev51.i.sink to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %n, ptr %pprev51.i.sink, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.else47.if.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_mep_delete(ptr noundef %br, i32 noundef %instance, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @br_cfm_mep_delete.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !99

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_mep_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 600, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 600) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mep_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29
  %mep.0.in.i = phi ptr [ %mep_list.i, %if.end29 ], [ %mep.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0.i = load ptr, ptr %mep.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %mep.0.i, null
  br i1 %tobool2.not.i, label %do.body40, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %instance3.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %instance3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %instance3.i, align 4
  %cmp.i = icmp eq i32 %2, %instance
  br i1 %cmp.i, label %if.end46, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body40:                                        ; preds = %for.cond.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_mep_delete.__msg) #8
  %tobool41.not = icmp eq ptr %extack, null
  br i1 %tobool41.not, label %do.body40.cleanup_crit_edge, label %if.then42

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @br_cfm_mep_delete.__msg, ptr %extack, align 4
  br label %cleanup

if.end46:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mep_delete_implementation(ptr noundef %br, ptr noundef nonnull %mep.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then42, %do.body40.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -2, %if.then42 ], [ -2, %do.body40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mep_delete_implementation(ptr noundef %br, ptr noundef %mep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b111 = load i1, ptr @mep_delete_implementation.__already_done, align 1
  br i1 %.b111, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !99

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mep_delete_implementation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 575, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 575) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %peer_mep_list = getelementptr inbounds %struct.br_cfm_mep, ptr %mep, i32 0, i32 6
  %0 = ptrtoint ptr %peer_mep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer_mep_list, align 4
  %tobool40.not117 = icmp eq ptr %1, null
  br i1 %tobool40.not117, label %if.end29.for.end_crit_edge, label %if.end29.land.rhs41_crit_edge

if.end29.land.rhs41_crit_edge:                    ; preds = %if.end29
  br label %land.rhs41

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs41:                                       ; preds = %hlist_del_rcu.exit.land.rhs41_crit_edge, %if.end29.land.rhs41_crit_edge
  %peer_mep.0118 = phi ptr [ %3, %hlist_del_rcu.exit.land.rhs41_crit_edge ], [ %1, %if.end29.land.rhs41_crit_edge ]
  %2 = ptrtoint ptr %peer_mep.0118 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_mep.0118, align 4
  %ccm_rx_dwork = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0118, i32 0, i32 2
  %call45 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ccm_rx_dwork) #8
  %4 = ptrtoint ptr %peer_mep.0118 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer_mep.0118, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %peer_mep.0118, i32 0, i32 1
  %6 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %land.rhs41.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

land.rhs41.hlist_del_rcu.exit_crit_edge:          ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %land.rhs41.hlist_del_rcu.exit_crit_edge
  %10 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %rcu = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0118, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 124 to ptr)) #8
  %tobool40.not = icmp eq ptr %3, null
  br i1 %tobool40.not, label %hlist_del_rcu.exit.for.end_crit_edge, label %hlist_del_rcu.exit.land.rhs41_crit_edge

hlist_del_rcu.exit.land.rhs41_crit_edge:          ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs41

hlist_del_rcu.exit.for.end_crit_edge:             ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %hlist_del_rcu.exit.for.end_crit_edge, %if.end29.for.end_crit_edge
  %ccm_tx_dwork = getelementptr inbounds %struct.br_cfm_mep, ptr %mep, i32 0, i32 9
  %call66 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ccm_tx_dwork) #8
  %b_port = getelementptr inbounds %struct.br_cfm_mep, ptr %mep, i32 0, i32 7
  %11 = ptrtoint ptr %b_port to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %b_port, align 4
  %12 = ptrtoint ptr %mep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mep, align 4
  %pprev2.i.i112 = getelementptr inbounds %struct.hlist_node, ptr %mep, i32 0, i32 1
  %14 = ptrtoint ptr %pprev2.i.i112 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i112, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i113 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i113, label %for.end.hlist_del_rcu.exit116_crit_edge, label %do.body13.i.i115

for.end.hlist_del_rcu.exit116_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_rcu.exit116

do.body13.i.i115:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i114 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i114 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i114, align 4
  br label %hlist_del_rcu.exit116

hlist_del_rcu.exit116:                            ; preds = %do.body13.i.i115, %for.end.hlist_del_rcu.exit116_crit_edge
  %18 = ptrtoint ptr %pprev2.i.i112 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i112, align 4
  %tobool82.not = icmp eq ptr %mep, null
  br i1 %tobool82.not, label %hlist_del_rcu.exit116.if.end88_crit_edge, label %do.end86

hlist_del_rcu.exit116.if.end88_crit_edge:         ; preds = %hlist_del_rcu.exit116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

do.end86:                                         ; preds = %hlist_del_rcu.exit116
  call void @__sanitizer_cov_trace_pc() #10
  %rcu87 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep, i32 0, i32 14
  tail call void @kvfree_call_rcu(ptr noundef %rcu87, ptr noundef nonnull inttoptr (i32 240 to ptr)) #8
  br label %if.end88

if.end88:                                         ; preds = %do.end86, %hlist_del_rcu.exit116.if.end88_crit_edge
  %mep_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  %19 = ptrtoint ptr %mep_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %mep_list, align 4
  %tobool.not.i.not = icmp eq ptr %20, null
  br i1 %tobool.not.i.not, label %if.then93, label %if.end88.if.end94_crit_edge

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_del_frame(ptr noundef %br, ptr noundef nonnull @cfm_frame_type) #8
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end88.if.end94_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_mep_config_set(ptr nocapture noundef readonly %br, i32 noundef %instance, ptr nocapture noundef readonly %config, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @br_cfm_mep_config_set.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !99

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_mep_config_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 621, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 621) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mep_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29
  %mep.0.in.i = phi ptr [ %mep_list.i, %if.end29 ], [ %mep.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0.i = load ptr, ptr %mep.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %mep.0.i, null
  br i1 %tobool2.not.i, label %do.body40, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %instance3.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %instance3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %instance3.i, align 4
  %cmp.i = icmp eq i32 %2, %instance
  br i1 %cmp.i, label %if.end46, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body40:                                        ; preds = %for.cond.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_mep_config_set.__msg) #8
  %tobool41.not = icmp eq ptr %extack, null
  br i1 %tobool41.not, label %do.body40.cleanup_crit_edge, label %if.then42

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @br_cfm_mep_config_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end46:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %config47 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %config47, ptr %config, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then42, %do.body40.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -2, %if.then42 ], [ -2, %do.body40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_cc_config_set(ptr nocapture noundef readonly %br, i32 noundef %instance, ptr nocapture noundef readonly %config, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b135 = load i1, ptr @br_cfm_cc_config_set.__already_done, align 1
  br i1 %.b135, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !99

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_cc_config_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 643, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 643) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mep_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29
  %mep.0.in.i = phi ptr [ %mep_list.i, %if.end29 ], [ %mep.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0.i = load ptr, ptr %mep.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %mep.0.i, null
  br i1 %tobool2.not.i, label %do.body40, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %instance3.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %instance3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %instance3.i, align 4
  %cmp.i = icmp eq i32 %2, %instance
  br i1 %cmp.i, label %if.end46, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body40:                                        ; preds = %for.cond.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_cc_config_set.__msg) #8
  %tobool41.not = icmp eq ptr %extack, null
  br i1 %tobool41.not, label %do.body40.cleanup_crit_edge, label %if.then42

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @br_cfm_cc_config_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end46:                                         ; preds = %for.body.i
  %cc_config = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(56) %config, ptr noundef dereferenceable(56) %cc_config, i32 56) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.end46.cleanup_crit_edge, label %if.end49

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end46
  %enable = getelementptr inbounds %struct.br_cfm_cc_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool50.not = icmp eq i8 %5, 0
  br i1 %tobool50.not, label %if.end49.land.lhs.true72_crit_edge, label %land.lhs.true

if.end49.land.lhs.true72_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true72

land.lhs.true:                                    ; preds = %if.end49
  %enable52 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %enable52 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable52, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool53.not = icmp eq i8 %7, 0
  br i1 %tobool53.not, label %if.then54, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then54:                                        ; preds = %land.lhs.true
  %peer_mep_list = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 6
  %8 = ptrtoint ptr %peer_mep_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %peer_mep.0142 = load ptr, ptr %peer_mep_list, align 4
  %tobool58.not143 = icmp eq ptr %peer_mep.0142, null
  br i1 %tobool58.not143, label %if.then54.if.end69_crit_edge, label %if.then54.for.body_crit_edge

if.then54.for.body_crit_edge:                     ; preds = %if.then54
  br label %for.body

if.then54.if.end69_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

for.body:                                         ; preds = %interval_to_us.exit.i.i.for.body_crit_edge, %if.then54.for.body_crit_edge
  %peer_mep.0144 = phi ptr [ %peer_mep.0, %interval_to_us.exit.i.i.for.body_crit_edge ], [ %peer_mep.0142, %if.then54.for.body_crit_edge ]
  %cc_status.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0144, i32 0, i32 4
  %9 = call ptr @memset(ptr %cc_status.i, i32 0, i32 3)
  %ccm_rx_count_miss.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0144, i32 0, i32 5
  %10 = ptrtoint ptr %ccm_rx_count_miss.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ccm_rx_count_miss.i, align 4
  %mep.i.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0144, i32 0, i32 1
  %11 = ptrtoint ptr %mep.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mep.i.i, align 4
  %exp_interval.i.i = getelementptr inbounds %struct.br_cfm_mep, ptr %12, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %exp_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %exp_interval.i.i, align 4
  %switch.tableidx = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 7
  br i1 %15, label %switch.lookup, label %for.body.interval_to_us.exit.i.i_crit_edge

for.body.interval_to_us.exit.i.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %interval_to_us.exit.i.i

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.br_cfm_cc_config_set, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %interval_to_us.exit.i.i

interval_to_us.exit.i.i:                          ; preds = %switch.lookup, %for.body.interval_to_us.exit.i.i_crit_edge
  %retval.0.i5.i.i = phi i32 [ 0, %for.body.interval_to_us.exit.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call3.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %retval.0.i5.i.i) #8
  %ccm_rx_dwork.i.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0144, i32 0, i32 2
  %call.i6.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %ccm_rx_dwork.i.i, i32 noundef %call3.i.i.i) #8
  %18 = ptrtoint ptr %peer_mep.0144 to i32
  call void @__asan_load4_noabort(i32 %18)
  %peer_mep.0 = load ptr, ptr %peer_mep.0144, align 4
  %tobool58.not = icmp eq ptr %peer_mep.0, null
  br i1 %tobool58.not, label %interval_to_us.exit.i.i.if.end69_crit_edge, label %interval_to_us.exit.i.i.for.body_crit_edge

interval_to_us.exit.i.i.for.body_crit_edge:       ; preds = %interval_to_us.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

interval_to_us.exit.i.i.if.end69_crit_edge:       ; preds = %interval_to_us.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end69:                                         ; preds = %interval_to_us.exit.i.i.if.end69_crit_edge, %if.then54.if.end69_crit_edge, %land.lhs.true.if.end69_crit_edge
  %19 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %19)
  %.pr = load i8, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool71.not = icmp eq i8 %.pr, 0
  br i1 %tobool71.not, label %if.end69.land.lhs.true72_crit_edge, label %if.end69.if.end106_crit_edge

if.end69.if.end106_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end69.land.lhs.true72_crit_edge:               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true72

land.lhs.true72:                                  ; preds = %if.end69.land.lhs.true72_crit_edge, %if.end49.land.lhs.true72_crit_edge
  %enable74 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %enable74 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enable74, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool75.not = icmp eq i8 %21, 0
  br i1 %tobool75.not, label %land.lhs.true72.if.end106_crit_edge, label %if.then76

land.lhs.true72.if.end106_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.then76:                                        ; preds = %land.lhs.true72
  %peer_mep_list78 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 6
  %22 = ptrtoint ptr %peer_mep_list78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %peer_mep.1145 = load ptr, ptr %peer_mep_list78, align 4
  %tobool90.not146 = icmp eq ptr %peer_mep.1145, null
  br i1 %tobool90.not146, label %if.then76.if.end106_crit_edge, label %if.then76.for.body91_crit_edge

if.then76.for.body91_crit_edge:                   ; preds = %if.then76
  br label %for.body91

if.then76.if.end106_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %if.then76.for.body91_crit_edge
  %peer_mep.1147 = phi ptr [ %peer_mep.1, %for.body91.for.body91_crit_edge ], [ %peer_mep.1145, %if.then76.for.body91_crit_edge ]
  %ccm_rx_dwork.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.1147, i32 0, i32 2
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ccm_rx_dwork.i) #8
  %23 = ptrtoint ptr %peer_mep.1147 to i32
  call void @__asan_load4_noabort(i32 %23)
  %peer_mep.1 = load ptr, ptr %peer_mep.1147, align 4
  %tobool90.not = icmp eq ptr %peer_mep.1, null
  br i1 %tobool90.not, label %for.body91.if.end106_crit_edge, label %for.body91.for.body91_crit_edge

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body91

for.body91.if.end106_crit_edge:                   ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end106:                                        ; preds = %for.body91.if.end106_crit_edge, %if.then76.if.end106_crit_edge, %land.lhs.true72.if.end106_crit_edge, %if.end69.if.end106_crit_edge
  %24 = call ptr @memcpy(ptr %cc_config, ptr %config, i32 56)
  %ccm_rx_snumber = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 11
  %25 = ptrtoint ptr %ccm_rx_snumber to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ccm_rx_snumber, align 4
  %ccm_tx_snumber = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 10
  %26 = ptrtoint ptr %ccm_tx_snumber to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %ccm_tx_snumber, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.end46.cleanup_crit_edge, %if.then42, %do.body40.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end106 ], [ -2, %if.then42 ], [ -2, %do.body40.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_cc_peer_mep_add(ptr nocapture noundef readonly %br, i32 noundef %instance, i32 noundef %mepid, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b109 = load i1, ptr @br_cfm_cc_peer_mep_add.__already_done, align 1
  br i1 %.b109, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !99

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_cc_peer_mep_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 680, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 680) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mep_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29
  %mep.0.in.i = phi ptr [ %mep_list.i, %if.end29 ], [ %mep.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0.i = load ptr, ptr %mep.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %mep.0.i, null
  br i1 %tobool2.not.i, label %do.body40, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %instance3.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %instance3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %instance3.i, align 4
  %cmp.i = icmp eq i32 %2, %instance
  br i1 %cmp.i, label %if.end46, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body40:                                        ; preds = %for.cond.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_cc_peer_mep_add.__msg) #8
  %tobool41.not = icmp eq ptr %extack, null
  br i1 %tobool41.not, label %do.body40.cleanup_crit_edge, label %if.then42

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @br_cfm_cc_peer_mep_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end46:                                         ; preds = %for.body.i
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i, label %if.end46.do.end.i_crit_edge, label %land.lhs.true.i

if.end46.do.end.i_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end46
  %call1.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b39.i = load i1, ptr @br_peer_mep_find.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_peer_mep_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 37, ptr noundef nonnull @.str.16) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end46.do.end.i_crit_edge
  %peer_mep_list.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 6
  br label %for.cond.i110

for.cond.i110:                                    ; preds = %for.body.i112.for.cond.i110_crit_edge, %do.end.i
  %peer_mep.0.in.i = phi ptr [ %peer_mep_list.i, %do.end.i ], [ %peer_mep.0.i, %for.body.i112.for.cond.i110_crit_edge ]
  %4 = ptrtoint ptr %peer_mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %peer_mep.0.i = load volatile ptr, ptr %peer_mep.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %peer_mep.0.i, null
  br i1 %tobool14.not.i, label %if.end58, label %for.body.i112

for.body.i112:                                    ; preds = %for.cond.i110
  %mepid15.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %mepid15.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mepid15.i, align 4
  %cmp.i111 = icmp eq i32 %6, %mepid
  br i1 %cmp.i111, label %do.body50, label %for.body.i112.for.cond.i110_crit_edge

for.body.i112.for.cond.i110_crit_edge:            ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i110

do.body50:                                        ; preds = %for.body.i112
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_cc_peer_mep_add.__msg.11) #8
  %tobool52.not = icmp eq ptr %extack, null
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %if.then53

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @br_cfm_cc_peer_mep_add.__msg.11, ptr %extack, align 4
  br label %cleanup

if.end58:                                         ; preds = %for.cond.i110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 132) #11
  %tobool60.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool60.not, label %if.end58.cleanup_crit_edge, label %if.end62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %mepid63 = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %mepid63 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mepid, ptr %mepid63, align 8
  %mep64 = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %mep64 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mep.0.i, ptr %mep64, align 8
  %ccm_rx_dwork = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %ccm_rx_dwork, i32 noundef 0) #8
  %11 = ptrtoint ptr %ccm_rx_dwork to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %ccm_rx_dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @br_cfm_cc_peer_mep_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry73 = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %entry73 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry73, ptr %entry73, align 8
  %prev.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry73, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ccm_rx_work_expired, ptr %func, align 8
  %timer = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @br_cfm_cc_peer_mep_add.__key.13) #8
  %enable = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool84.not = icmp eq i8 %16, 0
  br i1 %tobool84.not, label %if.end62.for.cond.i114.preheader_crit_edge, label %if.then85

if.end62.for.cond.i114.preheader_crit_edge:       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i114.preheader

if.then85:                                        ; preds = %if.end62
  %cc_status.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 4
  %17 = call ptr @memset(ptr %cc_status.i, i32 0, i32 3)
  %ccm_rx_count_miss.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %ccm_rx_count_miss.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ccm_rx_count_miss.i, align 8
  %19 = ptrtoint ptr %mep64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mep64, align 8
  %exp_interval.i.i = getelementptr inbounds %struct.br_cfm_mep, ptr %20, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %exp_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %exp_interval.i.i, align 4
  %switch.tableidx = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 7
  br i1 %23, label %switch.lookup, label %if.then85.interval_to_us.exit.i.i_crit_edge

if.then85.interval_to_us.exit.i.i_crit_edge:      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %interval_to_us.exit.i.i

switch.lookup:                                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.br_cfm_cc_peer_mep_add, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %interval_to_us.exit.i.i

interval_to_us.exit.i.i:                          ; preds = %switch.lookup, %if.then85.interval_to_us.exit.i.i_crit_edge
  %retval.0.i5.i.i = phi i32 [ 0, %if.then85.interval_to_us.exit.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call3.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %retval.0.i5.i.i) #8
  %call.i6.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %ccm_rx_dwork, i32 noundef %call3.i.i.i) #8
  br label %for.cond.i114.preheader

for.cond.i114.preheader:                          ; preds = %interval_to_us.exit.i.i, %if.end62.for.cond.i114.preheader_crit_edge
  br label %for.cond.i114

for.cond.i114:                                    ; preds = %for.cond.i114.for.cond.i114_crit_edge, %for.cond.i114.preheader
  %last.0.i = phi ptr [ %i.0.i, %for.cond.i114.for.cond.i114_crit_edge ], [ null, %for.cond.i114.preheader ]
  %i.0.in.i = phi ptr [ %i.0.i, %for.cond.i114.for.cond.i114_crit_edge ], [ %peer_mep_list.i, %for.cond.i114.preheader ]
  %26 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %i.0.i = load ptr, ptr %i.0.in.i, align 4
  %tobool.not.i113 = icmp eq ptr %i.0.i, null
  br i1 %tobool.not.i113, label %for.end.i, label %for.cond.i114.for.cond.i114_crit_edge

for.cond.i114.for.cond.i114_crit_edge:            ; preds = %for.cond.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i114

for.end.i:                                        ; preds = %for.cond.i114
  %tobool1.not.i = icmp eq ptr %last.0.i, null
  br i1 %tobool1.not.i, label %if.else47.i, label %if.then.i115

if.then.i115:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %last.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %last.0.i, align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %last.0.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !104
  br label %if.end48.sink.split.i

if.else47.i:                                      ; preds = %for.end.i
  %31 = ptrtoint ptr %peer_mep_list.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %peer_mep_list.i, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %call7.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %peer_mep_list.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !105
  %35 = ptrtoint ptr %peer_mep_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i.i, ptr %peer_mep_list.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.else47.i.cleanup_crit_edge, label %do.body49.i.i

if.else47.i.cleanup_crit_edge:                    ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body49.i.i:                                    ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  br label %if.end48.sink.split.i

if.end48.sink.split.i:                            ; preds = %do.body49.i.i, %if.then.i115
  %pprev51.i.sink.i = phi ptr [ %pprev51.i.i, %do.body49.i.i ], [ %last.0.i, %if.then.i115 ]
  %36 = ptrtoint ptr %pprev51.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i.i, ptr %pprev51.i.sink.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48.sink.split.i, %if.else47.i.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.then53, %do.body50.cleanup_crit_edge, %if.then42, %do.body40.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then42 ], [ -2, %do.body40.cleanup_crit_edge ], [ -17, %if.then53 ], [ -17, %do.body50.cleanup_crit_edge ], [ -12, %if.end58.cleanup_crit_edge ], [ 0, %if.else47.i.cleanup_crit_edge ], [ 0, %if.end48.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_peer_mep_find(ptr noundef %mep, i32 noundef %mepid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true2.do.end_crit_edge, label %land.lhs.true5

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %.b39 = load i1, ptr @br_peer_mep_find.__warned, align 1
  br i1 %.b39, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_peer_mep_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 37, ptr noundef nonnull @.str.16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %peer_mep_list = getelementptr inbounds %struct.br_cfm_mep, ptr %mep, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %peer_mep.0.in = phi ptr [ %peer_mep_list, %do.end ], [ %peer_mep.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %peer_mep.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %peer_mep.0 = load volatile ptr, ptr %peer_mep.0.in, align 4
  %tobool14.not = icmp eq ptr %peer_mep.0, null
  br i1 %tobool14.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %mepid15 = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0, i32 0, i32 3
  %1 = ptrtoint ptr %mepid15 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mepid15, align 4
  %cmp = icmp eq i32 %2, %mepid
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret ptr %peer_mep.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccm_rx_work_expired(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ccm_rx_count_miss = getelementptr i8, ptr %work, i32 108
  %0 = ptrtoint ptr %ccm_rx_count_miss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ccm_rx_count_miss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp = icmp ult i32 %1, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %inc = add nuw nsw i32 %1, 1
  %2 = ptrtoint ptr %ccm_rx_count_miss to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %ccm_rx_count_miss, align 4
  %mep.i = getelementptr i8, ptr %work, i32 -4
  %3 = ptrtoint ptr %mep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mep.i, align 4
  %exp_interval.i = getelementptr inbounds %struct.br_cfm_mep, ptr %4, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %exp_interval.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %exp_interval.i, align 4
  %switch.tableidx = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 7
  br i1 %7, label %switch.lookup, label %if.then.interval_to_us.exit.i_crit_edge

if.then.interval_to_us.exit.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %interval_to_us.exit.i

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ccm_rx_work_expired, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %interval_to_us.exit.i

interval_to_us.exit.i:                            ; preds = %switch.lookup, %if.then.interval_to_us.exit.i_crit_edge
  %retval.0.i5.i = phi i32 [ 0, %if.then.interval_to_us.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call3.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %retval.0.i5.i) #8
  %call.i6.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef %call3.i.i) #8
  br label %if.end17

if.else:                                          ; preds = %entry
  %ccm_defect = getelementptr i8, ptr %work, i32 106
  %10 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %ccm_defect, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %ccm_defect, align 2
  %11 = tail call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.else.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_lock.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else.rcu_read_lock.exit_crit_edge
  %mep = getelementptr i8, ptr %work, i32 -4
  %15 = ptrtoint ptr %mep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mep, align 4
  %b_port3 = getelementptr inbounds %struct.br_cfm_mep, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %b_port3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %b_port3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true8

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @ccm_rx_work_expired.__warned, align 1
  br i1 %.b24, label %land.lhs.true8.do.end12_crit_edge, label %if.then10

land.lhs.true8.do.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ccm_rx_work_expired.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 319, ptr noundef nonnull @.str.18) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %land.lhs.true8.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %do.end12.if.end16_crit_edge, label %if.then15

do.end12.if.end16_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void @br_info_notify(i32 noundef 16, ptr noundef %20, ptr noundef null, i32 noundef 64) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end12.if.end16_crit_edge
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i25, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %if.end16
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %21 = tail call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i32 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i34 = add i32 %24, -1
  store volatile i32 %sub.i.i.i34, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end17

if.end17:                                         ; preds = %rcu_read_unlock.exit, %interval_to_us.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_cc_peer_mep_remove(ptr nocapture noundef readonly %br, i32 noundef %instance, i32 noundef %mepid, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b79 = load i1, ptr @br_cfm_cc_peer_mep_remove.__already_done, align 1
  br i1 %.b79, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !99

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_cc_peer_mep_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 719, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 719) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mep_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29
  %mep.0.in.i = phi ptr [ %mep_list.i, %if.end29 ], [ %mep.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0.i = load ptr, ptr %mep.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %mep.0.i, null
  br i1 %tobool2.not.i, label %do.body40, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %instance3.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %instance3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %instance3.i, align 4
  %cmp.i = icmp eq i32 %2, %instance
  br i1 %cmp.i, label %if.end46, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body40:                                        ; preds = %for.cond.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_cc_peer_mep_remove.__msg) #8
  %tobool41.not = icmp eq ptr %extack, null
  br i1 %tobool41.not, label %do.body40.cleanup_crit_edge, label %if.then42

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @br_cfm_cc_peer_mep_remove.__msg, ptr %extack, align 4
  br label %cleanup

if.end46:                                         ; preds = %for.body.i
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i, label %if.end46.do.end.i_crit_edge, label %land.lhs.true.i

if.end46.do.end.i_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end46
  %call1.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b39.i = load i1, ptr @br_peer_mep_find.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_peer_mep_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 37, ptr noundef nonnull @.str.16) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end46.do.end.i_crit_edge
  %peer_mep_list.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 6
  br label %for.cond.i80

for.cond.i80:                                     ; preds = %for.body.i82.for.cond.i80_crit_edge, %do.end.i
  %peer_mep.0.in.i = phi ptr [ %peer_mep_list.i, %do.end.i ], [ %peer_mep.0.i, %for.body.i82.for.cond.i80_crit_edge ]
  %4 = ptrtoint ptr %peer_mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %peer_mep.0.i = load volatile ptr, ptr %peer_mep.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %peer_mep.0.i, null
  br i1 %tobool14.not.i, label %do.body50, label %for.body.i82

for.body.i82:                                     ; preds = %for.cond.i80
  %mepid15.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %mepid15.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mepid15.i, align 4
  %cmp.i81 = icmp eq i32 %6, %mepid
  br i1 %cmp.i81, label %if.end58, label %for.body.i82.for.cond.i80_crit_edge

for.body.i82.for.cond.i80_crit_edge:              ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i80

do.body50:                                        ; preds = %for.cond.i80
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_cc_peer_mep_remove.__msg.15) #8
  %tobool52.not = icmp eq ptr %extack, null
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %if.then53

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @br_cfm_cc_peer_mep_remove.__msg.15, ptr %extack, align 4
  br label %cleanup

if.end58:                                         ; preds = %for.body.i82
  %ccm_rx_dwork.i = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0.i, i32 0, i32 2
  %call.i83 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ccm_rx_dwork.i) #8
  %8 = ptrtoint ptr %peer_mep.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer_mep.0.i, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %peer_mep.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev2.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %9, ptr %11, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end58.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end58.hlist_del_rcu.exit_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end58.hlist_del_rcu.exit_crit_edge
  %14 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %rcu = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep.0.i, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 124 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %hlist_del_rcu.exit, %if.then53, %do.body50.cleanup_crit_edge, %if.then42, %do.body40.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hlist_del_rcu.exit ], [ -2, %if.then42 ], [ -2, %do.body40.cleanup_crit_edge ], [ -2, %if.then53 ], [ -2, %do.body50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_cc_rdi_set(ptr nocapture noundef readonly %br, i32 noundef %instance, i1 noundef zeroext %rdi, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %rdi to i8
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @br_cfm_cc_rdi_set.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !99

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_cc_rdi_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 748, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 748) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %mep_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end30
  %mep.0.in.i = phi ptr [ %mep_list.i, %if.end30 ], [ %mep.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0.i = load ptr, ptr %mep.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %mep.0.i, null
  br i1 %tobool2.not.i, label %do.body41, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %instance3.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %instance3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %instance3.i, align 4
  %cmp.i = icmp eq i32 %2, %instance
  br i1 %cmp.i, label %if.end47, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body41:                                        ; preds = %for.cond.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_cc_rdi_set.__msg) #8
  %tobool42.not = icmp eq ptr %extack, null
  br i1 %tobool42.not, label %do.body41.cleanup_crit_edge, label %if.then43

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @br_cfm_cc_rdi_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end47:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rdi49 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 13
  %4 = ptrtoint ptr %rdi49 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %rdi49, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then43, %do.body41.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -2, %if.then43 ], [ -2, %do.body41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_cc_ccm_tx(ptr nocapture noundef readonly %br, i32 noundef %instance, ptr nocapture noundef readonly %tx_info, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b114 = load i1, ptr @br_cfm_cc_ccm_tx.__already_done, align 1
  br i1 %.b114, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !99

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_cc_ccm_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 768, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 768) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mep_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29
  %mep.0.in.i = phi ptr [ %mep_list.i, %if.end29 ], [ %mep.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mep.0.i = load ptr, ptr %mep.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %mep.0.i, null
  br i1 %tobool2.not.i, label %do.body40, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %instance3.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %instance3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %instance3.i, align 4
  %cmp.i135 = icmp eq i32 %2, %instance
  br i1 %cmp.i135, label %if.end46, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body40:                                        ; preds = %for.cond.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_cfm_cc_ccm_tx.__msg) #8
  %tobool41.not = icmp eq ptr %extack, null
  br i1 %tobool41.not, label %do.body40.cleanup_crit_edge, label %if.then42

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @br_cfm_cc_ccm_tx.__msg, ptr %extack, align 4
  br label %cleanup

if.end46:                                         ; preds = %for.body.i
  %cc_ccm_tx_info = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %tx_info, ptr noundef dereferenceable(20) %cc_ccm_tx_info, i32 20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end46
  %period = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp50 = icmp eq i32 %5, 0
  br i1 %cmp50, label %if.then48.cleanup_crit_edge, label %if.end52

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %period53 = getelementptr inbounds %struct.br_cfm_cc_ccm_tx_info, ptr %tx_info, i32 0, i32 1
  %7 = ptrtoint ptr %period53 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %period53, align 4
  %mul = mul i32 %8, 1000000
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #8
  %add = add i32 %call3.i, %6
  %ccm_tx_end = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 8
  %9 = ptrtoint ptr %ccm_tx_end to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %ccm_tx_end, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  %period56 = getelementptr inbounds %struct.br_cfm_cc_ccm_tx_info, ptr %tx_info, i32 0, i32 1
  %10 = ptrtoint ptr %period56 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp57 = icmp eq i32 %11, 0
  %period59 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %period59 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp60 = icmp eq i32 %13, 0
  br i1 %cmp57, label %land.lhs.true, label %land.lhs.true65

land.lhs.true:                                    ; preds = %if.end55
  br i1 %cmp60, label %land.lhs.true.save_crit_edge, label %land.lhs.true78

land.lhs.true.save_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %save

land.lhs.true65:                                  ; preds = %if.end55
  br i1 %cmp60, label %land.lhs.true65.if.end84_crit_edge, label %if.then69

land.lhs.true65.if.end84_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then69:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %mul71 = mul i32 %11, 1000000
  %call3.i121 = tail call i32 @__usecs_to_jiffies(i32 noundef %mul71) #8
  %add73 = add i32 %call3.i121, %14
  %ccm_tx_end74 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 8
  %15 = ptrtoint ptr %ccm_tx_end74 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add73, ptr %ccm_tx_end74, align 4
  br label %save

land.lhs.true78:                                  ; preds = %land.lhs.true
  %16 = ptrtoint ptr %period59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp81.not = icmp eq i32 %17, 0
  br i1 %cmp81.not, label %land.lhs.true78.if.end84_crit_edge, label %if.then82

land.lhs.true78.if.end84_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then82:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  %ccm_tx_dwork = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 9
  %call83 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ccm_tx_dwork) #8
  br label %save

if.end84:                                         ; preds = %land.lhs.true78.if.end84_crit_edge, %land.lhs.true65.if.end84_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %mul86 = mul i32 %11, 1000000
  %call3.i131 = tail call i32 @__usecs_to_jiffies(i32 noundef %mul86) #8
  %add88 = add i32 %call3.i131, %18
  %ccm_tx_end89 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 8
  %19 = ptrtoint ptr %ccm_tx_end89 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add88, ptr %ccm_tx_end89, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %ccm_tx_dwork90 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 9
  %call.i136 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %ccm_tx_dwork90, i32 noundef 0) #8
  br label %save

save:                                             ; preds = %if.end84, %if.then82, %if.then69, %land.lhs.true.save_crit_edge
  %21 = call ptr @memcpy(ptr %cc_ccm_tx_info, ptr %tx_info, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %save, %if.end52, %if.then48.cleanup_crit_edge, %if.then42, %do.body40.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ 0, %save ], [ -2, %if.then42 ], [ -2, %do.body40.cleanup_crit_edge ], [ 0, %if.then48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_mep_count(ptr noundef %br, ptr nocapture noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %count, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #8
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
  %.b33 = load i1, ptr @br_cfm_mep_count.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_mep_count.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 827, ptr noundef nonnull @.str.16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %mep_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  %5 = ptrtoint ptr %mep_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %mep.044 = load volatile ptr, ptr %mep_list, align 4
  %tobool12.not45 = icmp eq ptr %mep.044, null
  br i1 %tobool12.not45, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %mep.046 = phi ptr [ %mep.0, %for.body.for.body_crit_edge ], [ %mep.044, %do.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %add = add i32 %7, 1
  store i32 %add, ptr %count, align 4
  %8 = ptrtoint ptr %mep.046 to i32
  call void @__asan_load4_noabort(i32 %8)
  %mep.0 = load volatile ptr, ptr %mep.046, align 4
  %tobool12.not = icmp eq ptr %mep.0, null
  br i1 %tobool12.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i35, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %for.end
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %9 = tail call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i42 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_cfm_peer_mep_count(ptr noundef %br, ptr nocapture noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %count, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #8
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
  %.b91 = load i1, ptr @br_cfm_peer_mep_count.__warned, align 1
  br i1 %.b91, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_peer_mep_count.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 842, ptr noundef nonnull @.str.16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %mep_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  %5 = ptrtoint ptr %mep_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %mep.0107 = load volatile ptr, ptr %mep_list, align 4
  %tobool12.not108 = icmp eq ptr %mep.0107, null
  br i1 %tobool12.not108, label %do.end.for.end77_crit_edge, label %do.end.do.body13_crit_edge

do.end.do.body13_crit_edge:                       ; preds = %do.end
  br label %do.body13

do.end.for.end77_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

for.cond.loopexit:                                ; preds = %for.body43.for.cond.loopexit_crit_edge, %do.end24.for.cond.loopexit_crit_edge
  %6 = ptrtoint ptr %mep.0109 to i32
  call void @__asan_load4_noabort(i32 %6)
  %mep.0 = load volatile ptr, ptr %mep.0109, align 4
  %tobool12.not = icmp eq ptr %mep.0, null
  br i1 %tobool12.not, label %for.cond.loopexit.for.end77_crit_edge, label %for.cond.loopexit.do.body13_crit_edge

for.cond.loopexit.do.body13_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.loopexit.for.end77_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

do.body13:                                        ; preds = %for.cond.loopexit.do.body13_crit_edge, %do.end.do.body13_crit_edge
  %mep.0109 = phi ptr [ %mep.0, %for.cond.loopexit.do.body13_crit_edge ], [ %mep.0107, %do.end.do.body13_crit_edge ]
  %call14 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.body13.do.end24_crit_edge

do.body13.do.end24_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.body13
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b8990 = load i1, ptr @br_cfm_peer_mep_count.__warned.17, align 1
  br i1 %.b8990, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_peer_mep_count.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 843, ptr noundef nonnull @.str.16) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.body13.do.end24_crit_edge
  %peer_mep_list = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0109, i32 0, i32 6
  %7 = ptrtoint ptr %peer_mep_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %peer_mep.0104 = load volatile ptr, ptr %peer_mep_list, align 4
  %tobool42.not105 = icmp eq ptr %peer_mep.0104, null
  br i1 %tobool42.not105, label %do.end24.for.cond.loopexit_crit_edge, label %do.end24.for.body43_crit_edge

do.end24.for.body43_crit_edge:                    ; preds = %do.end24
  br label %for.body43

do.end24.for.cond.loopexit_crit_edge:             ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %do.end24.for.body43_crit_edge
  %peer_mep.0106 = phi ptr [ %peer_mep.0, %for.body43.for.body43_crit_edge ], [ %peer_mep.0104, %do.end24.for.body43_crit_edge ]
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %add = add i32 %9, 1
  store i32 %add, ptr %count, align 4
  %10 = ptrtoint ptr %peer_mep.0106 to i32
  call void @__asan_load4_noabort(i32 %10)
  %peer_mep.0 = load volatile ptr, ptr %peer_mep.0106, align 4
  %tobool42.not = icmp eq ptr %peer_mep.0, null
  br i1 %tobool42.not, label %for.body43.for.cond.loopexit_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.body43.for.cond.loopexit_crit_edge:           ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.end77:                                        ; preds = %for.cond.loopexit.for.end77_crit_edge, %do.end.for.end77_crit_edge
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i95, label %for.end77.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i98

for.end77.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i98:                                ; preds = %for.end77
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, %for.end77.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %11 = tail call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i102 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @br_cfm_created(ptr noundef %br) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mep_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  %0 = ptrtoint ptr %mep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mep_list, align 4
  %tobool.not.i = icmp ne ptr %1, null
  ret i1 %tobool.not.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_cfm_port_del(ptr noundef %br, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b67 = load i1, ptr @br_cfm_port_del.__already_done, align 1
  br i1 %.b67, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !99

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_cfm_port_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 862, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 862) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mep_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 48
  %0 = ptrtoint ptr %mep_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mep_list, align 4
  %tobool40.not69 = icmp eq ptr %1, null
  br i1 %tobool40.not69, label %if.end29.for.end_crit_edge, label %land.rhs41.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs41.lr.ph:                                 ; preds = %if.end29
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 1
  br label %land.rhs41

land.rhs41:                                       ; preds = %for.inc.land.rhs41_crit_edge, %land.rhs41.lr.ph
  %mep.070 = phi ptr [ %1, %land.rhs41.lr.ph ], [ %3, %for.inc.land.rhs41_crit_edge ]
  %2 = ptrtoint ptr %mep.070 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mep.070, align 4
  %ifindex = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.070, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %ifindex45 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %ifindex45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp = icmp eq i32 %5, %9
  br i1 %cmp, label %if.then46, label %land.rhs41.for.inc_crit_edge

land.rhs41.for.inc_crit_edge:                     ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then46:                                        ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mep_delete_implementation(ptr noundef %br, ptr noundef nonnull %mep.070)
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %land.rhs41.for.inc_crit_edge
  %tobool40.not = icmp eq ptr %3, null
  br i1 %tobool40.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs41_crit_edge

for.inc.land.rhs41_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs41

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_cfm_frame_rx(ptr nocapture noundef readonly %port, ptr noundef %skb) #0 align 64 {
entry:
  %_hdr = alloca %struct.br_cfm_common_hdr, align 4
  %_maid = alloca %struct.br_cfm_maid, align 1
  %_snumber = alloca i32, align 4
  %_mepid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_hdr) #8
  %0 = ptrtoint ptr %_hdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_maid) #8
  %1 = call ptr @memset(ptr %_maid, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_snumber) #8
  %2 = ptrtoint ptr %_snumber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %_snumber, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_mepid) #8
  %3 = ptrtoint ptr %_mepid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %_mepid, align 2, !annotation !106
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i4.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !107

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_hdr, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end3_crit_edge

lor.lhs.false.i.i.if.end3_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end3_crit_edge

skb_header_pointer.exit.if.end3_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %skb_header_pointer.exit.if.end3_crit_edge, %lor.lhs.false.i.i.if.end3_crit_edge
  %retval.0.i.i161 = phi ptr [ %11, %skb_header_pointer.exit.if.end3_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end3_crit_edge ]
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 8
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex, align 4
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i, label %if.end3.do.end.i_crit_edge, label %land.lhs.true.i

if.end3.do.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b39.i = load i1, ptr @br_mep_find_ifindex.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_mep_find_ifindex.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 24, ptr noundef nonnull @.str.16) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end3.do.end.i_crit_edge
  %mep_list.i = getelementptr inbounds %struct.net_bridge, ptr %13, i32 0, i32 48
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mep.0.in.i = phi ptr [ %mep_list.i, %do.end.i ], [ %mep.0.i, %for.body.i.for.cond.i_crit_edge ]
  %18 = ptrtoint ptr %mep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %mep.0.i = load volatile ptr, ptr %mep.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %mep.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ifindex15.i = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %ifindex15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex15.i, align 4
  %cmp.i = icmp eq i32 %20, %17
  br i1 %cmp.i, label %if.end11, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.end11:                                         ; preds = %for.body.i
  %21 = ptrtoint ptr %retval.0.i.i161 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %retval.0.i.i161, align 1
  %conv12 = zext i8 %22 to i32
  %23 = lshr i32 %conv12, 5
  %config = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 3
  %24 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp14 = icmp ugt i32 %23, %25
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %and = and i32 %conv12, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp20.not = icmp eq i32 %and, 0
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %version_unexp_seen = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %version_unexp_seen to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %version_unexp_seen, align 1
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp26 = icmp ult i32 %23, %25
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %rx_level_low_seen = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 12, i32 2
  %27 = ptrtoint ptr %rx_level_low_seen to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rx_level_low_seen, align 2
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %opcode = getelementptr inbounds %struct.br_cfm_common_hdr, ptr %retval.0.i.i161, i32 0, i32 1
  %28 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %opcode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp32 = icmp eq i8 %29, 1
  br i1 %cmp32, label %if.then34, label %if.end101

if.then34:                                        ; preds = %if.end30
  %call35 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef 10, i32 noundef 48, ptr noundef nonnull %_maid)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then34.cleanup_crit_edge, label %if.end38

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  %cc_config = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %call35, ptr noundef dereferenceable(48) %cc_config, i32 48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool42.not = icmp eq i32 %bcmp, 0
  br i1 %tobool42.not, label %if.end44, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  %call45 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %_mepid)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %30 = ptrtoint ptr %call45 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %call45, align 2
  %conv49 = zext i16 %31 to i32
  %call50 = call fastcc ptr @br_peer_mep_find(ptr noundef nonnull %mep.0.i, i32 noundef %conv49)
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end48.cleanup_crit_edge, label %if.end53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %flags = getelementptr inbounds %struct.br_cfm_common_hdr, ptr %retval.0.i.i161, i32 0, i32 2
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags, align 1
  %34 = and i8 %33, 7
  %and55 = zext i8 %34 to i32
  %exp_interval = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %exp_interval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %exp_interval, align 4
  %switch.tableidx = add nsw i32 %and55, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %37 = icmp ult i32 %switch.tableidx, 7
  %spec.select = select i1 %37, i32 %and55, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %spec.select)
  %cmp58.not = icmp eq i32 %36, %spec.select
  br i1 %cmp58.not, label %if.end61, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %if.end53
  %ccm_defect = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call50, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %ccm_defect, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool62.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool62.not, label %if.end61.if.end67_crit_edge, label %if.then63

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear = and i8 %bf.load, 127
  %39 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %bf.clear, ptr %ccm_defect, align 2
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 8
  call void @br_info_notify(i32 noundef 16, ptr noundef %41, ptr noundef null, i32 noundef 64) #8
  call fastcc void @ccm_rx_timer_start(ptr noundef nonnull %call50)
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end61.if.end67_crit_edge
  %42 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load69 = load i8, ptr %ccm_defect, align 2
  %bf.set71 = or i8 %bf.load69, 32
  store i8 %bf.set71, ptr %ccm_defect, align 2
  %ccm_rx_count_miss = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %call50, i32 0, i32 5
  %43 = ptrtoint ptr %ccm_rx_count_miss to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ccm_rx_count_miss, align 4
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flags, align 1
  %46 = lshr i8 %45, 1
  %bf.shl = and i8 %46, 64
  %bf.clear79 = and i8 %bf.set71, -65
  %bf.set80 = or i8 %bf.shl, %bf.clear79
  store i8 %bf.set80, ptr %ccm_defect, align 2
  %call81 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %_snumber)
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.end67.cleanup_crit_edge, label %if.end84

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84:                                         ; preds = %if.end67
  %47 = ptrtoint ptr %call81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call81, align 4
  %ccm_rx_snumber = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 11
  %49 = ptrtoint ptr %ccm_rx_snumber to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ccm_rx_snumber, align 4
  %add = add i32 %50, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add)
  %cmp85.not = icmp eq i32 %48, %add
  br i1 %cmp85.not, label %if.end84.if.end92_crit_edge, label %if.then87

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %ccm_defect to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load89 = load i8, ptr %ccm_defect, align 2
  %bf.set91 = or i8 %bf.load89, 8
  store i8 %bf.set91, ptr %ccm_defect, align 2
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end84.if.end92_crit_edge
  %52 = ptrtoint ptr %call81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call81, align 4
  %54 = ptrtoint ptr %ccm_rx_snumber to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ccm_rx_snumber, align 4
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end92
  %index.0 = phi i32 [ 74, %if.end92 ], [ %add95, %land.rhs.do.body_crit_edge ]
  %max.0 = phi i32 [ 0, %if.end92 ], [ %add96, %land.rhs.do.body_crit_edge ]
  %call94 = call fastcc i32 @ccm_tlv_extract(ptr noundef %skb, i32 noundef %index.0, ptr noundef nonnull %call50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp97.not = icmp eq i32 %call94, 0
  br i1 %cmp97.not, label %do.body.cleanup_crit_edge, label %land.rhs

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %add96 = add nuw nsw i32 %max.0, 1
  %add95 = add i32 %call94, %index.0
  %exitcond.not = icmp eq i32 %add96, 4
  br i1 %exitcond.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end101:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %status102 = getelementptr inbounds %struct.br_cfm_mep, ptr %mep.0.i, i32 0, i32 12
  %55 = ptrtoint ptr %status102 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %status102, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.then28, %if.then22, %if.end11.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then22 ], [ 1, %if.then28 ], [ 1, %if.end101 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %skb_header_pointer.exit.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 1, %if.then34.cleanup_crit_edge ], [ 1, %if.end38.cleanup_crit_edge ], [ 1, %if.end44.cleanup_crit_edge ], [ 1, %if.end48.cleanup_crit_edge ], [ 1, %if.end53.cleanup_crit_edge ], [ 1, %if.end67.cleanup_crit_edge ], [ 1, %if.end.i.i.cleanup_crit_edge ], [ 1, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %land.rhs.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_mepid) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_snumber) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_maid) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_hdr) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #3 align 64 {
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
  %4 = add i32 %3, %offset
  %sub.i4 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4, i32 %len)
  %cmp.not.i = icmp slt i32 %sub.i4, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !107

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !107
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccm_rx_timer_start(ptr noundef %peer_mep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mep = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep, i32 0, i32 1
  %0 = ptrtoint ptr %mep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mep, align 4
  %exp_interval = getelementptr inbounds %struct.br_cfm_mep, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %exp_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exp_interval, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 7
  br i1 %4, label %switch.lookup, label %entry.interval_to_us.exit_crit_edge

entry.interval_to_us.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %interval_to_us.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ccm_rx_timer_start, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %interval_to_us.exit

interval_to_us.exit:                              ; preds = %switch.lookup, %entry.interval_to_us.exit_crit_edge
  %retval.0.i5 = phi i32 [ 0, %entry.interval_to_us.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %retval.0.i5) #8
  %ccm_rx_dwork = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep, i32 0, i32 2
  %call.i6 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %ccm_rx_dwork, i32 noundef %call3.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccm_tlv_extract(ptr noundef %skb, i32 noundef %index, ptr nocapture noundef %peer_mep) unnamed_addr #0 align 64 {
entry:
  %_s_tlv = alloca i32, align 4
  %_e_tlv = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_s_tlv) #8
  %0 = ptrtoint ptr %_s_tlv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_s_tlv, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_e_tlv) #8
  %1 = ptrtoint ptr %_e_tlv to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %_e_tlv, align 1, !annotation !106
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %6 = add i32 %5, %index
  %sub.i4.i = sub i32 %3, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !107

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %index, ptr noundef nonnull %_e_tlv, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %index
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %13 = add i32 %12, %index
  %sub.i4.i39 = sub i32 %10, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i39)
  %cmp.not.i.i40 = icmp slt i32 %sub.i4.i39, 4
  br i1 %cmp.not.i.i40, label %if.end.i.i45, label %skb_header_pointer.exit51, !prof !107

if.end.i.i45:                                     ; preds = %if.end
  %tobool2.not.i.i44 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i44, label %if.end.i.i45.cleanup_crit_edge, label %lor.lhs.false.i.i49

if.end.i.i45.cleanup_crit_edge:                   ; preds = %if.end.i.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i49:                              ; preds = %if.end.i.i45
  %call.i.i46 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %index, ptr noundef nonnull %_s_tlv, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %cmp3.i.i47 = icmp slt i32 %call.i.i46, 0
  br i1 %cmp3.i.i47, label %lor.lhs.false.i.i49.cleanup_crit_edge, label %lor.lhs.false.i.i49.if.end4_crit_edge

lor.lhs.false.i.i49.if.end4_crit_edge:            ; preds = %lor.lhs.false.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

lor.lhs.false.i.i49.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_header_pointer.exit51:                        ; preds = %if.end
  %data.i41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i41, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %15, i32 %index
  %tobool2.not = icmp eq ptr %add.ptr.i.i42, null
  br i1 %tobool2.not, label %skb_header_pointer.exit51.cleanup_crit_edge, label %skb_header_pointer.exit51.if.end4_crit_edge

skb_header_pointer.exit51.if.end4_crit_edge:      ; preds = %skb_header_pointer.exit51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

skb_header_pointer.exit51.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %skb_header_pointer.exit51.if.end4_crit_edge, %lor.lhs.false.i.i49.if.end4_crit_edge
  %retval.0.i.i5063 = phi ptr [ %add.ptr.i.i42, %skb_header_pointer.exit51.if.end4_crit_edge ], [ %_s_tlv, %lor.lhs.false.i.i49.if.end4_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i.i5063 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i.i5063, align 4
  %shr = lshr i32 %17, 24
  %trunc = trunc i32 %shr to i8
  %18 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %trunc, label %if.end4.if.end20_crit_edge [
    i8 4, label %if.then5
    i8 2, label %if.then11
  ]

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %tlv_seen = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %tlv_seen to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %tlv_seen, align 2
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %tlv_seen, align 2
  %conv = trunc i32 %17 to i8
  %if_tlv_value = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %if_tlv_value to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %if_tlv_value, align 1
  br label %if.end20

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %cc_status12 = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep, i32 0, i32 4
  %tlv_seen13 = getelementptr inbounds %struct.br_cfm_peer_mep, ptr %peer_mep, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %tlv_seen13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load14 = load i8, ptr %tlv_seen13, align 2
  %bf.set16 = or i8 %bf.load14, 16
  store i8 %bf.set16, ptr %tlv_seen13, align 2
  %conv18 = trunc i32 %17 to i8
  %22 = ptrtoint ptr %cc_status12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv18, ptr %cc_status12, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.then5, %if.end4.if.end20_crit_edge
  %shr21 = lshr i32 %17, 8
  %and22 = and i32 %shr21, 65535
  %add = add nuw nsw i32 %and22, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %skb_header_pointer.exit51.cleanup_crit_edge, %lor.lhs.false.i.i49.cleanup_crit_edge, %if.end.i.i45.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end20 ], [ 0, %skb_header_pointer.exit.cleanup_crit_edge ], [ 0, %skb_header_pointer.exit51.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i45.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_e_tlv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_s_tlv) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_info_notify(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_del_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !85, !86, !88}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/bridge/br_cfm.c", i32 505, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @br_cfm_mep_create.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../net/bridge/br_cfm.c", i32 508, i32 3}
!6 = !{ptr @br_cfm_mep_create.__msg.2, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/bridge/br_cfm.c", i32 513, i32 3}
!8 = !{ptr @br_cfm_mep_create.__msg.3, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/bridge/br_cfm.c", i32 518, i32 3}
!10 = !{ptr @br_cfm_mep_create.__msg.4, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/bridge/br_cfm.c", i32 523, i32 3}
!12 = !{ptr @br_cfm_mep_create.__msg.5, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/bridge/br_cfm.c", i32 529, i32 3}
!14 = !{ptr @br_cfm_mep_create.__msg.6, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../net/bridge/br_cfm.c", i32 535, i32 3}
!16 = !{ptr @br_cfm_mep_create.__msg.7, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/bridge/br_cfm.c", i32 544, i32 4}
!18 = !{ptr @br_cfm_mep_create.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../net/bridge/br_cfm.c", i32 559, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @br_cfm_mep_create.__key.9, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/bridge/br_cfm.c", i32 600, i32 2}
!25 = !{ptr @br_cfm_mep_delete.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../net/bridge/br_cfm.c", i32 604, i32 3}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../net/bridge/br_cfm.c", i32 621, i32 2}
!29 = !{ptr @br_cfm_mep_config_set.__msg, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../net/bridge/br_cfm.c", i32 625, i32 3}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../net/bridge/br_cfm.c", i32 643, i32 2}
!33 = !{ptr @br_cfm_cc_config_set.__msg, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../net/bridge/br_cfm.c", i32 647, i32 3}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../net/bridge/br_cfm.c", i32 680, i32 2}
!37 = !{ptr @br_cfm_cc_peer_mep_add.__msg, !38, !"__msg", i1 false, i1 false}
!38 = !{!"../net/bridge/br_cfm.c", i32 684, i32 3}
!39 = !{ptr @br_cfm_cc_peer_mep_add.__msg.11, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../net/bridge/br_cfm.c", i32 691, i32 3}
!41 = !{ptr @br_cfm_cc_peer_mep_add.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../net/bridge/br_cfm.c", i32 702, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @br_cfm_cc_peer_mep_add.__key.13, !42, !"__key", i1 false, i1 false}
!45 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../net/bridge/br_cfm.c", i32 719, i32 2}
!48 = !{ptr @br_cfm_cc_peer_mep_remove.__msg, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../net/bridge/br_cfm.c", i32 723, i32 3}
!50 = !{ptr @br_cfm_cc_peer_mep_remove.__msg.15, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../net/bridge/br_cfm.c", i32 730, i32 3}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../net/bridge/br_cfm.c", i32 748, i32 2}
!54 = !{ptr @br_cfm_cc_rdi_set.__msg, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../net/bridge/br_cfm.c", i32 752, i32 3}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../net/bridge/br_cfm.c", i32 768, i32 2}
!58 = !{ptr @br_cfm_cc_ccm_tx.__msg, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../net/bridge/br_cfm.c", i32 772, i32 3}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/bridge/br_cfm.c", i32 827, i32 2}
!62 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/bridge/br_cfm.c", i32 842, i32 2}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../net/bridge/br_cfm.c", i32 843, i32 3}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../net/bridge/br_cfm.c", i32 862, i32 2}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../net/bridge/br_cfm.c", i32 23, i32 2}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../net/bridge/br_cfm.c", i32 180, i32 11}
!73 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cfm_frame_type, !75, !"cfm_frame_type", i1 false, i1 false}
!75 = !{!"../net/bridge/br_cfm.c", i32 492, i32 29}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../net/bridge/br_cfm.c", i32 575, i32 2}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/bridge/br_cfm.c", i32 36, i32 2}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/bridge/br_cfm.c", i32 319, i32 12}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!84 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!88 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2158002794}
!101 = !{i64 2149667049}
!102 = !{i64 2149667315}
!103 = !{i8 0, i8 2}
!104 = !{i64 2149783697}
!105 = !{i64 2149768660}
!106 = !{!"auto-init"}
!107 = !{!"branch_weights", i32 1, i32 2000}
