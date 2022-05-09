; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fm10k_ring = type { ptr, ptr, ptr, ptr, ptr, %union.anon.151, ptr, [1 x i32], i32, i32, i8, i8, i8, i16, i16, i16, i16, i16, %struct.fm10k_queue_stats, %struct.u64_stats_sync, %union.anon.152, [72 x i8] }
%union.anon.151 = type { ptr }
%struct.fm10k_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { %struct.fm10k_rx_queue_stats, ptr }
%struct.fm10k_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fm10k_tx_buffer = type { ptr, ptr, i32, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.150 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.fm10k_intfc = type { [128 x i32], ptr, ptr, ptr, [1 x i32], [1 x i32], i32, i32, i16, i32, i16, [90 x i8], [128 x ptr], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, [128 x ptr], [256 x ptr], ptr, i32, [2 x %struct.fm10k_ring_feature], ptr, %struct.fm10k_hw_stats, %struct.fm10k_hw, %struct.spinlock, ptr, ptr, i16, i16, i16, %struct.timer_list, %struct.work_struct, i32, i32, i32, i32, i8, i8, [32 x i32], [10 x i32], i16, i16, %struct.list_head, %struct.delayed_work, %struct.spinlock, ptr, i8, i8, i16, i16, i16, [36 x i8] }
%struct.fm10k_ring_feature = type { i16, i16, i16, i16 }
%struct.fm10k_hw_stats = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, [128 x %struct.fm10k_hw_stats_q] }
%struct.fm10k_hw_stat = type { i64, i32, i32 }
%struct.fm10k_hw_stats_q = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat }
%struct.fm10k_hw = type { ptr, ptr, %struct.fm10k_mac_info, %struct.fm10k_bus_info, %struct.fm10k_bus_info, %struct.fm10k_iov_info, %struct.fm10k_mbx_info, %struct.fm10k_swapi_info, i16, i16, i16, i16, i8 }
%struct.fm10k_mac_info = type { %struct.fm10k_mac_ops, i32, [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i32, i8, i64 }
%struct.fm10k_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_bus_info = type { i32, i32, i32 }
%struct.fm10k_iov_info = type { %struct.fm10k_iov_ops, i16, i16, i16 }
%struct.fm10k_iov_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }
%struct.fm10k_swapi_info = type { i32, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info }
%struct.fm10k_swapi_table_info = type { i32, i32 }
%struct.fm10k_rx_buffer = type { i32, ptr, i32 }
%struct.fm10k_macvlan_request = type { i32, %struct.list_head, %union.anon.160, i8 }
%union.anon.160 = type { %struct.fm10k_vlan_request, [4 x i8] }
%struct.fm10k_vlan_request = type { i32, i8 }
%struct.fm10k_mac_request = type { [6 x i8], i16, i16 }
%struct.fm10k_l2_accel = type { i32, i16, i16, %struct.callback_head, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.fm10k_dglort_cfg = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.udp_tunnel_info = type { i16, i16, i16, i8 }

@fm10k_setup_tx_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&tx_ring->syncp)->seq\00", [40 x i8] zeroinitializer }, align 32
@fm10k_setup_rx_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&rx_ring->syncp)->seq\00", [40 x i8] zeroinitializer }, align 32
@fm10k_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @fm10k_open, ptr @fm10k_close, ptr @fm10k_xmit_frame, ptr @fm10k_features_check, ptr null, ptr null, ptr @fm10k_set_rx_mode, ptr @fm10k_set_mac, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fm10k_tx_timeout, ptr @fm10k_get_stats64, ptr null, ptr null, ptr null, ptr @fm10k_vlan_rx_add_vid, ptr @fm10k_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr @fm10k_ndo_set_vf_mac, ptr @fm10k_ndo_set_vf_vlan, ptr @fm10k_ndo_set_vf_bw, ptr null, ptr null, ptr @fm10k_ndo_get_vf_config, ptr null, ptr @fm10k_ndo_get_vf_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__fm10k_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fm10k_dfwd_add_station, ptr @fm10k_dfwd_del_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@fm10k_udp_tunnels = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr null, ptr null, ptr @fm10k_udp_tunnel_sync, ptr null, i32 0, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 1, i32 1 }, %struct.udp_tunnel_nic_table_info { i32 1, i32 2 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Allocation for Tx Queue %u failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Allocation for Rx Queue %u failed\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/intel/fm10k/fm10k_netdev.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid Tx queue index %d\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Fake Tx hang detected with timeout of %d seconds\0A\00", [46 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 26, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 94, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"fm10k_netdev_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1517, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"fm10k_udp_tunnels\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 417, i32 41 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 64, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 131, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 592, i32 3 }
@___asan_gen_.44 = private constant [51 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 604, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 723, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @fm10k_setup_tx_resources.__key, ptr @.str, ptr @fm10k_setup_rx_resources.__key, ptr @.str.1, ptr @fm10k_netdev_ops, ptr @fm10k_udp_tunnels, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_setup_tx_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_setup_rx_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_udp_tunnels to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_setup_tx_resources(ptr noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %count = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 14
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count, align 2
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 24
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #13
  %4 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %4, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %do.body

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body:                                          ; preds = %entry
  %syncp = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 19
  %dep_map.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 19, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str, ptr noundef nonnull @fm10k_setup_tx_resources.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %syncp, align 4
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 2
  %conv3 = zext i16 %8 to i32
  %mul4 = shl nuw nsw i32 %conv3, 4
  %size5 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 9
  %add = add nuw nsw i32 %mul4, 4095
  %and = and i32 %add, 2093056
  %9 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %size5, align 4
  %dma = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 8
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #10
  %desc = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 4
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %desc, align 16
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.body.err_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

err:                                              ; preds = %do.body.err_crit_edge, %entry.err_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  tail call void @vfree(ptr noundef %12) #10
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_setup_rx_resources(ptr noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %count = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 14
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count, align 2
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 12
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #13
  %4 = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %4, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %do.body

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body:                                          ; preds = %entry
  %syncp = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 19
  %dep_map.i = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 19, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @fm10k_setup_rx_resources.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %syncp, align 4
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 2
  %conv3 = zext i16 %8 to i32
  %mul4 = shl nuw nsw i32 %conv3, 5
  %size5 = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 9
  %add = add nuw nsw i32 %mul4, 4095
  %and = and i32 %add, 4190208
  %9 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %size5, align 4
  %dma = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 8
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #10
  %desc = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 4
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %desc, align 16
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.body.err_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

err:                                              ; preds = %do.body.err_crit_edge, %entry.err_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  tail call void @vfree(ptr noundef %12) #10
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_unmap_and_free_tx_resource(ptr nocapture noundef readonly %ring, ptr nocapture noundef %tx_buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #10
  %len = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then.if.end12_crit_edge, label %if.then.if.end12.sink.split_crit_edge

if.then.if.end12.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.sink.split

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %entry
  %len5 = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer, i32 0, i32 6
  %4 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.else.if.end12_crit_edge, label %if.else.if.end12.sink.split_crit_edge

if.else.if.end12.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.sink.split

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12.sink.split:                              ; preds = %if.else.if.end12.sink.split_crit_edge, %if.then.if.end12.sink.split_crit_edge
  %.sink29 = phi i32 [ %3, %if.then.if.end12.sink.split_crit_edge ], [ %5, %if.else.if.end12.sink.split_crit_edge ]
  %dev8 = getelementptr inbounds %struct.fm10k_ring, ptr %ring, i32 0, i32 2
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 8
  %dma9 = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer, i32 0, i32 5
  %8 = ptrtoint ptr %dma9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma9, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %9, i32 noundef %.sink29, i32 noundef 1, i32 noundef 0) #10
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %10 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tx_buffer, align 4
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %skb, align 4
  %len14 = getelementptr inbounds %struct.fm10k_tx_buffer, ptr %tx_buffer, i32 0, i32 6
  %12 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %len14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_free_tx_resources(ptr nocapture noundef %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fm10k_clean_tx_ring(ptr noundef %tx_ring)
  %0 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @vfree(ptr noundef %2) #10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %0, align 4
  %desc = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 4
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 9
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %dma = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 8
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 32
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #10
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %desc, align 16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_clean_tx_ring(ptr nocapture noundef readonly %tx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 14
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp17.not = icmp eq i16 %4, 0
  br i1 %cmp17.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev8.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %fm10k_unmap_and_free_tx_resource.exit.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %fm10k_unmap_and_free_tx_resource.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr %struct.fm10k_tx_buffer, ptr %6, i32 %indvars.iv
  %skb.i = getelementptr %struct.fm10k_tx_buffer, ptr %6, i32 %indvars.iv, i32 1
  %7 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %8, i32 noundef 1) #10
  %len.i = getelementptr %struct.fm10k_tx_buffer, ptr %6, i32 %indvars.iv, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %if.then.i.fm10k_unmap_and_free_tx_resource.exit_crit_edge, label %if.then.i.if.end12.sink.split.i_crit_edge

if.then.i.if.end12.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.sink.split.i

if.then.i.fm10k_unmap_and_free_tx_resource.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_unmap_and_free_tx_resource.exit

if.else.i:                                        ; preds = %for.body
  %len5.i = getelementptr %struct.fm10k_tx_buffer, ptr %6, i32 %indvars.iv, i32 6
  %11 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.i = icmp eq i32 %12, 0
  br i1 %tobool6.not.i, label %if.else.i.fm10k_unmap_and_free_tx_resource.exit_crit_edge, label %if.else.i.if.end12.sink.split.i_crit_edge

if.else.i.if.end12.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.sink.split.i

if.else.i.fm10k_unmap_and_free_tx_resource.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_unmap_and_free_tx_resource.exit

if.end12.sink.split.i:                            ; preds = %if.else.i.if.end12.sink.split.i_crit_edge, %if.then.i.if.end12.sink.split.i_crit_edge
  %.sink29.i = phi i32 [ %10, %if.then.i.if.end12.sink.split.i_crit_edge ], [ %12, %if.else.i.if.end12.sink.split.i_crit_edge ]
  %13 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8.i, align 8
  %dma9.i = getelementptr %struct.fm10k_tx_buffer, ptr %6, i32 %indvars.iv, i32 5
  %15 = ptrtoint ptr %dma9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma9.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %16, i32 noundef %.sink29.i, i32 noundef 1, i32 noundef 0) #10
  br label %fm10k_unmap_and_free_tx_resource.exit

fm10k_unmap_and_free_tx_resource.exit:            ; preds = %if.end12.sink.split.i, %if.else.i.fm10k_unmap_and_free_tx_resource.exit_crit_edge, %if.then.i.fm10k_unmap_and_free_tx_resource.exit_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %skb.i, align 4
  %len14.i = getelementptr %struct.fm10k_tx_buffer, ptr %6, i32 %indvars.iv, i32 6
  %19 = ptrtoint ptr %len14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %len14.i, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %count, align 2
  %22 = zext i16 %21 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %22
  br i1 %cmp, label %fm10k_unmap_and_free_tx_resource.exit.for.body_crit_edge, label %fm10k_unmap_and_free_tx_resource.exit.for.end_crit_edge

fm10k_unmap_and_free_tx_resource.exit.for.end_crit_edge: ; preds = %fm10k_unmap_and_free_tx_resource.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

fm10k_unmap_and_free_tx_resource.exit.for.body_crit_edge: ; preds = %fm10k_unmap_and_free_tx_resource.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %fm10k_unmap_and_free_tx_resource.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %netdev.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 1
  %23 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev.i, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i, align 128
  %queue_index.i = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 10
  %27 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %queue_index.i, align 8
  %idxprom.i = zext i8 %28 to i32
  %state.i = getelementptr %struct.netdev_queue, ptr %26, i32 %idxprom.i, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #10
  %dql.i = getelementptr %struct.netdev_queue, ptr %26, i32 %idxprom.i, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #10
  %29 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %count, align 2
  %conv4 = zext i16 %30 to i32
  %mul = mul nuw nsw i32 %conv4, 24
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %0, align 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 %mul)
  %desc = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 4
  %34 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc, align 16
  %size5 = getelementptr inbounds %struct.fm10k_ring, ptr %tx_ring, i32 0, i32 9
  %36 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size5, align 4
  %38 = call ptr @memset(ptr %35, i32 0, i32 %37)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_clean_all_tx_rings(ptr nocapture noundef readonly %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 7
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 12, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @fm10k_clean_tx_ring(ptr noundef %3)
  %inc = add nuw nsw i32 %i.05, 1
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 8
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_free_rx_resources(ptr nocapture noundef %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fm10k_clean_rx_ring(ptr noundef %rx_ring)
  %0 = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @vfree(ptr noundef %2) #10
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %0, align 4
  %desc = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 4
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 9
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %dma = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 8
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 32
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #10
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %desc, align 16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_clean_rx_ring(ptr nocapture noundef %rx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.end

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.end:                                           ; preds = %entry
  %skb = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 20, i32 0, i32 1
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 8
  tail call void @consume_skb(ptr noundef %4) #10
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %skb, align 8
  %count = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 14
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp33.not = icmp eq i16 %7, 0
  br i1 %cmp33.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %dev = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %page = getelementptr %struct.fm10k_rx_buffer, ptr %9, i32 %indvars.iv, i32 1
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.fm10k_rx_buffer, ptr %9, i32 %indvars.iv
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %15, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #10
  %16 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %page, align 4
  tail call void @__free_pages(ptr noundef %17, i32 noundef 0) #10
  %18 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %page, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.body.cleanup_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %count, align 2
  %21 = zext i16 %20 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %21
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end.loopexit

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast = zext i16 %20 to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end.loopexit ], [ 0, %if.end.for.end_crit_edge ]
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 %.lcssa)
  %desc = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 4
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 16
  %size11 = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 9
  %27 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size11, align 4
  %29 = call ptr @memset(ptr %26, i32 0, i32 %28)
  %next_to_alloc = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 15
  %30 = ptrtoint ptr %next_to_alloc to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %next_to_alloc, align 16
  %next_to_clean = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 17
  %31 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.fm10k_ring, ptr %rx_ring, i32 0, i32 16
  %32 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %next_to_use, align 2
  br label %cleanup12

cleanup12:                                        ; preds = %for.end, %entry.cleanup12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_clean_all_rx_rings(ptr nocapture noundef readonly %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_queues = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 9
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 34, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @fm10k_clean_rx_ring(ptr noundef %3)
  %inc = add nuw nsw i32 %i.05, 1
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues, align 32
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_tx_queues.i = getelementptr i8, ptr %netdev, i32 2840
  %0 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.i = icmp sgt i32 %1, 0
  br i1 %cmp21.i, label %entry.for.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %i.022.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @fm10k_setup_tx_resources(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 18580
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msg_enable.i, align 4
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not.i = icmp eq i16 %6, 0
  br i1 %tobool1.not.i, label %do.body.i.err_setup_tx.i_crit_edge, label %if.then2.i

do.body.i.err_setup_tx.i_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_setup_tx.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %netdev.i = getelementptr i8, ptr %netdev, i32 2816
  %7 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef %i.022.i) #14
  br label %err_setup_tx.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %9 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

err_setup_tx.i:                                   ; preds = %if.then2.i, %do.body.i.err_setup_tx.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022.i)
  %tobool4.not23.i = icmp eq i32 %i.022.i, 0
  br i1 %tobool4.not23.i, label %err_setup_tx.i.cleanup_crit_edge, label %err_setup_tx.i.while.body.i_crit_edge

err_setup_tx.i.while.body.i_crit_edge:            ; preds = %err_setup_tx.i
  br label %while.body.i

err_setup_tx.i.cleanup_crit_edge:                 ; preds = %err_setup_tx.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %fm10k_free_tx_resources.exit.i.while.body.i_crit_edge, %err_setup_tx.i.while.body.i_crit_edge
  %i.124.i = phi i32 [ %dec.i, %fm10k_free_tx_resources.exit.i.while.body.i_crit_edge ], [ %i.022.i, %err_setup_tx.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.124.i, -1
  %arrayidx6.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %dec.i
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6.i, align 4
  tail call fastcc void @fm10k_clean_tx_ring(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.fm10k_ring, ptr %12, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @vfree(ptr noundef %15) #10
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %13, align 4
  %desc.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %while.body.i.fm10k_free_tx_resources.exit.i_crit_edge, label %if.end.i.i

while.body.i.fm10k_free_tx_resources.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_tx_resources.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %12, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %12, i32 0, i32 9
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %12, i32 0, i32 8
  %23 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma.i.i, align 32
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %18, i32 noundef %24, i32 noundef 0) #10
  %25 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %desc.i.i, align 16
  br label %fm10k_free_tx_resources.exit.i

fm10k_free_tx_resources.exit.i:                   ; preds = %if.end.i.i, %while.body.i.fm10k_free_tx_resources.exit.i_crit_edge
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %fm10k_free_tx_resources.exit.i.cleanup_crit_edge, label %fm10k_free_tx_resources.exit.i.while.body.i_crit_edge

fm10k_free_tx_resources.exit.i.while.body.i_crit_edge: ; preds = %fm10k_free_tx_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

fm10k_free_tx_resources.exit.i.cleanup_crit_edge: ; preds = %fm10k_free_tx_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %num_rx_queues.i = getelementptr i8, ptr %netdev, i32 2848
  %26 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_rx_queues.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp21.i35 = icmp sgt i32 %27, 0
  br i1 %cmp21.i35, label %if.end.for.body.i40_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.for.body.i40_crit_edge:                    ; preds = %if.end
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.inc.i48.for.body.i40_crit_edge, %if.end.for.body.i40_crit_edge
  %i.022.i36 = phi i32 [ %inc.i46, %for.inc.i48.for.body.i40_crit_edge ], [ 0, %if.end.for.body.i40_crit_edge ]
  %arrayidx.i37 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.022.i36
  %28 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i37, align 4
  %call.i38 = tail call i32 @fm10k_setup_rx_resources(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %for.inc.i48, label %do.body.i43

do.body.i43:                                      ; preds = %for.body.i40
  %msg_enable.i41 = getelementptr i8, ptr %netdev, i32 18580
  %30 = ptrtoint ptr %msg_enable.i41 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %msg_enable.i41, align 4
  %32 = and i16 %31, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool1.not.i42 = icmp eq i16 %32, 0
  br i1 %tobool1.not.i42, label %do.body.i43.err_setup_rx.i_crit_edge, label %if.then2.i45

do.body.i43.err_setup_rx.i_crit_edge:             ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_setup_rx.i

if.then2.i45:                                     ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #12
  %netdev.i44 = getelementptr i8, ptr %netdev, i32 2816
  %33 = ptrtoint ptr %netdev.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev.i44, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.3, i32 noundef %i.022.i36) #14
  br label %err_setup_rx.i

for.inc.i48:                                      ; preds = %for.body.i40
  %inc.i46 = add nuw nsw i32 %i.022.i36, 1
  %35 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_rx_queues.i, align 32
  %cmp.i47 = icmp slt i32 %inc.i46, %36
  br i1 %cmp.i47, label %for.inc.i48.for.body.i40_crit_edge, label %for.inc.i48.if.end5_crit_edge

for.inc.i48.if.end5_crit_edge:                    ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.i48.for.body.i40_crit_edge:               ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i40

err_setup_rx.i:                                   ; preds = %if.then2.i45, %do.body.i43.err_setup_rx.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022.i36)
  %tobool4.not23.i49 = icmp eq i32 %i.022.i36, 0
  br i1 %tobool4.not23.i49, label %err_setup_rx.i.err_setup_rx_crit_edge, label %err_setup_rx.i.while.body.i55_crit_edge

err_setup_rx.i.while.body.i55_crit_edge:          ; preds = %err_setup_rx.i
  br label %while.body.i55

err_setup_rx.i.err_setup_rx_crit_edge:            ; preds = %err_setup_rx.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_setup_rx

while.body.i55:                                   ; preds = %fm10k_free_rx_resources.exit.i.while.body.i55_crit_edge, %err_setup_rx.i.while.body.i55_crit_edge
  %i.124.i50 = phi i32 [ %dec.i51, %fm10k_free_rx_resources.exit.i.while.body.i55_crit_edge ], [ %i.022.i36, %err_setup_rx.i.while.body.i55_crit_edge ]
  %dec.i51 = add nsw i32 %i.124.i50, -1
  %arrayidx6.i52 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %dec.i51
  %37 = ptrtoint ptr %arrayidx6.i52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx6.i52, align 4
  tail call fastcc void @fm10k_clean_rx_ring(ptr noundef %38) #10
  %39 = getelementptr inbounds %struct.fm10k_ring, ptr %38, i32 0, i32 5
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  tail call void @vfree(ptr noundef %41) #10
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %39, align 4
  %desc.i.i53 = getelementptr inbounds %struct.fm10k_ring, ptr %38, i32 0, i32 4
  %43 = ptrtoint ptr %desc.i.i53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc.i.i53, align 16
  %tobool.not.i.i54 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i54, label %while.body.i55.fm10k_free_rx_resources.exit.i_crit_edge, label %if.end.i.i59

while.body.i55.fm10k_free_rx_resources.exit.i_crit_edge: ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_rx_resources.exit.i

if.end.i.i59:                                     ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i56 = getelementptr inbounds %struct.fm10k_ring, ptr %38, i32 0, i32 2
  %45 = ptrtoint ptr %dev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i56, align 8
  %size.i.i57 = getelementptr inbounds %struct.fm10k_ring, ptr %38, i32 0, i32 9
  %47 = ptrtoint ptr %size.i.i57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i.i57, align 4
  %dma.i.i58 = getelementptr inbounds %struct.fm10k_ring, ptr %38, i32 0, i32 8
  %49 = ptrtoint ptr %dma.i.i58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma.i.i58, align 32
  tail call void @dma_free_attrs(ptr noundef %46, i32 noundef %48, ptr noundef nonnull %44, i32 noundef %50, i32 noundef 0) #10
  %51 = ptrtoint ptr %desc.i.i53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %desc.i.i53, align 16
  br label %fm10k_free_rx_resources.exit.i

fm10k_free_rx_resources.exit.i:                   ; preds = %if.end.i.i59, %while.body.i55.fm10k_free_rx_resources.exit.i_crit_edge
  %tobool4.not.i60 = icmp eq i32 %dec.i51, 0
  br i1 %tobool4.not.i60, label %fm10k_free_rx_resources.exit.i.err_setup_rx_crit_edge, label %fm10k_free_rx_resources.exit.i.while.body.i55_crit_edge

fm10k_free_rx_resources.exit.i.while.body.i55_crit_edge: ; preds = %fm10k_free_rx_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i55

fm10k_free_rx_resources.exit.i.err_setup_rx_crit_edge: ; preds = %fm10k_free_rx_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_setup_rx

if.end5:                                          ; preds = %for.inc.i48.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @fm10k_qv_request_irq(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_req_irq_crit_edge

if.end5.err_req_irq_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_req_irq

if.end9:                                          ; preds = %if.end5
  %dglort_map.i = getelementptr i8, ptr %netdev, i32 15664
  %52 = ptrtoint ptr %dglort_map.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dglort_map.i, align 8
  %conv4.i = trunc i32 %53 to i16
  %glort.i = getelementptr i8, ptr %netdev, i32 19030
  %54 = ptrtoint ptr %glort.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv4.i, ptr %glort.i, align 2
  %glort_count.i = getelementptr i8, ptr %netdev, i32 19032
  %55 = ptrtoint ptr %glort_count.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %glort_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %53)
  %cmp.i62 = icmp eq i32 %53, 65535
  br i1 %cmp.i62, label %if.end9.fm10k_request_glort_range.exit_crit_edge, label %if.end.i

if.end9.fm10k_request_glort_range.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_request_glort_range.exit

if.end.i:                                         ; preds = %if.end9
  %neg.i = xor i32 %53, -1
  %shr.i = lshr i32 %neg.i, 16
  %total_vfs.i = getelementptr i8, ptr %netdev, i32 15736
  %56 = ptrtoint ptr %total_vfs.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %total_vfs.i, align 8
  %conv9.i = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv9.i)
  %cmp10.not.i = icmp ugt i32 %shr.i, %conv9.i
  br i1 %cmp10.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %glort_count.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %glort_count.i, align 8
  %59 = trunc i32 %shr.i to i16
  %conv17.i = add i16 %59, %conv4.i
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4194305, i32 %53)
  %cmp19.i = icmp ugt i32 %53, -4194305
  br i1 %cmp19.i, label %if.then21.i, label %if.else32.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add23.i = add nuw nsw i32 %shr.i, 1
  %div59.i = lshr i32 %add23.i, 1
  %conv24.i = trunc i32 %div59.i to i16
  %60 = ptrtoint ptr %glort_count.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv24.i, ptr %glort_count.i, align 8
  %conv31.i = add i16 %conv24.i, %conv4.i
  br label %cleanup.sink.split.i

if.else32.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = trunc i32 %shr.i to i16
  %conv34.i = add i16 %61, -63
  %62 = ptrtoint ptr %glort_count.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv34.i, ptr %glort_count.i, align 8
  %add38.i = add i16 %conv4.i, 64
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else32.i, %if.then21.i, %if.then12.i
  %conv17.sink.i = phi i16 [ %conv17.i, %if.then12.i ], [ %add38.i, %if.else32.i ], [ %conv31.i, %if.then21.i ]
  %63 = ptrtoint ptr %glort.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv17.sink.i, ptr %glort.i, align 2
  br label %fm10k_request_glort_range.exit

fm10k_request_glort_range.exit:                   ; preds = %cleanup.sink.split.i, %if.end9.fm10k_request_glort_range.exit_crit_edge
  %64 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_tx_queues.i, align 8
  %call10 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %netdev, i32 noundef %65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %fm10k_request_glort_range.exit.err_set_queues_crit_edge

fm10k_request_glort_range.exit.err_set_queues_crit_edge: ; preds = %fm10k_request_glort_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_set_queues

if.end13:                                         ; preds = %fm10k_request_glort_range.exit
  %66 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_rx_queues.i, align 32
  %call14 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %netdev, i32 noundef %67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_set_queues_crit_edge

if.end13.err_set_queues_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_set_queues

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fm10k_up(ptr noundef %add.ptr.i) #10
  br label %cleanup

err_set_queues:                                   ; preds = %if.end13.err_set_queues_crit_edge, %fm10k_request_glort_range.exit.err_set_queues_crit_edge
  %err.0 = phi i32 [ %call10, %fm10k_request_glort_range.exit.err_set_queues_crit_edge ], [ %call14, %if.end13.err_set_queues_crit_edge ]
  tail call void @fm10k_qv_free_irq(ptr noundef %add.ptr.i) #10
  br label %err_req_irq

err_req_irq:                                      ; preds = %err_set_queues, %if.end5.err_req_irq_crit_edge
  %err.1 = phi i32 [ %call6, %if.end5.err_req_irq_crit_edge ], [ %err.0, %err_set_queues ]
  %68 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_rx_queues.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not3.i = icmp eq i32 %69, 0
  br i1 %tobool.not3.i, label %err_req_irq.err_setup_rx_crit_edge, label %err_req_irq.while.body.i68_crit_edge

err_req_irq.while.body.i68_crit_edge:             ; preds = %err_req_irq
  br label %while.body.i68

err_req_irq.err_setup_rx_crit_edge:               ; preds = %err_req_irq
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_setup_rx

while.body.i68:                                   ; preds = %fm10k_free_rx_resources.exit.i74.while.body.i68_crit_edge, %err_req_irq.while.body.i68_crit_edge
  %i.04.i = phi i32 [ %dec.i64, %fm10k_free_rx_resources.exit.i74.while.body.i68_crit_edge ], [ %69, %err_req_irq.while.body.i68_crit_edge ]
  %dec.i64 = add i32 %i.04.i, -1
  %arrayidx.i65 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %dec.i64
  %70 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i65, align 4
  tail call fastcc void @fm10k_clean_rx_ring(ptr noundef %71) #10
  %72 = getelementptr inbounds %struct.fm10k_ring, ptr %71, i32 0, i32 5
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  tail call void @vfree(ptr noundef %74) #10
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %72, align 4
  %desc.i.i66 = getelementptr inbounds %struct.fm10k_ring, ptr %71, i32 0, i32 4
  %76 = ptrtoint ptr %desc.i.i66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %desc.i.i66, align 16
  %tobool.not.i.i67 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i67, label %while.body.i68.fm10k_free_rx_resources.exit.i74_crit_edge, label %if.end.i.i72

while.body.i68.fm10k_free_rx_resources.exit.i74_crit_edge: ; preds = %while.body.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_rx_resources.exit.i74

if.end.i.i72:                                     ; preds = %while.body.i68
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i69 = getelementptr inbounds %struct.fm10k_ring, ptr %71, i32 0, i32 2
  %78 = ptrtoint ptr %dev.i.i69 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i69, align 8
  %size.i.i70 = getelementptr inbounds %struct.fm10k_ring, ptr %71, i32 0, i32 9
  %80 = ptrtoint ptr %size.i.i70 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size.i.i70, align 4
  %dma.i.i71 = getelementptr inbounds %struct.fm10k_ring, ptr %71, i32 0, i32 8
  %82 = ptrtoint ptr %dma.i.i71 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma.i.i71, align 32
  tail call void @dma_free_attrs(ptr noundef %79, i32 noundef %81, ptr noundef nonnull %77, i32 noundef %83, i32 noundef 0) #10
  %84 = ptrtoint ptr %desc.i.i66 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %desc.i.i66, align 16
  br label %fm10k_free_rx_resources.exit.i74

fm10k_free_rx_resources.exit.i74:                 ; preds = %if.end.i.i72, %while.body.i68.fm10k_free_rx_resources.exit.i74_crit_edge
  %tobool.not.i73 = icmp eq i32 %dec.i64, 0
  br i1 %tobool.not.i73, label %fm10k_free_rx_resources.exit.i74.err_setup_rx_crit_edge, label %fm10k_free_rx_resources.exit.i74.while.body.i68_crit_edge

fm10k_free_rx_resources.exit.i74.while.body.i68_crit_edge: ; preds = %fm10k_free_rx_resources.exit.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i68

fm10k_free_rx_resources.exit.i74.err_setup_rx_crit_edge: ; preds = %fm10k_free_rx_resources.exit.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_setup_rx

err_setup_rx:                                     ; preds = %fm10k_free_rx_resources.exit.i74.err_setup_rx_crit_edge, %err_req_irq.err_setup_rx_crit_edge, %fm10k_free_rx_resources.exit.i.err_setup_rx_crit_edge, %err_setup_rx.i.err_setup_rx_crit_edge
  %err.2 = phi i32 [ %err.1, %err_req_irq.err_setup_rx_crit_edge ], [ %call.i38, %err_setup_rx.i.err_setup_rx_crit_edge ], [ %err.1, %fm10k_free_rx_resources.exit.i74.err_setup_rx_crit_edge ], [ %call.i38, %fm10k_free_rx_resources.exit.i.err_setup_rx_crit_edge ]
  %85 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not3.i76 = icmp eq i32 %86, 0
  br i1 %tobool.not3.i76, label %err_setup_rx.cleanup_crit_edge, label %err_setup_rx.while.body.i82_crit_edge

err_setup_rx.while.body.i82_crit_edge:            ; preds = %err_setup_rx
  br label %while.body.i82

err_setup_rx.cleanup_crit_edge:                   ; preds = %err_setup_rx
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i82:                                   ; preds = %fm10k_free_tx_resources.exit.i88.while.body.i82_crit_edge, %err_setup_rx.while.body.i82_crit_edge
  %i.04.i77 = phi i32 [ %dec.i78, %fm10k_free_tx_resources.exit.i88.while.body.i82_crit_edge ], [ %86, %err_setup_rx.while.body.i82_crit_edge ]
  %dec.i78 = add i32 %i.04.i77, -1
  %arrayidx.i79 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %dec.i78
  %87 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i79, align 4
  tail call fastcc void @fm10k_clean_tx_ring(ptr noundef %88) #10
  %89 = getelementptr inbounds %struct.fm10k_ring, ptr %88, i32 0, i32 5
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  tail call void @vfree(ptr noundef %91) #10
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %89, align 4
  %desc.i.i80 = getelementptr inbounds %struct.fm10k_ring, ptr %88, i32 0, i32 4
  %93 = ptrtoint ptr %desc.i.i80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %desc.i.i80, align 16
  %tobool.not.i.i81 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i81, label %while.body.i82.fm10k_free_tx_resources.exit.i88_crit_edge, label %if.end.i.i86

while.body.i82.fm10k_free_tx_resources.exit.i88_crit_edge: ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_tx_resources.exit.i88

if.end.i.i86:                                     ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i83 = getelementptr inbounds %struct.fm10k_ring, ptr %88, i32 0, i32 2
  %95 = ptrtoint ptr %dev.i.i83 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i.i83, align 8
  %size.i.i84 = getelementptr inbounds %struct.fm10k_ring, ptr %88, i32 0, i32 9
  %97 = ptrtoint ptr %size.i.i84 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %size.i.i84, align 4
  %dma.i.i85 = getelementptr inbounds %struct.fm10k_ring, ptr %88, i32 0, i32 8
  %99 = ptrtoint ptr %dma.i.i85 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma.i.i85, align 32
  tail call void @dma_free_attrs(ptr noundef %96, i32 noundef %98, ptr noundef nonnull %94, i32 noundef %100, i32 noundef 0) #10
  %101 = ptrtoint ptr %desc.i.i80 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %desc.i.i80, align 16
  br label %fm10k_free_tx_resources.exit.i88

fm10k_free_tx_resources.exit.i88:                 ; preds = %if.end.i.i86, %while.body.i82.fm10k_free_tx_resources.exit.i88_crit_edge
  %tobool.not.i87 = icmp eq i32 %dec.i78, 0
  br i1 %tobool.not.i87, label %fm10k_free_tx_resources.exit.i88.cleanup_crit_edge, label %fm10k_free_tx_resources.exit.i88.while.body.i82_crit_edge

fm10k_free_tx_resources.exit.i88.while.body.i82_crit_edge: ; preds = %fm10k_free_tx_resources.exit.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i82

fm10k_free_tx_resources.exit.i88.cleanup_crit_edge: ; preds = %fm10k_free_tx_resources.exit.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %fm10k_free_tx_resources.exit.i88.cleanup_crit_edge, %err_setup_rx.cleanup_crit_edge, %if.end17, %fm10k_free_tx_resources.exit.i.cleanup_crit_edge, %err_setup_tx.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %err.2, %err_setup_rx.cleanup_crit_edge ], [ %call.i, %err_setup_tx.i.cleanup_crit_edge ], [ %err.2, %fm10k_free_tx_resources.exit.i88.cleanup_crit_edge ], [ %call.i, %fm10k_free_tx_resources.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_qv_request_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_qv_free_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_close(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @fm10k_down(ptr noundef %add.ptr.i) #10
  tail call void @fm10k_qv_free_irq(ptr noundef %add.ptr.i) #10
  %num_tx_queues.i = getelementptr i8, ptr %netdev, i32 2840
  %0 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not3.i = icmp eq i32 %1, 0
  br i1 %tobool.not3.i, label %entry.fm10k_free_all_tx_resources.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.fm10k_free_all_tx_resources.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_all_tx_resources.exit

while.body.i:                                     ; preds = %fm10k_free_tx_resources.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %i.04.i = phi i32 [ %dec.i, %fm10k_free_tx_resources.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %i.04.i, -1
  %arrayidx.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %dec.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @fm10k_clean_tx_ring(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.fm10k_ring, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @vfree(ptr noundef %6) #10
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %4, align 4
  %desc.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %while.body.i.fm10k_free_tx_resources.exit.i_crit_edge, label %if.end.i.i

while.body.i.fm10k_free_tx_resources.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_tx_resources.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.fm10k_ring, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma.i.i, align 32
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %9, i32 noundef %15, i32 noundef 0) #10
  %16 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc.i.i, align 16
  br label %fm10k_free_tx_resources.exit.i

fm10k_free_tx_resources.exit.i:                   ; preds = %if.end.i.i, %while.body.i.fm10k_free_tx_resources.exit.i_crit_edge
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %fm10k_free_tx_resources.exit.i.fm10k_free_all_tx_resources.exit_crit_edge, label %fm10k_free_tx_resources.exit.i.while.body.i_crit_edge

fm10k_free_tx_resources.exit.i.while.body.i_crit_edge: ; preds = %fm10k_free_tx_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

fm10k_free_tx_resources.exit.i.fm10k_free_all_tx_resources.exit_crit_edge: ; preds = %fm10k_free_tx_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_all_tx_resources.exit

fm10k_free_all_tx_resources.exit:                 ; preds = %fm10k_free_tx_resources.exit.i.fm10k_free_all_tx_resources.exit_crit_edge, %entry.fm10k_free_all_tx_resources.exit_crit_edge
  %num_rx_queues.i = getelementptr i8, ptr %netdev, i32 2848
  %17 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_rx_queues.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not3.i4 = icmp eq i32 %18, 0
  br i1 %tobool.not3.i4, label %fm10k_free_all_tx_resources.exit.fm10k_free_all_rx_resources.exit_crit_edge, label %fm10k_free_all_tx_resources.exit.while.body.i10_crit_edge

fm10k_free_all_tx_resources.exit.while.body.i10_crit_edge: ; preds = %fm10k_free_all_tx_resources.exit
  br label %while.body.i10

fm10k_free_all_tx_resources.exit.fm10k_free_all_rx_resources.exit_crit_edge: ; preds = %fm10k_free_all_tx_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_all_rx_resources.exit

while.body.i10:                                   ; preds = %fm10k_free_rx_resources.exit.i.while.body.i10_crit_edge, %fm10k_free_all_tx_resources.exit.while.body.i10_crit_edge
  %i.04.i5 = phi i32 [ %dec.i6, %fm10k_free_rx_resources.exit.i.while.body.i10_crit_edge ], [ %18, %fm10k_free_all_tx_resources.exit.while.body.i10_crit_edge ]
  %dec.i6 = add i32 %i.04.i5, -1
  %arrayidx.i7 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %dec.i6
  %19 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i7, align 4
  tail call fastcc void @fm10k_clean_rx_ring(ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.fm10k_ring, ptr %20, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void @vfree(ptr noundef %23) #10
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %21, align 4
  %desc.i.i8 = getelementptr inbounds %struct.fm10k_ring, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %desc.i.i8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc.i.i8, align 16
  %tobool.not.i.i9 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i9, label %while.body.i10.fm10k_free_rx_resources.exit.i_crit_edge, label %if.end.i.i14

while.body.i10.fm10k_free_rx_resources.exit.i_crit_edge: ; preds = %while.body.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_rx_resources.exit.i

if.end.i.i14:                                     ; preds = %while.body.i10
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i11 = getelementptr inbounds %struct.fm10k_ring, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i11, align 8
  %size.i.i12 = getelementptr inbounds %struct.fm10k_ring, ptr %20, i32 0, i32 9
  %29 = ptrtoint ptr %size.i.i12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i.i12, align 4
  %dma.i.i13 = getelementptr inbounds %struct.fm10k_ring, ptr %20, i32 0, i32 8
  %31 = ptrtoint ptr %dma.i.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma.i.i13, align 32
  tail call void @dma_free_attrs(ptr noundef %28, i32 noundef %30, ptr noundef nonnull %26, i32 noundef %32, i32 noundef 0) #10
  %33 = ptrtoint ptr %desc.i.i8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %desc.i.i8, align 16
  br label %fm10k_free_rx_resources.exit.i

fm10k_free_rx_resources.exit.i:                   ; preds = %if.end.i.i14, %while.body.i10.fm10k_free_rx_resources.exit.i_crit_edge
  %tobool.not.i15 = icmp eq i32 %dec.i6, 0
  br i1 %tobool.not.i15, label %fm10k_free_rx_resources.exit.i.fm10k_free_all_rx_resources.exit_crit_edge, label %fm10k_free_rx_resources.exit.i.while.body.i10_crit_edge

fm10k_free_rx_resources.exit.i.while.body.i10_crit_edge: ; preds = %fm10k_free_rx_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i10

fm10k_free_rx_resources.exit.i.fm10k_free_all_rx_resources.exit_crit_edge: ; preds = %fm10k_free_rx_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_free_all_rx_resources.exit

fm10k_free_all_rx_resources.exit:                 ; preds = %fm10k_free_rx_resources.exit.i.fm10k_free_all_rx_resources.exit_crit_edge, %fm10k_free_all_tx_resources.exit.fm10k_free_all_rx_resources.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_queue_vlan_request(ptr noundef %interface, i32 noundef %vid, i8 noundef zeroext %vsi, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 28) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %set to i8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %call7.i.i, align 8
  %2 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %vid, ptr %2, align 4
  %vsi2 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %vsi2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %vsi, ptr %vsi2, align 8
  %set4 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %set4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %set4, align 8
  %macvlan_lock = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 62
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock) #10
  %list = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 1
  %macvlan_requests = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60
  %prev.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %macvlan_requests) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %macvlan_requests, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock, i32 noundef %call8) #10
  tail call void @fm10k_macvlan_schedule(ptr noundef %interface) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_macvlan_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_queue_mac_request(ptr noundef %interface, i16 noundef zeroext %glort, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 28) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %set to i8
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  %3 = lshr i32 %2, 24
  %.lobit = and i32 %3, 1
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.lobit, ptr %call7.i.i, align 8
  %5 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 8
  %glort6 = getelementptr inbounds %struct.fm10k_mac_request, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %glort6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %glort, ptr %glort6, align 2
  %vid7 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %vid7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %vid, ptr %vid7, align 4
  %set9 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %set9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %set9, align 8
  %macvlan_lock = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 62
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock) #10
  %list = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 1
  %macvlan_requests = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60
  %prev.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %14, ptr noundef %macvlan_requests) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %macvlan_requests, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 8
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock, i32 noundef %call13) #10
  tail call void @fm10k_macvlan_schedule(ptr noundef %interface) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_clear_macvlan_queue(ptr noundef %interface, i16 noundef zeroext %glort, i1 noundef zeroext %vlans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %macvlan_lock = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 62
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock) #10
  %macvlan_requests = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60
  %0 = ptrtoint ptr %macvlan_requests to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %macvlan_requests, align 8
  %cmp13.not42 = icmp eq ptr %1, %macvlan_requests
  br i1 %cmp13.not42, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in43 = phi ptr [ %.pn46, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %r.045 = getelementptr i8, ptr %.pn.in43, i32 -4
  %2 = ptrtoint ptr %.pn.in43 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn46 = load ptr, ptr %.pn.in43, align 4
  %3 = ptrtoint ptr %r.045 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r.045, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %for.body.for.inc_crit_edge [
    i32 1, label %for.body.sw.bb_crit_edge
    i32 0, label %for.body.sw.bb_crit_edge47
    i32 2, label %sw.bb20
  ]

for.body.sw.bb_crit_edge47:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge47
  %glort15 = getelementptr i8, ptr %.pn.in43, i32 14
  %6 = ptrtoint ptr %glort15 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %glort15, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %glort)
  %cmp18.not = icmp eq i16 %7, %glort
  %8 = and i1 %cmp18.not, %vlans
  br i1 %8, label %sw.bb.if.then21_crit_edge, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb.if.then21_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.bb20:                                          ; preds = %for.body
  br i1 %vlans, label %sw.bb20.if.then21_crit_edge, label %sw.bb20.for.inc_crit_edge

