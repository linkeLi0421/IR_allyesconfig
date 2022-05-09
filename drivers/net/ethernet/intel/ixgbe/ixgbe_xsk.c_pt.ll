; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.162 }
%struct.atomic_t = type { i32 }
%union.anon.162 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.190, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.197, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.199, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.190 = type { ptr }
%union.anon.197 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.199 = type { %struct.ixgbe_rx_queue_stats }
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
%union.ixgbe_atr_input = type { %struct.anon.200 }
%struct.anon.200 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
%struct.ixgbe_fcoe_ddp = type { i32, i32, i32, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.vf_macvlans = type { %struct.list_head, i32, i8, i8, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.163, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.184, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.163 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.184 = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.189, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.189 = type { ptr }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }
%union.ixgbe_adv_rx_desc = type { %struct.anon.204 }
%struct.anon.204 = type { i64, i64 }
%struct.ixgbe_rx_buffer = type { %union.anon.194 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { ptr, i32, ptr, i32, i16 }
%struct.anon.196 = type { i8, ptr }
%struct.xdp_buff_xsk = type { %struct.xdp_buff, i32, i32, ptr, i64, %struct.list_head }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.205 = type { %struct.anon.206, %struct.anon.211 }
%struct.anon.206 = type { %union.anon.207, %union.anon.209 }
%union.anon.207 = type { i32 }
%union.anon.209 = type { i32 }
%struct.anon.211 = type { i32, i16, i16 }
%struct.ixgbe_q_vector = type { ptr, i16, i16, %struct.ixgbe_ring_container, %struct.ixgbe_ring_container, %struct.napi_struct, %struct.cpumask, i32, %struct.callback_head, [25 x i8], [71 x i8], [0 x %struct.ixgbe_ring] }
%struct.ixgbe_ring_container = type { ptr, i32, i32, i32, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.112 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { %struct.anon.114, [0 x %struct.sock_filter] }
%struct.anon.114 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.xdp_desc = type { i64, i32, i32 }
%union.ixgbe_adv_tx_desc = type { %struct.anon.191 }
%struct.anon.191 = type { i64, i32, i32 }
%struct.ixgbe_tx_buffer = type { ptr, i32, %union.anon.193, i32, i16, i16, i32, i32, i32 }
%union.anon.193 = type { ptr }
%struct.anon.192 = type { i64, i32, i32 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }

@ixgbe_xdp_locking_key = external dso_local global %struct.static_key_false, align 4
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_ = private constant [48 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 613, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 271, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 200, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 28, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 108, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ixgbe_xsk_pool(ptr noundef %adapter, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xdp_prog, align 4
  %tobool.not = icmp eq ptr %1, null
  %ring_idx = getelementptr inbounds %struct.ixgbe_ring, ptr %ring, i32 0, i32 27
  %2 = ptrtoint ptr %ring_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ring_idx, align 16
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %3 to i32
  %af_xdp_zc_qps = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 19
  %4 = ptrtoint ptr %af_xdp_zc_qps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %af_xdp_zc_qps, align 8
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 128
  %call4 = tail call ptr @xsk_get_pool_from_qid(ptr noundef %11, i16 noundef zeroext %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xsk_get_pool_from_qid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_xsk_pool_setup(ptr noundef %adapter, ptr noundef %pool, i16 noundef zeroext %qid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev.i, align 128
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %conv.i = zext i16 %qid to i32
  %num_rx_queues.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 12
  %2 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %3, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 89
  %4 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %real_num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp4.not.i = icmp ugt i32 %5, %conv.i
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %if.end.i.cond.end_crit_edge

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 105
  %6 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %real_num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp7.not.i = icmp ugt i32 %7, %conv.i
  br i1 %cmp7.not.i, label %if.end10.i, label %lor.lhs.false.i.cond.end_crit_edge

lor.lhs.false.i.cond.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end10.i:                                       ; preds = %lor.lhs.false.i
  %pdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %umem1.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %10 = ptrtoint ptr %umem1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %umem1.i.i, align 64
  %pgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %pgs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pgs.i.i, align 4
  %npgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %npgs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %npgs.i.i, align 4
  %call.i.i = tail call i32 @xp_dma_map(ptr noundef nonnull %pool, ptr noundef %dev.i, i32 noundef 34, ptr noundef %13, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end10.i.cond.end_crit_edge

if.end10.i.cond.end_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end12.i:                                       ; preds = %if.end10.i
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i, align 128
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end12.i.if.end21.thread.i_crit_edge, label %land.end.i

if.end12.i.if.end21.thread.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.thread.i

land.end.i:                                       ; preds = %if.end12.i
  %xdp_prog.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 2
  %20 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool.i59.not.i = icmp eq ptr %21, null
  br i1 %tobool.i59.not.i, label %land.end.i.if.end21.thread.i_crit_edge, label %if.then24.i

land.end.i.if.end21.thread.i_crit_edge:           ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.thread.i

if.end21.thread.i:                                ; preds = %land.end.i.if.end21.thread.i_crit_edge, %if.end12.i.if.end21.thread.i_crit_edge
  %af_xdp_zc_qps60.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 19
  %22 = ptrtoint ptr %af_xdp_zc_qps60.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %af_xdp_zc_qps60.i, align 8
  tail call void @_set_bit(i32 noundef %conv.i, ptr noundef %23) #8
  br label %cond.end

if.then24.i:                                      ; preds = %land.end.i
  tail call void @ixgbe_txrx_ring_disable(ptr noundef %adapter, i32 noundef %conv.i) #8
  %af_xdp_zc_qps.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 19
  %24 = ptrtoint ptr %af_xdp_zc_qps.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %af_xdp_zc_qps.i, align 8
  tail call void @_set_bit(i32 noundef %conv.i, ptr noundef %25) #8
  tail call void @ixgbe_txrx_ring_enable(ptr noundef %adapter, i32 noundef %conv.i) #8
  %26 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i, align 128
  %call28.i = tail call i32 @ixgbe_xsk_wakeup(ptr noundef %27, i32 noundef %conv.i, i32 undef) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then24.i.cond.end_crit_edge, label %if.then30.i

if.then24.i.cond.end_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then30.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %af_xdp_zc_qps.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %af_xdp_zc_qps.i, align 8
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %29) #8
  tail call void @xp_dma_unmap(ptr noundef nonnull %pool, i32 noundef 34) #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call.i = tail call ptr @xsk_get_pool_from_qid(ptr noundef %1, i16 noundef zeroext %qid) #8
  %tobool.not.i5 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i5, label %cond.false.cond.end_crit_edge, label %if.end.i9

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i9:                                        ; preds = %cond.false
  %30 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev.i, align 128
  %state.i.i6 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %state.i.i6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i.i6, align 4
  %and1.i.i.i7 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i7)
  %tobool.i.not.i8 = icmp eq i32 %and1.i.i.i7, 0
  br i1 %tobool.i.not.i8, label %if.end.i9.if.end6.i_crit_edge, label %land.end.i11

if.end.i9.if.end6.i_crit_edge:                    ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

land.end.i11:                                     ; preds = %if.end.i9
  %xdp_prog.i.i10 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 2
  %34 = ptrtoint ptr %xdp_prog.i.i10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xdp_prog.i.i10, align 4
  %tobool.i23.not.i = icmp eq ptr %35, null
  br i1 %tobool.i23.not.i, label %land.end.i11.if.end6.i_crit_edge, label %if.then5.i

land.end.i11.if.end6.i_crit_edge:                 ; preds = %land.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then5.i:                                       ; preds = %land.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i12 = zext i16 %qid to i32
  tail call void @ixgbe_txrx_ring_disable(ptr noundef %adapter, i32 noundef %conv.i12) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %land.end.i11.if.end6.i_crit_edge, %if.end.i9.if.end6.i_crit_edge
  %36 = phi i1 [ true, %if.then5.i ], [ false, %land.end.i11.if.end6.i_crit_edge ], [ false, %if.end.i9.if.end6.i_crit_edge ]
  %conv7.i = zext i16 %qid to i32
  %af_xdp_zc_qps.i13 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 19
  %37 = ptrtoint ptr %af_xdp_zc_qps.i13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %af_xdp_zc_qps.i13, align 8
  tail call void @_clear_bit(i32 noundef %conv7.i, ptr noundef %38) #8
  tail call void @xp_dma_unmap(ptr noundef nonnull %call.i, i32 noundef 34) #8
  br i1 %36, label %if.then9.i, label %if.end6.i.cond.end_crit_edge

if.end6.i.cond.end_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ixgbe_txrx_ring_enable(ptr noundef %adapter, i32 noundef %conv7.i) #8
  br label %cond.end

cond.end:                                         ; preds = %if.then9.i, %if.end6.i.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %if.then30.i, %if.then24.i.cond.end_crit_edge, %if.end21.thread.i, %if.end10.i.cond.end_crit_edge, %lor.lhs.false.i.cond.end_crit_edge, %if.end.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  %cond = phi i32 [ %call28.i, %if.then30.i ], [ -22, %cond.true.cond.end_crit_edge ], [ -22, %lor.lhs.false.i.cond.end_crit_edge ], [ -22, %if.end.i.cond.end_crit_edge ], [ %call.i.i, %if.end10.i.cond.end_crit_edge ], [ 0, %if.then24.i.cond.end_crit_edge ], [ 0, %if.end21.thread.i ], [ -22, %cond.false.cond.end_crit_edge ], [ 0, %if.then9.i ], [ 0, %if.end6.i.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgbe_alloc_rx_buffers_zc(ptr nocapture noundef %rx_ring, i16 noundef zeroext %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %tobool.not = icmp eq i16 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 16
  %desc = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 5
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %union.ixgbe_adv_rx_desc, ptr %3, i32 %idxprom
  %4 = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %arrayidx2 = getelementptr %struct.ixgbe_rx_buffer, ptr %6, i32 %idxprom
  %count3 = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 11
  %7 = ptrtoint ptr %count3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count3, align 4
  %sub = sub i16 %1, %8
  %xsk_pool = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 26
  br label %do.body

do.body:                                          ; preds = %if.end26.do.body_crit_edge, %if.end
  %count.addr.0 = phi i16 [ %count, %if.end ], [ %dec, %if.end26.do.body_crit_edge ]
  %rx_desc.0 = phi ptr [ %arrayidx, %if.end ], [ %rx_desc.1, %if.end26.do.body_crit_edge ]
  %bi.0 = phi ptr [ %arrayidx2, %if.end ], [ %bi.1, %if.end26.do.body_crit_edge ]
  %i.0 = phi i16 [ %sub, %if.end ], [ %i.1, %if.end26.do.body_crit_edge ]
  %9 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xsk_pool, align 4
  %call.i = tail call ptr @xp_alloc(ptr noundef %10) #8
  %xdp = getelementptr inbounds %struct.anon.196, ptr %bi.0, i32 0, i32 1
  %11 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %xdp, align 4
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.body.do.end_crit_edge, label %if.end9

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end9:                                          ; preds = %do.body
  %dma.i.i = getelementptr inbounds %struct.xdp_buff_xsk, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma.i.i, align 4
  %conv12 = zext i32 %13 to i64
  %14 = tail call i64 @llvm.bswap.i64(i64 %conv12)
  %15 = ptrtoint ptr %rx_desc.0 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %rx_desc.0, align 8
  %incdec.ptr = getelementptr %union.ixgbe_adv_rx_desc, ptr %rx_desc.0, i32 1
  %incdec.ptr13 = getelementptr %struct.ixgbe_rx_buffer, ptr %bi.0, i32 1
  %inc = add i16 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %tobool14.not = icmp eq i16 %inc, 0
  br i1 %tobool14.not, label %if.then18, label %if.end9.if.end26_crit_edge, !prof !26

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %4, align 8
  %20 = ptrtoint ptr %count3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %count3, align 4
  %sub24 = sub i16 0, %21
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.end9.if.end26_crit_edge
  %rx_desc.1 = phi ptr [ %17, %if.then18 ], [ %incdec.ptr, %if.end9.if.end26_crit_edge ]
  %bi.1 = phi ptr [ %19, %if.then18 ], [ %incdec.ptr13, %if.end9.if.end26_crit_edge ]
  %i.1 = phi i16 [ %sub24, %if.then18 ], [ %inc, %if.end9.if.end26_crit_edge ]
  %length = getelementptr inbounds %struct.anon.205, ptr %rx_desc.1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %length, align 4
  %dec = add i16 %count.addr.0, -1
  %tobool27.not = icmp eq i16 %dec, 0
  br i1 %tobool27.not, label %if.end26.do.end_crit_edge, label %if.end26.do.body_crit_edge

if.end26.do.body_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end26.do.end_crit_edge, %do.body.do.end_crit_edge
  %i.2 = phi i16 [ %i.1, %if.end26.do.end_crit_edge ], [ %i.0, %do.body.do.end_crit_edge ]
  %23 = xor i1 %tobool7.not, true
  %24 = ptrtoint ptr %count3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count3, align 4
  %add = add i16 %25, %i.2
  %26 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %next_to_use, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %add)
  %cmp.not = icmp eq i16 %27, %add
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %if.then36

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv34 = zext i16 %add to i32
  %28 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %add, ptr %next_to_use, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv34)
  %tail = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 8
  %30 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %23, %if.then36 ], [ %23, %do.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_clean_rx_irq_zc(ptr noundef %q_vector, ptr noundef %rx_ring, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_vector, align 128
  %next_to_clean.i = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 15
  %2 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_clean.i, align 2
  %next_to_use.i = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 14
  %4 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_to_use.i, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.i = icmp ugt i16 %3, %5
  br i1 %cmp.i, label %entry.ixgbe_desc_unused.exit_crit_edge, label %cond.false.i

entry.ixgbe_desc_unused.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_desc_unused.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %count.i = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 11
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count.i, align 4
  br label %ixgbe_desc_unused.exit

ixgbe_desc_unused.exit:                           ; preds = %cond.false.i, %entry.ixgbe_desc_unused.exit_crit_edge
  %cond.i = phi i16 [ %7, %cond.false.i ], [ 0, %entry.ixgbe_desc_unused.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp252.not = icmp eq i32 %budget, 0
  br i1 %cmp252.not, label %ixgbe_desc_unused.exit.if.end82_crit_edge, label %while.body.lr.ph, !prof !26

ixgbe_desc_unused.exit.if.end82_crit_edge:        ; preds = %ixgbe_desc_unused.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

while.body.lr.ph:                                 ; preds = %ixgbe_desc_unused.exit
  %8 = xor i16 %5, -1
  %add.i = add i16 %3, %8
  %sub6.i = add i16 %add.i, %cond.i
  %desc = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 5
  %9 = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 6
  %count.i197 = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 11
  %xsk_pool = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 26
  %q_vector.i = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %total_rx_bytes.0259 = phi i32 [ 0, %while.body.lr.ph ], [ %total_rx_bytes.1, %cleanup.while.body_crit_edge ]
  %failure.0.off0258 = phi i1 [ false, %while.body.lr.ph ], [ %failure.1.off0, %cleanup.while.body_crit_edge ]
  %xdp_xmit.0256 = phi i32 [ 0, %while.body.lr.ph ], [ %xdp_xmit.2, %cleanup.while.body_crit_edge ]
  %cleaned_count.0255 = phi i16 [ %sub6.i, %while.body.lr.ph ], [ %cleaned_count.2, %cleanup.while.body_crit_edge ]
  %total_rx_packets.0253 = phi i32 [ 0, %while.body.lr.ph ], [ %total_rx_packets.1, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %cleaned_count.0255)
  %cmp3 = icmp ult i16 %cleaned_count.0255, 16
  %brmerge = select i1 %cmp3, i1 true, i1 %failure.0.off0258
  %cleaned_count.0.mux = select i1 %cmp3, i16 %cleaned_count.0255, i16 0
  %not.cmp3 = xor i1 %cmp3, true
  %failure.0.off0.mux = select i1 %not.cmp3, i1 true, i1 %failure.0.off0258
  br i1 %brmerge, label %while.body.if.end_crit_edge, label %lor.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.rhs:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call zeroext i1 @ixgbe_alloc_rx_buffers_zc(ptr noundef %rx_ring, i16 noundef zeroext %cleaned_count.0255)
  %lnot8 = xor i1 %call7, true
  br label %if.end

if.end:                                           ; preds = %lor.rhs, %while.body.if.end_crit_edge
  %cleaned_count.1 = phi i16 [ %cleaned_count.0.mux, %while.body.if.end_crit_edge ], [ 0, %lor.rhs ]
  %failure.1.off0 = phi i1 [ %failure.0.off0.mux, %while.body.if.end_crit_edge ], [ %lnot8, %lor.rhs ]
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %12 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %next_to_clean.i, align 2
  %idxprom = zext i16 %13 to i32
  %arrayidx = getelementptr %union.ixgbe_adv_rx_desc, ptr %11, i32 %idxprom
  %upper = getelementptr inbounds %struct.anon.205, ptr %arrayidx, i32 0, i32 1
  %length = getelementptr inbounds %struct.anon.211, ptr %upper, i32 0, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv10 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool11.not = icmp eq i16 %15, 0
  br i1 %tobool11.not, label %if.end.while.end_crit_edge, label %if.end13

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end13:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 8
  %19 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %next_to_clean.i, align 2
  %idxprom15 = zext i16 %20 to i32
  %arrayidx16 = getelementptr %struct.ixgbe_rx_buffer, ptr %18, i32 %idxprom15
  %21 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %upper, align 8
  %and.i = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not = icmp eq i32 %and.i, 0
  br i1 %tobool18.not, label %if.then27, label %if.end32, !prof !26

if.then27:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %xdp = getelementptr inbounds %struct.anon.196, ptr %arrayidx16, i32 0, i32 1
  %23 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xdp, align 4
  tail call void @xp_free(ptr noundef %24) #8
  %25 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %xdp, align 4
  %26 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %next_to_clean.i, align 2
  %conv.i = zext i16 %27 to i32
  %add.i191 = add nuw nsw i32 %conv.i, 1
  %28 = ptrtoint ptr %count.i197 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count.i197, align 4
  %conv1.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i191, i32 %conv1.i)
  %cmp.i193 = icmp ult i32 %add.i191, %conv1.i
  %spec.select.i = select i1 %cmp.i193, i32 %add.i191, i32 0
  %conv3.i = trunc i32 %spec.select.i to i16
  %30 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv3.i, ptr %next_to_clean.i, align 2
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc, align 4
  %arrayidx.i = getelementptr %union.ixgbe_adv_rx_desc, ptr %32, i32 %spec.select.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i) #8, !srcloc !31
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %9, align 8
  %35 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %next_to_clean.i, align 2
  %idxprom30 = zext i16 %36 to i32
  %arrayidx31 = getelementptr %struct.ixgbe_rx_buffer, ptr %34, i32 %idxprom30
  %37 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %arrayidx31, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end13
  %38 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx16, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool34.not = icmp eq i8 %39, 0
  %xdp46 = getelementptr inbounds %struct.anon.196, ptr %arrayidx16, i32 0, i32 1
  %40 = ptrtoint ptr %xdp46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xdp46, align 4
  br i1 %tobool34.not, label %if.end45, label %if.then41, !prof !33

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xp_free(ptr noundef %41) #8
  %42 = ptrtoint ptr %xdp46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %xdp46, align 4
  %43 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx16, align 4
  %44 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %next_to_clean.i, align 2
  %conv.i195 = zext i16 %45 to i32
  %add.i196 = add nuw nsw i32 %conv.i195, 1
  %46 = ptrtoint ptr %count.i197 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %count.i197, align 4
  %conv1.i198 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i196, i32 %conv1.i198)
  %cmp.i199 = icmp ult i32 %add.i196, %conv1.i198
  %spec.select.i200 = select i1 %cmp.i199, i32 %add.i196, i32 0
  %conv3.i201 = trunc i32 %spec.select.i200 to i16
  %48 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv3.i201, ptr %next_to_clean.i, align 2
  %49 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc, align 4
  %arrayidx.i203 = getelementptr %union.ixgbe_adv_rx_desc, ptr %50, i32 %spec.select.i200
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i203) #8, !srcloc !31
  br label %cleanup

if.end45:                                         ; preds = %if.end32
  %51 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %41, align 4
  %add.ptr = getelementptr i8, ptr %52, i32 %conv10
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %41, i32 0, i32 1
  %53 = ptrtoint ptr %data_end to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr, ptr %data_end, align 4
  %54 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xsk_pool, align 4
  %dma_need_sync.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %55, i32 0, i32 25
  %56 = ptrtoint ptr %dma_need_sync.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dma_need_sync.i, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i, label %if.end45.xsk_buff_dma_sync_for_cpu.exit_crit_edge, label %if.end.i

if.end45.xsk_buff_dma_sync_for_cpu.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %xsk_buff_dma_sync_for_cpu.exit

if.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %xdp46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xdp46, align 4
  tail call void @xp_dma_sync_for_cpu_slow(ptr noundef %59) #8
  br label %xsk_buff_dma_sync_for_cpu.exit

xsk_buff_dma_sync_for_cpu.exit:                   ; preds = %if.end.i, %if.end45.xsk_buff_dma_sync_for_cpu.exit_crit_edge
  %60 = ptrtoint ptr %xdp46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xdp46, align 4
  %call50 = tail call fastcc i32 @ixgbe_run_xdp_zc(ptr noundef %1, ptr noundef %rx_ring, ptr noundef %61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end59, label %if.then52

if.then52:                                        ; preds = %xsk_buff_dma_sync_for_cpu.exit
  %and = and i32 %call50, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %call50, %xdp_xmit.0256
  br label %if.end56

if.else:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %xdp46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xdp46, align 4
  tail call void @xp_free(ptr noundef %63) #8
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then54
  %xdp_xmit.1 = phi i32 [ %or, %if.then54 ], [ %xdp_xmit.0256, %if.else ]
  %64 = ptrtoint ptr %xdp46 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %xdp46, align 4
  %inc = add nuw i32 %total_rx_packets.0253, 1
  %add = add i32 %total_rx_bytes.0259, %conv10
  %inc58 = add nuw nsw i16 %cleaned_count.1, 1
  %65 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %next_to_clean.i, align 2
  %conv.i205 = zext i16 %66 to i32
  %add.i206 = add nuw nsw i32 %conv.i205, 1
  %67 = ptrtoint ptr %count.i197 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %count.i197, align 4
  %conv1.i208 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i206, i32 %conv1.i208)
  %cmp.i209 = icmp ult i32 %add.i206, %conv1.i208
  %spec.select.i210 = select i1 %cmp.i209, i32 %add.i206, i32 0
  %conv3.i211 = trunc i32 %spec.select.i210 to i16
  %69 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv3.i211, ptr %next_to_clean.i, align 2
  %70 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %desc, align 4
  %arrayidx.i213 = getelementptr %union.ixgbe_adv_rx_desc, ptr %71, i32 %spec.select.i210
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i213) #8, !srcloc !31
  br label %cleanup

if.end59:                                         ; preds = %xsk_buff_dma_sync_for_cpu.exit
  %72 = ptrtoint ptr %xdp46 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xdp46, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %data_meta.i = getelementptr inbounds %struct.xdp_buff, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data_meta.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_end.i = getelementptr inbounds %struct.xdp_buff, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data_end.i, align 4
  %sub.ptr.lhs.cast5.i = ptrtoint ptr %79 to i32
  %80 = ptrtoint ptr %q_vector.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %q_vector.i, align 4
  %napi.i = getelementptr inbounds %struct.ixgbe_q_vector, ptr %81, i32 0, i32 5
  %data_hard_start.i = getelementptr inbounds %struct.xdp_buff, ptr %73, i32 0, i32 3
  %82 = ptrtoint ptr %data_hard_start.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data_hard_start.i, align 4
  %sub.ptr.rhs.cast12.i = ptrtoint ptr %83 to i32
  %sub.ptr.sub13.i = sub i32 %sub.ptr.lhs.cast5.i, %sub.ptr.rhs.cast12.i
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi.i, i32 noundef %sub.ptr.sub13.i, i32 noundef 10784) #8
  %tobool.not.i214 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i214, label %if.then62, label %if.end.i215, !prof !26

if.end.i215:                                      ; preds = %if.end59
  %84 = ptrtoint ptr %xdp46 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xdp46, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %data_hard_start20.i = getelementptr inbounds %struct.xdp_buff, ptr %85, i32 0, i32 3
  %88 = ptrtoint ptr %data_hard_start20.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data_hard_start20.i, align 4
  %sub.ptr.lhs.cast21.i = ptrtoint ptr %87 to i32
  %sub.ptr.rhs.cast22.i = ptrtoint ptr %89 to i32
  %sub.ptr.sub23.i = sub i32 %sub.ptr.lhs.cast21.i, %sub.ptr.rhs.cast22.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %90 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %91, i32 %sub.ptr.sub23.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %92 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %93, i32 %sub.ptr.sub23.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %94 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.i.not.i.i = icmp eq i32 %95, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !33

do.body3.i.i:                                     ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end.i215
  %sub.ptr.sub7.i = sub i32 %sub.ptr.lhs.cast5.i, %sub.ptr.lhs.cast.i
  %add.ptr.i50.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %sub.ptr.sub7.i
  %96 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr.i50.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %97 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %98, %sub.ptr.sub7.i
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %99 = ptrtoint ptr %xdp46 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %xdp46, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %103 = call ptr @memcpy(ptr %add.ptr1.i.i, ptr %102, i32 %sub.ptr.sub7.i)
  %tobool27.not.i = icmp eq ptr %75, %77
  br i1 %tobool27.not.i, label %__skb_put.exit.i.if.end64_crit_edge, label %if.then28.i

__skb_put.exit.i.if.end64_crit_edge:              ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then28.i:                                      ; preds = %__skb_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i216 = trunc i32 %sub.ptr.sub.i to i8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %104 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %end.i.i.i, align 4
  %meta_len1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %meta_len1.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv.i216, ptr %meta_len1.i.i, align 1
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %alloc_rx_buff_failed = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 21, i32 0, i32 5
  %107 = ptrtoint ptr %alloc_rx_buff_failed to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %alloc_rx_buff_failed, align 8
  %inc63 = add i64 %108, 1
  store i64 %inc63, ptr %alloc_rx_buff_failed, align 8
  br label %while.end

if.end64:                                         ; preds = %if.then28.i, %__skb_put.exit.i.if.end64_crit_edge
  %109 = ptrtoint ptr %xdp46 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %xdp46, align 4
  tail call void @xp_free(ptr noundef %110) #8
  %111 = ptrtoint ptr %xdp46 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %xdp46, align 4
  %inc65 = add nuw nsw i16 %cleaned_count.1, 1
  %112 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %next_to_clean.i, align 2
  %conv.i218 = zext i16 %113 to i32
  %add.i219 = add nuw nsw i32 %conv.i218, 1
  %114 = ptrtoint ptr %count.i197 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %count.i197, align 4
  %conv1.i221 = zext i16 %115 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i219, i32 %conv1.i221)
  %cmp.i222 = icmp ult i32 %add.i219, %conv1.i221
  %spec.select.i223 = select i1 %cmp.i222, i32 %add.i219, i32 0
  %conv3.i224 = trunc i32 %spec.select.i223 to i16
  %116 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv3.i224, ptr %next_to_clean.i, align 2
  %117 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %desc, align 4
  %arrayidx.i226 = getelementptr %union.ixgbe_adv_rx_desc, ptr %118, i32 %spec.select.i223
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i226) #8, !srcloc !31
  %119 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %len9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %120)
  %cmp.i.i.i = icmp ult i32 %120, 60
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end64.if.end69_crit_edge, !prof !26

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then.i.i.i:                                    ; preds = %if.end64
  %sub.i.i.i = sub nuw nsw i32 60, %120
  %call.i.i.i = tail call i32 @__skb_pad(ptr noundef nonnull %call.i, i32 noundef %sub.i.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i.cleanup_crit_edge

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %121 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.i.not.i.i.i.i = icmp eq i32 %122, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put.exit.i.i.i, label %do.body3.i.i.i.i, !prof !33

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

__skb_put.exit.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %124, i32 %sub.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i, align 8
  %125 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len9.i.i, align 4
  %add.i.i.i.i = add i32 %126, %sub.i.i.i
  store i32 %add.i.i.i.i, ptr %len9.i.i, align 4
  br label %if.end69

if.end69:                                         ; preds = %__skb_put.exit.i.i.i, %if.end64.if.end69_crit_edge
  %127 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len9.i.i, align 4
  %add70 = add i32 %128, %total_rx_bytes.0259
  %inc71 = add nuw i32 %total_rx_packets.0253, 1
  tail call void @ixgbe_process_skb_fields(ptr noundef %rx_ring, ptr noundef %arrayidx, ptr noundef nonnull %call.i) #8
  tail call void @ixgbe_rx_skb(ptr noundef %q_vector, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then.i.i.i.cleanup_crit_edge, %if.end56, %if.then41, %if.then27
  %total_rx_packets.1 = phi i32 [ %total_rx_packets.0253, %if.then27 ], [ %total_rx_packets.0253, %if.then41 ], [ %inc, %if.end56 ], [ %inc71, %if.end69 ], [ %total_rx_packets.0253, %if.then.i.i.i.cleanup_crit_edge ]
  %cleaned_count.2 = phi i16 [ %cleaned_count.1, %if.then27 ], [ %cleaned_count.1, %if.then41 ], [ %inc58, %if.end56 ], [ %inc65, %if.end69 ], [ %inc65, %if.then.i.i.i.cleanup_crit_edge ]
  %xdp_xmit.2 = phi i32 [ %xdp_xmit.0256, %if.then27 ], [ %xdp_xmit.0256, %if.then41 ], [ %xdp_xmit.1, %if.end56 ], [ %xdp_xmit.0256, %if.end69 ], [ %xdp_xmit.0256, %if.then.i.i.i.cleanup_crit_edge ]
  %total_rx_bytes.1 = phi i32 [ %total_rx_bytes.0259, %if.then27 ], [ %total_rx_bytes.0259, %if.then41 ], [ %add, %if.end56 ], [ %add70, %if.end69 ], [ %total_rx_bytes.0259, %if.then.i.i.i.cleanup_crit_edge ]
  %cmp = icmp ult i32 %total_rx_packets.1, %budget
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge, !prof !33

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then62, %if.end.while.end_crit_edge
  %total_rx_packets.0248 = phi i32 [ %total_rx_packets.0253, %if.then62 ], [ %total_rx_packets.0253, %if.end.while.end_crit_edge ], [ %total_rx_packets.1, %cleanup.while.end_crit_edge ]
  %xdp_xmit.0244 = phi i32 [ %xdp_xmit.0256, %if.then62 ], [ %xdp_xmit.0256, %if.end.while.end_crit_edge ], [ %xdp_xmit.2, %cleanup.while.end_crit_edge ]
  %total_rx_bytes.0240 = phi i32 [ %total_rx_bytes.0259, %if.then62 ], [ %total_rx_bytes.0259, %if.end.while.end_crit_edge ], [ %total_rx_bytes.1, %cleanup.while.end_crit_edge ]
  %and74 = and i32 %xdp_xmit.0244, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %while.end.if.end77_crit_edge, label %if.then76

while.end.if.end77_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then76:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xdp_do_flush() #8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %while.end.if.end77_crit_edge
  %and78 = and i32 %xdp_xmit.0244, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end82_crit_edge, label %if.then80

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %129 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cpu.i, align 4
  %call.i.i = tail call i32 @static_key_count(ptr noundef nonnull @ixgbe_xdp_locking_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  %rem.i.i = srem i32 %132, 64
  %retval.0.i.i = select i1 %cmp.i.i, i32 %rem.i.i, i32 %132
  %arrayidx.i227 = getelementptr %struct.ixgbe_adapter, ptr %1, i32 0, i32 18, i32 %retval.0.i.i
  %133 = ptrtoint ptr %arrayidx.i227 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i227, align 4
  tail call void @ixgbe_xdp_ring_update_tail_locked(ptr noundef %134) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77.if.end82_crit_edge, %ixgbe_desc_unused.exit.if.end82_crit_edge
  %total_rx_packets.0248286299 = phi i32 [ %total_rx_packets.0248, %if.then80 ], [ %total_rx_packets.0248, %if.end77.if.end82_crit_edge ], [ 0, %ixgbe_desc_unused.exit.if.end82_crit_edge ]
  %total_rx_bytes.0240289298 = phi i32 [ %total_rx_bytes.0240, %if.then80 ], [ %total_rx_bytes.0240, %if.end77.if.end82_crit_edge ], [ 0, %ixgbe_desc_unused.exit.if.end82_crit_edge ]
  %failure.2.off0290297 = phi i1 [ %failure.1.off0, %if.then80 ], [ %failure.1.off0, %if.end77.if.end82_crit_edge ], [ false, %ixgbe_desc_unused.exit.if.end82_crit_edge ]
  %syncp = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 20
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %conv83 = zext i32 %total_rx_packets.0248286299 to i64
  %stats = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 19
  %135 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %stats, align 64
  %add84 = add i64 %136, %conv83
  store i64 %add84, ptr %stats, align 64
  %conv85 = zext i32 %total_rx_bytes.0240289298 to i64
  %bytes = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 19, i32 1
  %137 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %bytes, align 8
  %add87 = add i64 %138, %conv85
  store i64 %add87, ptr %bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 20, i32 0, i32 1
  %139 = tail call ptr @llvm.returnaddress(i32 0) #8
  %140 = ptrtoint ptr %139 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %140) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  %141 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %142, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %total_packets = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector, i32 0, i32 3, i32 3
  %143 = ptrtoint ptr %total_packets to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %total_packets, align 4
  %add89 = add i32 %144, %total_rx_packets.0248286299
  store i32 %add89, ptr %total_packets, align 4
  %total_bytes = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector, i32 0, i32 3, i32 2
  %145 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %total_bytes, align 8
  %add91 = add i32 %146, %total_rx_bytes.0240289298
  store i32 %add91, ptr %total_bytes, align 8
  %xsk_pool92 = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 26
  %147 = ptrtoint ptr %xsk_pool92 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %xsk_pool92, align 4
  %call93 = tail call zeroext i1 @xsk_uses_need_wakeup(ptr noundef %148) #8
  br i1 %call93, label %if.then94, label %if.end107

if.then94:                                        ; preds = %if.end82
  br i1 %failure.2.off0290297, label %if.then94.if.then102_crit_edge, label %lor.lhs.false

if.then94.if.then102_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then102

lor.lhs.false:                                    ; preds = %if.then94
  %149 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %next_to_clean.i, align 2
  %151 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %next_to_use.i, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %150, i16 %152)
  %cmp100 = icmp eq i16 %150, %152
  br i1 %cmp100, label %lor.lhs.false.if.then102_crit_edge, label %if.else104

lor.lhs.false.if.then102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then102

if.then102:                                       ; preds = %lor.lhs.false.if.then102_crit_edge, %if.then94.if.then102_crit_edge
  %153 = ptrtoint ptr %xsk_pool92 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %xsk_pool92, align 4
  tail call void @xsk_set_rx_need_wakeup(ptr noundef %154) #8
  br label %cleanup110

if.else104:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %xsk_pool92 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %xsk_pool92, align 4
  tail call void @xsk_clear_rx_need_wakeup(ptr noundef %156) #8
  br label %cleanup110

if.end107:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %budget.total_rx_packets.2 = select i1 %failure.2.off0290297, i32 %budget, i32 %total_rx_packets.0248286299
  br label %cleanup110

cleanup110:                                       ; preds = %if.end107, %if.else104, %if.then102
  %retval.0 = phi i32 [ %budget.total_rx_packets.2, %if.end107 ], [ %total_rx_packets.0248286299, %if.else104 ], [ %total_rx_packets.0248286299, %if.then102 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_run_xdp_zc(ptr nocapture noundef readonly %adapter, ptr noundef %rx_ring, ptr noundef %xdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog1 = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 3
  %0 = ptrtoint ptr %xdp_prog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xdp_prog1, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str, i32 noundef 613) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@ixgbe_run_xdp_zc, %if.then.i.i)) #8
          to label %if.else.i.i [label %if.then.i.i], !srcloc !36

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call i64 @sched_clock() #8
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi.i.i, ptr noundef %3) #8
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats9.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !38
  %20 = tail call i32 @llvm.read_register.i32(metadata !16) #8
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
  %add.i.i.i.i = add i32 %25, ptrtoint (ptr @lockdep_recursion to i32)
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  %29 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i7.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i9.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !40
  %41 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %44, ptrtoint (ptr @hardirqs_enabled to i32)
  %45 = inttoptr i32 %add47.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !41
  %48 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i12.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool54.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !33

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %52 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 3, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #8
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %55) #8
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %13, align 8
  %inc.i.i.i = add i64 %57, 1
  store i64 %inc.i.i.i, ptr %13, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %13, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #8
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %58 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %59
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %55) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  %60 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !43
  %and.i.i.i3.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !26

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #8, !srcloc !44
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi15.i.i, ptr noundef %64) #8
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@ixgbe_run_xdp_zc, %l_yes.i.i)) #8
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !36

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %65 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rxq.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 14
  %69 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.sw.bb_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.sw.bb_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 15
  %71 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %72, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.bb_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.bb_crit_edge:       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @xdp_master_redirect(ptr noundef %xdp) #8
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %73 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %act.0.i, label %sw.default [
    i32 4, label %if.then
    i32 2, label %bpf_prog_run_xdp.exit.cleanup_crit_edge
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb_crit_edge
    i32 0, label %bpf_prog_run_xdp.exit.out_failure_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb52_crit_edge
  ], !prof !45

