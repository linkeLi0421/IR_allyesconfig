; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfrmdev_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.150, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.157, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.159, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.150 = type { ptr }
%union.anon.157 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.159 = type { %struct.ixgbe_rx_queue_stats }
%struct.ixgbe_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_addr_filter_info, %struct.ixgbe_fc_info, %struct.ixgbe_phy_info, %struct.ixgbe_link_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_bus_info, %struct.ixgbe_mbx_info, ptr, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, i32, [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.ixgbe_thermal_sensor_data, i8, i8 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_thermal_sensor_data = type { [3 x %struct.ixgbe_thermal_diode_data] }
%struct.ixgbe_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.ixgbe_addr_filter_info = type { i32, i32, i32, i32, i8, i8 }
%struct.ixgbe_fc_info = type { [8 x i32], [8 x i32], i16, i8, i8, i8, i8, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.ixgbe_phy_operations, %struct.mdio_if_info, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ixgbe_link_info = type { %struct.ixgbe_link_operations, i8 }
%struct.ixgbe_link_operations = type { ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_info = type { %struct.ixgbe_eeprom_operations, i32, i32, i16, i16, i16, i16 }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_bus_info = type { i32, i32, i32, i8, i8, i8 }
%struct.ixgbe_mbx_info = type { ptr, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.ixgbe_hw_stats = type { i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64], [8 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%union.ixgbe_atr_input = type { %struct.anon.160 }
%struct.anon.160 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.ixgbe_fcoe_ddp = type { i32, i32, i32, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.vf_macvlans = type { %struct.list_head, i32, i8, i8, [6 x i8] }
%struct.ixgbe_ipsec = type { i16, i16, ptr, ptr, ptr, [1024 x %struct.hlist_head] }
%struct.tx_sa = type { ptr, [4 x i32], i32, i32, i8, i8, i32 }
%struct.rx_sa = type { %struct.hlist_node, ptr, [4 x i32], [4 x i32], i32, i32, i8, i8, i8, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.52, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.53, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.52 = type { %struct.hlist_node }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.53 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.rx_ip_sa = type { [4 x i32], i32, i8 }
%struct.vf_data_storage = type { ptr, [6 x i8], [30 x i16], i16, i8, i8, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.sa_mbx_msg = type { i32, i8, i8, i16, [4 x i32], [5 x i32] }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.169, %struct.sadb_alg }
%union.anon.169 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_aead = type { [64 x i8], i32, i32, [0 x i8] }
%struct.ixgbe_tx_buffer = type { ptr, i32, %union.anon.153, i32, i16, i16, i32, i32, i32 }
%union.anon.153 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, i32, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.170, i32, i32, i8, i8 }
%struct.anon.170 = type { i32, i32 }
%struct.ixgbe_ipsec_tx_data = type { i32, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.148 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VF %d attempted to add an IPsec SA\0A\00", [60 x i8] zeroinitializer }, align 32
@aes_gcm_name = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfc4106(gcm(aes))\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vf %d attempted to delete an SA\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vf %d SA index %d out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vf %d bad Rx SA index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vf %d bad Tx SA index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: no xfrm state len = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.ixgbe_ipsec_tx = private unnamed_addr constant [15 x i8] c"ixgbe_ipsec_tx\00", align 1
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: no xfrm_input_state() xs = %p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: bad sa_idx=%d handle=%lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: unused sa_idx=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ixgbe_xfrmdev_ops = internal constant { %struct.xfrmdev_ops, [44 x i8] } { %struct.xfrmdev_ops { ptr @ixgbe_ipsec_add_sa, ptr @ixgbe_ipsec_del_sa, ptr null, ptr @ixgbe_ipsec_offload_ok, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate memory for SA tables\00", [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid Rx SA selected sa_idx=%d offload_handle=%lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid Tx SA selected sa_idx=%d offload_handle=%lu\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported protocol 0x%04x for ipsec offload\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported mode for ipsec offload\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IPsec IP addr clash with mgmt filters\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Compression offload not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No space for SA in Rx table!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get key data for Rx SA table\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No space for SA in Rx IP SA table\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No space for SA in Tx table\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get key data for Tx SA table\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported IPsec algorithm\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IPsec offload requires %d bit authentication\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unsupported IPsec algorithm - please use %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"IPsec hw offload only supports keys up to 128 bits with a 32 bit salt\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"IPsec hw offload parameters missing 32 bit salt value\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_ipsec_find_rx_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 160]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 898, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"aes_gcm_name\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 10, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1002, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1011, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1023, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1045, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1078, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1085, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1092, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1099, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"ixgbe_xfrmdev_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 834, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1283, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 768, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 797, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 573, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 579, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 584, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 592, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 599, i32 20 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 614, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 674, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 709, i32 20 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 723, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 436, i32 19 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 441, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 451, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 463, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 466, i32 20 }
@___asan_gen_.120 = private constant [50 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 400, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 695, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 723, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @aes_gcm_name, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ixgbe_xfrmdev_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_gcm_name to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_xfrmdev_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ipsec_restore(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 117
  %0 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec1, align 4
  %hw2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %flags2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @ixgbe_ipsec_stop_engine(ptr noundef %adapter)
  tail call fastcc void @ixgbe_ipsec_clear_hw_tables(ptr noundef %adapter)
  tail call fastcc void @ixgbe_ipsec_start_engine(ptr noundef %adapter)
  %rx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 3
  %tx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 4
  br label %for.body

for.cond29.preheader:                             ; preds = %if.end28
  %ip_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 2
  br label %for.body32

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %if.end
  %i.075 = phi i32 [ 0, %if.end ], [ %inc, %if.end28.for.body_crit_edge ]
  %4 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_tbl, align 4
  %6 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_tbl, align 4
  %arrayidx3 = getelementptr %struct.tx_sa, ptr %7, i32 %i.075
  %used = getelementptr %struct.rx_sa, ptr %5, i32 %i.075, i32 7
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %used, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %for.body.if.end13_crit_edge, label %if.then5

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then5:                                         ; preds = %for.body
  %mode = getelementptr %struct.rx_sa, ptr %5, i32 %i.075, i32 5
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %and6 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %xs = getelementptr %struct.rx_sa, ptr %5, i32 %i.075, i32 1
  %12 = ptrtoint ptr %xs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xs, align 4
  tail call void @ixgbe_ipsec_del_sa(ptr noundef %13)
  br label %if.end13

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %i.075 to i16
  %xs9 = getelementptr %struct.rx_sa, ptr %5, i32 %i.075, i32 1
  %14 = ptrtoint ptr %xs9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xs9, align 4
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %15, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spi, align 4
  %key = getelementptr %struct.rx_sa, ptr %5, i32 %i.075, i32 3
  %salt = getelementptr %struct.rx_sa, ptr %5, i32 %i.075, i32 4
  %18 = ptrtoint ptr %salt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %salt, align 4
  %iptbl_ind = getelementptr %struct.rx_sa, ptr %5, i32 %i.075, i32 6
  %20 = ptrtoint ptr %iptbl_ind to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iptbl_ind, align 4
  %conv11 = zext i8 %21 to i32
  tail call fastcc void @ixgbe_ipsec_set_rx_sa(ptr noundef %hw2, i16 noundef zeroext %conv, i32 noundef %17, ptr noundef %key, i32 noundef %19, i32 noundef %11, i32 noundef %conv11)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8, %for.body.if.end13_crit_edge
  %used14 = getelementptr %struct.tx_sa, ptr %7, i32 %i.075, i32 5
  %22 = ptrtoint ptr %used14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %used14, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not = icmp eq i8 %23, 0
  br i1 %tobool15.not, label %if.end13.if.end28_crit_edge, label %if.then16

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then16:                                        ; preds = %if.end13
  %mode17 = getelementptr %struct.tx_sa, ptr %7, i32 %i.075, i32 3
  %24 = ptrtoint ptr %mode17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode17, align 4
  %and18 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx3, align 4
  tail call void @ixgbe_ipsec_del_sa(ptr noundef %27)
  br label %if.end28

if.else22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %conv23 = trunc i32 %i.075 to i16
  %key24 = getelementptr %struct.tx_sa, ptr %7, i32 %i.075, i32 1
  %salt26 = getelementptr %struct.tx_sa, ptr %7, i32 %i.075, i32 2
  %28 = ptrtoint ptr %salt26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %salt26, align 4
  tail call fastcc void @ixgbe_ipsec_set_tx_sa(ptr noundef %hw2, i16 noundef zeroext %conv23, ptr noundef %key24, i32 noundef %29)
  br label %if.end28

if.end28:                                         ; preds = %if.else22, %if.then20, %if.end13.if.end28_crit_edge
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.cond29.preheader, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body32:                                       ; preds = %if.end39.for.body32_crit_edge, %for.cond29.preheader
  %i.178 = phi i32 [ 0, %for.cond29.preheader ], [ %inc41, %if.end39.for.body32_crit_edge ]
  %30 = ptrtoint ptr %ip_tbl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ip_tbl, align 4
  %used34 = getelementptr %struct.rx_ip_sa, ptr %31, i32 %i.178, i32 2
  %32 = ptrtoint ptr %used34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %used34, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool35.not = icmp eq i8 %33, 0
  br i1 %tobool35.not, label %for.body32.if.end39_crit_edge, label %if.then36

for.body32.if.end39_crit_edge:                    ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx33 = getelementptr %struct.rx_ip_sa, ptr %31, i32 %i.178
  %conv37 = trunc i32 %i.178 to i16
  tail call fastcc void @ixgbe_ipsec_set_rx_ip(ptr noundef %hw2, i16 noundef zeroext %conv37, ptr noundef %arrayidx33)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %for.body32.if.end39_crit_edge
  %inc41 = add nuw nsw i32 %i.178, 1
  %exitcond80.not = icmp eq i32 %inc41, 128
  br i1 %exitcond80.not, label %if.end39.cleanup_crit_edge, label %if.end39.for.body32_crit_edge

if.end39.for.body32_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_ipsec_stop_engine(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  tail call fastcc void @ixgbe_ipsec_stop_data(ptr noundef %adapter)
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 35072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !81
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i26 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i26, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit29_crit_edge, label %do.body1.i28

ixgbe_write_reg.exit.ixgbe_write_reg.exit29_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit29

do.body1.i28:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i27 = getelementptr i8, ptr %3, i32 36352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #12, !srcloc !81
  br label %ixgbe_write_reg.exit29

ixgbe_write_reg.exit29:                           ; preds = %do.body1.i28, %ixgbe_write_reg.exit.ixgbe_write_reg.exit29_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34816) #12
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i30 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i30, label %ixgbe_write_reg.exit29.ixgbe_write_reg.exit33_crit_edge, label %do.body1.i32

ixgbe_write_reg.exit29.ixgbe_write_reg.exit33_crit_edge: ; preds = %ixgbe_write_reg.exit29
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit33

do.body1.i32:                                     ; preds = %ixgbe_write_reg.exit29
  call void @__sanitizer_cov_trace_pc() #14
  %or = and i32 %call, -6
  %and = or i32 %or, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %add.ptr.i31 = getelementptr i8, ptr %5, i32 34816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %6) #12, !srcloc !81
  br label %ixgbe_write_reg.exit33

ixgbe_write_reg.exit33:                           ; preds = %do.body1.i32, %ixgbe_write_reg.exit29.ixgbe_write_reg.exit33_crit_edge
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 36096) #12
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i34 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i34, label %ixgbe_write_reg.exit33.ixgbe_write_reg.exit37_crit_edge, label %do.body1.i36

ixgbe_write_reg.exit33.ixgbe_write_reg.exit37_crit_edge: ; preds = %ixgbe_write_reg.exit33
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit37

do.body1.i36:                                     ; preds = %ixgbe_write_reg.exit33
  call void @__sanitizer_cov_trace_pc() #14
  %or3 = or i32 %call2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %or3) #12
  %add.ptr.i35 = getelementptr i8, ptr %8, i32 36096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %9) #12, !srcloc !81
  br label %ixgbe_write_reg.exit37

ixgbe_write_reg.exit37:                           ; preds = %do.body1.i36, %ixgbe_write_reg.exit33.ixgbe_write_reg.exit37_crit_edge
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i38 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i38, label %ixgbe_write_reg.exit37.ixgbe_write_reg.exit41_crit_edge, label %do.body1.i40

ixgbe_write_reg.exit37.ixgbe_write_reg.exit41_crit_edge: ; preds = %ixgbe_write_reg.exit37
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit41

do.body1.i40:                                     ; preds = %ixgbe_write_reg.exit37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i39 = getelementptr i8, ptr %11, i32 34824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 1342308352) #12, !srcloc !81
  br label %ixgbe_write_reg.exit41

ixgbe_write_reg.exit41:                           ; preds = %do.body1.i40, %ixgbe_write_reg.exit37.ixgbe_write_reg.exit41_crit_edge
  %call4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34832) #12
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i42 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i42, label %ixgbe_write_reg.exit41.ixgbe_write_reg.exit45_crit_edge, label %do.body1.i44

ixgbe_write_reg.exit41.ixgbe_write_reg.exit45_crit_edge: ; preds = %ixgbe_write_reg.exit41
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit45

do.body1.i44:                                     ; preds = %ixgbe_write_reg.exit41
  call void @__sanitizer_cov_trace_pc() #14
  %and5 = and i32 %call4, -16
  %or6 = or i32 %and5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %or6) #12
  %add.ptr.i43 = getelementptr i8, ptr %13, i32 34832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %14) #12, !srcloc !81
  br label %ixgbe_write_reg.exit45

ixgbe_write_reg.exit45:                           ; preds = %do.body1.i44, %ixgbe_write_reg.exit41.ixgbe_write_reg.exit45_crit_edge
  %15 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i46 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i46, label %ixgbe_write_reg.exit45.ixgbe_write_reg.exit49_crit_edge, label %do.body1.i48

ixgbe_write_reg.exit45.ixgbe_write_reg.exit49_crit_edge: ; preds = %ixgbe_write_reg.exit45
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit49

do.body1.i48:                                     ; preds = %ixgbe_write_reg.exit45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i47 = getelementptr i8, ptr %16, i32 34816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 16777216) #12, !srcloc !81
  br label %ixgbe_write_reg.exit49

ixgbe_write_reg.exit49:                           ; preds = %do.body1.i48, %ixgbe_write_reg.exit45.ixgbe_write_reg.exit49_crit_edge
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i50 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i50, label %ixgbe_write_reg.exit49.ixgbe_write_reg.exit53_crit_edge, label %do.body1.i52

ixgbe_write_reg.exit49.ixgbe_write_reg.exit53_crit_edge: ; preds = %ixgbe_write_reg.exit49
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit53

do.body1.i52:                                     ; preds = %ixgbe_write_reg.exit49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i51 = getelementptr i8, ptr %18, i32 36096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 16777216) #12, !srcloc !81
  br label %ixgbe_write_reg.exit53

ixgbe_write_reg.exit53:                           ; preds = %do.body1.i52, %ixgbe_write_reg.exit49.ixgbe_write_reg.exit53_crit_edge
  %call7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_ipsec_clear_hw_tables(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %1 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %2, i32 36352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !81
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %3 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i29 = icmp eq ptr %4, null
  br i1 %tobool.not.i.i29, label %ixgbe_write_reg.exit.for.body.preheader_crit_edge, label %do.body1.i31

ixgbe_write_reg.exit.for.body.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

do.body1.i31:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i30 = getelementptr i8, ptr %4, i32 35072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #12, !srcloc !81
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i31, %ixgbe_write_reg.exit.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %idx.033 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call fastcc void @ixgbe_ipsec_set_tx_sa(ptr noundef %hw1, i16 noundef zeroext %idx.033, ptr noundef nonnull %buf, i32 noundef 0)
  call fastcc void @ixgbe_ipsec_set_rx_sa(ptr noundef %hw1, i16 noundef zeroext %idx.033, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call fastcc void @ixgbe_ipsec_set_rx_ip(ptr noundef %hw1, i16 noundef zeroext %idx.033, ptr noundef nonnull %buf)
  %inc = add nuw nsw i16 %idx.033, 1
  %cmp = icmp ult i16 %idx.033, 127
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.body9_crit_edge

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %idx.135 = phi i16 [ %inc13, %for.body9.for.body9_crit_edge ], [ 128, %for.body.for.body9_crit_edge ]
  call fastcc void @ixgbe_ipsec_set_tx_sa(ptr noundef %hw1, i16 noundef zeroext %idx.135, ptr noundef nonnull %buf, i32 noundef 0)
  call fastcc void @ixgbe_ipsec_set_rx_sa(ptr noundef %hw1, i16 noundef zeroext %idx.135, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %inc13 = add nuw nsw i16 %idx.135, 1
  %cmp7 = icmp ult i16 %idx.135, 1023
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.end14

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

for.end14:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_ipsec_start_engine(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  tail call fastcc void @ixgbe_ipsec_stop_data(ptr noundef %adapter)
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34832) #12
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %call, -16
  %or = or i32 %and, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 34832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #12, !srcloc !81
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34824) #12
  %3 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i18 = icmp eq ptr %4, null
  br i1 %tobool.not.i.i18, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit21_crit_edge, label %do.body1.i20

ixgbe_write_reg.exit.ixgbe_write_reg.exit21_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit21

do.body1.i20:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and3 = and i32 %call2, -1024
  %or4 = or i32 %and3, 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %or4) #12
  %add.ptr.i19 = getelementptr i8, ptr %4, i32 34824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %5) #12, !srcloc !81
  br label %ixgbe_write_reg.exit21

ixgbe_write_reg.exit21:                           ; preds = %do.body1.i20, %ixgbe_write_reg.exit.ixgbe_write_reg.exit21_crit_edge
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i22 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i22, label %ixgbe_write_reg.exit21.ixgbe_write_reg.exit25_crit_edge, label %do.body1.i24

ixgbe_write_reg.exit21.ixgbe_write_reg.exit25_crit_edge: ; preds = %ixgbe_write_reg.exit21
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit25

do.body1.i24:                                     ; preds = %ixgbe_write_reg.exit21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i23 = getelementptr i8, ptr %7, i32 36096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #12, !srcloc !81
  br label %ixgbe_write_reg.exit25

ixgbe_write_reg.exit25:                           ; preds = %do.body1.i24, %ixgbe_write_reg.exit21.ixgbe_write_reg.exit25_crit_edge
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i26 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i26, label %ixgbe_write_reg.exit25.ixgbe_write_reg.exit29_crit_edge, label %do.body1.i28

ixgbe_write_reg.exit25.ixgbe_write_reg.exit29_crit_edge: ; preds = %ixgbe_write_reg.exit25
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit29

do.body1.i28:                                     ; preds = %ixgbe_write_reg.exit25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i27 = getelementptr i8, ptr %9, i32 34816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 67108864) #12, !srcloc !81
  br label %ixgbe_write_reg.exit29