sw.bb20.for.inc_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb20.if.then21_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %sw.bb20.if.then21_crit_edge, %sw.bb.if.then21_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in43) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_del.exit_crit_edge

if.then21.list_del.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in43, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in43, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then21.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in43 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in43, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in43, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %r.045) #10
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %sw.bb20.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp13.not = icmp eq ptr %.pn46, %macvlan_requests
  br i1 %cmp13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_restore_rx_state(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %l2_accel1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 2
  %0 = ptrtoint ptr %l2_accel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2_accel1, align 4
  %netdev2 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 128
  %hw3 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %glort4 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 66
  %4 = ptrtoint ptr %glort4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %glort4, align 2
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else:                                          ; preds = %entry
  %and6 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else9, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and11 = and i32 %7, 4098
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %. = select i1 %tobool12.not, i32 3, i32 1
  br label %if.end16

if.end16:                                         ; preds = %if.else9, %if.else.if.end16_crit_edge, %entry.if.end16_crit_edge
  %xcast_mode.0 = phi i32 [ 2, %entry.if.end16_crit_edge ], [ 0, %if.else.if.end16_crit_edge ], [ %., %if.else9 ]
  %8 = xor i1 %tobool.not, true
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i) #10
  %type.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  br i1 %cmp.i, label %if.end16.if.then17_crit_edge, label %fm10k_host_mbx_ready.exit