bpf_prog_run_xdp.exit.sw.bb52_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb52

bpf_prog_run_xdp.exit.out_failure_crit_edge:      ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_failure

bpf_prog_run_xdp.exit.sw.bb_crit_edge:            ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

bpf_prog_run_xdp.exit.cleanup_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %bpf_prog_run_xdp.exit
  %netdev = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 2
  %74 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev, align 8
  %call3 = tail call i32 @xdp_do_redirect(ptr noundef %75, ptr noundef %xdp, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.out_failure_crit_edge

if.then.out_failure_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_failure

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %bpf_prog_run_xdp.exit.sw.bb_crit_edge, %netif_is_bond_slave.exit.i.sw.bb_crit_edge, %land.lhs.true.i.sw.bb_crit_edge
  %call7 = tail call fastcc ptr @xdp_convert_buff_to_frame(ptr noundef %xdp)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %sw.bb.out_failure_crit_edge, label %if.end18, !prof !26

sw.bb.out_failure_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_failure

if.end18:                                         ; preds = %sw.bb
  %76 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i76 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i76 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu.i, align 4
  %call.i.i = tail call i32 @static_key_count(ptr noundef nonnull @ixgbe_xdp_locking_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  %rem.i.i = srem i32 %79, 64
  %retval.0.i.i77 = select i1 %cmp.i.i, i32 %rem.i.i, i32 %79
  %arrayidx.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 18, i32 %retval.0.i.i77
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ixgbe_xdp_locking_key, ptr blockaddress(@ixgbe_run_xdp_zc, %if.then29)) #8
          to label %if.end30 [label %if.then29], !srcloc !36

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %tx_lock = getelementptr inbounds %struct.ixgbe_ring, ptr %81, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end18
  %call31 = tail call i32 @ixgbe_xmit_xdp_ring(ptr noundef %81, ptr noundef nonnull %call7) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ixgbe_xdp_locking_key, ptr blockaddress(@ixgbe_run_xdp_zc, %if.then43)) #8
          to label %if.end45 [label %if.then43], !srcloc !36