ixgbe_write_reg.exit29:                           ; preds = %do.body1.i28, %ixgbe_write_reg.exit25.ixgbe_write_reg.exit29_crit_edge
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i30 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i30, label %ixgbe_write_reg.exit29.ixgbe_write_reg.exit33_crit_edge, label %do.body1.i32

ixgbe_write_reg.exit29.ixgbe_write_reg.exit33_crit_edge: ; preds = %ixgbe_write_reg.exit29
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit33

do.body1.i32:                                     ; preds = %ixgbe_write_reg.exit29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i31 = getelementptr i8, ptr %11, i32 35072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 16777216) #12, !srcloc !81
  br label %ixgbe_write_reg.exit33

ixgbe_write_reg.exit33:                           ; preds = %do.body1.i32, %ixgbe_write_reg.exit29.ixgbe_write_reg.exit33_crit_edge
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i34 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i34, label %ixgbe_write_reg.exit33.ixgbe_write_reg.exit37_crit_edge, label %do.body1.i36

ixgbe_write_reg.exit33.ixgbe_write_reg.exit37_crit_edge: ; preds = %ixgbe_write_reg.exit33
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit37

do.body1.i36:                                     ; preds = %ixgbe_write_reg.exit33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i35 = getelementptr i8, ptr %13, i32 36352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 16777216) #12, !srcloc !81
  br label %ixgbe_write_reg.exit37

ixgbe_write_reg.exit37:                           ; preds = %do.body1.i36, %ixgbe_write_reg.exit33.ixgbe_write_reg.exit37_crit_edge
  %call5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_ipsec_del_sa(ptr nocapture noundef readonly %xs) #0 align 64 {
entry:
  %zerobuf = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %ipsec1 = getelementptr i8, ptr %1, i32 68260
  %2 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec1, align 4
  %hw2 = getelementptr i8, ptr %1, i32 6528
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zerobuf) #12
  %4 = call ptr @memset(ptr %zerobuf, i32 0, i32 16)
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %offload_handle35 = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 3
  %8 = ptrtoint ptr %offload_handle35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offload_handle35, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_tbl, align 4
  %idxprom = and i32 %9, 65535
  %arrayidx = getelementptr %struct.rx_sa, ptr %11, i32 %idxprom
  %used = getelementptr %struct.rx_sa, ptr %11, i32 %idxprom, i32 7
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %used, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %idxprom, i32 noundef %9) #15
  br label %cleanup64

if.end:                                           ; preds = %if.then
  %conv5 = trunc i32 %9 to i16
  call fastcc void @ixgbe_ipsec_set_rx_sa(ptr noundef %hw2, i16 noundef zeroext %conv5, i32 noundef 0, ptr noundef nonnull %zerobuf, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %arrayidx, i32 0, i32 1
  %14 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.not.i.i, label %if.end.hash_del_rcu.exit_crit_edge, label %if.then.i.i

if.end.hash_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %if.end
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %15, align 4
  %tobool.not.i7.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %15, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %20 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %if.end.hash_del_rcu.exit_crit_edge
  %iptbl_ind = getelementptr %struct.rx_sa, ptr %11, i32 %idxprom, i32 6
  %21 = ptrtoint ptr %iptbl_ind to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %iptbl_ind, align 4
  %ip_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %ip_tbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ip_tbl, align 4
  %idxprom11 = zext i8 %22 to i32
  %ref_cnt = getelementptr %struct.rx_ip_sa, ptr %24, i32 %idxprom11, i32 1
  %25 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  br i1 %cmp.not, label %hash_del_rcu.exit.if.end31_crit_edge, label %if.then14

hash_del_rcu.exit.if.end31_crit_edge:             ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then14:                                        ; preds = %hash_del_rcu.exit
  %dec = add i32 %26, -1
  %27 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dec, ptr %ref_cnt, align 4
  %28 = ptrtoint ptr %ip_tbl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ip_tbl, align 4
  %ref_cnt22 = getelementptr %struct.rx_ip_sa, ptr %29, i32 %idxprom11, i32 1
  %30 = ptrtoint ptr %ref_cnt22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ref_cnt22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool23.not = icmp eq i32 %31, 0
  br i1 %tobool23.not, label %if.then24, label %if.then14.if.end31_crit_edge

if.then14.if.end31_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then24:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx21 = getelementptr %struct.rx_ip_sa, ptr %29, i32 %idxprom11
  %32 = call ptr @memset(ptr %arrayidx21, i32 0, i32 24)
  %conv28 = zext i8 %22 to i16
  call fastcc void @ixgbe_ipsec_set_rx_ip(ptr noundef %hw2, i16 noundef zeroext %conv28, ptr noundef nonnull %zerobuf)
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %if.then14.if.end31_crit_edge, %hash_del_rcu.exit.if.end31_crit_edge
  %33 = call ptr @memset(ptr %arrayidx, i32 0, i32 60)
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %3, align 4
  %dec32 = add i16 %35, -1
  store i16 %dec32, ptr %3, align 4
  br label %if.end52

if.else:                                          ; preds = %entry
  %36 = trunc i32 %9 to i16
  %conv37 = add i16 %36, -1024
  %tx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_tbl, align 4
  %idxprom38 = zext i16 %conv37 to i32
  %used40 = getelementptr %struct.tx_sa, ptr %38, i32 %idxprom38, i32 5
  %39 = ptrtoint ptr %used40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %used40, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool41.not = icmp eq i8 %40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %idxprom38, i32 noundef %9) #15
  br label %cleanup64

if.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ixgbe_ipsec_set_tx_sa(ptr noundef %hw2, i16 noundef zeroext %conv37, ptr noundef nonnull %zerobuf, i32 noundef 0)
  %41 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_tbl, align 4
  %arrayidx50 = getelementptr %struct.tx_sa, ptr %42, i32 %idxprom38
  %43 = call ptr @memset(ptr %arrayidx50, i32 0, i32 36)
  %num_tx_sa = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %num_tx_sa to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %num_tx_sa, align 2
  %dec51 = add i16 %45, -1
  store i16 %dec51, ptr %num_tx_sa, align 2
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %46)
  %.pr = load i16, ptr %3, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end46, %if.end31
  %47 = phi i16 [ %dec32, %if.end31 ], [ %.pr, %if.end46 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp55 = icmp eq i16 %47, 0
  br i1 %cmp55, label %land.lhs.true, label %if.end52.cleanup64_crit_edge

if.end52.cleanup64_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

land.lhs.true:                                    ; preds = %if.end52
  %num_tx_sa57 = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %num_tx_sa57 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_tx_sa57, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp59 = icmp eq i16 %49, 0
  br i1 %cmp59, label %if.then61, label %land.lhs.true.cleanup64_crit_edge

land.lhs.true.cleanup64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %flags2 = getelementptr i8, ptr %1, i32 2840
  %50 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags2, align 8
  %and62 = and i32 %51, -131073
  store i32 %and62, ptr %flags2, align 8
  tail call fastcc void @ixgbe_ipsec_stop_engine(ptr noundef %add.ptr.i)
  br label %cleanup64

cleanup64:                                        ; preds = %if.then61, %land.lhs.true.cleanup64_crit_edge, %if.end52.cleanup64_crit_edge, %if.then42, %if.then7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zerobuf) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_ipsec_set_rx_sa(ptr noundef %hw, i16 noundef zeroext %idx, i32 noundef %spi, ptr nocapture noundef readonly %key, i32 noundef %salt, i32 noundef %mode, i32 noundef %ip_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 36372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %spi) #12, !srcloc !81
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i14 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i14, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit17_crit_edge, label %do.body1.i16

ixgbe_write_reg.exit.ixgbe_write_reg.exit17_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit17

do.body1.i16:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %ip_idx) #12
  %add.ptr.i15 = getelementptr i8, ptr %3, i32 36376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %4) #12, !srcloc !81
  br label %ixgbe_write_reg.exit17

ixgbe_write_reg.exit17:                           ; preds = %do.body1.i16, %ixgbe_write_reg.exit.ixgbe_write_reg.exit17_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #12
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 36352) #12
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %ixgbe_write_reg.exit17.ixgbe_ipsec_set_rx_item.exit_crit_edge, label %do.body1.i.i

ixgbe_write_reg.exit17.ixgbe_ipsec_set_rx_item.exit_crit_edge: ; preds = %ixgbe_write_reg.exit17
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_ipsec_set_rx_item.exit

do.body1.i.i:                                     ; preds = %ixgbe_write_reg.exit17
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %call.i, 1
  %conv.i = zext i16 %idx to i32
  %shl1.i = shl nuw nsw i32 %conv.i, 3
  %or.i = or i32 %and.i, %shl1.i
  %or3.i = or i32 %or.i, -2147483644
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #12
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 36352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #12, !srcloc !81
  br label %ixgbe_ipsec_set_rx_item.exit

ixgbe_ipsec_set_rx_item.exit:                     ; preds = %do.body1.i.i, %ixgbe_write_reg.exit17.ixgbe_ipsec_set_rx_item.exit_crit_edge
  %call4.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #12
  %arrayidx = getelementptr i32, ptr %key, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i18 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i18, label %ixgbe_ipsec_set_rx_item.exit.ixgbe_write_reg.exit21_crit_edge, label %do.body1.i20

ixgbe_ipsec_set_rx_item.exit.ixgbe_write_reg.exit21_crit_edge: ; preds = %ixgbe_ipsec_set_rx_item.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit21

do.body1.i20:                                     ; preds = %ixgbe_ipsec_set_rx_item.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 36380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %12) #12, !srcloc !81
  br label %ixgbe_write_reg.exit21

ixgbe_write_reg.exit21:                           ; preds = %do.body1.i20, %ixgbe_ipsec_set_rx_item.exit.ixgbe_write_reg.exit21_crit_edge
  %arrayidx.1 = getelementptr i32, ptr %key, i32 2
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i18.1 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i18.1, label %ixgbe_write_reg.exit21.ixgbe_write_reg.exit21.1_crit_edge, label %do.body1.i20.1

ixgbe_write_reg.exit21.ixgbe_write_reg.exit21.1_crit_edge: ; preds = %ixgbe_write_reg.exit21
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit21.1

do.body1.i20.1:                                   ; preds = %ixgbe_write_reg.exit21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %add.ptr.i19.1 = getelementptr i8, ptr %16, i32 36384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.1, i32 %17) #12, !srcloc !81
  br label %ixgbe_write_reg.exit21.1