if.end16.if.then17_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

fm10k_host_mbx_ready.exit:                        ; preds = %if.end16
  %host_ready.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 54
  %11 = ptrtoint ptr %host_ready.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %host_ready.i, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not = icmp eq i8 %12, 0
  br i1 %tobool.i.not, label %fm10k_host_mbx_ready.exit.if.end19_crit_edge, label %fm10k_host_mbx_ready.exit.if.then17_crit_edge

fm10k_host_mbx_ready.exit.if.then17_crit_edge:    ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

fm10k_host_mbx_ready.exit.if.end19_crit_edge:     ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %fm10k_host_mbx_ready.exit.if.then17_crit_edge, %if.end16.if.then17_crit_edge
  %update_lport_state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 13
  %13 = ptrtoint ptr %update_lport_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %update_lport_state, align 4
  %glort_count = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 67
  %15 = ptrtoint ptr %glort_count to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %glort_count, align 8
  %call18 = tail call i32 %14(ptr noundef %hw3, i16 noundef zeroext %5, i16 noundef zeroext %16, i1 noundef zeroext true) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %fm10k_host_mbx_ready.exit.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2848, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end19.fm10k_queue_vlan_request.exit_crit_edge, label %if.end.i

if.end19.fm10k_queue_vlan_request.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_queue_vlan_request.exit

if.end.i:                                         ; preds = %if.end19
  %frombool.i = zext i1 %8 to i8
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %call7.i.i.i, align 8
  %19 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 268369920, ptr %19, align 4
  %vsi2.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %vsi2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %vsi2.i, align 8
  %set4.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %set4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool.i, ptr %set4.i, align 8
  %macvlan_lock.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 62
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock.i) #10
  %list.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 1
  %macvlan_requests.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60
  %prev.i.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %24, ptr noundef %macvlan_requests.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list.i, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %macvlan_requests.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 8
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list.i, ptr %24, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock.i, i32 noundef %call8.i) #10
  tail call void @fm10k_macvlan_schedule(ptr noundef %interface) #10
  br label %fm10k_queue_vlan_request.exit

fm10k_queue_vlan_request.exit:                    ; preds = %list_add_tail.exit.i, %if.end19.fm10k_queue_vlan_request.exit_crit_edge
  %default_vid2.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 4
  %29 = ptrtoint ptr %default_vid2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %default_vid2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.i144.not = icmp eq i16 %30, 0
  %narrow.i = select i1 %cmp.i144.not, i16 4096, i16 %30
  %spec.select.i = zext i16 %narrow.i to i32
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %interface, i32 noundef %spec.select.i, i32 noundef 1) #10
  %vid.0182 = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vid.0182)
  %cmp22183 = icmp ult i16 %vid.0182, 4096
  br i1 %cmp22183, label %for.body.lr.ph, label %fm10k_queue_vlan_request.exit.for.end44_crit_edge

fm10k_queue_vlan_request.exit.for.end44_crit_edge: ; preds = %fm10k_queue_vlan_request.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.body.lr.ph:                                   ; preds = %fm10k_queue_vlan_request.exit
  %macvlan_lock.i149 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 62
  %macvlan_requests.i152 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60
  %prev.i.i153 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60, i32 1
  %addr = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 2
  %tobool28.not = icmp eq ptr %1, null
  %dglort = getelementptr inbounds %struct.fm10k_l2_accel, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %for.body.lr.ph
  %vid.0186 = phi i16 [ %vid.0182, %for.body.lr.ph ], [ %vid.0, %for.inc42.for.body_crit_edge ]
  %glort.0185 = phi i16 [ %5, %for.body.lr.ph ], [ %glort.3, %for.inc42.for.body_crit_edge ]
  %vid.0.in184 = phi i32 [ %call.i, %for.body.lr.ph ], [ %call.i165, %for.inc42.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i145 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 2848, i32 noundef 28) #15
  %tobool.not.i146 = icmp eq ptr %call7.i.i.i145, null
  br i1 %tobool.not.i146, label %for.body.fm10k_queue_vlan_request.exit160_crit_edge, label %if.end.i155

for.body.fm10k_queue_vlan_request.exit160_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_queue_vlan_request.exit160

if.end.i155:                                      ; preds = %for.body
  %conv = and i32 %vid.0.in184, 65535
  %32 = ptrtoint ptr %call7.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %call7.i.i.i145, align 8
  %33 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i145, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %33, align 4
  %vsi2.i147 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i145, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %vsi2.i147 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %vsi2.i147, align 8
  %set4.i148 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i145, i32 0, i32 3
  %36 = ptrtoint ptr %set4.i148 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %set4.i148, align 8
  %call8.i150 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock.i149) #10
  %list.i151 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i145, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i153, align 4
  %call.i.i.i154 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i151, ptr noundef %38, ptr noundef %macvlan_requests.i152) #10
  br i1 %call.i.i.i154, label %if.end.i.i.i157, label %if.end.i155.list_add_tail.exit.i158_crit_edge

if.end.i155.list_add_tail.exit.i158_crit_edge:    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i158

if.end.i.i.i157:                                  ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list.i151, ptr %prev.i.i153, align 4
  %40 = ptrtoint ptr %list.i151 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %macvlan_requests.i152, ptr %list.i151, align 4
  %prev3.i.i.i156 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i145, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i156, align 8
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %list.i151, ptr %38, align 4
  br label %list_add_tail.exit.i158

list_add_tail.exit.i158:                          ; preds = %if.end.i.i.i157, %if.end.i155.list_add_tail.exit.i158_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock.i149, i32 noundef %call8.i150) #10
  tail call void @fm10k_macvlan_schedule(ptr noundef %interface) #10
  br label %fm10k_queue_vlan_request.exit160

fm10k_queue_vlan_request.exit160:                 ; preds = %list_add_tail.exit.i158, %for.body.fm10k_queue_vlan_request.exit160_crit_edge
  %call27 = tail call i32 @fm10k_queue_mac_request(ptr noundef %interface, i16 noundef zeroext %glort.0185, ptr noundef %addr, i16 noundef zeroext %vid.0186, i1 noundef zeroext true)
  br i1 %tobool28.not, label %fm10k_queue_vlan_request.exit160.for.inc42_crit_edge, label %for.cond30.preheader

fm10k_queue_vlan_request.exit160.for.inc42_crit_edge: ; preds = %fm10k_queue_vlan_request.exit160
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc42

for.cond30.preheader:                             ; preds = %fm10k_queue_vlan_request.exit160
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp31178 = icmp sgt i32 %44, 0
  br i1 %cmp31178, label %for.cond30.preheader.for.body33_crit_edge, label %for.cond30.preheader.for.inc42_crit_edge

for.cond30.preheader.for.inc42_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc42

for.cond30.preheader.for.body33_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body33