if.then43:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %tx_lock44 = getelementptr inbounds %struct.ixgbe_ring, ptr %81, i32 0, i32 25
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock44) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp46 = icmp eq i32 %call31, 1
  br i1 %cmp46, label %if.end45.out_failure_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45.out_failure_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_failure

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %netdev49 = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 2
  %82 = ptrtoint ptr %netdev49 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev49, align 8
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %83, ptr noundef %1, i32 noundef %act.0.i) #8
  br label %out_failure

out_failure:                                      ; preds = %sw.default, %if.end45.out_failure_crit_edge, %sw.bb.out_failure_crit_edge, %if.then.out_failure_crit_edge, %bpf_prog_run_xdp.exit.out_failure_crit_edge
  %act.0.i79 = phi i32 [ %act.0.i, %bpf_prog_run_xdp.exit.out_failure_crit_edge ], [ %act.0.i, %sw.default ], [ 3, %if.end45.out_failure_crit_edge ], [ 3, %sw.bb.out_failure_crit_edge ], [ 4, %if.then.out_failure_crit_edge ]
  %netdev51 = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 2
  %84 = ptrtoint ptr %netdev51 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev51, align 8
  tail call fastcc void @trace_xdp_exception(ptr noundef %85, ptr noundef %1, i32 noundef %act.0.i79)
  br label %sw.bb52