ixgbe_write_reg.exit21.1:                         ; preds = %do.body1.i20.1, %ixgbe_write_reg.exit21.ixgbe_write_reg.exit21.1_crit_edge
  %arrayidx.2 = getelementptr i32, ptr %key, i32 1
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2, align 4
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i18.2 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i18.2, label %ixgbe_write_reg.exit21.1.ixgbe_write_reg.exit21.2_crit_edge, label %do.body1.i20.2

ixgbe_write_reg.exit21.1.ixgbe_write_reg.exit21.2_crit_edge: ; preds = %ixgbe_write_reg.exit21.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit21.2

do.body1.i20.2:                                   ; preds = %ixgbe_write_reg.exit21.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  %add.ptr.i19.2 = getelementptr i8, ptr %21, i32 36388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.2, i32 %22) #12, !srcloc !81
  br label %ixgbe_write_reg.exit21.2

ixgbe_write_reg.exit21.2:                         ; preds = %do.body1.i20.2, %ixgbe_write_reg.exit21.1.ixgbe_write_reg.exit21.2_crit_edge
  %23 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key, align 4
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i18.3 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i18.3, label %ixgbe_write_reg.exit21.2.ixgbe_write_reg.exit21.3_crit_edge, label %do.body1.i20.3

ixgbe_write_reg.exit21.2.ixgbe_write_reg.exit21.3_crit_edge: ; preds = %ixgbe_write_reg.exit21.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit21.3

do.body1.i20.3:                                   ; preds = %ixgbe_write_reg.exit21.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %add.ptr.i19.3 = getelementptr i8, ptr %26, i32 36392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.3, i32 %27) #12, !srcloc !81
  br label %ixgbe_write_reg.exit21.3

ixgbe_write_reg.exit21.3:                         ; preds = %do.body1.i20.3, %ixgbe_write_reg.exit21.2.ixgbe_write_reg.exit21.3_crit_edge
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i22 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i22, label %ixgbe_write_reg.exit21.3.ixgbe_write_reg.exit25_crit_edge, label %do.body1.i24

ixgbe_write_reg.exit21.3.ixgbe_write_reg.exit25_crit_edge: ; preds = %ixgbe_write_reg.exit21.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit25

do.body1.i24:                                     ; preds = %ixgbe_write_reg.exit21.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %30 = tail call i32 @llvm.bswap.i32(i32 %salt) #12
  %add.ptr.i23 = getelementptr i8, ptr %29, i32 36396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %30) #12, !srcloc !81
  br label %ixgbe_write_reg.exit25

ixgbe_write_reg.exit25:                           ; preds = %do.body1.i24, %ixgbe_write_reg.exit21.3.ixgbe_write_reg.exit25_crit_edge
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i26 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i26, label %ixgbe_write_reg.exit25.ixgbe_write_reg.exit29_crit_edge, label %do.body1.i28

ixgbe_write_reg.exit25.ixgbe_write_reg.exit29_crit_edge: ; preds = %ixgbe_write_reg.exit25
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit29

do.body1.i28:                                     ; preds = %ixgbe_write_reg.exit25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %mode) #12
  %add.ptr.i27 = getelementptr i8, ptr %32, i32 36400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %33) #12, !srcloc !81
  br label %ixgbe_write_reg.exit29

ixgbe_write_reg.exit29:                           ; preds = %do.body1.i28, %ixgbe_write_reg.exit25.ixgbe_write_reg.exit29_crit_edge
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #12
  %call.i30 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 36352) #12
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i31 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i31, label %ixgbe_write_reg.exit29.ixgbe_ipsec_set_rx_item.exit41_crit_edge, label %do.body1.i.i39

ixgbe_write_reg.exit29.ixgbe_ipsec_set_rx_item.exit41_crit_edge: ; preds = %ixgbe_write_reg.exit29
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_ipsec_set_rx_item.exit41

do.body1.i.i39:                                   ; preds = %ixgbe_write_reg.exit29
  call void @__sanitizer_cov_trace_pc() #14
  %and.i32 = and i32 %call.i30, 1
  %conv.i33 = zext i16 %idx to i32
  %shl1.i34 = shl nuw nsw i32 %conv.i33, 3
  %or.i35 = or i32 %and.i32, %shl1.i34
  %or3.i37 = or i32 %or.i35, -2147483642
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %or3.i37) #12
  %add.ptr.i.i38 = getelementptr i8, ptr %35, i32 36352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 %36) #12, !srcloc !81
  br label %ixgbe_ipsec_set_rx_item.exit41

ixgbe_ipsec_set_rx_item.exit41:                   ; preds = %do.body1.i.i39, %ixgbe_write_reg.exit29.ixgbe_ipsec_set_rx_item.exit41_crit_edge
  %call4.i40 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_ipsec_set_tx_sa(ptr noundef %hw, i16 noundef zeroext %idx, ptr nocapture noundef readonly %key, i32 noundef %salt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %key, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #12
  %add.ptr.i = getelementptr i8, ptr %3, i32 35080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #12, !srcloc !81
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %arrayidx.1 = getelementptr i32, ptr %key, i32 2
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.1 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.1, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit.1_crit_edge, label %do.body1.i.1

ixgbe_write_reg.exit.ixgbe_write_reg.exit.1_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit.1

do.body1.i.1:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %add.ptr.i.1 = getelementptr i8, ptr %8, i32 35084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %9) #12, !srcloc !81
  br label %ixgbe_write_reg.exit.1

ixgbe_write_reg.exit.1:                           ; preds = %do.body1.i.1, %ixgbe_write_reg.exit.ixgbe_write_reg.exit.1_crit_edge
  %arrayidx.2 = getelementptr i32, ptr %key, i32 1
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.2 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.2, label %ixgbe_write_reg.exit.1.ixgbe_write_reg.exit.2_crit_edge, label %do.body1.i.2

ixgbe_write_reg.exit.1.ixgbe_write_reg.exit.2_crit_edge: ; preds = %ixgbe_write_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit.2

do.body1.i.2:                                     ; preds = %ixgbe_write_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  %add.ptr.i.2 = getelementptr i8, ptr %13, i32 35088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %14) #12, !srcloc !81
  br label %ixgbe_write_reg.exit.2

ixgbe_write_reg.exit.2:                           ; preds = %do.body1.i.2, %ixgbe_write_reg.exit.1.ixgbe_write_reg.exit.2_crit_edge
  %15 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key, align 4
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.3 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.3, label %ixgbe_write_reg.exit.2.ixgbe_write_reg.exit.3_crit_edge, label %do.body1.i.3

ixgbe_write_reg.exit.2.ixgbe_write_reg.exit.3_crit_edge: ; preds = %ixgbe_write_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit.3

do.body1.i.3:                                     ; preds = %ixgbe_write_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %add.ptr.i.3 = getelementptr i8, ptr %18, i32 35092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %19) #12, !srcloc !81
  br label %ixgbe_write_reg.exit.3

ixgbe_write_reg.exit.3:                           ; preds = %do.body1.i.3, %ixgbe_write_reg.exit.2.ixgbe_write_reg.exit.3_crit_edge
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i14 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i14, label %ixgbe_write_reg.exit.3.ixgbe_write_reg.exit17_crit_edge, label %do.body1.i16

ixgbe_write_reg.exit.3.ixgbe_write_reg.exit17_crit_edge: ; preds = %ixgbe_write_reg.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit17

do.body1.i16:                                     ; preds = %ixgbe_write_reg.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %salt) #12
  %add.ptr.i15 = getelementptr i8, ptr %21, i32 35076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %22) #12, !srcloc !81
  br label %ixgbe_write_reg.exit17

ixgbe_write_reg.exit17:                           ; preds = %do.body1.i16, %ixgbe_write_reg.exit.3.ixgbe_write_reg.exit17_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #12
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 35072) #12
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i18 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i18, label %ixgbe_write_reg.exit17.ixgbe_write_reg.exit21_crit_edge, label %do.body1.i20

ixgbe_write_reg.exit17.ixgbe_write_reg.exit21_crit_edge: ; preds = %ixgbe_write_reg.exit17
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit21

do.body1.i20:                                     ; preds = %ixgbe_write_reg.exit17
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %call1, 1
  %conv = zext i16 %idx to i32
  %shl = shl nuw nsw i32 %conv, 3
  %or = or i32 %shl, -2147483648
  %or2 = or i32 %and, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %or2) #12
  %add.ptr.i19 = getelementptr i8, ptr %24, i32 35072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %25) #12, !srcloc !81
  br label %ixgbe_write_reg.exit21

ixgbe_write_reg.exit21:                           ; preds = %do.body1.i20, %ixgbe_write_reg.exit17.ixgbe_write_reg.exit21_crit_edge
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_ipsec_set_rx_ip(ptr noundef %hw, i16 noundef zeroext %idx, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %3, i32 36356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #12, !srcloc !81
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %arrayidx.1 = getelementptr i32, ptr %addr, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.1 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.1, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit.1_crit_edge, label %do.body1.i.1

ixgbe_write_reg.exit.ixgbe_write_reg.exit.1_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit.1

do.body1.i.1:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i.1 = getelementptr i8, ptr %7, i32 36360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %5) #12, !srcloc !81
  br label %ixgbe_write_reg.exit.1

ixgbe_write_reg.exit.1:                           ; preds = %do.body1.i.1, %ixgbe_write_reg.exit.ixgbe_write_reg.exit.1_crit_edge
  %arrayidx.2 = getelementptr i32, ptr %addr, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.2 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.2, label %ixgbe_write_reg.exit.1.ixgbe_write_reg.exit.2_crit_edge, label %do.body1.i.2

ixgbe_write_reg.exit.1.ixgbe_write_reg.exit.2_crit_edge: ; preds = %ixgbe_write_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit.2

do.body1.i.2:                                     ; preds = %ixgbe_write_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i.2 = getelementptr i8, ptr %11, i32 36364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %9) #12, !srcloc !81
  br label %ixgbe_write_reg.exit.2

ixgbe_write_reg.exit.2:                           ; preds = %do.body1.i.2, %ixgbe_write_reg.exit.1.ixgbe_write_reg.exit.2_crit_edge
  %arrayidx.3 = getelementptr i32, ptr %addr, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.3 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.3, label %ixgbe_write_reg.exit.2.ixgbe_write_reg.exit.3_crit_edge, label %do.body1.i.3

ixgbe_write_reg.exit.2.ixgbe_write_reg.exit.3_crit_edge: ; preds = %ixgbe_write_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit.3

do.body1.i.3:                                     ; preds = %ixgbe_write_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %add.ptr.i.3 = getelementptr i8, ptr %15, i32 36368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %13) #12, !srcloc !81
  br label %ixgbe_write_reg.exit.3

ixgbe_write_reg.exit.3:                           ; preds = %do.body1.i.3, %ixgbe_write_reg.exit.2.ixgbe_write_reg.exit.3_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #12
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 36352) #12
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %ixgbe_write_reg.exit.3.ixgbe_ipsec_set_rx_item.exit_crit_edge, label %do.body1.i.i

ixgbe_write_reg.exit.3.ixgbe_ipsec_set_rx_item.exit_crit_edge: ; preds = %ixgbe_write_reg.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_ipsec_set_rx_item.exit

do.body1.i.i:                                     ; preds = %ixgbe_write_reg.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %call.i, 1
  %conv.i = zext i16 %idx to i32
  %shl1.i = shl nuw nsw i32 %conv.i, 3
  %or.i = or i32 %and.i, %shl1.i
  %or3.i = or i32 %or.i, -2147483646
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #12
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 36352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #12, !srcloc !81
  br label %ixgbe_ipsec_set_rx_item.exit

ixgbe_ipsec_set_rx_item.exit:                     ; preds = %do.body1.i.i, %ixgbe_write_reg.exit.3.ixgbe_ipsec_set_rx_item.exit_crit_edge
  %call4.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ipsec_vf_clear(ptr nocapture noundef readonly %adapter, i32 noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 117
  %0 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %rx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader
  %i.073 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %4 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_tbl, align 4
  %used = getelementptr %struct.rx_sa, ptr %5, i32 %i.073, i32 7
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %used, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %mode = getelementptr %struct.rx_sa, ptr %5, i32 %i.073, i32 5
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end5.for.inc_crit_edge, label %land.lhs.true

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end5
  %vf11 = getelementptr %struct.rx_sa, ptr %5, i32 %i.073, i32 9
  %10 = ptrtoint ptr %vf11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vf11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %vf)
  %cmp12 = icmp eq i32 %11, %vf
  br i1 %cmp12, label %if.then14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %xs = getelementptr %struct.rx_sa, ptr %5, i32 %i.073, i32 1
  %12 = ptrtoint ptr %xs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xs, align 4
  tail call void @ixgbe_ipsec_del_sa(ptr noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %land.lhs.true.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %num_tx_sa = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 1
  %tx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 4
  br label %land.rhs21

land.rhs21:                                       ; preds = %for.inc47.land.rhs21_crit_edge, %for.end
  %i.175 = phi i32 [ 0, %for.end ], [ %inc48, %for.inc47.land.rhs21_crit_edge ]
  %14 = ptrtoint ptr %num_tx_sa to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_tx_sa, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool23.not = icmp eq i16 %15, 0
  br i1 %tobool23.not, label %land.rhs21.cleanup_crit_edge, label %for.body25

land.rhs21.cleanup_crit_edge:                     ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body25:                                       ; preds = %land.rhs21
  %16 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_tbl, align 4
  %arrayidx26 = getelementptr %struct.tx_sa, ptr %17, i32 %i.175
  %used27 = getelementptr %struct.tx_sa, ptr %17, i32 %i.175, i32 5
  %18 = ptrtoint ptr %used27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %used27, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool28.not = icmp eq i8 %19, 0
  br i1 %tobool28.not, label %for.body25.for.inc47_crit_edge, label %if.end30

for.body25.for.inc47_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc47

if.end30:                                         ; preds = %for.body25
  %mode33 = getelementptr %struct.tx_sa, ptr %17, i32 %i.175, i32 3
  %20 = ptrtoint ptr %mode33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode33, align 4
  %and34 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end30.for.inc47_crit_edge, label %land.lhs.true36

if.end30.for.inc47_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc47

land.lhs.true36:                                  ; preds = %if.end30
  %vf39 = getelementptr %struct.tx_sa, ptr %17, i32 %i.175, i32 6
  %22 = ptrtoint ptr %vf39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vf39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %vf)
  %cmp40 = icmp eq i32 %23, %vf
  br i1 %cmp40, label %if.then42, label %land.lhs.true36.for.inc47_crit_edge

land.lhs.true36.for.inc47_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc47

if.then42:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  tail call void @ixgbe_ipsec_del_sa(ptr noundef %25)
  br label %for.inc47