for.body33:                                       ; preds = %cleanup.for.body33_crit_edge, %for.cond30.preheader.for.body33_crit_edge
  %glort.1181 = phi i16 [ %glort.2, %cleanup.for.body33_crit_edge ], [ %glort.0185, %for.cond30.preheader.for.body33_crit_edge ]
  %i.0179 = phi i32 [ %inc, %cleanup.for.body33_crit_edge ], [ 0, %for.cond30.preheader.for.body33_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_l2_accel, ptr %1, i32 0, i32 4, i32 %i.0179
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %tobool34.not = icmp eq ptr %46, null
  br i1 %tobool34.not, label %for.body33.cleanup_crit_edge, label %if.end36

for.body33.cleanup_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %dglort to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dglort, align 2
  %49 = trunc i32 %i.0179 to i16
  %50 = add i16 %49, 1
  %conv39 = add i16 %50, %48
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 86
  %51 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr, align 64
  %call40 = tail call i32 @fm10k_queue_mac_request(ptr noundef %interface, i16 noundef zeroext %conv39, ptr noundef %52, i16 noundef zeroext %vid.0186, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %for.body33.cleanup_crit_edge
  %glort.2 = phi i16 [ %conv39, %if.end36 ], [ %glort.1181, %for.body33.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0179, 1
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 4
  %cmp31 = icmp slt i32 %inc, %54
  br i1 %cmp31, label %cleanup.for.body33_crit_edge, label %cleanup.for.inc42_crit_edge

cleanup.for.inc42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc42

cleanup.for.body33_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

for.inc42:                                        ; preds = %cleanup.for.inc42_crit_edge, %for.cond30.preheader.for.inc42_crit_edge, %fm10k_queue_vlan_request.exit160.for.inc42_crit_edge
  %glort.3 = phi i16 [ %glort.0185, %fm10k_queue_vlan_request.exit160.for.inc42_crit_edge ], [ %glort.0185, %for.cond30.preheader.for.inc42_crit_edge ], [ %glort.2, %cleanup.for.inc42_crit_edge ]
  %55 = ptrtoint ptr %default_vid2.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %default_vid2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %vid.0186)
  %cmp.i162 = icmp ugt i16 %56, %vid.0186
  %narrow.i163 = select i1 %cmp.i162, i16 %56, i16 4096
  %spec.select.i164 = zext i16 %narrow.i163 to i32
  %inc.i = add i32 %vid.0.in184, 1
  %conv8.i = and i32 %inc.i, 65535
  %call.i165 = tail call i32 @_find_next_bit_be(ptr noundef %interface, i32 noundef %spec.select.i164, i32 noundef %conv8.i) #10
  %vid.0 = trunc i32 %call.i165 to i16
  %cmp22 = icmp ult i16 %vid.0, 4096
  br i1 %cmp22, label %for.inc42.for.body_crit_edge, label %for.inc42.for.end44_crit_edge

for.inc42.for.end44_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end44:                                        ; preds = %for.inc42.for.end44_crit_edge, %fm10k_queue_vlan_request.exit.for.end44_crit_edge
  %glort.0.lcssa = phi i16 [ %5, %fm10k_queue_vlan_request.exit.for.end44_crit_edge ], [ %glort.3, %for.inc42.for.end44_crit_edge ]
  %57 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp.i168 = icmp eq i32 %58, 2
  br i1 %cmp.i168, label %for.end44.if.then46_crit_edge, label %fm10k_host_mbx_ready.exit172

for.end44.if.then46_crit_edge:                    ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

fm10k_host_mbx_ready.exit172:                     ; preds = %for.end44
  %host_ready.i169 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 54
  %59 = ptrtoint ptr %host_ready.i169 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %host_ready.i169, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.i170.not = icmp eq i8 %60, 0
  br i1 %tobool.i170.not, label %fm10k_host_mbx_ready.exit172.if.end51_crit_edge, label %fm10k_host_mbx_ready.exit172.if.then46_crit_edge

fm10k_host_mbx_ready.exit172.if.then46_crit_edge: ; preds = %fm10k_host_mbx_ready.exit172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

fm10k_host_mbx_ready.exit172.if.end51_crit_edge:  ; preds = %fm10k_host_mbx_ready.exit172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then46:                                        ; preds = %fm10k_host_mbx_ready.exit172.if.then46_crit_edge, %for.end44.if.then46_crit_edge
  %update_xcast_mode = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 11
  %61 = ptrtoint ptr %update_xcast_mode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %update_xcast_mode, align 4
  %conv49 = trunc i32 %xcast_mode.0 to i8
  %call50 = tail call i32 %62(ptr noundef %hw3, i16 noundef zeroext %glort.0.lcssa, i8 noundef zeroext %conv49) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %fm10k_host_mbx_ready.exit172.if.end51_crit_edge
  %uc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 65
  %call.i173 = tail call i32 @__hw_addr_sync_dev(ptr noundef %uc.i, ptr noundef %3, ptr noundef nonnull @fm10k_uc_sync, ptr noundef nonnull @fm10k_uc_unsync) #10
  %mc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 66
  %call.i174 = tail call i32 @__hw_addr_sync_dev(ptr noundef %mc.i, ptr noundef %3, ptr noundef nonnull @fm10k_mc_sync, ptr noundef nonnull @fm10k_mc_unsync) #10
  %tobool54.not = icmp eq ptr %1, null
  br i1 %tobool54.not, label %if.end51.if.end85_crit_edge, label %for.cond56.preheader

if.end51.if.end85_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

for.cond56.preheader:                             ; preds = %if.end51
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp58190 = icmp sgt i32 %64, 0
  br i1 %cmp58190, label %for.body60.lr.ph, label %for.cond56.preheader.if.end85_crit_edge

for.cond56.preheader.if.end85_crit_edge:          ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

for.body60.lr.ph:                                 ; preds = %for.cond56.preheader
  %dglort67 = getelementptr inbounds %struct.fm10k_l2_accel, ptr %1, i32 0, i32 2
  %update_xcast_mode74 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 11
  br label %for.body60

for.body60:                                       ; preds = %cleanup79.for.body60_crit_edge, %for.body60.lr.ph
  %i.1191 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc83, %cleanup79.for.body60_crit_edge ]
  %arrayidx63 = getelementptr %struct.fm10k_l2_accel, ptr %1, i32 0, i32 4, i32 %i.1191
  %65 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %66, null
  br i1 %tobool64.not, label %for.body60.cleanup79_crit_edge, label %if.end66

for.body60.cleanup79_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

if.end66:                                         ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %dglort67 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %dglort67, align 2
  %69 = trunc i32 %i.1191 to i16
  %70 = add i16 %69, 1
  %conv71 = add i16 %70, %68
  %71 = ptrtoint ptr %update_xcast_mode74 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %update_xcast_mode74, align 4
  %call75 = tail call i32 %72(ptr noundef %hw3, i16 noundef zeroext %conv71, i8 noundef zeroext 3) #10
  %dev_addr76 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 86
  %73 = ptrtoint ptr %dev_addr76 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_addr76, align 64
  %75 = ptrtoint ptr %default_vid2.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %default_vid2.i, align 4
  %call78 = tail call i32 @fm10k_queue_mac_request(ptr noundef %interface, i16 noundef zeroext %conv71, ptr noundef %74, i16 noundef zeroext %76, i1 noundef zeroext true)
  br label %cleanup79

cleanup79:                                        ; preds = %if.end66, %for.body60.cleanup79_crit_edge
  %inc83 = add nuw nsw i32 %i.1191, 1
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %1, align 4
  %cmp58 = icmp slt i32 %inc83, %78
  br i1 %cmp58, label %cleanup79.for.body60_crit_edge, label %cleanup79.if.end85_crit_edge

cleanup79.if.end85_crit_edge:                     ; preds = %cleanup79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

cleanup79.for.body60_crit_edge:                   ; preds = %cleanup79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body60

if.end85:                                         ; preds = %cleanup79.if.end85_crit_edge, %for.cond56.preheader.if.end85_crit_edge, %if.end51.if.end85_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #10
  %xcast_mode86 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 6
  %79 = ptrtoint ptr %xcast_mode86 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %xcast_mode.0, ptr %xcast_mode86, align 4
  %80 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.not.i = icmp eq i32 %81, 1
  br i1 %cmp.not.i, label %do.body.i, label %if.end85.fm10k_restore_udp_port_info.exit_crit_edge

if.end85.fm10k_restore_udp_port_info.exit_crit_edge: ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_restore_udp_port_info.exit

do.body.i:                                        ; preds = %if.end85
  %82 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %hw3, align 8
  %tobool.not.i177 = icmp eq ptr %83, null
  br i1 %tobool.not.i177, label %do.body.i.if.end11.i_crit_edge, label %do.body8.i, !prof !39

do.body.i.if.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !40
  tail call void @arm_heavy_mb() #10
  %vxlan_port.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 58
  %84 = ptrtoint ptr %vxlan_port.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %vxlan_port.i, align 4
  %conv.i = zext i16 %85 to i32
  %or.i = or i32 %conv.i, 1700265984
  %86 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %arrayidx.i = getelementptr i32, ptr %83, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %86) #10, !srcloc !41
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.body8.i, %do.body.i.if.end11.i_crit_edge
  %87 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %hw3, align 8
  %tobool21.not.i = icmp eq ptr %88, null
  br i1 %tobool21.not.i, label %if.end11.i.fm10k_restore_udp_port_info.exit_crit_edge, label %do.body31.i, !prof !39

if.end11.i.fm10k_restore_udp_port_info.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_restore_udp_port_info.exit

do.body31.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @arm_heavy_mb() #10
  %geneve_port.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 59
  %89 = ptrtoint ptr %geneve_port.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %geneve_port.i, align 2
  %conv34.i = zext i16 %90 to i32
  %91 = tail call i32 @llvm.bswap.i32(i32 %conv34.i) #10
  %arrayidx35.i = getelementptr i32, ptr %88, i32 65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx35.i, i32 %91) #10, !srcloc !41
  br label %fm10k_restore_udp_port_info.exit

fm10k_restore_udp_port_info.exit:                 ; preds = %do.body31.i, %if.end11.i.fm10k_restore_udp_port_info.exit_crit_edge, %if.end85.fm10k_restore_udp_port_info.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_uc_sync(ptr noundef %dev, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__fm10k_uc_sync(ptr noundef %dev, ptr noundef %addr, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_uc_unsync(ptr noundef %dev, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__fm10k_uc_sync(ptr noundef %dev, ptr noundef %addr, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_mc_sync(ptr noundef %dev, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %glort1.i = getelementptr i8, ptr %dev, i32 19030
  %0 = ptrtoint ptr %glort1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %glort1.i, align 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %entry.__fm10k_mc_sync.exit_crit_edge, label %if.end.i

entry.__fm10k_mc_sync.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm10k_mc_sync.exit

if.end.i:                                         ; preds = %entry
  %default_vid2.i.i = getelementptr i8, ptr %dev, i32 15652
  %5 = ptrtoint ptr %default_vid2.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %default_vid2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 0
  %narrow.i.i = select i1 %cmp.i.not.i, i16 4096, i16 %6
  %spec.select.i.i = zext i16 %narrow.i.i to i32
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i.i, i32 noundef %spec.select.i.i, i32 noundef 1) #10
  %vid.026.i = trunc i32 %call.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vid.026.i)
  %cmp27.i = icmp ult i16 %vid.026.i, 4096
  br i1 %cmp27.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.__fm10k_mc_sync.exit_crit_edge

if.end.i.__fm10k_mc_sync.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm10k_mc_sync.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %vid.029.i = phi i16 [ %vid.0.i, %for.inc.i.for.body.i_crit_edge ], [ %vid.026.i, %if.end.i.for.body.i_crit_edge ]
  %vid.0.in28.i = phi i32 [ %call.i24.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i.i, %if.end.i.for.body.i_crit_edge ]
  %call5.i = tail call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i.i, i16 noundef zeroext %1, ptr noundef %addr, i16 noundef zeroext %vid.029.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %for.inc.i, label %for.body.i.__fm10k_mc_sync.exit_crit_edge

for.body.i.__fm10k_mc_sync.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm10k_mc_sync.exit

for.inc.i:                                        ; preds = %for.body.i
  %7 = ptrtoint ptr %default_vid2.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %default_vid2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %vid.029.i)
  %cmp.i21.i = icmp ugt i16 %8, %vid.029.i
  %narrow.i22.i = select i1 %cmp.i21.i, i16 %8, i16 4096
  %spec.select.i23.i = zext i16 %narrow.i22.i to i32
  %inc.i.i = add i32 %vid.0.in28.i, 1
  %conv8.i.i = and i32 %inc.i.i, 65535
  %call.i24.i = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i.i, i32 noundef %spec.select.i23.i, i32 noundef %conv8.i.i) #10
  %vid.0.i = trunc i32 %call.i24.i to i16
  %cmp.i = icmp ult i16 %vid.0.i, 4096
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.__fm10k_mc_sync.exit_crit_edge

for.inc.i.__fm10k_mc_sync.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm10k_mc_sync.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

__fm10k_mc_sync.exit:                             ; preds = %for.inc.i.__fm10k_mc_sync.exit_crit_edge, %for.body.i.__fm10k_mc_sync.exit_crit_edge, %if.end.i.__fm10k_mc_sync.exit_crit_edge, %entry.__fm10k_mc_sync.exit_crit_edge
  %retval.0.i = phi i32 [ -99, %entry.__fm10k_mc_sync.exit_crit_edge ], [ 0, %if.end.i.__fm10k_mc_sync.exit_crit_edge ], [ 0, %for.inc.i.__fm10k_mc_sync.exit_crit_edge ], [ %call5.i, %for.body.i.__fm10k_mc_sync.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_mc_unsync(ptr noundef %dev, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %glort1.i = getelementptr i8, ptr %dev, i32 19030
  %0 = ptrtoint ptr %glort1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %glort1.i, align 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %entry.__fm10k_mc_sync.exit_crit_edge, label %if.end.i

entry.__fm10k_mc_sync.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm10k_mc_sync.exit

if.end.i:                                         ; preds = %entry
  %default_vid2.i.i = getelementptr i8, ptr %dev, i32 15652
  %5 = ptrtoint ptr %default_vid2.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %default_vid2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 0
  %narrow.i.i = select i1 %cmp.i.not.i, i16 4096, i16 %6
  %spec.select.i.i = zext i16 %narrow.i.i to i32
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i.i, i32 noundef %spec.select.i.i, i32 noundef 1) #10
  %vid.026.i = trunc i32 %call.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vid.026.i)
  %cmp27.i = icmp ult i16 %vid.026.i, 4096
  br i1 %cmp27.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.__fm10k_mc_sync.exit_crit_edge

if.end.i.__fm10k_mc_sync.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm10k_mc_sync.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %vid.029.i = phi i16 [ %vid.0.i, %for.inc.i.for.body.i_crit_edge ], [ %vid.026.i, %if.end.i.for.body.i_crit_edge ]
  %vid.0.in28.i = phi i32 [ %call.i24.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i.i, %if.end.i.for.body.i_crit_edge ]
  %call5.i = tail call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i.i, i16 noundef zeroext %1, ptr noundef %addr, i16 noundef zeroext %vid.029.i, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %for.inc.i, label %for.body.i.__fm10k_mc_sync.exit_crit_edge

for.body.i.__fm10k_mc_sync.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm10k_mc_sync.exit

for.inc.i:                                        ; preds = %for.body.i
  %7 = ptrtoint ptr %default_vid2.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %default_vid2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %vid.029.i)
  %cmp.i21.i = icmp ugt i16 %8, %vid.029.i
  %narrow.i22.i = select i1 %cmp.i21.i, i16 %8, i16 4096
  %spec.select.i23.i = zext i16 %narrow.i22.i to i32
  %inc.i.i = add i32 %vid.0.in28.i, 1
  %conv8.i.i = and i32 %inc.i.i, 65535
  %call.i24.i = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i.i, i32 noundef %spec.select.i23.i, i32 noundef %conv8.i.i) #10
  %vid.0.i = trunc i32 %call.i24.i to i16
  %cmp.i = icmp ult i16 %vid.0.i, 4096
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.__fm10k_mc_sync.exit_crit_edge

for.inc.i.__fm10k_mc_sync.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm10k_mc_sync.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

__fm10k_mc_sync.exit:                             ; preds = %for.inc.i.__fm10k_mc_sync.exit_crit_edge, %for.body.i.__fm10k_mc_sync.exit_crit_edge, %if.end.i.__fm10k_mc_sync.exit_crit_edge, %entry.__fm10k_mc_sync.exit_crit_edge
  %retval.0.i = phi i32 [ -99, %entry.__fm10k_mc_sync.exit_crit_edge ], [ 0, %if.end.i.__fm10k_mc_sync.exit_crit_edge ], [ 0, %for.inc.i.__fm10k_mc_sync.exit_crit_edge ], [ %call5.i, %for.body.i.__fm10k_mc_sync.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_reset_rx_state(ptr noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 128
  %hw2 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not19 = icmp eq i32 %4, 0
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 128
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %glort = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 66
  %8 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %glort, align 2
  %macvlan_lock.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 62
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock.i) #10
  %macvlan_requests.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 60
  %10 = ptrtoint ptr %macvlan_requests.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %macvlan_requests.i, align 8
  %cmp13.not42.i = icmp eq ptr %11, %macvlan_requests.i
  br i1 %cmp13.not42.i, label %while.end.fm10k_clear_macvlan_queue.exit_crit_edge, label %while.end.for.body.i_crit_edge

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

while.end.fm10k_clear_macvlan_queue.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_clear_macvlan_queue.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.end.for.body.i_crit_edge
  %.pn.in43.i = phi ptr [ %.pn46.i, %for.inc.i.for.body.i_crit_edge ], [ %11, %while.end.for.body.i_crit_edge ]
  %r.045.i = getelementptr i8, ptr %.pn.in43.i, i32 -4
  %12 = ptrtoint ptr %.pn.in43.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn46.i = load ptr, ptr %.pn.in43.i, align 4
  %13 = ptrtoint ptr %r.045.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r.045.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %14, label %for.body.i.for.inc.i_crit_edge [
    i32 1, label %for.body.i.sw.bb.i_crit_edge
    i32 0, label %for.body.i.sw.bb.i_crit_edge20
    i32 2, label %for.body.i.if.then21.i_crit_edge
  ]

for.body.i.if.then21.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

for.body.i.sw.bb.i_crit_edge20:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i.sw.bb.i_crit_edge, %for.body.i.sw.bb.i_crit_edge20
  %glort15.i = getelementptr i8, ptr %.pn.in43.i, i32 14
  %16 = ptrtoint ptr %glort15.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %glort15.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %9)
  %cmp18.not.i = icmp eq i16 %17, %9
  br i1 %cmp18.not.i, label %sw.bb.i.if.then21.i_crit_edge, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb.i.if.then21.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.then21.i:                                      ; preds = %sw.bb.i.if.then21.i_crit_edge, %for.body.i.if.then21.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in43.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then21.i.list_del.exit.i_crit_edge