sw.bb52:                                          ; preds = %out_failure, %bpf_prog_run_xdp.exit.sw.bb52_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.bb52, %if.end45.cleanup_crit_edge, %if.then.cleanup_crit_edge, %bpf_prog_run_xdp.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %if.then.cleanup_crit_edge ], [ 1, %sw.bb52 ], [ %call31, %if.end45.cleanup_crit_edge ], [ 0, %bpf_prog_run_xdp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_process_skb_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_rx_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_xdp_ring_update_tail_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !38
  %5 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  %14 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !40
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !41
  %33 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !33

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #8
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xsk_uses_need_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_set_rx_need_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_clear_rx_need_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_xsk_clean_rx_ring(ptr nocapture noundef readonly %rx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 11
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.ixgbe_ring, ptr %rx_ring, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %xdp = getelementptr %struct.ixgbe_rx_buffer, ptr %4, i32 %indvars.iv, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xdp, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xp_free(ptr noundef nonnull %6) #8
  %7 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xdp, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 4
  %10 = zext i16 %9 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgbe_clean_xdp_tx_irq(ptr nocapture noundef %q_vector, ptr noundef %tx_ring, i32 noundef %napi_budget) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.xdp_desc, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 15
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 14
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 16
  %xsk_pool = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 26
  %4 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xsk_pool, align 4
  %6 = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 6
  %desc = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 5
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not78 = icmp eq i16 %1, %3
  br i1 %cmp.not78, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx2 = getelementptr %union.ixgbe_adv_tx_desc, ptr %8, i32 %idxprom
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %arrayidx = getelementptr %struct.ixgbe_tx_buffer, ptr %10, i32 %idxprom
  %dev.i = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 4
  %count = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %xsk_frames.085 = phi i32 [ 0, %while.body.lr.ph ], [ %xsk_frames.1, %if.end21.while.body_crit_edge ]
  %tx_bi.083 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %tx_bi.1, %if.end21.while.body_crit_edge ]
  %tx_desc.082 = phi ptr [ %arrayidx2, %while.body.lr.ph ], [ %tx_desc.1, %if.end21.while.body_crit_edge ]
  %total_bytes.081 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end21.while.body_crit_edge ]
  %total_packets.080 = phi i32 [ 0, %while.body.lr.ph ], [ %add6, %if.end21.while.body_crit_edge ]
  %ntc.079 = phi i16 [ %1, %while.body.lr.ph ], [ %ntc.1, %if.end21.while.body_crit_edge ]
  %status = getelementptr inbounds %struct.anon.192, ptr %tx_desc.082, i32 0, i32 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %and = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  %bytecount = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %tx_bi.083, i32 0, i32 3
  %13 = ptrtoint ptr %bytecount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytecount, align 4
  %add = add i32 %14, %total_bytes.081
  %gso_segs = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %tx_bi.083, i32 0, i32 4
  %15 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %gso_segs, align 4
  %conv5 = zext i16 %16 to i32
  %add6 = add i32 %total_packets.080, %conv5
  %17 = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %tx_bi.083, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xdp_return_frame(ptr noundef nonnull %19) #8
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 16
  %dma.i = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %tx_bi.083, i32 0, i32 6
  %22 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %tx_bi.083, i32 0, i32 7
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 1, i32 noundef 0) #8
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %len.i, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %xsk_frames.085, 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %xsk_frames.1 = phi i32 [ %xsk_frames.085, %if.then8 ], [ %inc, %if.else ]
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %17, align 4
  %incdec.ptr = getelementptr %struct.ixgbe_tx_buffer, ptr %tx_bi.083, i32 1
  %incdec.ptr10 = getelementptr %union.ixgbe_adv_tx_desc, ptr %tx_desc.082, i32 1
  %inc11 = add i16 %ntc.079, 1
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc11, i16 %29)
  %cmp14 = icmp eq i16 %inc11, %29
  br i1 %cmp14, label %if.then18, label %if.end9.if.end21_crit_edge, !prof !26

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %6, align 8
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end9.if.end21_crit_edge
  %ntc.1 = phi i16 [ 0, %if.then18 ], [ %inc11, %if.end9.if.end21_crit_edge ]
  %tx_desc.1 = phi ptr [ %33, %if.then18 ], [ %incdec.ptr10, %if.end9.if.end21_crit_edge ]
  %tx_bi.1 = phi ptr [ %31, %if.then18 ], [ %incdec.ptr, %if.end9.if.end21_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %tx_desc.1) #8, !srcloc !31
  %cmp.not = icmp eq i16 %ntc.1, %3
  br i1 %cmp.not, label %if.end21.while.end_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ntc.0.lcssa = phi i16 [ %1, %entry.while.end_crit_edge ], [ %ntc.079, %while.body.while.end_crit_edge ], [ %3, %if.end21.while.end_crit_edge ]
  %total_packets.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %total_packets.080, %while.body.while.end_crit_edge ], [ %add6, %if.end21.while.end_crit_edge ]
  %total_bytes.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %total_bytes.081, %while.body.while.end_crit_edge ], [ %add, %if.end21.while.end_crit_edge ]
  %xsk_frames.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %xsk_frames.085, %while.body.while.end_crit_edge ], [ %xsk_frames.1, %if.end21.while.end_crit_edge ]
  %34 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %ntc.0.lcssa, ptr %next_to_clean, align 2
  %syncp = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 20
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %conv23 = zext i32 %total_bytes.0.lcssa to i64
  %stats = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 19
  %bytes = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 19, i32 1
  %35 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bytes, align 8
  %add24 = add i64 %36, %conv23
  store i64 %add24, ptr %bytes, align 8
  %conv25 = zext i32 %total_packets.0.lcssa to i64
  %37 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %stats, align 64
  %add27 = add i64 %38, %conv25
  store i64 %add27, ptr %stats, align 64
  %dep_map.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 20, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #8
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  %41 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %total_bytes29 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %total_bytes29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %total_bytes29, align 4
  %add30 = add i32 %44, %total_bytes.0.lcssa
  store i32 %add30, ptr %total_bytes29, align 4
  %total_packets32 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector, i32 0, i32 4, i32 3
  %45 = ptrtoint ptr %total_packets32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %total_packets32, align 4
  %add33 = add i32 %46, %total_packets.0.lcssa
  store i32 %add33, ptr %total_packets32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xsk_frames.0.lcssa)
  %tobool34.not = icmp eq i32 %xsk_frames.0.lcssa, 0
  br i1 %tobool34.not, label %while.end.if.end36_crit_edge, label %if.then35