for.inc47:                                        ; preds = %if.then42, %land.lhs.true36.for.inc47_crit_edge, %if.end30.for.inc47_crit_edge, %for.body25.for.inc47_crit_edge
  %inc48 = add nuw nsw i32 %i.175, 1
  %exitcond77.not = icmp eq i32 %inc48, 1024
  br i1 %exitcond77.not, label %for.inc47.cleanup_crit_edge, label %for.inc47.land.rhs21_crit_edge

for.inc47.land.rhs21_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs21

for.inc47.cleanup_crit_edge:                      ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc47.cleanup_crit_edge, %land.rhs21.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ipsec_vf_add_sa(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %msgbuf, i32 noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 117
  %0 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec1, align 4
  %arrayidx = getelementptr i32, ptr %msgbuf, i32 1
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %2 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfinfo, align 16
  %trusted = getelementptr %struct.vf_data_storage, ptr %3, i32 %vf, i32 11
  %4 = ptrtoint ptr %trusted to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %trusted, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %flags2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 8
  %and = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false.do.body_crit_edge, label %if.end7

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msg_enable, align 4
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool5.not = icmp eq i16 %10, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %vf) #15
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %flags = getelementptr i32, ptr %msgbuf, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 4
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 640) #16
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end18, !prof !82

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags, align 4
  %xso = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 41
  %flags20 = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 41, i32 5
  %19 = ptrtoint ptr %flags20 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %flags20, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 7
  %spi21 = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %spi21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %spi21, align 4
  %proto = getelementptr inbounds %struct.sa_mbx_msg, ptr %arrayidx, i32 0, i32 2
  %23 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %proto, align 1
  %proto23 = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %proto23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %proto23, align 8
  %family = getelementptr inbounds %struct.sa_mbx_msg, ptr %arrayidx, i32 0, i32 3
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %family, align 2
  %family24 = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 14, i32 7
  %28 = ptrtoint ptr %family24 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %family24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %27)
  %cmp = icmp eq i16 %27, 10
  %addr = getelementptr i32, ptr %msgbuf, i32 3
  br i1 %cmp, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %29 = call ptr @memcpy(ptr %id, ptr %addr, i32 16)
  br label %if.end35

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr, align 4
  %32 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %id, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then29
  %netdev36 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %33 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev36, align 128
  %35 = ptrtoint ptr %xso to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %xso, align 8
  %call38 = tail call ptr @xfrm_aead_get_byname(ptr noundef nonnull @aes_gcm_name, i32 noundef 128, i32 noundef 1) #12
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end35.err_xs_crit_edge, label %if.end49, !prof !82

if.end35.err_xs_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_xs

if.end49:                                         ; preds = %if.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i160 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 92) #16
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 19
  %37 = ptrtoint ptr %aead to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i160, ptr %aead, align 4
  %tobool52.not = icmp eq ptr %call7.i.i160, null
  br i1 %tobool52.not, label %if.end49.err_xs_crit_edge, label %if.end62, !prof !82

if.end49.err_xs_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_xs

if.end62:                                         ; preds = %if.end49
  %desc = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call38, i32 0, i32 4
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %desc, align 4
  %ealgo = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 14, i32 4
  %40 = ptrtoint ptr %ealgo to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %ealgo, align 1
  %uinfo = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call38, i32 0, i32 3
  %41 = ptrtoint ptr %uinfo to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %uinfo, align 4
  %geniv64 = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 20
  %43 = ptrtoint ptr %geniv64 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %geniv64, align 8
  %alg_icv_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %call7.i.i160, i32 0, i32 2
  %44 = ptrtoint ptr %alg_icv_len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %alg_icv_len, align 4
  %alg_key_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %call7.i.i160, i32 0, i32 1
  %45 = ptrtoint ptr %alg_key_len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 160, ptr %alg_key_len, align 8
  %alg_key = getelementptr inbounds %struct.xfrm_algo_aead, ptr %call7.i.i160, i32 0, i32 3
  %key = getelementptr i32, ptr %msgbuf, i32 7
  %46 = call ptr @memcpy(ptr %alg_key, ptr %key, i32 20)
  %47 = call ptr @memcpy(ptr %call7.i.i160, ptr @aes_gcm_name, i32 18)
  %call72 = tail call i32 @ixgbe_ipsec_add_sa(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %err_aead

if.end75:                                         ; preds = %if.end62
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %call7.i.i, i32 0, i32 41, i32 3
  %48 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offload_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %49)
  %cmp77 = icmp ult i32 %49, 1024
  br i1 %cmp77, label %if.then79, label %if.else86

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %rx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_tbl, align 4
  %vf82 = getelementptr %struct.rx_sa, ptr %51, i32 %49, i32 9
  %52 = ptrtoint ptr %vf82 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %vf, ptr %vf82, align 4
  %53 = load ptr, ptr %rx_tbl, align 4
  %mode = getelementptr %struct.rx_sa, ptr %53, i32 %49, i32 5
  br label %if.end97

if.else86:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %conv88 = add i32 %49, 64512
  %tx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_tbl, align 4
  %idxprom89 = and i32 %conv88, 65535
  %vf91 = getelementptr %struct.tx_sa, ptr %55, i32 %idxprom89, i32 6
  %56 = ptrtoint ptr %vf91 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %vf, ptr %vf91, align 4
  %57 = load ptr, ptr %tx_tbl, align 4
  %mode95 = getelementptr %struct.tx_sa, ptr %57, i32 %idxprom89, i32 3
  br label %if.end97

if.end97:                                         ; preds = %if.else86, %if.then79
  %mode95.sink161 = phi ptr [ %mode95, %if.else86 ], [ %mode, %if.then79 ]
  %58 = ptrtoint ptr %mode95.sink161 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mode95.sink161, align 4
  %or96 = or i32 %59, 32
  store i32 %or96, ptr %mode95.sink161, align 4
  %60 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offload_handle, align 4
  br label %cleanup

err_aead:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %aead, align 4
  tail call void @kfree_sensitive(ptr noundef %63) #12
  br label %err_xs

err_xs:                                           ; preds = %err_aead, %if.end49.err_xs_crit_edge, %if.end35.err_xs_crit_edge
  %err.0 = phi i32 [ %call72, %err_aead ], [ -2, %if.end35.err_xs_crit_edge ], [ -12, %if.end49.err_xs_crit_edge ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_xs, %if.end97, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %do.body.cleanup_crit_edge
  %storemerge = phi i32 [ %61, %if.end97 ], [ %err.0, %err_xs ], [ -13, %if.then6 ], [ -13, %do.body.cleanup_crit_edge ], [ -95, %if.end7.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end97 ], [ %err.0, %err_xs ], [ -13, %if.then6 ], [ -13, %do.body.cleanup_crit_edge ], [ -95, %if.end7.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %storemerge, ptr %arrayidx, align 4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aead_get_byname(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_ipsec_add_sa(ptr noundef %xs) #0 align 64 {
entry:
  %rsa = alloca %struct.rx_sa, align 4
  %tsa = alloca %struct.tx_sa, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %ipsec1 = getelementptr i8, ptr %1, i32 68260
  %2 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec1, align 4
  %hw2 = getelementptr i8, ptr %1, i32 6528
  %id = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %proto, align 4
  %6 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %6)
  %switch = icmp eq i8 %6, 50
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %conv) #15
  br label %cleanup231

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp13.not = icmp eq i8 %8, 0
  br i1 %cmp13.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #15
  br label %cleanup231

if.end16:                                         ; preds = %if.end
  %call2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 22560) #12
  %and.i = and i32 %call2.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %call4.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 22564) #12
  %call5.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 20576) #12
  %family.i = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 14, i32 7
  %9 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp.i = icmp eq i16 %10, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end16
  br i1 %tobool.not.i, label %if.then.i.if.end20.i_crit_edge, label %for.cond.preheader.i

if.then.i.if.end20.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

for.cond.preheader.i:                             ; preds = %if.then.i
  %and11.i = and i32 %call4.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.end.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %for.cond.preheader.i
  %call15.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 22752) #12
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15.i, i32 %12)
  %cmp16.i = icmp eq i32 %call15.i, %12
  br i1 %cmp16.i, label %if.end.i.if.then18_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.if.then18_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %and11.1.i = and i32 %call4.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.1.i)
  %tobool12.not.1.i = icmp eq i32 %and11.1.i, 0
  br i1 %tobool12.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %call15.1.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 22756) #12
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15.1.i, i32 %14)
  %cmp16.1.i = icmp eq i32 %call15.1.i, %14
  br i1 %cmp16.1.i, label %if.end.1.i.if.then18_crit_edge, label %if.end.1.i.for.inc.1.i_crit_edge

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.end.1.i.if.then18_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

for.inc.1.i:                                      ; preds = %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %and11.2.i = and i32 %call4.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.2.i)
  %tobool12.not.2.i = icmp eq i32 %and11.2.i, 0
  br i1 %tobool12.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %call15.2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 22760) #12
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15.2.i, i32 %16)
  %cmp16.2.i = icmp eq i32 %call15.2.i, %16
  br i1 %cmp16.2.i, label %if.end.2.i.if.then18_crit_edge, label %if.end.2.i.for.inc.2.i_crit_edge

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

if.end.2.i.if.then18_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

for.inc.2.i:                                      ; preds = %if.end.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %and11.3.i = and i32 %call4.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.3.i)
  %tobool12.not.3.i = icmp eq i32 %and11.3.i, 0
  br i1 %tobool12.not.3.i, label %for.inc.2.i.if.end20.i_crit_edge, label %if.end.3.i

for.inc.2.i.if.end20.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %call15.3.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 22764) #12
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15.3.i, i32 %18)
  %cmp16.3.i = icmp eq i32 %call15.3.i, %18
  br i1 %cmp16.3.i, label %if.end.3.i.if.then18_crit_edge, label %if.end.3.i.if.end20.i_crit_edge

if.end.3.i.if.end20.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.end.3.i.if.then18_crit_edge:                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.end20.i:                                       ; preds = %if.end.3.i.if.end20.i_crit_edge, %for.inc.2.i.if.end20.i_crit_edge, %if.then.i.if.end20.i_crit_edge
  %and21.i = and i32 %call5.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and21.i)
  %cmp22.i = icmp eq i32 %and21.i, 2
  br i1 %cmp22.i, label %if.then24.i, label %if.end20.i.if.end19_crit_edge

if.end20.i.if.end19_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then24.i:                                      ; preds = %if.end20.i
  %call25.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 20572) #12
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call25.i, i32 %20)
  %cmp28.i = icmp eq i32 %call25.i, %20
  br i1 %cmp28.i, label %if.then24.i.if.then18_crit_edge, label %if.then24.i.if.end19_crit_edge

if.then24.i.if.end19_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then24.i.if.then18_crit_edge:                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.else.i:                                        ; preds = %if.end16
  %spec.select.i = select i1 %tobool.not.i, i32 4, i32 3
  %arrayidx.1.i = getelementptr %struct.xfrm_state, ptr %xs, i32 0, i32 7, i32 0, i32 0, i32 1
  %arrayidx.2.i = getelementptr %struct.xfrm_state, ptr %xs, i32 0, i32 7, i32 0, i32 0, i32 2
  %arrayidx.3.i = getelementptr %struct.xfrm_state, ptr %xs, i32 0, i32 7, i32 0, i32 0, i32 3
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.inc68.i.for.body39.i_crit_edge, %if.else.i
  %i.1148.i = phi i32 [ 0, %if.else.i ], [ %inc69.i, %for.inc68.i.for.body39.i_crit_edge ]
  %shl41.i = shl i32 16777216, %i.1148.i
  %and42.i = and i32 %shl41.i, %call4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %for.body39.i.for.inc68.i_crit_edge, label %for.cond46.preheader.i

for.body39.i.for.inc68.i_crit_edge:               ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc68.i

for.cond46.preheader.i:                           ; preds = %for.body39.i
  %mul50.i = shl i32 %i.1148.i, 4
  %add51.i = add nuw nsw i32 %mul50.i, 22704
  %call54.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef %add51.i) #12
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call54.i, i32 %22)
  %cmp57.not.i = icmp eq i32 %call54.i, %22
  br i1 %cmp57.not.i, label %for.inc61.i, label %for.cond46.preheader.i.for.inc68.i_crit_edge

for.cond46.preheader.i.for.inc68.i_crit_edge:     ; preds = %for.cond46.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc68.i

for.inc61.i:                                      ; preds = %for.cond46.preheader.i
  %add53.1.i = add nuw nsw i32 %mul50.i, 22708
  %call54.1.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef %add53.1.i) #12
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call54.1.i, i32 %24)
  %cmp57.not.1.i = icmp eq i32 %call54.1.i, %24
  br i1 %cmp57.not.1.i, label %for.inc61.1.i, label %for.inc61.i.for.inc68.i_crit_edge

for.inc61.i.for.inc68.i_crit_edge:                ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc68.i

for.inc61.1.i:                                    ; preds = %for.inc61.i
  %add53.2.i = add nuw nsw i32 %mul50.i, 22712
  %call54.2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef %add53.2.i) #12
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call54.2.i, i32 %26)
  %cmp57.not.2.i = icmp eq i32 %call54.2.i, %26
  br i1 %cmp57.not.2.i, label %for.inc61.2.i, label %for.inc61.1.i.for.inc68.i_crit_edge

for.inc61.1.i.for.inc68.i_crit_edge:              ; preds = %for.inc61.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc68.i

for.inc61.2.i:                                    ; preds = %for.inc61.1.i
  %add53.3.i = add nuw nsw i32 %mul50.i, 22716
  %call54.3.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef %add53.3.i) #12
  %27 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call54.3.i, i32 %28)
  %cmp57.not.3.i = icmp eq i32 %call54.3.i, %28
  br i1 %cmp57.not.3.i, label %for.inc61.2.i.if.then18_crit_edge, label %for.inc61.2.i.for.inc68.i_crit_edge

for.inc61.2.i.for.inc68.i_crit_edge:              ; preds = %for.inc61.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc68.i

for.inc61.2.i.if.then18_crit_edge:                ; preds = %for.inc61.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

for.inc68.i:                                      ; preds = %for.inc61.2.i.for.inc68.i_crit_edge, %for.inc61.1.i.for.inc68.i_crit_edge, %for.inc61.i.for.inc68.i_crit_edge, %for.cond46.preheader.i.for.inc68.i_crit_edge, %for.body39.i.for.inc68.i_crit_edge
  %inc69.i = add nuw nsw i32 %i.1148.i, 1
  %exitcond.not.i = icmp eq i32 %inc69.i, %spec.select.i
  br i1 %exitcond.not.i, label %for.end70.i, label %for.inc68.i.for.body39.i_crit_edge