if.then21.i.list_del.exit.i_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in43.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %.pn.in43.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in43.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then21.i.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %.pn.in43.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in43.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in43.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %r.045.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %sw.bb.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp13.not.i = icmp eq ptr %.pn46.i, %macvlan_requests.i
  br i1 %cmp13.not.i, label %for.inc.i.fm10k_clear_macvlan_queue.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.fm10k_clear_macvlan_queue.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_clear_macvlan_queue.exit

fm10k_clear_macvlan_queue.exit:                   ; preds = %for.inc.i.fm10k_clear_macvlan_queue.exit_crit_edge, %while.end.fm10k_clear_macvlan_queue.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock.i, i32 noundef %call3.i) #10
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i) #10
  %type.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 1
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp eq i32 %27, 2
  br i1 %cmp.i, label %fm10k_clear_macvlan_queue.exit.if.then_crit_edge, label %fm10k_host_mbx_ready.exit

fm10k_clear_macvlan_queue.exit.if.then_crit_edge: ; preds = %fm10k_clear_macvlan_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

fm10k_host_mbx_ready.exit:                        ; preds = %fm10k_clear_macvlan_queue.exit
  %host_ready.i = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 54
  %28 = ptrtoint ptr %host_ready.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %host_ready.i, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i.not = icmp eq i8 %29, 0
  br i1 %tobool.i.not, label %fm10k_host_mbx_ready.exit.if.end_crit_edge, label %fm10k_host_mbx_ready.exit.if.then_crit_edge

fm10k_host_mbx_ready.exit.if.then_crit_edge:      ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

fm10k_host_mbx_ready.exit.if.end_crit_edge:       ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %fm10k_host_mbx_ready.exit.if.then_crit_edge, %fm10k_clear_macvlan_queue.exit.if.then_crit_edge
  %update_lport_state = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41, i32 2, i32 0, i32 13
  %30 = ptrtoint ptr %update_lport_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %update_lport_state, align 4
  %32 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %glort, align 2
  %glort_count = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 67
  %34 = ptrtoint ptr %glort_count to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %glort_count, align 8
  %call5 = tail call i32 %31(ptr noundef %hw2, i16 noundef zeroext %33, i16 noundef zeroext %35, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %fm10k_host_mbx_ready.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #10
  %xcast_mode = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 6
  %36 = ptrtoint ptr %xcast_mode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %xcast_mode, align 4
  %uc.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 65
  tail call void @__hw_addr_unsync_dev(ptr noundef %uc.i, ptr noundef %1, ptr noundef null) #10
  %mc.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  tail call void @__hw_addr_unsync_dev(ptr noundef %mc.i, ptr noundef %1, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_setup_tc(ptr noundef %dev, i8 noundef zeroext %tc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc)
  %tobool.not = icmp eq i8 %tc, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr i8, ptr %dev, i32 15636
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp ne i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %tc)
  %cmp3 = icmp ugt i8 %tc, 8
  %or.cond = or i1 %cmp3, %cmp.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @fm10k_close(ptr noundef %dev)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  tail call void @fm10k_mbx_free_irq(ptr noundef %add.ptr.i) #10
  tail call void @fm10k_clear_queueing_scheme(ptr noundef %add.ptr.i) #10
  tail call void @netdev_reset_tc(ptr noundef %dev) #10
  %call11 = tail call i32 @netdev_set_num_tc(ptr noundef %dev, i8 noundef zeroext %tc) #10
  %call12 = tail call i32 @fm10k_init_queueing_scheme(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.err_queueing_scheme_crit_edge

if.end10.err_queueing_scheme_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_queueing_scheme

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @fm10k_mbx_request_irq(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_mbx_irq_crit_edge

if.end15.err_mbx_irq_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_mbx_irq

if.end19:                                         ; preds = %if.end15
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i47 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i47)
  %tobool.i48.not = icmp eq i32 %and1.i.i47, 0
  br i1 %tobool.i48.not, label %if.end19.if.end25_crit_edge, label %cond.end

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

cond.end:                                         ; preds = %if.end19
  %call22 = tail call i32 @fm10k_open(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cond.end.if.end25_crit_edge, label %err_open

cond.end.if.end25_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %cond.end.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  %flags = getelementptr i8, ptr %dev, i32 2832
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  br label %cleanup

err_open:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fm10k_mbx_free_irq(ptr noundef %add.ptr.i) #10
  br label %err_mbx_irq

err_mbx_irq:                                      ; preds = %err_open, %if.end15.err_mbx_irq_crit_edge
  %err.0 = phi i32 [ %call16, %if.end15.err_mbx_irq_crit_edge ], [ %call22, %err_open ]
  tail call void @fm10k_clear_queueing_scheme(ptr noundef %add.ptr.i) #10
  br label %err_queueing_scheme

err_queueing_scheme:                              ; preds = %err_mbx_irq, %if.end10.err_queueing_scheme_crit_edge
  %err.1 = phi i32 [ %call12, %if.end10.err_queueing_scheme_crit_edge ], [ %err.0, %err_mbx_irq ]
  tail call void @netif_device_detach(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_queueing_scheme, %if.end25, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_queueing_scheme ], [ 0, %if.end25 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_mbx_free_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_clear_queueing_scheme(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_init_queueing_scheme(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_mbx_request_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fm10k_alloc_netdev(ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 16768, i32 noundef 128, i32 noundef 128) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fm10k_netdev_ops, ptr %netdev_ops, align 8
  tail call void @fm10k_set_ethtool_ops(ptr noundef nonnull %call) #10
  %msg_enable = getelementptr i8, ptr %call, i32 18580
  %1 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 7, ptr %msg_enable, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %or = or i64 %3, 1649268817939
  store i64 %or, ptr %features, align 16
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 27
  %6 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 68485139, ptr %hw_enc_features, align 16
  %or4 = or i64 %3, 1649335926803
  %7 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or4, ptr %features, align 16
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 152
  %8 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fm10k_udp_tunnels, ptr %udp_tunnel_nic_info, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 26
  %11 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vlan_features, align 8
  %or9 = or i64 %12, %10
  store i64 %or9, ptr %vlan_features, align 8
  %or11 = or i64 %10, 896
  store i64 %or11, ptr %features, align 16
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %priv_flags, align 16
  %or12 = or i64 %14, 4096
  store i64 %or12, ptr %priv_flags, align 16
  %hw_features13 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %15 = ptrtoint ptr %hw_features13 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %hw_features13, align 8
  %or7 = or i64 %10, %16
  %or14 = or i64 %or7, 281474976710656
  store i64 %or14, ptr %hw_features13, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %17 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %18 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 15342, ptr %max_mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_set_ethtool_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fm10k_uc_sync(ptr noundef %dev, ptr nocapture noundef readonly %addr, i1 noundef zeroext %sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %glort1 = getelementptr i8, ptr %dev, i32 19030
  %0 = ptrtoint ptr %glort1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %glort1, align 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %default_vid2.i = getelementptr i8, ptr %dev, i32 15652
  %7 = ptrtoint ptr %default_vid2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %default_vid2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.not = icmp eq i16 %8, 0
  %narrow.i = select i1 %cmp.i.not, i16 4096, i16 %8
  %spec.select.i = zext i16 %narrow.i to i32
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef %spec.select.i, i32 noundef 1) #10
  %vid.026 = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vid.026)
  %cmp27 = icmp ult i16 %vid.026, 4096
  br i1 %cmp27, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %vid.029 = phi i16 [ %vid.0, %for.inc.for.body_crit_edge ], [ %vid.026, %if.end.for.body_crit_edge ]
  %vid.0.in28 = phi i32 [ %call.i24, %for.inc.for.body_crit_edge ], [ %call.i, %if.end.for.body_crit_edge ]
  %call5 = tail call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i, i16 noundef zeroext %1, ptr noundef %addr, i16 noundef zeroext %vid.029, i1 noundef zeroext %sync)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %9 = ptrtoint ptr %default_vid2.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %default_vid2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %vid.029)
  %cmp.i21 = icmp ugt i16 %10, %vid.029
  %narrow.i22 = select i1 %cmp.i21, i16 %10, i16 4096
  %spec.select.i23 = zext i16 %narrow.i22 to i32
  %inc.i = add i32 %vid.0.in28, 1
  %conv8.i = and i32 %inc.i, 65535
  %call.i24 = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef %spec.select.i23, i32 noundef %conv8.i) #10
  %vid.0 = trunc i32 %call.i24 to i16
  %cmp = icmp ult i16 %vid.0, 4096
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call5, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_unsync_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_xmit_frame(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %num_tx_queues1 = getelementptr i8, ptr %dev, i32 2840
  %0 = ptrtoint ptr %num_tx_queues1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %num_tx_queues1, align 8
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping, align 8
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %5)
  %cmp = icmp eq i16 %5, -32512
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool4.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then5:                                         ; preds = %land.lhs.true
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.then5
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread102, !prof !39

skb_share_check.exit.thread102:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %if.end9

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup56

skb_share_check.exit:                             ; preds = %if.then5
  %tobool7.not = icmp eq ptr %skb, null
  br i1 %tobool7.not, label %skb_share_check.exit.cleanup56_crit_edge, label %skb_share_check.exit.if.end9_crit_edge

skb_share_check.exit.if.end9_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

skb_share_check.exit.cleanup56_crit_edge:         ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.end9:                                          ; preds = %skb_share_check.exit.if.end9_crit_edge, %skb_share_check.exit.thread102
  %skb.addr.0.i105 = phi ptr [ %call7.i, %skb_share_check.exit.thread102 ], [ %skb, %skb_share_check.exit.if.end9_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 17
  br i1 %cmp.i, label %if.end9.if.end15_crit_edge, label %if.end.i, !prof !43

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %10)
  %cmp3.i = icmp ult i32 %10, 18
  br i1 %cmp3.i, label %if.end.i.cleanup56_crit_edge, label %pskb_may_pull.exit, !prof !39

if.end.i.cleanup56_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 18, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i105, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup56_crit_edge, label %pskb_may_pull.exit.if.end15_crit_edge, !prof !39

pskb_may_pull.exit.if.end15_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

pskb_may_pull.exit.cleanup56_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.end15:                                         ; preds = %pskb_may_pull.exit.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 12
  %13 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end15.if.end19_crit_edge, label %skb_header_cloned.exit.i

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

skb_header_cloned.exit.i:                         ; preds = %if.end15
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %17, 65535
  %shr.i.i = ashr i32 %17, 16
  %sub.i.i92 = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i92)
  %cmp.i.not.i93 = icmp eq i32 %sub.i.i92, 1
  br i1 %cmp.i.not.i93, label %skb_header_cloned.exit.i.if.end19_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end19_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %skb.addr.0.i105, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool17.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool17.not, label %skb_cow_head.exit.if.end19_crit_edge, label %if.then18

skb_cow_head.exit.if.end19_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %skb.addr.0.i105) #10
  br label %cleanup56

if.end19:                                         ; preds = %skb_cow_head.exit.if.end19_crit_edge, %skb_header_cloned.exit.i.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 14
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr, align 2
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 15, i32 0, i32 9
  %22 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 15, i32 0, i32 10
  %23 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %21, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 15, i32 0, i32 3
  %24 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  %h_vlan_encapsulated_proto = getelementptr i8, ptr %19, i32 16
  %25 = ptrtoint ptr %h_vlan_encapsulated_proto to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %h_vlan_encapsulated_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %26)
  %cmp21 = icmp ugt i16 %26, 1535
  %spec.select = select i1 %cmp21, i16 %26, i16 4
  %protocol25 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol25 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %spec.select, ptr %protocol25, align 8
  %add.ptr27 = getelementptr i8, ptr %19, i32 4
  %28 = call ptr @memmove(ptr %add.ptr27, ptr %19, i32 12)
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %sub.i94 = add i32 %30, -4
  store i32 %sub.i94, ptr %len.i.i, align 4
  %31 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i94, i32 %32)
  %cmp.i95 = icmp ult i32 %sub.i94, %32
  br i1 %cmp.i95, label %do.body4.i, label %__skb_pull.exit, !prof !39

do.body4.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !44
  unreachable

__skb_pull.exit:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %add.ptr.i96 = getelementptr i8, ptr %34, i32 4
  store ptr %add.ptr.i96, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 18
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i96 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i105, i32 0, i32 15, i32 0, i32 21
  %37 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %mac_header.i, align 2
  br label %if.end31

if.end31:                                         ; preds = %__skb_pull.exit, %land.lhs.true.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %land.lhs.true.if.end31_crit_edge ], [ %skb, %if.end.if.end31_crit_edge ], [ %skb.addr.0.i105, %__skb_pull.exit ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %39)
  %cmp32 = icmp ult i32 %39, 17
  br i1 %cmp32, label %if.then40, label %if.end31.if.end50_crit_edge, !prof !39

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then40:                                        ; preds = %if.end31
  %sub = sub nuw nsw i32 17, %39
  %call.i = tail call i32 @__skb_pad(ptr noundef %skb.addr.0, i32 noundef %sub, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %if.end45, label %if.then40.cleanup56_crit_edge

if.then40.cleanup56_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup56

if.end45:                                         ; preds = %if.then40
  %data_len.i.i98 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 7
  %40 = ptrtoint ptr %data_len.i.i98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !43

do.body3.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !45
  unreachable

__skb_put.exit:                                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i, align 8
  %add.ptr.i99 = getelementptr i8, ptr %43, i32 %sub
  store ptr %add.ptr.i99, ptr %tail.i, align 8
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %add.i = add i32 %45, %sub
  store i32 %add.i, ptr %len, align 4
  br label %if.end50

if.end50:                                         ; preds = %__skb_put.exit, %if.end31.if.end50_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp51.not = icmp ugt i32 %1, %conv
  br i1 %cmp51.not, label %if.end50.if.end54_crit_edge, label %if.then53

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %rem = urem i32 %conv, %1
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %r_idx.0 = phi i32 [ %rem, %if.then53 ], [ %conv, %if.end50.if.end54_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %r_idx.0
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %call55 = tail call i32 @fm10k_xmit_frame_ring(ptr noundef %skb.addr.0, ptr noundef %47) #10
  br label %cleanup56

cleanup56:                                        ; preds = %if.end54, %if.then40.cleanup56_crit_edge, %if.then18, %pskb_may_pull.exit.cleanup56_crit_edge, %if.end.i.cleanup56_crit_edge, %skb_share_check.exit.cleanup56_crit_edge, %skb_share_check.exit.thread, %entry.cleanup56_crit_edge
  %retval.3 = phi i32 [ %call55, %if.end54 ], [ 16, %entry.cleanup56_crit_edge ], [ 0, %pskb_may_pull.exit.cleanup56_crit_edge ], [ 0, %skb_share_check.exit.cleanup56_crit_edge ], [ 0, %if.then18 ], [ 0, %if.then40.cleanup56_crit_edge ], [ 0, %skb_share_check.exit.thread ], [ 0, %if.end.i.cleanup56_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @fm10k_features_check(ptr noundef %skb, ptr nocapture noundef readnone %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i16 @fm10k_tx_encap_offload(ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool1.not = icmp eq i16 %call, 0
  %and = and i64 %features, -34359672859
  %spec.select = select i1 %tobool1.not, i64 %and, i64 %features
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i64 [ %features, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_set_rx_mode(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw1 = getelementptr i8, ptr %dev, i32 15552
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %cond.false, label %if.end.cond.end14_crit_edge

if.end.cond.end14_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end14

cond.false:                                       ; preds = %if.end
  %and6 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %cond.false9, label %cond.false.cond.end14_crit_edge

cond.false.cond.end14_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end14

cond.false9:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  %and11 = and i32 %1, 4098
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond = select i1 %tobool12.not, i32 3, i32 1
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false9, %cond.false.cond.end14_crit_edge, %if.end.cond.end14_crit_edge
  %cond15 = phi i32 [ 2, %if.end.cond.end14_crit_edge ], [ %cond, %cond.false9 ], [ 0, %cond.false.cond.end14_crit_edge ]
  %mbx_lock.i = getelementptr i8, ptr %dev, i32 18528
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i) #10
  %xcast_mode16 = getelementptr i8, ptr %dev, i32 2836
  %2 = ptrtoint ptr %xcast_mode16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xcast_mode16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond15)
  %cmp.not = icmp eq i32 %3, %cond15
  br i1 %cmp.not, label %cond.end14.if.end31_crit_edge, label %if.then17

cond.end14.if.end31_crit_edge:                    ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then17:                                        ; preds = %cond.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond15)
  %cmp18 = icmp eq i32 %cond15, 2
  br i1 %cmp18, label %if.then19, label %if.then17.if.end21_crit_edge

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 28) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then19.if.end21thread-pre-split_crit_edge, label %if.end.i

if.then19.if.end21thread-pre-split_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21thread-pre-split

if.end.i:                                         ; preds = %if.then19
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %call7.i.i.i, align 8
  %6 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 268369920, ptr %6, align 4
  %vsi2.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %vsi2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %vsi2.i, align 8
  %set4.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %set4.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %set4.i, align 8
  %macvlan_lock.i = getelementptr i8, ptr %dev, i32 18980
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock.i) #10
  %list.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 1
  %macvlan_requests.i = getelementptr i8, ptr %dev, i32 18872
  %prev.i.i = getelementptr i8, ptr %dev, i32 18876
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %11, ptr noundef %macvlan_requests.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %macvlan_requests.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.i, ptr %11, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock.i, i32 noundef %call8.i) #10
  tail call void @fm10k_macvlan_schedule(ptr noundef %add.ptr.i) #10
  br label %if.end21thread-pre-split

if.end21thread-pre-split:                         ; preds = %list_add_tail.exit.i, %if.then19.if.end21thread-pre-split_crit_edge
  %16 = ptrtoint ptr %xcast_mode16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %xcast_mode16, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21thread-pre-split, %if.then17.if.end21_crit_edge
  %17 = phi i32 [ %.pr, %if.end21thread-pre-split ], [ %3, %if.then17.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp23 = icmp eq i32 %17, 2
  br i1 %cmp23, label %if.then24, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  %macvlan_lock.i.i = getelementptr i8, ptr %dev, i32 18980
  %macvlan_requests.i.i = getelementptr i8, ptr %dev, i32 18872
  %prev.i.i.i = getelementptr i8, ptr %dev, i32 18876
  %default_vid2.i.i = getelementptr i8, ptr %dev, i32 15652
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then24
  %prev_vid.015.i = phi i32 [ 0, %if.then24 ], [ %add3.i, %for.inc.i.for.body.i_crit_edge ]
  %vid.014.i = phi i32 [ 0, %if.then24 ], [ %conv5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %vid.014.i, i32 %prev_vid.015.i)
  %cmp1.i = icmp eq i32 %vid.014.i, %prev_vid.015.i
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i55

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i55:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2848, i32 noundef 28) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i55.for.inc.i_crit_edge, label %if.end.i.i

if.end.i55.for.inc.i_crit_edge:                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end.i55
  %19 = xor i32 %prev_vid.015.i, -1
  %sub2.i = add nsw i32 %vid.014.i, %19
  %shl.i = shl i32 %sub2.i, 16
  %add.i = add nuw i32 %shl.i, %prev_vid.015.i
  %20 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %call7.i.i.i.i, align 8
  %21 = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %21, align 4
  %vsi2.i.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %vsi2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %vsi2.i.i, align 8
  %set4.i.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %set4.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %set4.i.i, align 8
  %call8.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %macvlan_lock.i.i) #10
  %list.i.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %26, ptr noundef %macvlan_requests.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_add_tail.exit.i.i_crit_edge