while.end.if.end36_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xsk_tx_completed(ptr noundef %5, i32 noundef %xsk_frames.0.lcssa) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %while.end.if.end36_crit_edge
  %call = tail call zeroext i1 @xsk_uses_need_wakeup(ptr noundef %5) #8
  br i1 %call, label %if.then37, label %if.end36.if.end38_crit_edge

if.end36.if.end38_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xsk_set_tx_need_wakeup(ptr noundef %5) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end36.if.end38_crit_edge
  %work_limit = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %work_limit to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %work_limit, align 4
  %49 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xsk_pool, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #8
  %51 = getelementptr inbounds %struct.xdp_desc, ptr %desc.i, i32 0, i32 1
  %netdev.i = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp.not57.i = icmp eq i16 %48, 0
  %52 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  br i1 %cmp.not57.i, label %if.end38.ixgbe_xmit_zc.exit_crit_edge, label %while.body.lr.ph.i

if.end38.ixgbe_xmit_zc.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_xmit_zc.exit

while.body.lr.ph.i:                               ; preds = %if.end38
  %conv40 = zext i16 %48 to i32
  %count.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 11
  %dma_need_sync.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %50, i32 0, i32 25
  br label %while.body.i

while.body.i:                                     ; preds = %xsk_buff_raw_dma_sync_for_device.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec59.in.i = phi i32 [ %conv40, %while.body.lr.ph.i ], [ %dec59.i, %xsk_buff_raw_dma_sync_for_device.exit.i.while.body.i_crit_edge ]
  %tx_desc.058.i = phi ptr [ null, %while.body.lr.ph.i ], [ %arrayidx15.i, %xsk_buff_raw_dma_sync_for_device.exit.i.while.body.i_crit_edge ]
  %dec59.i = add nsw i32 %dec59.in.i, -1
  %53 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %next_to_clean, align 2
  %55 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %next_to_use, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %56)
  %cmp.i.i = icmp ugt i16 %54, %56
  br i1 %cmp.i.i, label %while.body.i.ixgbe_desc_unused.exit.i_crit_edge, label %cond.false.i.i