for.inc68.i.for.body39.i_crit_edge:               ; preds = %for.inc68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39.i

for.end70.i:                                      ; preds = %for.inc68.i
  %and71.i = and i32 %call5.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and71.i)
  %cmp72.i = icmp eq i32 %and71.i, 3
  br i1 %cmp72.i, label %for.cond75.preheader.i, label %for.end70.i.if.end19_crit_edge

for.end70.i.if.end19_crit_edge:                   ; preds = %for.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

for.cond75.preheader.i:                           ; preds = %for.end70.i
  %call81.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 20560) #12
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call81.i, i32 %30)
  %cmp85.not.i = icmp eq i32 %call81.i, %30
  br i1 %cmp85.not.i, label %for.inc89.i, label %for.cond75.preheader.i.if.end19_crit_edge

for.cond75.preheader.i.if.end19_crit_edge:        ; preds = %for.cond75.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

for.inc89.i:                                      ; preds = %for.cond75.preheader.i
  %call81.1.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 20564) #12
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call81.1.i, i32 %32)
  %cmp85.not.1.i = icmp eq i32 %call81.1.i, %32
  br i1 %cmp85.not.1.i, label %for.inc89.1.i, label %for.inc89.i.if.end19_crit_edge

for.inc89.i.if.end19_crit_edge:                   ; preds = %for.inc89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

for.inc89.1.i:                                    ; preds = %for.inc89.i
  %call81.2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 20568) #12
  %33 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call81.2.i, i32 %34)
  %cmp85.not.2.i = icmp eq i32 %call81.2.i, %34
  br i1 %cmp85.not.2.i, label %for.inc89.2.i, label %for.inc89.1.i.if.end19_crit_edge

for.inc89.1.i.if.end19_crit_edge:                 ; preds = %for.inc89.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

for.inc89.2.i:                                    ; preds = %for.inc89.1.i
  %call81.3.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw2, i32 noundef 20572) #12
  %35 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call81.3.i, i32 %36)
  %cmp85.not.3.i = icmp eq i32 %call81.3.i, %36
  br i1 %cmp85.not.3.i, label %for.inc89.2.i.if.then18_crit_edge, label %for.inc89.2.i.if.end19_crit_edge

for.inc89.2.i.if.end19_crit_edge:                 ; preds = %for.inc89.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

for.inc89.2.i.if.then18_crit_edge:                ; preds = %for.inc89.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %for.inc89.2.i.if.then18_crit_edge, %for.inc61.2.i.if.then18_crit_edge, %if.then24.i.if.then18_crit_edge, %if.end.3.i.if.then18_crit_edge, %if.end.2.i.if.then18_crit_edge, %if.end.1.i.if.then18_crit_edge, %if.end.i.if.then18_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #15
  br label %cleanup231

if.end19:                                         ; preds = %for.inc89.2.i.if.end19_crit_edge, %for.inc89.1.i.if.end19_crit_edge, %for.inc89.i.if.end19_crit_edge, %for.cond75.preheader.i.if.end19_crit_edge, %for.end70.i.if.end19_crit_edge, %if.then24.i.if.end19_crit_edge, %if.end20.i.if.end19_crit_edge
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 5
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags, align 4
  %39 = and i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool22.not = icmp eq i8 %39, 0
  br i1 %tobool22.not, label %if.else174, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rsa) #12
  %calg = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 18
  %40 = ptrtoint ptr %calg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %calg, align 8
  %tobool24.not = icmp eq ptr %41, null
  br i1 %tobool24.not, label %if.end26, label %if.then23.cleanup.thread_crit_edge

if.then23.cleanup.thread_crit_edge:               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end26:                                         ; preds = %if.then23
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %43)
  %cmp.i326 = icmp eq i16 %43, 1024
  br i1 %cmp.i326, label %if.end26.cleanup.thread_crit_edge, label %for.cond.preheader.i328

if.end26.cleanup.thread_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

for.cond.preheader.i328:                          ; preds = %if.end26
  %rx_tbl.i = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %rx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_tbl.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i329.for.body.i_crit_edge, %for.cond.preheader.i328
  %i.039.i = phi i32 [ 0, %for.cond.preheader.i328 ], [ %inc.i, %for.inc.i329.for.body.i_crit_edge ]
  %used.i = getelementptr %struct.rx_sa, ptr %45, i32 %i.039.i, i32 7
  %46 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %used.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool5.not.i = icmp eq i8 %47, 0
  br i1 %tobool5.not.i, label %if.end31, label %for.inc.i329

for.inc.i329:                                     ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond42.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond42.not.i, label %for.inc.i329.cleanup.thread_crit_edge, label %for.inc.i329.for.body.i_crit_edge

for.inc.i329.for.body.i_crit_edge:                ; preds = %for.inc.i329
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i329.cleanup.thread_crit_edge:            ; preds = %for.inc.i329
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end31:                                         ; preds = %for.body.i
  %conv32 = trunc i32 %i.039.i to i16
  %48 = call ptr @memset(ptr %rsa, i32 0, i32 60)
  %used = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 7
  %49 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %used, align 1
  %xs33 = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 1
  %50 = ptrtoint ptr %xs33 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %xs, ptr %xs33, align 4
  %51 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %proto, align 4
  %53 = and i8 %52, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool39.not = icmp eq i8 %53, 0
  br i1 %tobool39.not, label %if.end31.if.end43_crit_edge, label %if.then40

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then40:                                        ; preds = %if.end31
  %ealg = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 17
  %54 = ptrtoint ptr %ealg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ealg, align 4
  %tobool41.not = icmp eq ptr %55, null
  br i1 %tobool41.not, label %lor.rhs, label %if.then40.lor.end_crit_edge

if.then40.lor.end_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 19
  %56 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %aead, align 4
  %tobool42 = icmp ne ptr %57, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then40.lor.end_crit_edge
  %58 = phi i1 [ true, %if.then40.lor.end_crit_edge ], [ %tobool42, %lor.rhs ]
  %decrypt = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 8
  %frombool = zext i1 %58 to i8
  %59 = ptrtoint ptr %decrypt to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %frombool, ptr %decrypt, align 2
  br label %if.end43

if.end43:                                         ; preds = %lor.end, %if.end31.if.end43_crit_edge
  %key = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 3
  %salt = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 4
  %call44 = call fastcc i32 @ixgbe_ipsec_parse_proto_keys(ptr noundef %xs, ptr noundef %key, ptr noundef %salt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup.thread_crit_edge

if.end43.cleanup.thread_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end47:                                         ; preds = %if.end43
  %60 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %61)
  %cmp50 = icmp eq i16 %61, 10
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %ipaddr = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 2
  %62 = call ptr @memcpy(ptr %ipaddr, ptr %id, i32 16)
  br label %if.end58

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 2, i32 3
  %63 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id, align 4
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then52
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %3, align 4
  %conv61 = zext i16 %67 to i32
  %ip_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 2
  %ipaddr76 = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end58
  %i.0366 = phi i32 [ 0, %if.end58 ], [ %inc88, %for.inc.land.rhs_crit_edge ]
  %first.0365 = phi i32 [ -1, %if.end58 ], [ %first.1, %for.inc.land.rhs_crit_edge ]
  %checked.0364 = phi i32 [ 0, %if.end58 ], [ %checked.1, %for.inc.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %checked.0364, i32 %conv61)
  %cmp62 = icmp slt i32 %checked.0364, %conv61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.0365)
  %cmp65 = icmp slt i32 %first.0365, 0
  %or.cond = select i1 %cmp62, i1 true, i1 %cmp65
  br i1 %or.cond, label %for.body, label %land.rhs.for.end.thread_crit_edge

land.rhs.for.end.thread_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.body:                                         ; preds = %land.rhs
  %68 = ptrtoint ptr %ip_tbl to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ip_tbl, align 4
  %used69 = getelementptr %struct.rx_ip_sa, ptr %69, i32 %i.0366, i32 2
  %70 = ptrtoint ptr %used69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %used69, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool70.not = icmp eq i8 %71, 0
  br i1 %tobool70.not, label %if.else82, label %if.then71

if.then71:                                        ; preds = %for.body
  %arrayidx68 = getelementptr %struct.rx_ip_sa, ptr %69, i32 %i.0366
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx68, ptr noundef dereferenceable(16) %ipaddr76, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool79.not = icmp eq i32 %bcmp, 0
  br i1 %tobool79.not, label %for.end, label %if.end81

if.end81:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %checked.0364, 1
  br label %for.inc

if.else82:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select = select i1 %cmp65, i32 %i.0366, i32 %first.0365
  br label %for.inc

for.inc:                                          ; preds = %if.else82, %if.end81
  %checked.1 = phi i32 [ %inc, %if.end81 ], [ %checked.0364, %if.else82 ]
  %first.1 = phi i32 [ %first.0365, %if.end81 ], [ %spec.select, %if.else82 ]
  %inc88 = add nuw nsw i32 %i.0366, 1
  %exitcond.not = icmp eq i32 %inc88, 128
  br i1 %exitcond.not, label %for.end.threadthread-pre-split, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.end.threadthread-pre-split:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %72)
  %.pr = load i16, ptr %3, align 4
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.threadthread-pre-split, %land.rhs.for.end.thread_crit_edge
  %first.0361 = phi i32 [ %first.1, %for.end.threadthread-pre-split ], [ %first.0365, %land.rhs.for.end.thread_crit_edge ]
  %73 = phi i16 [ %.pr, %for.end.threadthread-pre-split ], [ %67, %land.rhs.for.end.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp91342 = icmp eq i16 %73, 0
  br i1 %cmp91342, label %for.end.thread.if.then105_crit_edge, label %if.else102

for.end.thread.if.then105_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

for.end:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  %conv98 = trunc i32 %i.0366 to i8
  %iptbl_ind = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 6
  %74 = ptrtoint ptr %iptbl_ind to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv98, ptr %iptbl_ind, align 4
  %75 = ptrtoint ptr %ip_tbl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ip_tbl, align 4
  %ref_cnt = getelementptr %struct.rx_ip_sa, ptr %76, i32 %i.0366, i32 1
  %77 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ref_cnt, align 4
  %inc101 = add i32 %78, 1
  store i32 %inc101, ptr %ref_cnt, align 4
  br label %if.end126

if.else102:                                       ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first.0361)
  %cmp103 = icmp sgt i32 %first.0361, -1
  br i1 %cmp103, label %if.else102.if.then105_crit_edge, label %if.else102.cleanup.thread_crit_edge

if.else102.cleanup.thread_crit_edge:              ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.else102.if.then105_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

if.then105:                                       ; preds = %if.else102.if.then105_crit_edge, %for.end.thread.if.then105_crit_edge
  %spec.select325345348 = phi i32 [ %first.0361, %if.else102.if.then105_crit_edge ], [ 0, %for.end.thread.if.then105_crit_edge ]
  %conv106 = trunc i32 %spec.select325345348 to i8
  %iptbl_ind107 = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 6
  %79 = ptrtoint ptr %iptbl_ind107 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv106, ptr %iptbl_ind107, align 4
  %80 = ptrtoint ptr %ip_tbl to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ip_tbl, align 4
  %arrayidx109 = getelementptr %struct.rx_ip_sa, ptr %81, i32 %spec.select325345348
  %82 = call ptr @memcpy(ptr %arrayidx109, ptr %ipaddr76, i32 16)
  %83 = load ptr, ptr %ip_tbl, align 4
  %ref_cnt116 = getelementptr %struct.rx_ip_sa, ptr %83, i32 %spec.select325345348, i32 1
  %84 = ptrtoint ptr %ref_cnt116 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %ref_cnt116, align 4
  %85 = load ptr, ptr %ip_tbl, align 4
  %used119 = getelementptr %struct.rx_ip_sa, ptr %85, i32 %spec.select325345348, i32 2
  %86 = ptrtoint ptr %used119 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %used119, align 4
  %87 = trunc i32 %spec.select325345348 to i16
  %conv121 = and i16 %87, 255
  call fastcc void @ixgbe_ipsec_set_rx_ip(ptr noundef %hw2, i16 noundef zeroext %conv121, ptr noundef %ipaddr76)
  br label %if.end126

if.end126:                                        ; preds = %if.then105, %for.end
  %mode127 = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 5
  %88 = ptrtoint ptr %xs33 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %xs33, align 4
  %proto130 = getelementptr inbounds %struct.xfrm_state, ptr %89, i32 0, i32 7, i32 2
  %90 = ptrtoint ptr %proto130 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %proto130, align 4
  %92 = and i8 %91, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool133.not = icmp eq i8 %92, 0
  %spec.store.select = select i1 %tobool133.not, i32 1, i32 5
  %93 = ptrtoint ptr %mode127 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %spec.store.select, ptr %mode127, align 4
  %decrypt137 = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 8
  %94 = ptrtoint ptr %decrypt137 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %decrypt137, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool138.not = icmp eq i8 %95, 0
  br i1 %tobool138.not, label %if.end126.if.end142_crit_edge, label %if.then139

if.end126.if.end142_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

if.then139:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  %or141 = or i32 %spec.store.select, 8
  %96 = ptrtoint ptr %mode127 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or141, ptr %mode127, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end126.if.end142_crit_edge
  %family145 = getelementptr inbounds %struct.xfrm_state, ptr %89, i32 0, i32 14, i32 7
  %97 = ptrtoint ptr %family145 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %family145, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %98)
  %cmp147 = icmp eq i16 %98, 10
  br i1 %cmp147, label %if.then149, label %if.end142.if.end152_crit_edge