if.end.i.i.list_add_tail.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %macvlan_requests.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.fm10k_macvlan_request, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i.i, align 8
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list.i.i, ptr %26, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.list_add_tail.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %macvlan_lock.i.i, i32 noundef %call8.i.i) #10
  tail call void @fm10k_macvlan_schedule(ptr noundef %add.ptr.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_add_tail.exit.i.i, %if.end.i55.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add3.i = add nuw nsw i32 %vid.014.i, 1
  %conv.i = trunc i32 %vid.014.i to i16
  %31 = ptrtoint ptr %default_vid2.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %default_vid2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %conv.i)
  %cmp.i.i = icmp ugt i16 %32, %conv.i
  %narrow.i.i = select i1 %cmp.i.i, i16 %32, i16 4096
  %spec.select.i.i = zext i16 %narrow.i.i to i32
  %conv8.i.i = and i32 %add3.i, 65535
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef %spec.select.i.i, i32 noundef %conv8.i.i) #10
  %conv5.i = and i32 %call.i.i, 65535
  %cmp.i = icmp ult i32 %vid.014.i, 4095
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end25_crit_edge

for.inc.i.if.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end25:                                         ; preds = %for.inc.i.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  %type.i = getelementptr i8, ptr %dev, i32 15636
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i56 = icmp eq i32 %34, 2
  br i1 %cmp.i56, label %if.end25.if.then27_crit_edge, label %fm10k_host_mbx_ready.exit

if.end25.if.then27_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

fm10k_host_mbx_ready.exit:                        ; preds = %if.end25
  %host_ready.i = getelementptr i8, ptr %dev, i32 18696
  %35 = ptrtoint ptr %host_ready.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %host_ready.i, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.i.not = icmp eq i8 %36, 0
  br i1 %tobool.i.not, label %fm10k_host_mbx_ready.exit.if.end29_crit_edge, label %fm10k_host_mbx_ready.exit.if.then27_crit_edge

fm10k_host_mbx_ready.exit.if.then27_crit_edge:    ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

fm10k_host_mbx_ready.exit.if.end29_crit_edge:     ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %fm10k_host_mbx_ready.exit.if.then27_crit_edge, %if.end25.if.then27_crit_edge
  %update_xcast_mode = getelementptr i8, ptr %dev, i32 15604
  %37 = ptrtoint ptr %update_xcast_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %update_xcast_mode, align 4
  %glort = getelementptr i8, ptr %dev, i32 19030
  %39 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %glort, align 2
  %conv = trunc i32 %cond15 to i8
  %call28 = tail call i32 %38(ptr noundef %hw1, i16 noundef zeroext %40, i8 noundef zeroext %conv) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %fm10k_host_mbx_ready.exit.if.end29_crit_edge
  %41 = ptrtoint ptr %xcast_mode16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond15, ptr %xcast_mode16, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %cond.end14.if.end31_crit_edge
  %uc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %call.i = tail call i32 @__hw_addr_sync_dev(ptr noundef %uc.i, ptr noundef %dev, ptr noundef nonnull @fm10k_uc_sync, ptr noundef nonnull @fm10k_uc_unsync) #10
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %call.i57 = tail call i32 @__hw_addr_sync_dev(ptr noundef %mc.i, ptr noundef %dev, ptr noundef nonnull @fm10k_mc_sync, ptr noundef nonnull @fm10k_mc_unsync) #10
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_set_mac(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.then15_crit_edge, label %if.then3

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then3:                                         ; preds = %if.end
  %mbx_lock.i = getelementptr i8, ptr %dev, i32 18528
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i) #10
  %call.i = tail call fastcc i32 @__fm10k_uc_sync(ptr noundef %dev, ptr noundef %sa_data, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end12.thread, label %if.end12

if.end12.thread:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %addr9 = getelementptr i8, ptr %dev, i32 15640
  %call.i43 = tail call fastcc i32 @__fm10k_uc_sync(ptr noundef %dev, ptr noundef %addr9, i1 noundef zeroext false) #10
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #10
  br label %if.then15

if.end12:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #10
  br label %cleanup

if.then15:                                        ; preds = %if.end12.thread, %if.end.if.then15_crit_edge
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  %addr19 = getelementptr i8, ptr %dev, i32 15640
  %7 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sa_data, align 4
  %9 = ptrtoint ptr %addr19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %addr19, align 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %dev, i32 15644
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i, align 2
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %13 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr_assign_type, align 4
  %15 = and i8 %14, -2
  store i8 %15, ptr %addr_assign_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.then15 ], [ -11, %if.end12 ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2840
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %txqueue)
  %cmp.not = icmp ugt i32 %1, %txqueue
  br i1 %cmp.not, label %if.end16, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 592, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %txqueue) #10
  br label %cleanup

if.end16:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %txqueue
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %state = getelementptr inbounds %struct.fm10k_ring, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not = icmp eq i32 %and1.i, 0
  br i1 %tobool19.not, label %if.end16.do.body25_crit_edge, label %land.lhs.true

if.end16.do.body25_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

land.lhs.true:                                    ; preds = %if.end16
  %call20 = tail call zeroext i1 @fm10k_check_tx_hang(ptr noundef %3) #10
  br i1 %call20, label %if.then24, label %land.lhs.true.do.body25_crit_edge

land.lhs.true.do.body25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fm10k_tx_timeout_reset(ptr noundef %add.ptr.i) #10
  br label %cleanup

do.body25:                                        ; preds = %land.lhs.true.do.body25_crit_edge, %if.end16.do.body25_crit_edge
  %msg_enable = getelementptr i8, ptr %netdev, i32 18580
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msg_enable, align 4
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool26.not = icmp eq i16 %8, 0
  br i1 %tobool26.not, label %do.body25.do.end30_crit_edge, label %if.then27