while.body.i.ixgbe_desc_unused.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_desc_unused.exit.i

cond.false.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %count.i.i, align 4
  br label %ixgbe_desc_unused.exit.i

ixgbe_desc_unused.exit.i:                         ; preds = %cond.false.i.i, %while.body.i.ixgbe_desc_unused.exit.i_crit_edge
  %cond.i.i = phi i16 [ %58, %cond.false.i.i ], [ 0, %while.body.i.ixgbe_desc_unused.exit.i_crit_edge ]
  %59 = xor i16 %56, -1
  %add.i.i = add i16 %54, %59
  %sub6.i.i = sub i16 0, %cond.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %sub6.i.i)
  %tobool.not.i = icmp eq i16 %add.i.i, %sub6.i.i
  br i1 %tobool.not.i, label %ixgbe_desc_unused.exit.i.while.end.i_crit_edge, label %if.end.i, !prof !26

ixgbe_desc_unused.exit.i.while.end.i_crit_edge:   ; preds = %ixgbe_desc_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end.i:                                         ; preds = %ixgbe_desc_unused.exit.i
  %60 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev.i, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %state.i.i, align 4
  %64 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i, label %if.end6.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call zeroext i1 @xsk_tx_peek_desc(ptr noundef %50, ptr noundef nonnull %desc.i) #8
  br i1 %call7.i, label %if.end9.i, label %if.end6.i.while.end.i_crit_edge