if.end142.if.end152_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then149:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %mode127 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mode127, align 4
  %or151 = or i32 %100, 16
  store i32 %or151, ptr %mode127, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %if.end142.if.end152_crit_edge
  %101 = ptrtoint ptr %rx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_tbl.i, align 4
  %idxprom = and i32 %i.039.i, 65535
  %arrayidx153 = getelementptr %struct.rx_sa, ptr %102, i32 %idxprom
  %103 = call ptr @memcpy(ptr %arrayidx153, ptr %rsa, i32 60)
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %89, i32 0, i32 7, i32 1
  %104 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %spi, align 4
  %106 = ptrtoint ptr %salt to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %salt, align 4
  %108 = ptrtoint ptr %mode127 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mode127, align 4
  %iptbl_ind160 = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 6
  %110 = ptrtoint ptr %iptbl_ind160 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %iptbl_ind160, align 4
  %conv161 = zext i8 %111 to i32
  call fastcc void @ixgbe_ipsec_set_rx_sa(ptr noundef %hw2, i16 noundef zeroext %conv32, i32 noundef %105, ptr noundef %key, i32 noundef %107, i32 noundef %109, i32 noundef %conv161)
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 3
  %112 = ptrtoint ptr %offload_handle to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %idxprom, ptr %offload_handle, align 4
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %3, align 4
  %inc165 = add i16 %114, 1
  store i16 %inc165, ptr %3, align 4
  %115 = ptrtoint ptr %rx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rx_tbl.i, align 4
  %arrayidx168 = getelementptr %struct.rx_sa, ptr %116, i32 %idxprom
  %117 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %spi, align 4
  %mul.i.i = mul i32 %118, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx173 = getelementptr %struct.ixgbe_ipsec, ptr %3, i32 0, i32 5, i32 %shr.i
  %119 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx173, align 4
  %121 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %arrayidx168, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %arrayidx168, i32 0, i32 1
  %122 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %arrayidx173, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !83
  %123 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %arrayidx168, ptr %arrayidx173, align 4
  %tobool.not.i331 = icmp eq ptr %120, null
  br i1 %tobool.not.i331, label %if.end152.cleanup_crit_edge, label %do.body49.i

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body49.i:                                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %120, i32 0, i32 1
  %124 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %arrayidx168, ptr %pprev51.i, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %if.else102.cleanup.thread_crit_edge, %if.end43.cleanup.thread_crit_edge, %for.inc.i329.cleanup.thread_crit_edge, %if.end26.cleanup.thread_crit_edge, %if.then23.cleanup.thread_crit_edge
  %.str.15.sink = phi ptr [ @.str.15, %if.then23.cleanup.thread_crit_edge ], [ @.str.16, %if.end26.cleanup.thread_crit_edge ], [ @.str.17, %if.end43.cleanup.thread_crit_edge ], [ @.str.18, %if.else102.cleanup.thread_crit_edge ], [ @.str.16, %for.inc.i329.cleanup.thread_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %if.then23.cleanup.thread_crit_edge ], [ -28, %if.end26.cleanup.thread_crit_edge ], [ %call44, %if.end43.cleanup.thread_crit_edge ], [ -28, %if.else102.cleanup.thread_crit_edge ], [ -28, %for.inc.i329.cleanup.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.15.sink) #15
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rsa) #12
  br label %cleanup231

cleanup:                                          ; preds = %do.body49.i, %if.end152.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rsa) #12
  br label %if.end224

if.else174:                                       ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tsa) #12
  %num_vfs = getelementptr i8, ptr %1, i32 67628
  %125 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool175.not = icmp eq i32 %126, 0
  br i1 %tobool175.not, label %if.else174.if.end181_crit_edge, label %land.lhs.true176

if.else174.if.end181_crit_edge:                   ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

land.lhs.true176:                                 ; preds = %if.else174
  %bridge_mode = getelementptr i8, ptr %1, i32 67256
  %127 = ptrtoint ptr %bridge_mode to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %bridge_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %128)
  %cmp178.not = icmp eq i16 %128, 1
  br i1 %cmp178.not, label %land.lhs.true176.if.end181_crit_edge, label %land.lhs.true176.cleanup221.thread_crit_edge

land.lhs.true176.cleanup221.thread_crit_edge:     ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup221.thread

land.lhs.true176.if.end181_crit_edge:             ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

if.end181:                                        ; preds = %land.lhs.true176.if.end181_crit_edge, %if.else174.if.end181_crit_edge
  %num_tx_sa.i = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 1
  %129 = ptrtoint ptr %num_tx_sa.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %num_tx_sa.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %130)
  %cmp9.i = icmp eq i16 %130, 1024
  br i1 %cmp9.i, label %if.end181.cleanup221.thread.sink.split_crit_edge, label %for.cond13.preheader.i

if.end181.cleanup221.thread.sink.split_crit_edge: ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup221.thread.sink.split

for.cond13.preheader.i:                           ; preds = %if.end181
  %tx_tbl.i = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 4
  %131 = ptrtoint ptr %tx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tx_tbl.i, align 4
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.inc22.i.for.body16.i_crit_edge, %for.cond13.preheader.i
  %i.138.i = phi i32 [ 0, %for.cond13.preheader.i ], [ %inc23.i, %for.inc22.i.for.body16.i_crit_edge ]
  %used18.i = getelementptr %struct.tx_sa, ptr %132, i32 %i.138.i, i32 5
  %133 = ptrtoint ptr %used18.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %used18.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool19.not.i = icmp eq i8 %134, 0
  br i1 %tobool19.not.i, label %if.end186, label %for.inc22.i

for.inc22.i:                                      ; preds = %for.body16.i
  %inc23.i = add nuw nsw i32 %i.138.i, 1
  %exitcond.not.i333 = icmp eq i32 %inc23.i, 1024
  br i1 %exitcond.not.i333, label %for.inc22.i.cleanup221.thread.sink.split_crit_edge, label %for.inc22.i.for.body16.i_crit_edge

for.inc22.i.for.body16.i_crit_edge:               ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i

for.inc22.i.cleanup221.thread.sink.split_crit_edge: ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup221.thread.sink.split

if.end186:                                        ; preds = %for.body16.i
  %conv187 = trunc i32 %i.138.i to i16
  %135 = getelementptr inbounds i8, ptr %tsa, i32 4
  %136 = call ptr @memset(ptr %135, i32 0, i32 32)
  %used188 = getelementptr inbounds %struct.tx_sa, ptr %tsa, i32 0, i32 5
  %137 = ptrtoint ptr %used188 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %used188, align 1
  %138 = ptrtoint ptr %tsa to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %xs, ptr %tsa, align 4
  %139 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %proto, align 4
  %141 = and i8 %140, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool194.not = icmp eq i8 %141, 0
  br i1 %tobool194.not, label %if.end186.if.end203_crit_edge, label %if.then195

if.end186.if.end203_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

if.then195:                                       ; preds = %if.end186
  %ealg196 = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 17
  %142 = ptrtoint ptr %ealg196 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ealg196, align 4
  %tobool197.not = icmp eq ptr %143, null
  br i1 %tobool197.not, label %lor.rhs198, label %if.then195.lor.end201_crit_edge

if.then195.lor.end201_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end201

lor.rhs198:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #14
  %aead199 = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 19
  %144 = ptrtoint ptr %aead199 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %aead199, align 4
  %tobool200 = icmp ne ptr %145, null
  br label %lor.end201

lor.end201:                                       ; preds = %lor.rhs198, %if.then195.lor.end201_crit_edge
  %146 = phi i1 [ true, %if.then195.lor.end201_crit_edge ], [ %tobool200, %lor.rhs198 ]
  %encrypt = getelementptr inbounds %struct.tx_sa, ptr %tsa, i32 0, i32 4
  %frombool202 = zext i1 %146 to i8
  %147 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %frombool202, ptr %encrypt, align 4
  br label %if.end203

if.end203:                                        ; preds = %lor.end201, %if.end186.if.end203_crit_edge
  %key204 = getelementptr inbounds %struct.tx_sa, ptr %tsa, i32 0, i32 1
  %salt206 = getelementptr inbounds %struct.tx_sa, ptr %tsa, i32 0, i32 2
  %call207 = call fastcc i32 @ixgbe_ipsec_parse_proto_keys(ptr noundef %xs, ptr noundef %key204, ptr noundef %salt206)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %cleanup221, label %if.end203.cleanup221.thread.sink.split_crit_edge

if.end203.cleanup221.thread.sink.split_crit_edge: ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup221.thread.sink.split

cleanup221.thread.sink.split:                     ; preds = %if.end203.cleanup221.thread.sink.split_crit_edge, %for.inc22.i.cleanup221.thread.sink.split_crit_edge, %if.end181.cleanup221.thread.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.19, %if.end181.cleanup221.thread.sink.split_crit_edge ], [ @.str.20, %if.end203.cleanup221.thread.sink.split_crit_edge ], [ @.str.19, %for.inc22.i.cleanup221.thread.sink.split_crit_edge ]
  %retval.1.ph.ph = phi i32 [ -28, %if.end181.cleanup221.thread.sink.split_crit_edge ], [ %call207, %if.end203.cleanup221.thread.sink.split_crit_edge ], [ -28, %for.inc22.i.cleanup221.thread.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.19.sink) #15
  br label %cleanup221.thread

cleanup221.thread:                                ; preds = %cleanup221.thread.sink.split, %land.lhs.true176.cleanup221.thread_crit_edge
  %retval.1.ph = phi i32 [ -95, %land.lhs.true176.cleanup221.thread_crit_edge ], [ %retval.1.ph.ph, %cleanup221.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tsa) #12
  br label %cleanup231

cleanup221:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %tx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %tx_tbl.i, align 4
  %idxprom211 = and i32 %i.138.i, 65535
  %arrayidx212 = getelementptr %struct.tx_sa, ptr %149, i32 %idxprom211
  %150 = call ptr @memcpy(ptr %arrayidx212, ptr %tsa, i32 36)
  %151 = ptrtoint ptr %salt206 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %salt206, align 4
  call fastcc void @ixgbe_ipsec_set_tx_sa(ptr noundef %hw2, i16 noundef zeroext %conv187, ptr noundef %key204, i32 noundef %152)
  %add217 = add nuw nsw i32 %idxprom211, 1024
  %offload_handle219 = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 3
  %153 = ptrtoint ptr %offload_handle219 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %add217, ptr %offload_handle219, align 4
  %154 = ptrtoint ptr %num_tx_sa.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %num_tx_sa.i, align 2
  %inc220 = add i16 %155, 1
  store i16 %inc220, ptr %num_tx_sa.i, align 2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tsa) #12
  br label %if.end224

if.end224:                                        ; preds = %cleanup221, %cleanup
  %flags2 = getelementptr i8, ptr %1, i32 2840
  %156 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags2, align 8
  %and225 = and i32 %157, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.then227, label %if.end224.cleanup231_crit_edge

if.end224.cleanup231_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup231

if.then227:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ixgbe_ipsec_start_engine(ptr noundef %add.ptr.i)
  %158 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags2, align 8
  %or229 = or i32 %159, 131072
  store i32 %or229, ptr %flags2, align 8
  br label %cleanup231

cleanup231:                                       ; preds = %if.then227, %if.end224.cleanup231_crit_edge, %cleanup221.thread, %cleanup.thread, %if.then18, %if.then15, %if.then
  %retval.2 = phi i32 [ -22, %if.then ], [ -22, %if.then15 ], [ -22, %if.then18 ], [ 0, %if.then227 ], [ 0, %if.end224.cleanup231_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %retval.1.ph, %cleanup221.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ipsec_vf_del_sa(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgbuf, i32 noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 117
  %0 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec1, align 4
  %arrayidx = getelementptr i32, ptr %msgbuf, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %4 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfinfo, align 16
  %trusted = getelementptr %struct.vf_data_storage, ptr %5, i32 %vf, i32 11
  %6 = ptrtoint ptr %trusted to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %trusted, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msg_enable, align 4
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool3.not = icmp eq i16 %10, 0
  br i1 %tobool3.not, label %do.body.cleanup103_crit_edge, label %if.then4

do.body.cleanup103_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup103

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %vf) #15
  br label %cleanup103

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp ult i32 %3, 1024
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %rx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_tbl, align 4
  %used = getelementptr %struct.rx_sa, ptr %14, i32 %3, i32 7
  %15 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %used, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool26.not = icmp eq i8 %16, 0
  br i1 %tobool26.not, label %if.then7.cleanup103_crit_edge, label %if.end28

if.then7.cleanup103_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup103

if.end28:                                         ; preds = %if.then7
  %mode = getelementptr %struct.rx_sa, ptr %14, i32 %3, i32 5
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  %and29 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.do.body35_crit_edge, label %lor.lhs.false

if.end28.do.body35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

lor.lhs.false:                                    ; preds = %if.end28
  %vf31 = getelementptr %struct.rx_sa, ptr %14, i32 %3, i32 9
  %19 = ptrtoint ptr %vf31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vf31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %vf)
  %cmp32.not = icmp eq i32 %20, %vf
  br i1 %cmp32.not, label %cleanup, label %lor.lhs.false.do.body35_crit_edge

lor.lhs.false.do.body35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

do.body35:                                        ; preds = %lor.lhs.false.do.body35_crit_edge, %if.end28.do.body35_crit_edge
  %msg_enable36 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %21 = ptrtoint ptr %msg_enable36 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %msg_enable36, align 4
  %23 = and i16 %22, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool39.not = icmp eq i16 %23, 0
  br i1 %tobool39.not, label %do.body35.cleanup103_crit_edge, label %if.then40

do.body35.cleanup103_crit_edge:                   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup103

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %netdev41 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %24 = ptrtoint ptr %netdev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev41, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.3, i32 noundef %vf, i32 noundef %3) #15
  br label %cleanup103

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %xs50 = getelementptr %struct.rx_sa, ptr %14, i32 %3, i32 1
  br label %if.end102

if.else:                                          ; preds = %if.end5
  %conv52 = add i32 %3, 64512
  %conv53 = and i32 %conv52, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %conv53)
  %cmp54 = icmp ugt i32 %conv53, 1023
  br i1 %cmp54, label %do.body57, label %if.end68

do.body57:                                        ; preds = %if.else
  %msg_enable58 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %26 = ptrtoint ptr %msg_enable58 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %msg_enable58, align 4
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool61.not = icmp eq i16 %28, 0
  br i1 %tobool61.not, label %do.body57.cleanup103_crit_edge, label %if.then62

do.body57.cleanup103_crit_edge:                   ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup103

if.then62:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  %netdev63 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %29 = ptrtoint ptr %netdev63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev63, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.2, i32 noundef %vf, i32 noundef %conv53) #15
  br label %cleanup103

if.end68:                                         ; preds = %if.else
  %tx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_tbl, align 4
  %arrayidx70 = getelementptr %struct.tx_sa, ptr %32, i32 %conv53
  %used71 = getelementptr %struct.tx_sa, ptr %32, i32 %conv53, i32 5
  %33 = ptrtoint ptr %used71 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %used71, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool72.not = icmp eq i8 %34, 0
  br i1 %tobool72.not, label %if.end68.cleanup103_crit_edge, label %if.end74

if.end68.cleanup103_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup103

if.end74:                                         ; preds = %if.end68
  %mode75 = getelementptr %struct.tx_sa, ptr %32, i32 %conv53, i32 3
  %35 = ptrtoint ptr %mode75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode75, align 4
  %and76 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end74.do.body83_crit_edge, label %lor.lhs.false78

if.end74.do.body83_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body83