do.body25.do.end30_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then27:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 115
  %9 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %watchdog_timeo, align 4
  %div = sdiv i32 %10, 100
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.7, i32 noundef %div) #14
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body25.do.end30_crit_edge
  %watchdog_timeo31 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 115
  %11 = ptrtoint ptr %watchdog_timeo31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %watchdog_timeo31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %12)
  %cmp32 = icmp slt i32 %12, 16000
  br i1 %cmp32, label %if.then34, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then34:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %12, 1
  %13 = ptrtoint ptr %watchdog_timeo31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %watchdog_timeo31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.end30.cleanup_crit_edge, %if.then24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_get_stats64(ptr noundef %netdev, ptr nocapture noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2848
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp79.not = icmp eq i32 %5, 0
  br i1 %cmp79.not, label %rcu_read_lock.exit.for.cond12.preheader_crit_edge, label %do.end.lr.ph

rcu_read_lock.exit.for.cond12.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond12.preheader

do.end.lr.ph:                                     ; preds = %rcu_read_lock.exit
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  br label %do.end

for.cond12.preheader:                             ; preds = %for.inc.for.cond12.preheader_crit_edge, %rcu_read_lock.exit.for.cond12.preheader_crit_edge
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2840
  %6 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1381.not = icmp eq i32 %7, 0
  br i1 %cmp1381.not, label %for.cond12.preheader.for.end38_crit_edge, label %do.end17.lr.ph

for.cond12.preheader.for.end38_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

do.end17.lr.ph:                                   ; preds = %for.cond12.preheader
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  br label %do.end17

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.end.lr.ph
  %i.080 = phi i32 [ 0, %do.end.lr.ph ], [ %inc, %for.inc.do.end_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.080
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end.for.inc_crit_edge, label %do.body1.preheader

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body1.preheader:                               ; preds = %do.end
  %syncp = getelementptr inbounds %struct.fm10k_ring, ptr %9, i32 0, i32 19
  %stats3 = getelementptr inbounds %struct.fm10k_ring, ptr %9, i32 0, i32 18
  %bytes6 = getelementptr inbounds %struct.fm10k_ring, ptr %9, i32 0, i32 18, i32 1
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %do.body1.preheader
  %call2 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %10 = ptrtoint ptr %stats3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stats3, align 8
  %12 = ptrtoint ptr %bytes6 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes6, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  %14 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %15, %call2
  br i1 %cmp.i.i.i.i.not, label %do.end10, label %do.body1.do.body1_crit_edge

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

do.end10:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %stats, align 8
  %add = add i64 %17, %11
  store i64 %add, ptr %stats, align 8
  %18 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_bytes, align 8
  %add11 = add i64 %19, %13
  store i64 %add11, ptr %rx_bytes, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end10, %do.end.for.inc_crit_edge
  %inc = add nuw i32 %i.080, 1
  %20 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_rx_queues, align 32
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.do.end_crit_edge, label %for.inc.for.cond12.preheader_crit_edge

for.inc.for.cond12.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond12.preheader

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end17:                                         ; preds = %for.inc36.do.end17_crit_edge, %do.end17.lr.ph
  %i.182 = phi i32 [ 0, %do.end17.lr.ph ], [ %inc37, %for.inc36.do.end17_crit_edge ]
  %arrayidx19 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %i.182
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %23, null
  br i1 %tobool20.not, label %do.end17.for.inc36_crit_edge, label %do.body23.preheader

do.end17.for.inc36_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36

do.body23.preheader:                              ; preds = %do.end17
  %syncp24 = getelementptr inbounds %struct.fm10k_ring, ptr %23, i32 0, i32 19
  %stats26 = getelementptr inbounds %struct.fm10k_ring, ptr %23, i32 0, i32 18
  %bytes29 = getelementptr inbounds %struct.fm10k_ring, ptr %23, i32 0, i32 18, i32 1
  br label %do.body23

do.body23:                                        ; preds = %do.body23.do.body23_crit_edge, %do.body23.preheader
  %call25 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp24)
  %24 = ptrtoint ptr %stats26 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %stats26, align 8
  %26 = ptrtoint ptr %bytes29 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bytes29, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  %28 = ptrtoint ptr %syncp24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %syncp24, align 4
  %cmp.i.i.i.i66.not = icmp eq i32 %29, %call25
  br i1 %cmp.i.i.i.i66.not, label %do.end33, label %do.body23.do.body23_crit_edge

do.body23.do.body23_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23

do.end33:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_packets, align 8
  %add34 = add i64 %31, %25
  store i64 %add34, ptr %tx_packets, align 8
  %32 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tx_bytes, align 8
  %add35 = add i64 %33, %27
  store i64 %add35, ptr %tx_bytes, align 8
  br label %for.inc36

for.inc36:                                        ; preds = %do.end33, %do.end17.for.inc36_crit_edge
  %inc37 = add nuw i32 %i.182, 1
  %34 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_tx_queues, align 8
  %cmp13 = icmp ult i32 %inc37, %35
  br i1 %cmp13, label %for.inc36.do.end17_crit_edge, label %for.inc36.for.end38_crit_edge

for.inc36.for.end38_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.inc36.do.end17_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

for.end38:                                        ; preds = %for.inc36.for.end38_crit_edge, %for.cond12.preheader.for.end38_crit_edge
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i67, label %for.end38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i70

for.end38.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i70:                                ; preds = %for.end38
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, %for.end38.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %36 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i74 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 15
  %40 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_missed_errors, align 4
  %conv = zext i32 %41 to i64
  %rx_missed_errors40 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 15
  %42 = ptrtoint ptr %rx_missed_errors40 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv, ptr %rx_missed_errors40, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_vlan_rx_add_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fm10k_update_vid(ptr noundef %netdev, i16 noundef zeroext %vid, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_vlan_rx_kill_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fm10k_update_vid(ptr noundef %netdev, i16 noundef zeroext %vid, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_ndo_set_vf_mac(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_ndo_set_vf_vlan(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_ndo_set_vf_bw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_ndo_get_vf_config(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_ndo_get_vf_stats(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__fm10k_setup_tc(ptr noundef %dev, i32 noundef %type, ptr nocapture noundef %type_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hw, align 1
  %1 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type_data, align 2
  %call = tail call i32 @fm10k_setup_tc(ptr noundef %dev, i8 noundef zeroext %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fm10k_dfwd_add_station(ptr noundef %dev, ptr noundef %sdev) #0 align 64 {
entry:
  %dglort = alloca %struct.fm10k_dglort_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %l2_accel1 = getelementptr i8, ptr %dev, i32 2820
  %0 = ptrtoint ptr %l2_accel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2_accel1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dglort) #10
  %2 = call ptr @memset(ptr %dglort, i32 0, i32 12)
  %hw2 = getelementptr i8, ptr %dev, i32 15552
  %mode.i = getelementptr i8, ptr %sdev, i32 2384
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode.i, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge207
    i32 4, label %entry.if.end_crit_edge208
  ]

entry.if.end_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge207, %entry.if.end_crit_edge208
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %glort_count = getelementptr i8, ptr %dev, i32 19032
  %6 = ptrtoint ptr %glort_count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %glort_count, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %7)
  %cmp = icmp ult i16 %7, 7
  br i1 %cmp, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 44) #15
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %call7.i.i, align 8
  %glort16 = getelementptr i8, ptr %dev, i32 19030
  %10 = ptrtoint ptr %glort16 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %glort16, align 2
  %dglort17 = getelementptr inbounds %struct.fm10k_l2_accel, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %dglort17 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %dglort17, align 2
  %num_rx_queues.i = getelementptr i8, ptr %dev, i32 2848
  %13 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_rx_queues.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp40.i = icmp sgt i32 %14, 0
  br i1 %cmp40.i, label %if.end14.for.body.i_crit_edge, label %if.end14.fm10k_assign_l2_accel.exit_crit_edge

if.end14.fm10k_assign_l2_accel.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_assign_l2_accel.exit

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.041.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !49
  %l2_accel23.i = getelementptr inbounds %struct.fm10k_ring, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %l2_accel23.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %l2_accel23.i, align 4
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %18 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_rx_queues.i, align 32
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fm10k_assign_l2_accel.exit_crit_edge

for.body.i.fm10k_assign_l2_accel.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_assign_l2_accel.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

fm10k_assign_l2_accel.exit:                       ; preds = %for.body.i.fm10k_assign_l2_accel.exit_crit_edge, %if.end14.fm10k_assign_l2_accel.exit_crit_edge
  %20 = ptrtoint ptr %l2_accel1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %l2_accel1, align 4
  br label %if.end55thread-pre-split

if.else:                                          ; preds = %if.end
  %count = getelementptr inbounds %struct.fm10k_l2_accel, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %count, align 4
  %conv18 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %22)
  %cmp19 = icmp eq i16 %22, 63
  br i1 %cmp19, label %if.else.cleanup_crit_edge, label %lor.lhs.false

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %glort_count23 = getelementptr i8, ptr %dev, i32 19032
  %23 = ptrtoint ptr %glort_count23 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %glort_count23, align 8
  %conv24 = zext i16 %24 to i32
  %sub = add nsw i32 %conv24, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv18)
  %cmp25 = icmp eq i32 %sub, %conv18
  br i1 %cmp25, label %lor.lhs.false.cleanup_crit_edge, label %if.else29

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else29:                                        ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv18)
  %cmp33 = icmp eq i32 %26, %conv18
  br i1 %cmp33, label %if.end8.i.i, label %if.else29.if.end55_crit_edge

if.else29.if.end55_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end8.i.i:                                      ; preds = %if.else29
  %mul = shl nuw nsw i32 %conv18, 3
  %27 = add nuw nsw i32 %mul, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #13
  %tobool38.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool38.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end41

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.end8.i.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %30 = shl i32 %29, 2
  %31 = add i32 %30, 16
  %32 = call ptr @memcpy(ptr %call9.i.i, ptr %1, i32 %31)
  %33 = load i32, ptr %1, align 4
  %mul44 = shl i32 %33, 1
  %add45 = or i32 %mul44, 1
  %34 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add45, ptr %call9.i.i, align 128
  %num_rx_queues.i179 = getelementptr i8, ptr %dev, i32 2848
  %35 = ptrtoint ptr %num_rx_queues.i179 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_rx_queues.i179, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp40.i180 = icmp sgt i32 %36, 0
  br i1 %cmp40.i180, label %if.end41.for.body.i186_crit_edge, label %if.end41.fm10k_assign_l2_accel.exit188_crit_edge

if.end41.fm10k_assign_l2_accel.exit188_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_assign_l2_accel.exit188

if.end41.for.body.i186_crit_edge:                 ; preds = %if.end41
  br label %for.body.i186

for.body.i186:                                    ; preds = %for.body.i186.for.body.i186_crit_edge, %if.end41.for.body.i186_crit_edge
  %i.041.i181 = phi i32 [ %inc.i184, %for.body.i186.for.body.i186_crit_edge ], [ 0, %if.end41.for.body.i186_crit_edge ]
  %arrayidx.i182 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.041.i181
  %37 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i182, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !49
  %l2_accel23.i183 = getelementptr inbounds %struct.fm10k_ring, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %l2_accel23.i183 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call9.i.i, ptr %l2_accel23.i183, align 4
  %inc.i184 = add nuw nsw i32 %i.041.i181, 1
  %40 = ptrtoint ptr %num_rx_queues.i179 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_rx_queues.i179, align 32
  %cmp.i185 = icmp slt i32 %inc.i184, %41
  br i1 %cmp.i185, label %for.body.i186.for.body.i186_crit_edge, label %for.body.i186.fm10k_assign_l2_accel.exit188_crit_edge

for.body.i186.fm10k_assign_l2_accel.exit188_crit_edge: ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_assign_l2_accel.exit188

for.body.i186.for.body.i186_crit_edge:            ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i186

fm10k_assign_l2_accel.exit188:                    ; preds = %for.body.i186.fm10k_assign_l2_accel.exit188_crit_edge, %if.end41.fm10k_assign_l2_accel.exit188_crit_edge
  %42 = ptrtoint ptr %l2_accel1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i.i, ptr %l2_accel1, align 4
  %rcu = getelementptr inbounds %struct.fm10k_l2_accel, ptr %1, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %if.end55thread-pre-split

if.end55thread-pre-split:                         ; preds = %fm10k_assign_l2_accel.exit188, %fm10k_assign_l2_accel.exit
  %l2_accel.0.ph = phi ptr [ %call7.i.i, %fm10k_assign_l2_accel.exit ], [ %call9.i.i, %fm10k_assign_l2_accel.exit188 ]
  %43 = ptrtoint ptr %l2_accel.0.ph to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %l2_accel.0.ph, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end55thread-pre-split, %if.else29.if.end55_crit_edge
  %44 = phi i32 [ %.pr, %if.end55thread-pre-split ], [ %26, %if.else29.if.end55_crit_edge ]
  %l2_accel.0 = phi ptr [ %l2_accel.0.ph, %if.end55thread-pre-split ], [ %1, %if.else29.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp57200 = icmp sgt i32 %44, 0
  br i1 %cmp57200, label %if.end55.for.body_crit_edge, label %if.end55.for.end_crit_edge

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end55.for.body_crit_edge
  %i.0201 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end55.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_l2_accel, ptr %l2_accel.0, i32 0, i32 4, i32 %i.0201
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %tobool59.not = icmp eq ptr %46, null
  br i1 %tobool59.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0201, 1
  %exitcond.not = icmp eq i32 %inc, %44
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end55.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end55.for.end_crit_edge ], [ %i.0201, %for.body.for.end_crit_edge ], [ %44, %for.inc.for.end_crit_edge ]
  %arrayidx63 = getelementptr %struct.fm10k_l2_accel, ptr %l2_accel.0, i32 0, i32 4, i32 %i.0.lcssa
  %47 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %sdev, ptr %arrayidx63, align 4
  %count64 = getelementptr inbounds %struct.fm10k_l2_accel, ptr %l2_accel.0, i32 0, i32 1
  %48 = ptrtoint ptr %count64 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %count64, align 4
  %inc65 = add i16 %49, 1
  store i16 %inc65, ptr %count64, align 4
  %idx = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 3
  %50 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 7, ptr %idx, align 1
  %inner_rss = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 9
  %51 = ptrtoint ptr %inner_rss to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %inner_rss, align 1
  %mask = getelementptr i8, ptr %dev, i32 5168
  %52 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mask, align 4
  %conv67 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i = icmp eq i16 %53, 0
  %54 = tail call i32 @llvm.ctlz.i32(i32 %conv67, i1 true) #10, !range !50
  %55 = trunc i32 %54 to i8
  %56 = sub nuw nsw i8 32, %55
  %conv69 = select i1 %tobool.not.i, i8 0, i8 %56
  %rss_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 4
  %57 = ptrtoint ptr %rss_l to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv69, ptr %rss_l, align 2
  %mask72 = getelementptr i8, ptr %dev, i32 5176
  %58 = ptrtoint ptr %mask72 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mask72, align 4
  %conv73 = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.not.i172 = icmp eq i16 %59, 0
  %60 = tail call i32 @llvm.ctlz.i32(i32 %conv73, i1 true) #10, !range !50
  %61 = trunc i32 %60 to i8
  %62 = sub nuw nsw i8 32, %61
  %conv75 = select i1 %tobool.not.i172, i8 0, i8 %62
  %pc_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 5
  %63 = ptrtoint ptr %pc_l to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv75, ptr %pc_l, align 1
  %glort76 = getelementptr i8, ptr %dev, i32 19030
  %64 = ptrtoint ptr %glort76 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %glort76, align 2
  %66 = ptrtoint ptr %dglort to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %dglort, align 2
  %67 = ptrtoint ptr %l2_accel.0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %l2_accel.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i175 = icmp eq i32 %68, 0
  %69 = tail call i32 @llvm.ctlz.i32(i32 %68, i1 true) #10, !range !50
  %70 = trunc i32 %69 to i8
  %71 = sub nuw nsw i8 32, %70
  %conv80 = select i1 %tobool.not.i175, i8 0, i8 %71
  %shared_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 8
  %72 = ptrtoint ptr %shared_l to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv80, ptr %shared_l, align 2
  %configure_dglort_map = getelementptr i8, ptr %dev, i32 15624
  %73 = ptrtoint ptr %configure_dglort_map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %configure_dglort_map, align 8
  %call81 = call i32 %74(ptr noundef %hw2, ptr noundef nonnull %dglort) #10
  %mbx_lock.i = getelementptr i8, ptr %dev, i32 18528
  call void @_raw_spin_lock(ptr noundef %mbx_lock.i) #10
  %dglort82 = getelementptr inbounds %struct.fm10k_l2_accel, ptr %l2_accel.0, i32 0, i32 2
  %75 = ptrtoint ptr %dglort82 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %dglort82, align 2
  %77 = trunc i32 %i.0.lcssa to i16
  %78 = add i16 %77, 1
  %conv86 = add i16 %78, %76
  %type.i = getelementptr i8, ptr %dev, i32 15636
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp.i189 = icmp eq i32 %80, 2
  br i1 %cmp.i189, label %for.end.if.then88_crit_edge, label %fm10k_host_mbx_ready.exit

for.end.if.then88_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then88

fm10k_host_mbx_ready.exit:                        ; preds = %for.end
  %host_ready.i = getelementptr i8, ptr %dev, i32 18696
  %81 = ptrtoint ptr %host_ready.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %host_ready.i, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.i.not = icmp eq i8 %82, 0
  br i1 %tobool.i.not, label %fm10k_host_mbx_ready.exit.if.end92_crit_edge, label %fm10k_host_mbx_ready.exit.if.then88_crit_edge

fm10k_host_mbx_ready.exit.if.then88_crit_edge:    ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then88

fm10k_host_mbx_ready.exit.if.end92_crit_edge:     ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then88:                                        ; preds = %fm10k_host_mbx_ready.exit.if.then88_crit_edge, %for.end.if.then88_crit_edge
  %update_xcast_mode = getelementptr i8, ptr %dev, i32 15604
  %83 = ptrtoint ptr %update_xcast_mode to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %update_xcast_mode, align 4
  %call91 = call i32 %84(ptr noundef %hw2, i16 noundef zeroext %conv86, i8 noundef zeroext 3) #10
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %fm10k_host_mbx_ready.exit.if.end92_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %sdev, i32 0, i32 86
  %85 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_addr, align 64
  %default_vid = getelementptr i8, ptr %dev, i32 15652
  %87 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %default_vid, align 4
  %call94 = call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i, i16 noundef zeroext %conv86, ptr noundef %86, i16 noundef zeroext %88, i1 noundef zeroext true)
  %89 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %default_vid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp.i191.not = icmp eq i16 %90, 0
  %narrow.i = select i1 %cmp.i191.not, i16 4096, i16 %90
  %spec.select.i = zext i16 %narrow.i to i32
  %call.i = call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef %spec.select.i, i32 noundef 1) #10
  %vid.0203 = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vid.0203)
  %cmp98204 = icmp ult i16 %vid.0203, 4096
  br i1 %cmp98204, label %if.end92.for.body100_crit_edge, label %if.end92.for.end105_crit_edge

if.end92.for.end105_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105

if.end92.for.body100_crit_edge:                   ; preds = %if.end92
  br label %for.body100

for.body100:                                      ; preds = %for.body100.for.body100_crit_edge, %if.end92.for.body100_crit_edge
  %vid.0206 = phi i16 [ %vid.0, %for.body100.for.body100_crit_edge ], [ %vid.0203, %if.end92.for.body100_crit_edge ]
  %vid.0.in205 = phi i32 [ %call.i197, %for.body100.for.body100_crit_edge ], [ %call.i, %if.end92.for.body100_crit_edge ]
  %91 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_addr, align 64
  %call102 = call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i, i16 noundef zeroext %conv86, ptr noundef %92, i16 noundef zeroext %vid.0206, i1 noundef zeroext true)
  %93 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %default_vid, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %vid.0206)
  %cmp.i193 = icmp ugt i16 %94, %vid.0206
  %narrow.i194 = select i1 %cmp.i193, i16 %94, i16 4096
  %spec.select.i195 = zext i16 %narrow.i194 to i32
  %inc.i196 = add i32 %vid.0.in205, 1
  %conv8.i = and i32 %inc.i196, 65535
  %call.i197 = call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef %spec.select.i195, i32 noundef %conv8.i) #10
  %vid.0 = trunc i32 %call.i197 to i16
  %cmp98 = icmp ult i16 %vid.0, 4096
  br i1 %cmp98, label %for.body100.for.body100_crit_edge, label %for.body100.for.end105_crit_edge

for.body100.for.end105_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105

for.body100.for.body100_crit_edge:                ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body100

for.end105:                                       ; preds = %for.body100.for.end105_crit_edge, %if.end92.for.end105_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end105, %if.end8.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %sdev, %for.end105 ], [ inttoptr (i32 -124 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then5.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.else.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dglort) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_dfwd_del_station(ptr noundef %dev, ptr noundef readonly %priv) #0 align 64 {
entry:
  %dglort = alloca %struct.fm10k_dglort_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %l2_accel1 = getelementptr i8, ptr %dev, i32 2820
  %0 = ptrtoint ptr %l2_accel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %l2_accel1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dglort) #10
  %2 = getelementptr inbounds i8, ptr %dglort, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 2
  %hw2 = getelementptr i8, ptr %dev, i32 15552
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp125 = icmp sgt i32 %5, 0
  br i1 %cmp125, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0126 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_l2_accel, ptr %1, i32 0, i32 4, i32 %i.0126
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %7, %priv
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0126, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %5)
  %cmp7 = icmp eq i32 %i.0.lcssa, %5
  br i1 %cmp7, label %for.end.cleanup_crit_edge, label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %mbx_lock.i = getelementptr i8, ptr %dev, i32 18528
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i) #10
  %dglort10 = getelementptr inbounds %struct.fm10k_l2_accel, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dglort10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dglort10, align 2
  %10 = trunc i32 %i.0.lcssa to i16
  %11 = add i16 %10, 1
  %conv12 = add i16 %11, %9
  %type.i = getelementptr i8, ptr %dev, i32 15636
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %if.end9.if.then14_crit_edge, label %fm10k_host_mbx_ready.exit

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

fm10k_host_mbx_ready.exit:                        ; preds = %if.end9
  %host_ready.i = getelementptr i8, ptr %dev, i32 18696
  %14 = ptrtoint ptr %host_ready.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %host_ready.i, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.not = icmp eq i8 %15, 0
  br i1 %tobool.i.not, label %fm10k_host_mbx_ready.exit.if.end16_crit_edge, label %fm10k_host_mbx_ready.exit.if.then14_crit_edge

fm10k_host_mbx_ready.exit.if.then14_crit_edge:    ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

fm10k_host_mbx_ready.exit.if.end16_crit_edge:     ; preds = %fm10k_host_mbx_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %fm10k_host_mbx_ready.exit.if.then14_crit_edge, %if.end9.if.then14_crit_edge
  %update_xcast_mode = getelementptr i8, ptr %dev, i32 15604
  %16 = ptrtoint ptr %update_xcast_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %update_xcast_mode, align 4
  %call15 = tail call i32 %17(ptr noundef %hw2, i16 noundef zeroext %conv12, i8 noundef zeroext 3) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %fm10k_host_mbx_ready.exit.if.end16_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %priv, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %default_vid = getelementptr i8, ptr %dev, i32 15652
  %20 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %default_vid, align 4
  %call18 = tail call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i, i16 noundef zeroext %conv12, ptr noundef %19, i16 noundef zeroext %21, i1 noundef zeroext false)
  %22 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %default_vid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.i115.not = icmp eq i16 %23, 0
  %narrow.i = select i1 %cmp.i115.not, i16 4096, i16 %23
  %spec.select.i = zext i16 %narrow.i to i32
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef %spec.select.i, i32 noundef 1) #10
  %vid.0130 = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vid.0130)
  %cmp22131 = icmp ult i16 %vid.0130, 4096
  br i1 %cmp22131, label %if.end16.for.body24_crit_edge, label %if.end16.for.end29_crit_edge

if.end16.for.end29_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

if.end16.for.body24_crit_edge:                    ; preds = %if.end16
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %if.end16.for.body24_crit_edge
  %vid.0133 = phi i16 [ %vid.0, %for.body24.for.body24_crit_edge ], [ %vid.0130, %if.end16.for.body24_crit_edge ]
  %vid.0.in132 = phi i32 [ %call.i120, %for.body24.for.body24_crit_edge ], [ %call.i, %if.end16.for.body24_crit_edge ]
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %call26 = tail call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i, i16 noundef zeroext %conv12, ptr noundef %25, i16 noundef zeroext %vid.0133, i1 noundef zeroext false)
  %26 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %default_vid, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %vid.0133)
  %cmp.i117 = icmp ugt i16 %27, %vid.0133
  %narrow.i118 = select i1 %cmp.i117, i16 %27, i16 4096
  %spec.select.i119 = zext i16 %narrow.i118 to i32
  %inc.i = add i32 %vid.0.in132, 1
  %conv8.i = and i32 %inc.i, 65535
  %call.i120 = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef %spec.select.i119, i32 noundef %conv8.i) #10
  %vid.0 = trunc i32 %call.i120 to i16
  %cmp22 = icmp ult i16 %vid.0, 4096
  br i1 %cmp22, label %for.body24.for.body24_crit_edge, label %for.body24.for.end29_crit_edge

for.body24.for.end29_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

for.end29:                                        ; preds = %for.body24.for.end29_crit_edge, %if.end16.for.end29_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #10
  %arrayidx31 = getelementptr %struct.fm10k_l2_accel, ptr %1, i32 0, i32 4, i32 %i.0.lcssa
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx31, align 4
  %count = getelementptr inbounds %struct.fm10k_l2_accel, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %count, align 4
  %dec = add i16 %30, -1
  store i16 %dec, ptr %count, align 4
  %idx = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 3
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 7, ptr %idx, align 1
  %inner_rss = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 9
  %32 = ptrtoint ptr %inner_rss to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %inner_rss, align 1
  %mask = getelementptr i8, ptr %dev, i32 5168
  %33 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mask, align 4
  %conv33 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i = icmp eq i16 %34, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %conv33, i1 true) #10, !range !50
  %36 = trunc i32 %35 to i8
  %37 = sub nuw nsw i8 32, %36
  %conv35 = select i1 %tobool.not.i, i8 0, i8 %37
  %rss_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 4
  %38 = ptrtoint ptr %rss_l to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv35, ptr %rss_l, align 2
  %mask38 = getelementptr i8, ptr %dev, i32 5176
  %39 = ptrtoint ptr %mask38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mask38, align 4
  %conv39 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not.i109 = icmp eq i16 %40, 0
  %41 = tail call i32 @llvm.ctlz.i32(i32 %conv39, i1 true) #10, !range !50
  %42 = trunc i32 %41 to i8
  %43 = sub nuw nsw i8 32, %42
  %conv41 = select i1 %tobool.not.i109, i8 0, i8 %43
  %pc_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 5
  %44 = ptrtoint ptr %pc_l to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv41, ptr %pc_l, align 1
  %glort42 = getelementptr i8, ptr %dev, i32 19030
  %45 = ptrtoint ptr %glort42 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %glort42, align 2
  %47 = ptrtoint ptr %dglort to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %dglort, align 2
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i112 = icmp eq i32 %49, 0
  %50 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 true) #10, !range !50
  %51 = trunc i32 %50 to i8
  %52 = sub nuw nsw i8 32, %51
  %conv46 = select i1 %tobool.not.i112, i8 0, i8 %52
  %shared_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 8
  %53 = ptrtoint ptr %shared_l to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv46, ptr %shared_l, align 2
  %configure_dglort_map = getelementptr i8, ptr %dev, i32 15624
  %54 = ptrtoint ptr %configure_dglort_map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %configure_dglort_map, align 8
  %call49 = call i32 %55(ptr noundef %hw2, ptr noundef nonnull %dglort) #10
  %56 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp52 = icmp eq i16 %57, 0
  br i1 %cmp52, label %if.then54, label %for.end29.cleanup_crit_edge