if.end6.i.while.end.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end9.i:                                        ; preds = %if.end6.i
  %65 = ptrtoint ptr %desc.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %desc.i, align 8
  %call.i.i = call i32 @xp_raw_get_dma(ptr noundef %50, i64 noundef %66) #8
  %67 = ptrtoint ptr %dma_need_sync.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %dma_need_sync.i.i.i, align 2, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i.i.i, label %if.end9.i.xsk_buff_raw_dma_sync_for_device.exit.i_crit_edge, label %if.end.i.i.i

if.end9.i.xsk_buff_raw_dma_sync_for_device.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xsk_buff_raw_dma_sync_for_device.exit.i

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %51, align 8
  call void @xp_dma_sync_for_device_slow(ptr noundef %50, i32 noundef %call.i.i, i32 noundef %70) #8
  br label %xsk_buff_raw_dma_sync_for_device.exit.i

xsk_buff_raw_dma_sync_for_device.exit.i:          ; preds = %if.end.i.i.i, %if.end9.i.xsk_buff_raw_dma_sync_for_device.exit.i_crit_edge
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %6, align 8
  %73 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %next_to_use, align 16
  %idxprom.i = zext i16 %74 to i32
  %75 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %51, align 8
  %bytecount.i = getelementptr %struct.ixgbe_tx_buffer, ptr %72, i32 %idxprom.i, i32 3
  %77 = ptrtoint ptr %bytecount.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %bytecount.i, align 4
  %78 = getelementptr %struct.ixgbe_tx_buffer, ptr %72, i32 %idxprom.i, i32 2
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %78, align 4
  %gso_segs.i = getelementptr %struct.ixgbe_tx_buffer, ptr %72, i32 %idxprom.i, i32 4
  %80 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %gso_segs.i, align 4
  %81 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %desc, align 4
  %83 = load i16, ptr %next_to_use, align 16
  %idxprom14.i = zext i16 %83 to i32
  %arrayidx15.i = getelementptr %union.ixgbe_adv_tx_desc, ptr %82, i32 %idxprom14.i
  %conv.i = zext i32 %call.i.i to i64
  %84 = call i64 @llvm.bswap.i64(i64 %conv.i) #8
  %85 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %arrayidx15.i, align 8
  %86 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %51, align 8
  %or17.i = or i32 %87, 724566016
  %88 = call i32 @llvm.bswap.i32(i32 %or17.i) #8
  %cmd_type_len.i = getelementptr inbounds %struct.anon.191, ptr %arrayidx15.i, i32 0, i32 1
  %89 = ptrtoint ptr %cmd_type_len.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %cmd_type_len.i, align 8
  %90 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %51, align 8
  %shl.i = shl i32 %91, 14
  %92 = call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %olinfo_status.i = getelementptr inbounds %struct.anon.191, ptr %arrayidx15.i, i32 0, i32 2
  %93 = ptrtoint ptr %olinfo_status.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %olinfo_status.i, align 4
  %94 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %next_to_use, align 16
  %inc.i = add i16 %95, 1
  %96 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %97)
  %cmp23.i = icmp eq i16 %inc.i, %97
  %spec.store.select.i = select i1 %cmp23.i, i16 0, i16 %inc.i
  %98 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %spec.store.select.i, ptr %next_to_use, align 16
  %cmp.not.i = icmp eq i32 %dec59.i, 0
  br i1 %cmp.not.i, label %xsk_buff_raw_dma_sync_for_device.exit.i.while.end.i_crit_edge, label %xsk_buff_raw_dma_sync_for_device.exit.i.while.body.i_crit_edge

xsk_buff_raw_dma_sync_for_device.exit.i.while.body.i_crit_edge: ; preds = %xsk_buff_raw_dma_sync_for_device.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

xsk_buff_raw_dma_sync_for_device.exit.i.while.end.i_crit_edge: ; preds = %xsk_buff_raw_dma_sync_for_device.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %xsk_buff_raw_dma_sync_for_device.exit.i.while.end.i_crit_edge, %if.end6.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %ixgbe_desc_unused.exit.i.while.end.i_crit_edge
  %tx_desc.0.lcssa.ph.i = phi ptr [ %arrayidx15.i, %xsk_buff_raw_dma_sync_for_device.exit.i.while.end.i_crit_edge ], [ %tx_desc.058.i, %if.end.i.while.end.i_crit_edge ], [ %tx_desc.058.i, %if.end6.i.while.end.i_crit_edge ], [ %tx_desc.058.i, %ixgbe_desc_unused.exit.i.while.end.i_crit_edge ]
  %dec.lcssa.ph.i = phi i32 [ -1, %xsk_buff_raw_dma_sync_for_device.exit.i.while.end.i_crit_edge ], [ %dec59.i, %if.end.i.while.end.i_crit_edge ], [ %dec59.i, %if.end6.i.while.end.i_crit_edge ], [ %dec59.i, %ixgbe_desc_unused.exit.i.while.end.i_crit_edge ]
  %99 = xor i1 %tobool.not.i, true
  %tobool28.not.i = icmp eq ptr %tx_desc.0.lcssa.ph.i, null
  br i1 %tobool28.not.i, label %while.end.i.ixgbe_xmit_zc.exit_crit_edge, label %if.then29.i

while.end.i.ixgbe_xmit_zc.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_xmit_zc.exit

if.then29.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ixgbe_xdp_ring_update_tail(ptr noundef %tx_ring) #8
  call void @xsk_tx_release(ptr noundef %50) #8
  br label %ixgbe_xmit_zc.exit