lor.lhs.false78:                                  ; preds = %if.end74
  %vf79 = getelementptr %struct.tx_sa, ptr %32, i32 %conv53, i32 6
  %37 = ptrtoint ptr %vf79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vf79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %vf)
  %cmp80.not = icmp eq i32 %38, %vf
  br i1 %cmp80.not, label %lor.lhs.false78.if.end102_crit_edge, label %lor.lhs.false78.do.body83_crit_edge

lor.lhs.false78.do.body83_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body83

lor.lhs.false78.if.end102_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

do.body83:                                        ; preds = %lor.lhs.false78.do.body83_crit_edge, %if.end74.do.body83_crit_edge
  %msg_enable84 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %39 = ptrtoint ptr %msg_enable84 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %msg_enable84, align 4
  %41 = and i16 %40, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool87.not = icmp eq i16 %41, 0
  br i1 %tobool87.not, label %do.body83.cleanup103_crit_edge, label %if.then88

do.body83.cleanup103_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup103

if.then88:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  %netdev89 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %42 = ptrtoint ptr %netdev89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev89, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.4, i32 noundef %vf, i32 noundef %conv53) #15
  br label %cleanup103

if.end102:                                        ; preds = %lor.lhs.false78.if.end102_crit_edge, %cleanup
  %xs.2.in = phi ptr [ %xs50, %cleanup ], [ %arrayidx70, %lor.lhs.false78.if.end102_crit_edge ]
  %44 = ptrtoint ptr %xs.2.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %xs.2 = load ptr, ptr %xs.2.in, align 4
  tail call void @ixgbe_ipsec_del_sa(ptr noundef %xs.2)
  tail call void @kfree_sensitive(ptr noundef %xs.2) #12
  br label %cleanup103

cleanup103:                                       ; preds = %if.end102, %if.then88, %do.body83.cleanup103_crit_edge, %if.end68.cleanup103_crit_edge, %if.then62, %do.body57.cleanup103_crit_edge, %if.then40, %do.body35.cleanup103_crit_edge, %if.then7.cleanup103_crit_edge, %if.then4, %do.body.cleanup103_crit_edge
  %retval.2 = phi i32 [ 0, %if.end102 ], [ -1, %if.then4 ], [ -1, %do.body.cleanup103_crit_edge ], [ -2, %do.body35.cleanup103_crit_edge ], [ -2, %if.then40 ], [ 0, %if.then7.cleanup103_crit_edge ], [ -2, %do.body83.cleanup103_crit_edge ], [ -2, %if.then88 ], [ 0, %if.end68.cleanup103_crit_edge ], [ -22, %do.body57.cleanup103_crit_edge ], [ -22, %if.then62 ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ipsec_tx(ptr nocapture noundef readonly %tx_ring, ptr nocapture noundef %first, ptr nocapture noundef %itd) local_unnamed_addr #0 align 64 {
entry:
  %padlen = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %ipsec1 = getelementptr i8, ptr %1, i32 68260
  %2 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec1, align 4
  %4 = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %first, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %active_extensions.i.i.i, align 1
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i.i, label %skb_sec_path.exit, label %skb_sec_path.exit.thread

skb_sec_path.exit:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 0)
  %10 = load i32, ptr null, align 2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %skb_sec_path.exit.if.then_crit_edge, label %skb_sec_path.exit.xfrm_input_state.exit_crit_edge, !prof !82

skb_sec_path.exit.xfrm_input_state.exit_crit_edge: ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_input_state.exit

skb_sec_path.exit.if.then_crit_edge:              ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

skb_sec_path.exit.thread:                         ; preds = %entry
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 22
  %11 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not120 = icmp eq i32 %16, 0
  br i1 %tobool.not120, label %skb_sec_path.exit.thread.if.then_crit_edge, label %if.then.i.i.i, !prof !82

skb_sec_path.exit.thread.if.then_crit_edge:       ; preds = %skb_sec_path.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %skb_sec_path.exit.thread.if.then_crit_edge, %skb_sec_path.exit.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ixgbe_ipsec_tx, i32 noundef 0) #15
  br label %cleanup90

if.then.i.i.i:                                    ; preds = %skb_sec_path.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %20 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %shl.i.i.i
  br label %xfrm_input_state.exit

xfrm_input_state.exit:                            ; preds = %if.then.i.i.i, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ null, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retval.0.i.i.i, align 4
  %sub.i = add i32 %22, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool9.not = icmp eq ptr %24, null
  br i1 %tobool9.not, label %if.then18, label %if.end20, !prof !82

if.then18:                                        ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ixgbe_ipsec_tx, ptr noundef null) #15
  br label %cleanup90

if.end20:                                         ; preds = %xfrm_input_state.exit
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %24, i32 0, i32 41, i32 3
  %25 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offload_handle, align 4
  %27 = trunc i32 %26 to i16
  %conv = add i16 %27, -1024
  %sa_idx = getelementptr inbounds %struct.ixgbe_ipsec_tx_data, ptr %itd, i32 0, i32 2
  %28 = ptrtoint ptr %sa_idx to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %sa_idx, align 2
  %conv22 = zext i16 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %conv)
  %cmp = icmp ugt i16 %conv, 1023
  br i1 %cmp, label %if.then30, label %if.end36, !prof !82

if.then30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev, align 8
  %31 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offload_handle, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ixgbe_ipsec_tx, i32 noundef %conv22, i32 noundef %32) #15
  br label %cleanup90

if.end36:                                         ; preds = %if.end20
  %tx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_tbl, align 4
  %used = getelementptr %struct.tx_sa, ptr %34, i32 %conv22, i32 5
  %35 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %used, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool38.not = icmp eq i8 %36, 0
  br i1 %tobool38.not, label %if.then47, label %if.end51, !prof !82

if.then47:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ixgbe_ipsec_tx, i32 noundef %conv22) #15
  br label %cleanup90

if.end51:                                         ; preds = %if.end36
  %tx_flags = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %first, i32 0, i32 8
  %39 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_flags, align 4
  %or = or i32 %40, 72
  store i32 %or, ptr %tx_flags, align 4
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %24, i32 0, i32 7, i32 2
  %41 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %42)
  %cmp53 = icmp eq i8 %42, 50
  br i1 %cmp53, label %if.then55, label %if.end51.if.end84_crit_edge

if.end51.if.end84_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then55:                                        ; preds = %if.end51
  %43 = ptrtoint ptr %itd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %itd, align 4
  %or56 = or i32 %44, 10240
  store i32 %or56, ptr %itd, align 4
  %protocol = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %first, i32 0, i32 5
  %45 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %46)
  %cmp58 = icmp eq i16 %46, 2048
  br i1 %cmp58, label %if.then60, label %if.then55.if.end63_crit_edge

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %or62 = or i32 %44, 11264
  %47 = ptrtoint ptr %itd to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or62, ptr %itd, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.then55.if.end63_crit_edge
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %4, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.i.not = icmp eq i16 %53, 0
  br i1 %tobool.i.not, label %if.then65, label %if.end63.if.end84_crit_edge

if.end63.if.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then65:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %padlen) #12
  %54 = ptrtoint ptr %padlen to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %padlen, align 1, !annotation !84
  %len66 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 6
  %55 = ptrtoint ptr %len66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len66, align 4
  %sub67 = add i32 %56, -18
  %call68 = call i32 @skb_copy_bits(ptr noundef %49, i32 noundef %sub67, ptr noundef nonnull %padlen, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end77, label %cleanup90.critedge, !prof !85

if.end77:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %padlen to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %padlen, align 1
  %conv78 = zext i8 %58 to i16
  %add = add nuw nsw i16 %conv78, 18
  %trailer_len = getelementptr inbounds %struct.ixgbe_ipsec_tx_data, ptr %itd, i32 0, i32 1
  %59 = ptrtoint ptr %trailer_len to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %add, ptr %trailer_len, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %padlen) #12
  br label %if.end84

if.end84:                                         ; preds = %if.end77, %if.end63.if.end84_crit_edge, %if.end51.if.end84_crit_edge
  %encrypt = getelementptr %struct.tx_sa, ptr %34, i32 %conv22, i32 4
  %60 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %encrypt, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool85.not = icmp eq i8 %61, 0
  br i1 %tobool85.not, label %if.end84.cleanup90_crit_edge, label %if.then86

if.end84.cleanup90_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %itd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %itd, align 4
  %or88 = or i32 %63, 16384
  store i32 %or88, ptr %itd, align 4
  br label %cleanup90

cleanup90.critedge:                               ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %padlen) #12
  br label %cleanup90

cleanup90:                                        ; preds = %cleanup90.critedge, %if.then86, %if.end84.cleanup90_crit_edge, %if.then47, %if.then30, %if.then18, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then18 ], [ 0, %if.then30 ], [ 0, %if.then47 ], [ 0, %cleanup90.critedge ], [ 1, %if.then86 ], [ 1, %if.end84.cleanup90_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ipsec_rx(ptr nocapture noundef readonly %rx_ring, ptr nocapture noundef readonly %rx_desc, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %2 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_desc, align 8
  %ipsec2 = getelementptr i8, ptr %1, i32 68260
  %4 = ptrtoint ptr %ipsec2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipsec2, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 14
  %daddr3 = getelementptr i8, ptr %7, i32 30
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %add.ptr, align 4
  %bf.clear = shl i8 %bf.load, 2
  %9 = and i8 %bf.clear, 60
  %mul = zext i8 %9 to i32
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %mul
  br label %if.end15

if.else:                                          ; preds = %entry
  %and7 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %data10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data10, align 4
  %daddr12 = getelementptr i8, ptr %11, i32 38
  %add.ptr13 = getelementptr i8, ptr %11, i32 54
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.then
  %ip4.0 = phi ptr [ %add.ptr, %if.then ], [ null, %if.then9 ]
  %daddr.0 = phi ptr [ %daddr3, %if.then ], [ %daddr12, %if.then9 ]
  %c_hdr.0 = phi ptr [ %add.ptr5, %if.then ], [ %add.ptr13, %if.then9 ]
  %and18 = and i32 %conv, 48
  %12 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and18, label %if.end15.cleanup_crit_edge [
    i32 32, label %sw.bb
    i32 16, label %if.end15.sw.epilog_crit_edge
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %spi19 = getelementptr inbounds %struct.ip_auth_hdr, ptr %c_hdr.0, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end15.sw.epilog_crit_edge
  %spi.0.in = phi ptr [ %spi19, %sw.bb ], [ %c_hdr.0, %if.end15.sw.epilog_crit_edge ]
  %proto.0 = phi i8 [ 51, %sw.bb ], [ 50, %if.end15.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %spi.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %spi.0 = load i32, ptr %spi.0.in, align 4
  %tobool22.not = icmp eq ptr %ip4.0, null
  %14 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %sw.epilog.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.rcu_read_lock.exit.i_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.epilog.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b71.i = load i1, ptr @ixgbe_ipsec_find_rx_state.__warned, align 1
  br i1 %.b71.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ixgbe_ipsec_find_rx_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 401, ptr noundef nonnull @.str.27) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %mul.i.i.i = mul i32 %spi.0, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.ixgbe_ipsec, ptr %5, i32 0, i32 5, i32 %shr.i.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %rsa.082.i = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool13.not83.i = icmp eq ptr %rsa.082.i, null
  br i1 %tobool13.not83.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %rsa.084.i = phi ptr [ %rsa.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rsa.082.i, %do.end.i.for.body.i_crit_edge ]
  %mode.i = getelementptr inbounds %struct.rx_sa, ptr %rsa.084.i, i32 0, i32 5
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode.i, align 4
  %and.i = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i
  %xs.i = getelementptr inbounds %struct.rx_sa, ptr %rsa.084.i, i32 0, i32 1
  %21 = ptrtoint ptr %xs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xs.i, align 4
  %id.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 7
  %spi17.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %spi17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %spi17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %spi.0)
  %cmp.i = icmp eq i32 %24, %spi.0
  br i1 %cmp.i, label %land.lhs.true18.i, label %if.end16.i.for.inc.i_crit_edge

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %if.end16.i
  br i1 %tobool22.not, label %land.lhs.true26.critedge.i, label %land.lhs.true20.i

land.lhs.true20.i:                                ; preds = %land.lhs.true18.i
  %25 = ptrtoint ptr %daddr.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %daddr.0, align 4
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp24.i = icmp eq i32 %26, %28
  br i1 %cmp24.i, label %land.lhs.true20.i.land.lhs.true32.i_crit_edge, label %land.lhs.true20.i.for.inc.i_crit_edge

land.lhs.true20.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true20.i.land.lhs.true32.i_crit_edge:    ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true32.i

land.lhs.true26.critedge.i:                       ; preds = %land.lhs.true18.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %daddr.0, ptr noundef dereferenceable(16) %id.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool31.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true26.critedge.i.land.lhs.true32.i_crit_edge, label %land.lhs.true26.critedge.i.for.inc.i_crit_edge

land.lhs.true26.critedge.i.for.inc.i_crit_edge:   ; preds = %land.lhs.true26.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true26.critedge.i.land.lhs.true32.i_crit_edge: ; preds = %land.lhs.true26.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true32.i

land.lhs.true32.i:                                ; preds = %land.lhs.true26.critedge.i.land.lhs.true32.i_crit_edge, %land.lhs.true20.i.land.lhs.true32.i_crit_edge
  %proto35.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %proto35.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %proto35.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %proto.0)
  %cmp37.i = icmp eq i8 %30, %proto.0
  br i1 %cmp37.i, label %if.then39.i, label %land.lhs.true32.i.for.inc.i_crit_edge

land.lhs.true32.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then39.i:                                      ; preds = %land.lhs.true32.i
  %refcnt.i.i = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #12, !srcloc !87
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then39.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !82

if.then39.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then39.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.end.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !85

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.end.i_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then39.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then39.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true32.i.for.inc.i_crit_edge, %land.lhs.true26.critedge.i.for.inc.i_crit_edge, %land.lhs.true20.i.for.inc.i_crit_edge, %if.end16.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %33 = ptrtoint ptr %rsa.084.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %rsa.0.i = load volatile ptr, ptr %rsa.084.i, align 4
  %tobool13.not.i = icmp eq ptr %rsa.0.i, null
  br i1 %tobool13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %ret.0.i = phi ptr [ %22, %if.else.i.i.i.i.i.for.end.i_crit_edge ], [ %22, %if.end15.sink.split.i.i.i.i.i ], [ null, %do.end.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ]
  %call.i73.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i73.i, label %for.end.i.ixgbe_ipsec_find_rx_state.exit_crit_edge, label %land.lhs.true.i76.i

for.end.i.ixgbe_ipsec_find_rx_state.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_ipsec_find_rx_state.exit

land.lhs.true.i76.i:                              ; preds = %for.end.i
  %call1.i74.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call1.i74.i, 0
  br i1 %tobool.not.i75.i, label %land.lhs.true.i76.i.ixgbe_ipsec_find_rx_state.exit_crit_edge, label %land.lhs.true2.i78.i

land.lhs.true.i76.i.ixgbe_ipsec_find_rx_state.exit_crit_edge: ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_ipsec_find_rx_state.exit

land.lhs.true2.i78.i:                             ; preds = %land.lhs.true.i76.i
  %.b4.i77.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77.i, label %land.lhs.true2.i78.i.ixgbe_ipsec_find_rx_state.exit_crit_edge, label %if.then.i79.i

land.lhs.true2.i78.i.ixgbe_ipsec_find_rx_state.exit_crit_edge: ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_ipsec_find_rx_state.exit

if.then.i79.i:                                    ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #12
  br label %ixgbe_ipsec_find_rx_state.exit

ixgbe_ipsec_find_rx_state.exit:                   ; preds = %if.then.i79.i, %land.lhs.true2.i78.i.ixgbe_ipsec_find_rx_state.exit_crit_edge, %land.lhs.true.i76.i.ixgbe_ipsec_find_rx_state.exit_crit_edge, %for.end.i.ixgbe_ipsec_find_rx_state.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !88
  %34 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i.i80.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i80.i to ptr
  %preempt_count.i.i.i.i81.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i81.i, align 4
  %sub.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i81.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool25.not = icmp eq ptr %ret.0.i, null
  br i1 %tobool25.not, label %ixgbe_ipsec_find_rx_state.exit.cleanup_crit_edge, label %if.end31, !prof !82

ixgbe_ipsec_find_rx_state.exit.cleanup_crit_edge: ; preds = %ixgbe_ipsec_find_rx_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %ixgbe_ipsec_find_rx_state.exit
  %call32 = tail call ptr @secpath_set(ptr noundef %skb) #12
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end43, !prof !82

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %38 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call32, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %call32, align 4
  %arrayidx = getelementptr %struct.sec_path, ptr %call32, i32 0, i32 2, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ret.0.i, ptr %arrayidx, align 4
  %olen = getelementptr inbounds %struct.sec_path, ptr %call32, i32 0, i32 1
  %41 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %olen, align 4
  %inc44 = add i32 %42, 1
  store i32 %inc44, ptr %olen, align 4
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %43 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.i.not.i.i.i = icmp eq i8 %45, 0
  br i1 %tobool.i.not.i.i.i, label %if.end43.xfrm_offload.exit_crit_edge, label %skb_sec_path.exit.i

if.end43.xfrm_offload.exit_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %if.end43
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %46 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %47, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %49 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 %shl.i.i.i
  %tobool.not.i75 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i75, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool1.not.i = icmp eq i32 %51, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %52 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp.not.i = icmp eq i32 %53, %51
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %51, -1
  %arrayidx.i76 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %if.end43.xfrm_offload.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i76, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %if.end43.xfrm_offload.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 1
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %flags, align 4
  %status = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 2
  %55 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %status, align 4
  %rx_ipsec = getelementptr i8, ptr %1, i32 2872
  %56 = ptrtoint ptr %rx_ipsec to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %rx_ipsec, align 8
  %inc46 = add i64 %57, 1
  store i64 %inc46, ptr %rx_ipsec, align 8
  br label %cleanup

cleanup:                                          ; preds = %xfrm_offload.exit, %if.end31.cleanup_crit_edge, %ixgbe_ipsec_find_rx_state.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @secpath_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_init_ipsec_offload(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34820) #12
  %and = and i32 %call, 2
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 36100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %call2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4112) #16
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.err1_crit_edge, label %if.end10