for.end29.cleanup_crit_edge:                      ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then54:                                        ; preds = %for.end29
  %num_rx_queues.i = getelementptr i8, ptr %dev, i32 2848
  %58 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_rx_queues.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp40.i = icmp sgt i32 %59, 0
  br i1 %cmp40.i, label %if.then54.for.body.i_crit_edge, label %if.then54.fm10k_assign_l2_accel.exit_crit_edge

if.then54.fm10k_assign_l2_accel.exit_crit_edge:   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_assign_l2_accel.exit

if.then54.for.body.i_crit_edge:                   ; preds = %if.then54
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then54.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i123, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then54.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.041.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !49
  %l2_accel23.i = getelementptr inbounds %struct.fm10k_ring, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %l2_accel23.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr null, ptr %l2_accel23.i, align 4
  %inc.i123 = add nuw nsw i32 %i.041.i, 1
  %63 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_rx_queues.i, align 32
  %cmp.i124 = icmp slt i32 %inc.i123, %64
  br i1 %cmp.i124, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fm10k_assign_l2_accel.exit_crit_edge

for.body.i.fm10k_assign_l2_accel.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_assign_l2_accel.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

fm10k_assign_l2_accel.exit:                       ; preds = %for.body.i.fm10k_assign_l2_accel.exit_crit_edge, %if.then54.fm10k_assign_l2_accel.exit_crit_edge
  %65 = ptrtoint ptr %l2_accel1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %l2_accel1, align 4
  %rcu = getelementptr inbounds %struct.fm10k_l2_accel, ptr %1, i32 0, i32 3
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %fm10k_assign_l2_accel.exit, %for.end29.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dglort) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_xmit_frame_ring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fm10k_tx_encap_offload(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fm10k_check_tx_hang(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_tx_timeout_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !51
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #10
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !52
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !39

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !53
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !55
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  ret i32 %.lcssa.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm10k_update_vid(ptr noundef %netdev, i16 noundef zeroext %vid, i1 noundef zeroext %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %l2_accel1 = getelementptr i8, ptr %netdev, i32 2820
  %0 = ptrtoint ptr %l2_accel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2_accel1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool.not = icmp eq i16 %vid, 0
  br i1 %tobool.not, label %entry.cleanup101_crit_edge, label %if.end

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

if.end:                                           ; preds = %entry
  %conv = zext i16 %vid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vid)
  %cmp = icmp ugt i16 %vid, 4095
  br i1 %cmp, label %if.end.cleanup101_crit_edge, label %if.end5

if.end.cleanup101_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

if.end5:                                          ; preds = %if.end
  br i1 %set, label %land.lhs.true, label %if.then14.critedge

land.lhs.true:                                    ; preds = %if.end5
  %vlan_override = getelementptr i8, ptr %netdev, i32 15658
  %2 = ptrtoint ptr %vlan_override to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vlan_override, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.end18.critedge, label %land.lhs.true.cleanup101_crit_edge

land.lhs.true.cleanup101_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

if.then14.critedge:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %add.ptr.i) #10
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %add.ptr.i) #10
  br label %if.end18

if.end18.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %add.ptr.i) #10
  br label %if.end18

if.end18:                                         ; preds = %if.end18.critedge, %if.then14.critedge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2848
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19159 = icmp sgt i32 %5, 0
  br i1 %cmp19159, label %if.end18.for.body_crit_edge, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.0160 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.0160
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %vid22 = getelementptr inbounds %struct.fm10k_ring, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %vid22 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid22, align 4
  %10 = and i16 %9, 4095
  %conv25 = zext i16 %10 to i32
  %div3.i = lshr i32 %conv25, 5
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv25, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %13, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool29.not = icmp eq i32 %14, 0
  %15 = and i16 %9, 32767
  %masksel = select i1 %tobool29.not, i16 0, i16 -32768
  %storemerge = or i16 %masksel, %15
  %16 = ptrtoint ptr %vid22 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %storemerge, ptr %vid22, align 4
  %inc = add nuw nsw i32 %i.0160, 1
  %17 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_rx_queues, align 32
  %cmp19 = icmp slt i32 %inc, %18
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end18.for.end_crit_edge
  %vlan_override40 = getelementptr i8, ptr %netdev, i32 15658
  %19 = ptrtoint ptr %vlan_override40 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vlan_override40, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool41.not = icmp eq i8 %20, 0
  br i1 %tobool41.not, label %if.end43, label %for.end.cleanup101_crit_edge

for.end.cleanup101_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

if.end43:                                         ; preds = %for.end
  br i1 %set, label %if.end43.if.end52_crit_edge, label %land.lhs.true45

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true45:                                  ; preds = %if.end43
  %default_vid = getelementptr i8, ptr %netdev, i32 15652
  %21 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %default_vid, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %vid)
  %cmp49 = icmp eq i16 %22, %vid
  br i1 %cmp49, label %land.lhs.true45.cleanup101_crit_edge, label %land.lhs.true45.if.end52_crit_edge

land.lhs.true45.if.end52_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true45.cleanup101_crit_edge:             ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

if.end52:                                         ; preds = %land.lhs.true45.if.end52_crit_edge, %if.end43.if.end52_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2828
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool55.not = icmp eq i32 %25, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.cleanup101_crit_edge

if.end52.cleanup101_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup101

if.end57:                                         ; preds = %if.end52
  %mbx_lock.i = getelementptr i8, ptr %netdev, i32 18528
  tail call void @_raw_spin_lock(ptr noundef %mbx_lock.i) #10
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and58 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end57.if.end67_crit_edge

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then60:                                        ; preds = %if.end57
  %call63 = tail call i32 @fm10k_queue_vlan_request(ptr noundef %add.ptr.i, i32 noundef %conv, i8 noundef zeroext 0, i1 noundef zeroext %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then60.if.end67_crit_edge, label %if.then60.err_out_crit_edge

if.then60.err_out_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.end67:                                         ; preds = %if.then60.if.end67_crit_edge, %if.end57.if.end67_crit_edge
  %glort68 = getelementptr i8, ptr %netdev, i32 19030
  %28 = ptrtoint ptr %glort68 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %glort68, align 2
  %addr = getelementptr i8, ptr %netdev, i32 15640
  %call72 = tail call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i, i16 noundef zeroext %29, ptr noundef %addr, i16 noundef zeroext %vid, i1 noundef zeroext %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end67.err_out_crit_edge

if.end67.err_out_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end75:                                         ; preds = %if.end67
  %tobool76.not = icmp eq ptr %1, null
  br i1 %tobool76.not, label %if.end75.if.end94_crit_edge, label %for.cond78.preheader

if.end75.if.end94_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

for.cond78.preheader:                             ; preds = %if.end75
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp79161 = icmp sgt i32 %31, 0
  br i1 %cmp79161, label %for.body81.lr.ph, label %for.cond78.preheader.if.end94_crit_edge

for.cond78.preheader.if.end94_crit_edge:          ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

for.body81.lr.ph:                                 ; preds = %for.cond78.preheader
  %dglort = getelementptr inbounds %struct.fm10k_l2_accel, ptr %1, i32 0, i32 2
  br label %for.body81

for.body81:                                       ; preds = %cleanup.for.body81_crit_edge, %for.body81.lr.ph
  %i.1162 = phi i32 [ 0, %for.body81.lr.ph ], [ %inc92, %cleanup.for.body81_crit_edge ]
  %arrayidx82 = getelementptr %struct.fm10k_l2_accel, ptr %1, i32 0, i32 4, i32 %i.1162
  %32 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx82, align 4
  %tobool83.not = icmp eq ptr %33, null
  br i1 %tobool83.not, label %for.body81.cleanup_crit_edge, label %if.end85

for.body81.cleanup_crit_edge:                     ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end85:                                         ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dglort to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dglort, align 2
  %36 = trunc i32 %i.1162 to i16
  %37 = add i16 %36, 1
  %conv88 = add i16 %37, %35
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr, align 64
  %call90 = tail call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i, i16 noundef zeroext %conv88, ptr noundef %39, i16 noundef zeroext %vid, i1 noundef zeroext %set)
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %for.body81.cleanup_crit_edge
  %inc92 = add nuw nsw i32 %i.1162, 1
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %cmp79 = icmp slt i32 %inc92, %41
  br i1 %cmp79, label %cleanup.for.body81_crit_edge, label %cleanup.if.end94_crit_edge

cleanup.if.end94_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

cleanup.for.body81_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body81

if.end94:                                         ; preds = %cleanup.if.end94_crit_edge, %for.cond78.preheader.if.end94_crit_edge, %if.end75.if.end94_crit_edge
  %cond = select i1 %set, i16 4096, i16 0
  %add98 = add i16 %cond, %vid
  %vid100 = getelementptr i8, ptr %netdev, i32 19034
  %42 = ptrtoint ptr %vid100 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %add98, ptr %vid100, align 2
  %uc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65
  tail call void @__hw_addr_unsync_dev(ptr noundef %uc.i, ptr noundef %netdev, ptr noundef nonnull @fm10k_uc_vlan_unsync) #10
  %mc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  tail call void @__hw_addr_unsync_dev(ptr noundef %mc.i, ptr noundef %netdev, ptr noundef nonnull @fm10k_mc_vlan_unsync) #10
  br label %err_out

err_out:                                          ; preds = %if.end94, %if.end67.err_out_crit_edge, %if.then60.err_out_crit_edge
  %err.0 = phi i32 [ %call72, %if.end67.err_out_crit_edge ], [ 0, %if.end94 ], [ %call63, %if.then60.err_out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mbx_lock.i) #10
  br label %cleanup101

cleanup101:                                       ; preds = %err_out, %if.end52.cleanup101_crit_edge, %land.lhs.true45.cleanup101_crit_edge, %for.end.cleanup101_crit_edge, %land.lhs.true.cleanup101_crit_edge, %if.end.cleanup101_crit_edge, %entry.cleanup101_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out ], [ 0, %entry.cleanup101_crit_edge ], [ -22, %if.end.cleanup101_crit_edge ], [ -13, %land.lhs.true.cleanup101_crit_edge ], [ 0, %for.end.cleanup101_crit_edge ], [ 0, %land.lhs.true45.cleanup101_crit_edge ], [ 0, %if.end52.cleanup101_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_uc_vlan_unsync(ptr noundef %netdev, ptr nocapture noundef readonly %uc_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %glort1 = getelementptr i8, ptr %netdev, i32 19030
  %0 = ptrtoint ptr %glort1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %glort1, align 2
  %vid2 = getelementptr i8, ptr %netdev, i32 19034
  %2 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %3)
  %tobool = icmp ugt i16 %3, 4095
  %4 = and i16 %3, 4095
  %call7 = tail call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i, i16 noundef zeroext %1, ptr noundef %uc_addr, i16 noundef zeroext %4, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %.call7 = select i1 %tobool8.not, i32 1, i32 %call7
  ret i32 %.call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_mc_vlan_unsync(ptr noundef %netdev, ptr nocapture noundef readonly %mc_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %glort1 = getelementptr i8, ptr %netdev, i32 19030
  %0 = ptrtoint ptr %glort1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %glort1, align 2
  %vid2 = getelementptr i8, ptr %netdev, i32 19034
  %2 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %3)
  %tobool = icmp ugt i16 %3, 4095
  %4 = and i16 %3, 4095
  %call7 = tail call i32 @fm10k_queue_mac_request(ptr noundef %add.ptr.i, i16 noundef zeroext %1, ptr noundef %mc_addr, i16 noundef zeroext %4, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %.call7 = select i1 %tobool8.not, i32 1, i32 %call7
  ret i32 %.call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_udp_tunnel_sync(ptr noundef %dev, i32 noundef %table) #0 align 64 {
entry:
  %ti = alloca %struct.udp_tunnel_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ti) #10
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ti, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %1 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.udp_tunnel_nic_get_port.exit_crit_edge, label %if.then.i

entry.udp_tunnel_nic_get_port.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %udp_tunnel_nic_get_port.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void %3(ptr noundef %dev, i32 noundef %table, i32 noundef 0, ptr noundef nonnull %ti) #10
  br label %udp_tunnel_nic_get_port.exit

udp_tunnel_nic_get_port.exit:                     ; preds = %if.then.i, %entry.udp_tunnel_nic_get_port.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %table)
  %tobool.not = icmp eq i32 %table, 0
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %udp_tunnel_nic_get_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vxlan_port = getelementptr i8, ptr %dev, i32 18868
  %6 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vxlan_port, align 4
  br label %if.end

if.else:                                          ; preds = %udp_tunnel_nic_get_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %geneve_port = getelementptr i8, ptr %dev, i32 18870
  %7 = ptrtoint ptr %geneve_port to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %5, ptr %geneve_port, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hw1.i = getelementptr i8, ptr %dev, i32 15552
  %type.i = getelementptr i8, ptr %dev, i32 15636
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 1
  br i1 %cmp.not.i, label %do.body.i, label %if.end.fm10k_restore_udp_port_info.exit_crit_edge

if.end.fm10k_restore_udp_port_info.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_restore_udp_port_info.exit

do.body.i:                                        ; preds = %if.end
  %10 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw1.i, align 8
  %tobool.not.i6 = icmp eq ptr %11, null
  br i1 %tobool.not.i6, label %do.body.i.if.end11.i_crit_edge, label %do.body8.i, !prof !39

do.body.i.if.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !40
  call void @arm_heavy_mb() #10
  %vxlan_port.i = getelementptr i8, ptr %dev, i32 18868
  %12 = ptrtoint ptr %vxlan_port.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vxlan_port.i, align 4
  %conv.i = zext i16 %13 to i32
  %or.i = or i32 %conv.i, 1700265984
  %14 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %arrayidx.i = getelementptr i32, ptr %11, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %14) #10, !srcloc !41
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.body8.i, %do.body.i.if.end11.i_crit_edge
  %15 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw1.i, align 8
  %tobool21.not.i = icmp eq ptr %16, null
  br i1 %tobool21.not.i, label %if.end11.i.fm10k_restore_udp_port_info.exit_crit_edge, label %do.body31.i, !prof !39

if.end11.i.fm10k_restore_udp_port_info.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm10k_restore_udp_port_info.exit

do.body31.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !42
  call void @arm_heavy_mb() #10
  %geneve_port.i = getelementptr i8, ptr %dev, i32 18870
  %17 = ptrtoint ptr %geneve_port.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %geneve_port.i, align 2
  %conv34.i = zext i16 %18 to i32
  %19 = call i32 @llvm.bswap.i32(i32 %conv34.i) #10
  %arrayidx35.i = getelementptr i32, ptr %16, i32 65
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx35.i, i32 %19) #10, !srcloc !41
  br label %fm10k_restore_udp_port_info.exit

fm10k_restore_udp_port_info.exit:                 ; preds = %do.body31.i, %if.end11.i.fm10k_restore_udp_port_info.exit_crit_edge, %if.end.fm10k_restore_udp_port_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ti) #10
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !25, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @fm10k_setup_tx_resources.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c", i32 26, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @fm10k_setup_rx_resources.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c", i32 94, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c", i32 64, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c", i32 131, i32 3}
!10 = !{ptr @fm10k_netdev_ops, !11, !"fm10k_netdev_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c", i32 1517, i32 36}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c", i32 592, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c", i32 604, i32 3}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fm10k_udp_tunnels, !27, !"fm10k_udp_tunnels", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_netdev.c", i32 417, i32 41}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2158470153}
!41 = !{i64 6099802}
!42 = !{i64 2158474128}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2154640377, i64 2154640865, i64 2154640414, i64 2154640470, i64 2154640504, i64 2154640528, i64 2154640569, i64 2154640590, i64 2154640618, i64 2154640652}
!45 = !{i64 2154637409, i64 2154637897, i64 2154637446, i64 2154637502, i64 2154637536, i64 2154637560, i64 2154637601, i64 2154637622, i64 2154637650, i64 2154637684}
!46 = !{i64 2149721215}
!47 = !{i64 2150337584}
!48 = !{i64 2149721481}
!49 = !{i64 2158498396}
!50 = !{i32 0, i32 33}
!51 = !{i64 817059, i64 817120}
!52 = !{i64 819791}
!53 = !{i64 820076}
!54 = !{i64 2154961408}
!55 = !{i64 2154961250}
!56 = !{i64 2154961578}