ixgbe_xmit_zc.exit:                               ; preds = %if.then29.i, %while.end.i.ixgbe_xmit_zc.exit_crit_edge, %if.end38.ixgbe_xmit_zc.exit_crit_edge
  %work_done.0.off076.i = phi i1 [ %99, %if.then29.i ], [ %99, %while.end.i.ixgbe_xmit_zc.exit_crit_edge ], [ true, %if.end38.ixgbe_xmit_zc.exit_crit_edge ]
  %dec.lcssa75.i = phi i32 [ %dec.lcssa.ph.i, %if.then29.i ], [ %dec.lcssa.ph.i, %while.end.i.ixgbe_xmit_zc.exit_crit_edge ], [ -1, %if.end38.ixgbe_xmit_zc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.lcssa75.i)
  %tobool31.not.i = icmp ne i32 %dec.lcssa75.i, 0
  %spec.select.i = and i1 %work_done.0.off076.i, %tobool31.not.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #8
  ret i1 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_tx_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_set_tx_need_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_xsk_wakeup(ptr noundef %dev, i32 noundef %qid, i32 %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state = getelementptr i8, ptr %dev, i32 2832
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %xdp_prog = getelementptr i8, ptr %dev, i32 2820
  %3 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %xdp_prog, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %num_xdp_queues = getelementptr i8, ptr %dev, i32 2884
  %5 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_xdp_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %qid)
  %cmp.not = icmp ugt i32 %6, %qid
  br i1 %cmp.not, label %if.end6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %arrayidx = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 18, i32 %qid
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %state7 = getelementptr inbounds %struct.ixgbe_ring, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state7, align 4
  %11 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %xsk_pool = getelementptr inbounds %struct.ixgbe_ring, ptr %8, i32 0, i32 26
  %12 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xsk_pool, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %q_vector = getelementptr inbounds %struct.ixgbe_ring, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %q_vector, align 4
  %state.i = getelementptr inbounds %struct.ixgbe_q_vector, ptr %15, i32 0, i32 5, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %if.end14
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 8
  %and.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %do.body.i
  %and2.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then16, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %or.i = or i32 %17, 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end5.i
  %18 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i, i32 %17, i32 %or.i) #8, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %17
  br i1 %cmp.not.i, label %__cmpxchg.exit.i.cleanup_crit_edge, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

__cmpxchg.exit.i.cleanup_crit_edge:               ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %q_vector, align 4
  %v_idx = getelementptr inbounds %struct.ixgbe_q_vector, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %v_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %v_idx, align 4
  %sh_prom = zext i16 %22 to i64
  %shl = shl nuw i64 1, %sh_prom
  tail call void @ixgbe_irq_rearm_queues(ptr noundef %add.ptr.i, i64 noundef %shl) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %__cmpxchg.exit.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup_crit_edge ], [ -6, %do.end.cleanup_crit_edge ], [ -6, %if.end4.cleanup_crit_edge ], [ -100, %if.end6.cleanup_crit_edge ], [ -6, %if.end11.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %__cmpxchg.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_irq_rearm_queues(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_xsk_clean_tx_ring(ptr nocapture noundef readonly %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 15
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 2
  %next_to_use = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 14
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_to_use, align 16
  %xsk_pool = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 26
  %4 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xsk_pool, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not25 = icmp eq i16 %1, %3
  br i1 %cmp.not25, label %entry.if.end12_crit_edge, label %while.body.lr.ph

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

while.body.lr.ph:                                 ; preds = %entry
  %6 = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 6
  %dev.i = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 4
  %count = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %xsk_frames.027 = phi i32 [ 0, %while.body.lr.ph ], [ %xsk_frames.1, %if.end.while.body_crit_edge ]
  %ntc.026 = phi i16 [ %1, %while.body.lr.ph ], [ %spec.store.select, %if.end.while.body_crit_edge ]
  %conv = zext i16 %ntc.026 to i32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr %struct.ixgbe_tx_buffer, ptr %8, i32 %conv, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  tail call void @xdp_return_frame(ptr noundef %13) #8
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 16
  %dma.i = getelementptr %struct.ixgbe_tx_buffer, ptr %8, i32 %conv, i32 6
  %16 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma.i, align 4
  %len.i = getelementptr %struct.ixgbe_tx_buffer, ptr %8, i32 %conv, i32 7
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 1, i32 noundef 0) #8
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %len.i, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %xsk_frames.027, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %xsk_frames.1 = phi i32 [ %xsk_frames.027, %if.then ], [ %inc, %if.else ]
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %9, align 4
  %inc3 = add i16 %ntc.026, 1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc3, i16 %23)
  %cmp6 = icmp eq i16 %inc3, %23
  %spec.store.select = select i1 %cmp6, i16 0, i16 %inc3
  %cmp.not = icmp eq i16 %spec.store.select, %3
  br i1 %cmp.not, label %while.end, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xsk_frames.1)
  %tobool10.not = icmp eq i32 %xsk_frames.1, 0
  br i1 %tobool10.not, label %while.end.if.end12_crit_edge, label %if.then11

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xsk_tx_completed(ptr noundef %5, i32 noundef %xsk_frames.1) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %while.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_txrx_ring_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_txrx_ring_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_dma_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xp_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_sync_for_cpu_slow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xdp_convert_buff_to_frame(ptr noundef %xdp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %rxq = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %0 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxq, align 4
  %mem = getelementptr inbounds %struct.xdp_rxq_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %xdp) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_hard_start = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %4 = ptrtoint ptr %data_hard_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_hard_start, align 4
  %6 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_meta.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %8 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_meta.i, align 4
  %sub.ptr.rhs.cast3.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub4.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast3.i
  %10 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i, i32 0) #8
  %sub.i = sub i32 %sub.ptr.sub.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp5.i = icmp ult i32 %sub.i, 24
  br i1 %cmp5.i, label %if.end.cleanup_crit_edge, label %if.end.i, !prof !26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %data_end.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %11 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_end.i, align 4
  %frame_sz.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %13 = ptrtoint ptr %frame_sz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_sz.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %14
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 -256
  %cmp9.i = icmp ugt ptr %12, %add.ptr8.i
  br i1 %cmp9.i, label %if.then16.i, label %if.end5, !prof !26

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xdp_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %5, align 4
  %16 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_end.i, align 4
  %18 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast23.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub24.i = sub i32 %sub.ptr.lhs.cast22.i, %sub.ptr.rhs.cast23.i
  %conv.i = trunc i32 %sub.ptr.sub24.i to i16
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %len.i, align 4
  %21 = trunc i32 %sub.ptr.sub.i to i16
  %conv26.i = add i16 %21, -24
  %headroom27.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %headroom27.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv26.i, ptr %headroom27.i, align 2
  %metasize28.i = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %metasize28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i = load i32, ptr %metasize28.i, align 4
  %bf.shl.i = shl i32 %10, 24
  %bf.clear.i = and i32 %bf.load.i, 16777215
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %metasize28.i, align 4
  %24 = ptrtoint ptr %frame_sz.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_sz.i, align 4
  %bf.value32.i = and i32 %25, 16777215
  %bf.set34.i = or i32 %bf.value32.i, %bf.shl.i
  store i32 %bf.set34.i, ptr %metasize28.i, align 4
  %mem6 = getelementptr inbounds %struct.xdp_frame, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxq, align 4
  %mem8 = getelementptr inbounds %struct.xdp_rxq_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %mem8 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %mem8, align 4
  %30 = ptrtoint ptr %mem6 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %mem6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then16.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %5, %if.end5 ], [ null, %if.then16.i ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_xmit_xdp_ring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !36

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !33

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !50
  %13 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !33

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 51, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  %31 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @static_key_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xsk_tx_peek_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_xdp_ring_update_tail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_tx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_raw_get_dma(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_sync_for_device_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !13, !15}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/filter.h", i32 613, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/net/xdp.h", i32 200, i32 3}
!7 = !{ptr @__func__.xdp_update_frame_from_buff, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2159558001}
!28 = !{i64 2159558209}
!29 = !{i64 6548911}
!30 = !{i64 2159559091}
!31 = !{i64 1001880}
!32 = !{i8 0, i8 2}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2154958632, i64 2154959120, i64 2154958669, i64 2154958725, i64 2154958759, i64 2154958783, i64 2154958824, i64 2154958845, i64 2154958873, i64 2154958907}
!35 = !{i64 2150362312}
!36 = !{i64 2149060857, i64 2149060862, i64 2149060875, i64 2149060919, i64 2149060953, i64 2149060974}
!37 = !{i64 907292, i64 907353}
!38 = !{i64 2150253914}
!39 = !{i64 2150258848}
!40 = !{i64 2150280566}
!41 = !{i64 2150285460}
!42 = !{i64 2150361987}
!43 = !{i64 910024}
!44 = !{i64 910309}
!45 = !{!"branch_weights", i32 1, i32 10000, i32 1, i32 1, i32 1, i32 1}
!46 = !{i64 2155617706}
!47 = !{i64 1013084, i64 1013105, i64 1013128, i64 1013147, i64 1013166}
!48 = !{i64 2155618111}
!49 = !{i64 2157098369}
!50 = !{i64 2157098584}
!51 = !{i64 2149618176}
!52 = !{i64 2149619212}