if.end6.err1_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end10:                                         ; preds = %if.end6
  %rx_sa_list = getelementptr inbounds %struct.ixgbe_ipsec, ptr %call7.i.i, i32 0, i32 5
  %3 = call ptr @memset(ptr %rx_sa_list, i32 0, i32 4096)
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 61440, i32 noundef 3520, i32 noundef 4) #19
  %rx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i.i.i, ptr %rx_tbl, align 8
  %tobool13.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool13.not, label %if.end10.err2_crit_edge, label %if.end15

if.end10.err2_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end15:                                         ; preds = %if.end10
  %call1.i.i.i58 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 36864, i32 noundef 3520, i32 noundef 4) #19
  %tx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i.i58, ptr %tx_tbl, align 4
  %tobool18.not = icmp eq ptr %call1.i.i.i58, null
  br i1 %tobool18.not, label %if.end15.err2_crit_edge, label %if.end20

if.end15.err2_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end20:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 3072) #16
  %ip_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ip_tbl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i59, ptr %ip_tbl, align 4
  %tobool23.not = icmp eq ptr %call7.i.i59, null
  br i1 %tobool23.not, label %if.end20.err2_crit_edge, label %if.end25

if.end20.err2_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %call7.i.i, align 8
  %num_tx_sa = getelementptr inbounds %struct.ixgbe_ipsec, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %num_tx_sa to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %num_tx_sa, align 2
  %ipsec26 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 117
  %10 = ptrtoint ptr %ipsec26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %ipsec26, align 4
  tail call fastcc void @ixgbe_ipsec_stop_engine(ptr noundef %adapter)
  tail call fastcc void @ixgbe_ipsec_clear_hw_tables(ptr noundef %adapter)
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 128
  %xfrmdev_ops = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 47
  %13 = ptrtoint ptr %xfrmdev_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ixgbe_xfrmdev_ops, ptr %xfrmdev_ops, align 4
  br label %cleanup

err2:                                             ; preds = %if.end20.err2_crit_edge, %if.end15.err2_crit_edge, %if.end10.err2_crit_edge
  %ip_tbl27 = getelementptr inbounds %struct.ixgbe_ipsec, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %ip_tbl27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip_tbl27, align 4
  tail call void @kfree(ptr noundef %15) #12
  %16 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_tbl, align 8
  tail call void @kfree(ptr noundef %17) #12
  %tx_tbl29 = getelementptr inbounds %struct.ixgbe_ipsec, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %tx_tbl29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_tbl29, align 4
  tail call void @kfree(ptr noundef %19) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %err1

err1:                                             ; preds = %err2, %if.end6.err1_crit_edge
  %netdev30 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %20 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev30, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.9) #15
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_stop_ipsec_offload(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 117
  %0 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec1, align 4
  store ptr null, ptr %ipsec1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ip_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ip_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip_tbl, align 4
  tail call void @kfree(ptr noundef %3) #12
  %rx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_tbl, align 4
  tail call void @kfree(ptr noundef %5) #12
  %tx_tbl = getelementptr inbounds %struct.ixgbe_ipsec, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_tbl, align 4
  tail call void @kfree(ptr noundef %7) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_ipsec_stop_data(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %link_up = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 62
  %0 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_up, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34816) #12
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %call, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %add.ptr.i = getelementptr i8, ptr %3, i32 34816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #12, !srcloc !81
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 36096) #12
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i80 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i80, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit83_crit_edge, label %do.body1.i82

ixgbe_write_reg.exit.ixgbe_write_reg.exit83_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit83

do.body1.i82:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or3 = or i32 %call2, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %or3) #12
  %add.ptr.i81 = getelementptr i8, ptr %6, i32 36096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %7) #12, !srcloc !81
  br label %ixgbe_write_reg.exit83

ixgbe_write_reg.exit83:                           ; preds = %do.body1.i82, %ixgbe_write_reg.exit.ixgbe_write_reg.exit83_crit_edge
  %call4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34820) #12
  %and = and i32 %call4, 1
  %call5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 36100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %and6 = and i32 %call5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool8.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.end, label %ixgbe_write_reg.exit83.cleanup_crit_edge

ixgbe_write_reg.exit83.cleanup_crit_edge:         ; preds = %ixgbe_write_reg.exit83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %ixgbe_write_reg.exit83
  br i1 %tobool.not, label %if.then10, label %if.end.do.body.preheader_crit_edge

if.end.do.body.preheader_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17200) #12
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i84 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i84, label %if.then10.ixgbe_write_reg.exit87_crit_edge, label %do.body1.i86

if.then10.ixgbe_write_reg.exit87_crit_edge:       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit87

do.body1.i86:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %or12 = or i32 %call11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %or12) #12
  %add.ptr.i85 = getelementptr i8, ptr %9, i32 17200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %10) #12, !srcloc !81
  br label %ixgbe_write_reg.exit87

ixgbe_write_reg.exit87:                           ; preds = %do.body1.i86, %if.then10.ixgbe_write_reg.exit87_crit_edge
  %call13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16960) #12
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i88 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i88, label %ixgbe_write_reg.exit87.ixgbe_write_reg.exit91_crit_edge, label %do.body1.i90

ixgbe_write_reg.exit87.ixgbe_write_reg.exit91_crit_edge: ; preds = %ixgbe_write_reg.exit87
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit91

do.body1.i90:                                     ; preds = %ixgbe_write_reg.exit87
  call void @__sanitizer_cov_trace_pc() #14
  %or14 = or i32 %call13, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or14) #12
  %add.ptr.i89 = getelementptr i8, ptr %12, i32 16960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %13) #12, !srcloc !81
  br label %ixgbe_write_reg.exit91

ixgbe_write_reg.exit91:                           ; preds = %do.body1.i90, %ixgbe_write_reg.exit87.ixgbe_write_reg.exit91_crit_edge
  %call15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #12
  br label %do.body.preheader

do.body.preheader:                                ; preds = %ixgbe_write_reg.exit91, %if.end.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %limit.0 = phi i32 [ %dec31, %do.body.do.body_crit_edge ], [ 20, %do.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #12
  %call24 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 34820) #12
  %and25 = and i32 %call24, 1
  %call26 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 36100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool28.not = icmp ne i32 %and25, 0
  %and27 = and i32 %call26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool30.not = icmp ne i32 %and27, 0
  %or.cond78 = select i1 %tobool28.not, i1 %tobool30.not, i1 false
  %dec31 = add nsw i32 %limit.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.0)
  %tobool32.not = icmp eq i32 %limit.0, 0
  %or.cond79 = select i1 %or.cond78, i1 true, i1 %tobool32.not
  br i1 %or.cond79, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %tobool.not, label %if.then34, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then34:                                        ; preds = %do.end
  %call35 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17200) #12
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i92 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i92, label %if.then34.ixgbe_write_reg.exit95_crit_edge, label %do.body1.i94

if.then34.ixgbe_write_reg.exit95_crit_edge:       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit95

do.body1.i94:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %and36 = and i32 %call35, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %and36) #12
  %add.ptr.i93 = getelementptr i8, ptr %28, i32 17200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %29) #12, !srcloc !81
  br label %ixgbe_write_reg.exit95

ixgbe_write_reg.exit95:                           ; preds = %do.body1.i94, %if.then34.ixgbe_write_reg.exit95_crit_edge
  %call37 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 16960) #12
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i96 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i96, label %ixgbe_write_reg.exit95.ixgbe_write_reg.exit99_crit_edge, label %do.body1.i98

ixgbe_write_reg.exit95.ixgbe_write_reg.exit99_crit_edge: ; preds = %ixgbe_write_reg.exit95
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_write_reg.exit99

do.body1.i98:                                     ; preds = %ixgbe_write_reg.exit95
  call void @__sanitizer_cov_trace_pc() #14
  %and38 = and i32 %call37, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !80
  tail call void @arm_heavy_mb() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %and38) #12
  %add.ptr.i97 = getelementptr i8, ptr %31, i32 16960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %32) #12, !srcloc !81
  br label %ixgbe_write_reg.exit99

ixgbe_write_reg.exit99:                           ; preds = %do.body1.i98, %ixgbe_write_reg.exit95.ixgbe_write_reg.exit99_crit_edge
  %call39 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #12
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit99, %do.end.cleanup_crit_edge, %ixgbe_write_reg.exit83.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_ipsec_parse_proto_keys(ptr nocapture noundef readonly %xs, ptr nocapture noundef writeonly %mykey, ptr nocapture noundef writeonly %mysalt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 19
  %2 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aead, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %alg_icv_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %alg_icv_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alg_icv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp.not = icmp eq i32 %5, 128
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 128) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %alg_key = getelementptr inbounds %struct.xfrm_algo_aead, ptr %3, i32 0, i32 3
  %call = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(18) @aes_gcm_name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @aes_gcm_name) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %alg_key_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %alg_key_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alg_key_len, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %7, label %if.then15 [
    i32 160, label %if.then12
    i32 128, label %if.else16
  ]

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13 = getelementptr %struct.xfrm_algo_aead, ptr %3, i32 1, i32 0, i32 16
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx13, align 4
  br label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.24) #15
  br label %cleanup

if.else16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.25) #15
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then12
  %storemerge = phi i32 [ 0, %if.else16 ], [ %10, %if.then12 ]
  %11 = ptrtoint ptr %mysalt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %mysalt, align 4
  %12 = call ptr @memcpy(ptr %mykey, ptr %alg_key, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then15, %if.then9, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %if.then9 ], [ 0, %if.end18 ], [ -22, %if.then15 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ixgbe_ipsec_offload_ok(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %xs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 14, i32 7
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp3.not = icmp eq i8 %bf.clear, 5
  br i1 %cmp3.not, label %if.then.if.end10_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else:                                          ; preds = %entry
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nexthdr, align 2
  %call7 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %8) #12
  br i1 %call7, label %if.else.return_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then.if.end10_crit_edge
  br label %return

return:                                           ; preds = %if.end10, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %if.then.return_crit_edge ], [ false, %if.else.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 898, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1002, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1011, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1023, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1045, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1078, i32 31}
!12 = !{ptr @__func__.ixgbe_ipsec_tx, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1079, i32 7}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1085, i32 31}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1092, i32 31}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1099, i32 31}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 1283, i32 30}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 768, i32 20}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 797, i32 20}
!26 = !{ptr @aes_gcm_name, !27, !"aes_gcm_name", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 10, i32 19}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 573, i32 19}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 579, i32 19}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 584, i32 19}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 592, i32 20}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 599, i32 20}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 614, i32 20}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 674, i32 20}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 709, i32 20}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 723, i32 20}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 436, i32 19}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 441, i32 19}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 451, i32 19}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 463, i32 19}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 466, i32 20}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 400, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ixgbe_xfrmdev_ops, !68, !"ixgbe_xfrmdev_ops", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c", i32 834, i32 33}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i8 0, i8 2}
!80 = !{i64 2157289053}
!81 = !{i64 5045384}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2151775695}
!84 = !{!"auto-init"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2150168911}
!87 = !{i64 2148229646, i64 2148229678, i64 2148229707, i64 2148229741, i64 2148229772, i64 2148229795}
!88 = !{i64 2150169177}
