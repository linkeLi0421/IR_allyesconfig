; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igb/igb_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/igb_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igb_reg_test = type { i16, i16, i16, i16, i32, i32 }
%struct.igb_stats = type { [32 x i8], i32, i32 }
%struct.atomic_t = type { i32 }
%struct.igb_adapter = type { [128 x i32], ptr, ptr, i32, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x ptr], i32, [16 x ptr], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, ptr, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i32, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, i32, [28 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x ptr], i32, i32, i16, i16, i32, ptr, i32, i32, i32, ptr, ptr, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.133], [32 x i8], ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, ptr, i32, [128 x i8], i32, i32, %struct.e1000_info, i16, %struct.hlist_head, %struct.hlist_head, i32, %struct.spinlock, [3 x i8], ptr, %struct.vf_mac_filter, ptr, [60 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.129, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.129 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igb_ring = type { ptr, ptr, ptr, ptr, %union.anon.121, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.125, [88 x i8], %struct.xdp_rxq_info }
%union.anon.121 = type { ptr }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { %struct.igb_tx_queue_stats, %struct.u64_stats_sync, %struct.u64_stats_sync }
%struct.igb_tx_queue_stats = type { i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.133 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.e1000_info = type { ptr, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }
%struct.igb_nfc_filter = type { %struct.hlist_node, %struct.igb_nfc_input, i32, i16, i16, i16 }
%struct.igb_nfc_input = type { i8, i16, i16, [6 x i8], [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.igb_q_vector = type { ptr, i32, i32, i16, i8, ptr, %struct.igb_ring_container, %struct.igb_ring_container, %struct.napi_struct, %struct.callback_head, [25 x i8], [71 x i8], [0 x %struct.igb_ring] }
%struct.igb_ring_container = type { ptr, i32, i32, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%union.e1000_adv_rx_desc = type { %struct.anon.140 }
%struct.anon.140 = type { i64, i64 }
%struct.anon.141 = type { %struct.anon.142, %struct.anon.146 }
%struct.anon.142 = type { %struct.anon.143, %union.anon.144 }
%struct.anon.143 = type { i16, i16 }
%union.anon.144 = type { i32 }
%struct.anon.146 = type { i32, i16, i16 }
%struct.igb_rx_buffer = type { i32, ptr, i16, i16 }
%struct.igb_tx_buffer = type { ptr, i32, i32, %union.anon.124, i32, i16, i16, i32, i32, i32 }
%union.anon.124 = type { ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.118, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.118 = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@igb_add_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2762, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"i210 doesn't support flow classification rules specifying only source addresses.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"igb_add_filter\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/igb/igb_ethtool.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@igb_add_filter._entry_ptr = internal global ptr @igb_add_filter._entry, section ".printk_index", align 4
@igb_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @igb_get_drvinfo, ptr @igb_get_regs_len, ptr @igb_get_regs, ptr @igb_get_wol, ptr @igb_set_wol, ptr @igb_get_msglevel, ptr @igb_set_msglevel, ptr @igb_nway_reset, ptr @igb_get_link, ptr null, ptr @igb_get_eeprom_len, ptr @igb_get_eeprom, ptr @igb_set_eeprom, ptr @igb_get_coalesce, ptr @igb_set_coalesce, ptr @igb_get_ringparam, ptr @igb_set_ringparam, ptr null, ptr @igb_get_pauseparam, ptr @igb_set_pauseparam, ptr @igb_diag_test, ptr @igb_get_strings, ptr @igb_set_phys_id, ptr @igb_get_ethtool_stats, ptr @igb_ethtool_begin, ptr @igb_ethtool_complete, ptr @igb_get_priv_flags, ptr @igb_set_priv_flags, ptr @igb_get_sset_count, ptr @igb_get_rxnfc, ptr @igb_set_rxnfc, ptr null, ptr null, ptr null, ptr @igb_get_rxfh_indir_size, ptr @igb_get_rxfh, ptr @igb_set_rxfh, ptr null, ptr null, ptr @igb_get_channels, ptr @igb_set_channels, ptr null, ptr null, ptr null, ptr @igb_get_ts_info, ptr @igb_get_module_info, ptr @igb_get_module_eeprom, ptr @igb_get_eee, ptr @igb_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @igb_get_link_ksettings, ptr @igb_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@igb_rxnfc_write_etype_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2701, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ethtool -N: etype filters are all used.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"igb_rxnfc_write_etype_filter\00", [35 x i8] zeroinitializer }, align 32
@igb_rxnfc_write_etype_filter._entry_ptr = internal global ptr @igb_rxnfc_write_etype_filter._entry, section ".printk_index", align 4
@igb_rxnfc_write_vlan_prio_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 2742, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ethtool rxnfc set vlan prio filter failed.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"igb_rxnfc_write_vlan_prio_filter\00", [63 x i8] zeroinitializer }, align 32
@igb_rxnfc_write_vlan_prio_filter._entry_ptr = internal global ptr @igb_rxnfc_write_vlan_prio_filter._entry, section ".printk_index", align 4
@igb_driver_name = external dso_local global [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@igb_diag_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 2033, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"offline testing starting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"igb_diag_test\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@igb_diag_test._entry_ptr = internal global ptr @igb_diag_test._entry, section ".printk_index", align 4
@igb_diag_test._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 2081, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"online testing starting\0A\00", [39 x i8] zeroinitializer }, align 32
@igb_diag_test._entry_ptr.14 = internal global ptr @igb_diag_test._entry.12, section ".printk_index", align 4
@reg_test_i350 = internal constant { [33 x %struct.igb_reg_test], [144 x i8] } { [33 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -65536, i32 -65536 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 -16128, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -16124, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -16120, i16 64, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -16104, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 -7936, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -7932, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -7928, i16 64, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 14360, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -7912, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -1006632961, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 16, i16 6, i32 -1006632961, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], [144 x i8] zeroinitializer }, align 32
@reg_test_i210 = internal constant { [22 x %struct.igb_reg_test], [64 x i8] } { [22 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 14360, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -1877999617, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], [64 x i8] zeroinitializer }, align 32
@reg_test_82580 = internal constant { [33 x %struct.igb_reg_test], [144 x i8] } { [33 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -16128, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -16124, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -16120, i16 64, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -16104, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -7936, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -7932, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -7928, i16 64, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 14360, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -7912, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], [144 x i8] zeroinitializer }, align 32
@reg_test_82576 = internal constant { [35 x %struct.igb_reg_test], [144 x i8] } { [35 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -16128, i16 64, i16 12, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -16124, i16 64, i16 12, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -16120, i16 64, i16 12, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 33554432 }, %struct.igb_reg_test { i16 -16088, i16 64, i16 12, i16 3, i32 0, i32 33554432 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -16104, i16 64, i16 12, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 0 }, %struct.igb_reg_test { i16 -16088, i16 64, i16 12, i16 3, i32 0, i32 0 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -7936, i16 64, i16 12, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -7932, i16 64, i16 12, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -7928, i16 64, i16 12, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], [144 x i8] zeroinitializer }, align 32
@reg_test_82575 = internal constant { [25 x %struct.igb_reg_test], [112 x i8] } { [25 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 33554432 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 0 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720894, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720894, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 376, i16 256, i16 1, i16 1, i32 -1073676289, i32 65535 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -2146435073, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], [112 x i8] zeroinitializer }, align 32
@igb_reg_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"igb_reg_test\00", [19 x i8] zeroinitializer }, align 32
@igb_reg_test._entry_ptr = internal global ptr @igb_reg_test._entry, section ".printk_index", align 4
@reg_pattern_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1232, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_pattern_test\00", [47 x i8] zeroinitializer }, align 32
@reg_pattern_test._entry_ptr = internal global ptr @reg_pattern_test._entry, section ".printk_index", align 4
@reg_set_and_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"set/check reg %04X test failed: got 0x%08X expected 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_set_and_check\00", [46 x i8] zeroinitializer }, align 32
@reg_set_and_check._entry_ptr = internal global ptr @reg_set_and_check._entry, section ".printk_index", align 4
@igb_intr_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1436, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"testing %s interrupt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"igb_intr_test\00", [18 x i8] zeroinitializer }, align 32
@igb_intr_test._entry_ptr = internal global ptr @igb_intr_test._entry, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shared\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unshared\00", [23 x i8] zeroinitializer }, align 32
@igb_loopback_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1955, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Cannot do PHY loopback test when SoL/IDER is active.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igb_loopback_test\00", [46 x i8] zeroinitializer }, align 32
@igb_loopback_test._entry_ptr = internal global ptr @igb_loopback_test._entry, section ".printk_index", align 4
@igb_loopback_test._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 1962, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Loopback test not supported on i354.\0A\00", [58 x i8] zeroinitializer }, align 32
@igb_loopback_test._entry_ptr.29 = internal global ptr @igb_loopback_test._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@igb_gstrings_test = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Eeprom test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@igb_gstrings_stats = internal constant { [42 x %struct.igb_stats], [432 x i8] } { [42 x %struct.igb_stats] [%struct.igb_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2472 }, %struct.igb_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2496 }, %struct.igb_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2504 }, %struct.igb_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2512 }, %struct.igb_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2480 }, %struct.igb_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2672 }, %struct.igb_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2488 }, %struct.igb_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2664 }, %struct.igb_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2488 }, %struct.igb_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2336 }, %struct.igb_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2264 }, %struct.igb_stats { [32 x i8] c"rx_no_buffer_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2520 }, %struct.igb_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2296 }, %struct.igb_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2312 }, %struct.igb_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2352 }, %struct.igb_stats { [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2328 }, %struct.igb_stats { [32 x i8] c"tx_abort_late_coll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2328 }, %struct.igb_stats { [32 x i8] c"tx_deferred_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2344 }, %struct.igb_stats { [32 x i8] c"tx_single_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2304 }, %struct.igb_stats { [32 x i8] c"tx_multi_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2320 }, %struct.igb_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 628 }, %struct.igb_stats { [32 x i8] c"rx_long_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2544 }, %struct.igb_stats { [32 x i8] c"rx_short_length_errors\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2528 }, %struct.igb_stats { [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2272 }, %struct.igb_stats { [32 x i8] c"tx_tcp_seg_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2680 }, %struct.igb_stats { [32 x i8] c"tx_tcp_seg_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2688 }, %struct.igb_stats { [32 x i8] c"rx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2384 }, %struct.igb_stats { [32 x i8] c"rx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2400 }, %struct.igb_stats { [32 x i8] c"tx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2392 }, %struct.igb_stats { [32 x i8] c"tx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2408 }, %struct.igb_stats { [32 x i8] c"rx_long_byte_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2504 }, %struct.igb_stats { [32 x i8] c"tx_dma_out_of_sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2864 }, %struct.igb_stats { [32 x i8] c"tx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2576 }, %struct.igb_stats { [32 x i8] c"rx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2560 }, %struct.igb_stats { [32 x i8] c"dropped_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2568 }, %struct.igb_stats { [32 x i8] c"os2bmc_rx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2872 }, %struct.igb_stats { [32 x i8] c"os2bmc_tx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2888 }, %struct.igb_stats { [32 x i8] c"os2bmc_tx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2880 }, %struct.igb_stats { [32 x i8] c"os2bmc_rx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2896 }, %struct.igb_stats { [32 x i8] c"tx_hwtstamp_timeouts\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4312 }, %struct.igb_stats { [32 x i8] c"tx_hwtstamp_skipped\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4316 }, %struct.igb_stats { [32 x i8] c"rx_hwtstamp_cleared\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4320 }], [432 x i8] zeroinitializer }, align 32
@igb_gstrings_net_stats = internal constant { [9 x %struct.igb_stats], [88 x i8] } { [9 x %struct.igb_stats] [%struct.igb_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 32 }, %struct.igb_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 40 }, %struct.igb_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 56 }, %struct.igb_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 80 }, %struct.igb_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 88 }, %struct.igb_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 104 }, %struct.igb_stats { [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 112 }, %struct.igb_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 144 }, %struct.igb_stats { [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 152 }], [88 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_queue_%u_restart\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_queue_%u_drops\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_queue_%u_csum_err\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_queue_%u_alloc_failed\00", [39 x i8] zeroinitializer }, align 32
@igb_priv_flags_strings = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"legacy-rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@igb_set_rss_hash_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 2662, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"enabling UDP RSS: fragmented packets may arrive out of order to the stack above\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igb_set_rss_hash_opt\00", [43 x i8] zeroinitializer }, align 32
@igb_set_rss_hash_opt._entry_ptr = internal global ptr @igb_set_rss_hash_opt._entry, section ".printk_index", align 4
@igb_add_ethtool_nfc_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 2916, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ethtool -N: The specified action is invalid\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igb_add_ethtool_nfc_entry\00", [38 x i8] zeroinitializer }, align 32
@igb_add_ethtool_nfc_entry._entry_ptr = internal global ptr @igb_add_ethtool_nfc_entry._entry, section ".printk_index", align 4
@igb_add_ethtool_nfc_entry._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 2922, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Location out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@igb_add_ethtool_nfc_entry._entry_ptr.45 = internal global ptr @igb_add_ethtool_nfc_entry._entry.43, section ".printk_index", align 4
@igb_add_ethtool_nfc_entry._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 2971, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ethtool: this filter is already set\0A\00", [59 x i8] zeroinitializer }, align 32
@igb_add_ethtool_nfc_entry._entry_ptr.48 = internal global ptr @igb_add_ethtool_nfc_entry._entry.46, section ".printk_index", align 4
@igb_get_module_info.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 3, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igb\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"igb_get_module_info\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"Address change required to access page 0xA2, but not supported. Please report the module type to the driver maintainers.\0A\00", [38 x i8] zeroinitializer }, align 32
@igb_set_eee._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 3128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"igb_set_eee\00", [20 x i8] zeroinitializer }, align 32
@igb_set_eee._entry_ptr = internal global ptr @igb_set_eee._entry, section ".printk_index", align 4
@igb_set_eee._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 3135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@igb_set_eee._entry_ptr.56 = internal global ptr @igb_set_eee._entry.54, section ".printk_index", align 4
@igb_set_eee._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 3142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"EEE Advertisement supports only 100Tx and/or 100T full duplex\0A\00", [33 x i8] zeroinitializer }, align 32
@igb_set_eee._entry_ptr.59 = internal global ptr @igb_set_eee._entry.57, section ".printk_index", align 4
@igb_set_eee._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.2, i32 3150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Setting EEE options are not supported with EEE disabled\0A\00", [39 x i8] zeroinitializer }, align 32
@igb_set_eee._entry_ptr.62 = internal global ptr @igb_set_eee._entry.60, section ".printk_index", align 4
@igb_set_eee._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.2, i32 3173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Problem setting EEE advertisement options\0A\00", [53 x i8] zeroinitializer }, align 32
@igb_set_eee._entry_ptr.65 = internal global ptr @igb_set_eee._entry.63, section ".printk_index", align 4
@igb_set_link_ksettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Cannot change link characteristics when SoL/IDER is active.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igb_set_link_ksettings\00", [41 x i8] zeroinitializer }, align 32
@igb_set_link_ksettings._entry_ptr = internal global ptr @igb_set_link_ksettings._entry, section ".printk_index", align 4
@igb_set_link_ksettings._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\0A\00", [45 x i8] zeroinitializer }, align 32
@igb_set_link_ksettings._entry_ptr.70 = internal global ptr @igb_set_link_ksettings._entry.68, section ".printk_index", align 4
@switch.table.igb_diag_test = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @reg_test_82576, ptr @reg_test_82580, ptr @reg_test_i350, ptr @reg_test_i350, ptr @reg_test_i210, ptr @reg_test_i210], [40 x i8] zeroinitializer }, align 32
@switch.table.igb_diag_test.71 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2147480575, i32 2146431999, i32 2146431999, i32 2146431999, i32 2146431999, i32 2146431999], [40 x i8] zeroinitializer }, align 32
@switch.table.igb_diag_test.72 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 938770141, i32 2010446845, i32 2010971861, i32 2010971861, i32 2010971861, i32 2010971861, i32 2010971861], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 16, i64 1080, i64 1082, i64 1084, i64 1088, i64 8001, i64 8005]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [7 x i64] [i64 5, i64 16, i64 1080, i64 1082, i64 1084, i64 1088, i64 8001]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.84 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.86 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 57344]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 16, i64 100, i64 1000, i64 2500]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2761, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"igb_ethtool_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3458, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2701, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2742, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2033, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2081, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [14 x i8] c"reg_test_i350\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1059, i32 28 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"reg_test_i210\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1029, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"reg_test_82580\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1102, i32 28 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"reg_test_82576\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1145, i32 28 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"reg_test_82575\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1188, i32 28 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1314, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1230, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1250, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1435, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1954, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1961, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 44, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [18 x i8] c"igb_gstrings_test\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 119, i32 19 }
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"igb_gstrings_stats\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 32, i32 31 }
@___asan_gen_.234 = private unnamed_addr constant [23 x i8] c"igb_gstrings_net_stats\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 82, i32 31 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2364, i32 24 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2365, i32 24 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2366, i32 24 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2369, i32 24 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2370, i32 24 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2371, i32 24 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2372, i32 24 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2373, i32 24 }
@___asan_gen_.261 = private unnamed_addr constant [23 x i8] c"igb_priv_flags_strings\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 128, i32 19 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2661, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2916, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2922, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2970, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3205, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3127, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3134, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3141, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3149, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3172, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 271, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private constant [48 x i8] c"../drivers/net/ethernet/intel/igb/igb_ethtool.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 286, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant [27 x i8] c"switch.table.igb_diag_test\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [30 x i8] c"switch.table.igb_diag_test.71\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [30 x i8] c"switch.table.igb_diag_test.72\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @igb_add_ethtool_nfc_entry._entry, ptr @igb_add_ethtool_nfc_entry._entry.43, ptr @igb_add_ethtool_nfc_entry._entry.46, ptr @igb_add_ethtool_nfc_entry._entry_ptr, ptr @igb_add_ethtool_nfc_entry._entry_ptr.45, ptr @igb_add_ethtool_nfc_entry._entry_ptr.48, ptr @igb_add_filter._entry, ptr @igb_add_filter._entry_ptr, ptr @igb_diag_test._entry, ptr @igb_diag_test._entry.12, ptr @igb_diag_test._entry_ptr, ptr @igb_diag_test._entry_ptr.14, ptr @igb_intr_test._entry, ptr @igb_intr_test._entry_ptr, ptr @igb_loopback_test._entry, ptr @igb_loopback_test._entry.27, ptr @igb_loopback_test._entry_ptr, ptr @igb_loopback_test._entry_ptr.29, ptr @igb_reg_test._entry, ptr @igb_reg_test._entry_ptr, ptr @igb_rxnfc_write_etype_filter._entry, ptr @igb_rxnfc_write_etype_filter._entry_ptr, ptr @igb_rxnfc_write_vlan_prio_filter._entry, ptr @igb_rxnfc_write_vlan_prio_filter._entry_ptr, ptr @igb_set_eee._entry, ptr @igb_set_eee._entry.54, ptr @igb_set_eee._entry.57, ptr @igb_set_eee._entry.60, ptr @igb_set_eee._entry.63, ptr @igb_set_eee._entry_ptr, ptr @igb_set_eee._entry_ptr.56, ptr @igb_set_eee._entry_ptr.59, ptr @igb_set_eee._entry_ptr.62, ptr @igb_set_eee._entry_ptr.65, ptr @igb_set_link_ksettings._entry, ptr @igb_set_link_ksettings._entry.68, ptr @igb_set_link_ksettings._entry_ptr, ptr @igb_set_link_ksettings._entry_ptr.70, ptr @igb_set_rss_hash_opt._entry, ptr @igb_set_rss_hash_opt._entry_ptr, ptr @reg_pattern_test._entry, ptr @reg_pattern_test._entry_ptr, ptr @reg_set_and_check._entry, ptr @reg_set_and_check._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @igb_ethtool_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @reg_test_i350, ptr @reg_test_i210, ptr @reg_test_82580, ptr @reg_test_82576, ptr @reg_test_82575, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @igb_gstrings_test, ptr @igb_gstrings_stats, ptr @igb_gstrings_net_stats, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @igb_priv_flags_strings, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @switch.table.igb_diag_test, ptr @switch.table.igb_diag_test.71, ptr @switch.table.igb_diag_test.72], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_add_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_rxnfc_write_etype_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_rxnfc_write_vlan_prio_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_diag_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_diag_test._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test_i350 to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test_i210 to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test_82580 to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test_82576 to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test_82575 to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_reg_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_pattern_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_set_and_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_intr_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_loopback_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_loopback_test._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_gstrings_test to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_gstrings_stats to i32), i32 1680, i32 2112, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_gstrings_net_stats to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_priv_flags_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_set_rss_hash_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_add_ethtool_nfc_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_add_ethtool_nfc_entry._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_add_ethtool_nfc_entry._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_set_eee._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_set_eee._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_set_eee._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_set_eee._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_set_eee._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_set_link_ksettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_set_link_ksettings._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_diag_test to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_diag_test.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_diag_test.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_add_filter(ptr noundef %adapter, ptr noundef %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 4, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %filter = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %filter, align 4
  %4 = and i8 %3, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %pdev = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 34
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #23
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %filter2 = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1
  %7 = ptrtoint ptr %filter2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %filter2, align 4
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.then7:                                         ; preds = %if.end
  %hw1.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %arrayidx.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 91, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then7.if.end7.i_crit_edge, label %for.inc.i

if.then7.if.end7.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

for.inc.i:                                        ; preds = %if.then7
  %arrayidx.1.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 91, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.1.i = icmp eq i8 %13, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.end7.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end7.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 91, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2.i, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.2.i = icmp eq i8 %15, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end7.i_crit_edge, label %igb_rxnfc_write_etype_filter.exit

for.inc.1.i.if.end7.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i

if.end7.i:                                        ; preds = %for.inc.1.i.if.end7.i_crit_edge, %for.inc.i.if.end7.i_crit_edge, %if.then7.if.end7.i_crit_edge
  %conv74.lcssa.i = phi i32 [ 0, %if.then7.if.end7.i_crit_edge ], [ 1, %for.inc.i.if.end7.i_crit_edge ], [ 2, %for.inc.1.i.if.end7.i_crit_edge ]
  %arrayidx10.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 91, i32 %conv74.lcssa.i
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx10.i, align 1
  %mul.i = shl nuw nsw i32 %conv74.lcssa.i, 2
  %add.i = or i32 %mul.i, 23728
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef %add.i) #20
  %etype12.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %etype12.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %etype12.i, align 2
  %action.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 5
  %19 = ptrtoint ptr %action.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %action.i, align 4
  %hw_addr28.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %21 = ptrtoint ptr %hw_addr28.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw_addr28.i, align 4
  %tobool29.not.i = icmp eq ptr %22, null
  br i1 %tobool29.not.i, label %if.end7.i.igb_rxnfc_write_etype_filter.exit.thread_crit_edge, label %do.body34.i, !prof !162

if.end7.i.igb_rxnfc_write_etype_filter.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_rxnfc_write_etype_filter.exit.thread

do.body34.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  %or.i = and i32 %call.i, 2079850496
  %conv16.i = zext i16 %18 to i32
  %conv20.i = zext i16 %20 to i32
  %shl.i = shl nuw i32 %conv20.i, 16
  %and21.i = and i32 %shl.i, 458752
  %and15.i = or i32 %or.i, %conv16.i
  %or18.i = or i32 %and15.i, %and21.i
  %or23.i = or i32 %or18.i, -2080374784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !163
  tail call void @arm_heavy_mb() #20
  %23 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #20
  %arrayidx40.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx40.i, i32 %23) #20, !srcloc !164
  br label %igb_rxnfc_write_etype_filter.exit.thread

igb_rxnfc_write_etype_filter.exit.thread:         ; preds = %do.body34.i, %if.end7.i.igb_rxnfc_write_etype_filter.exit.thread_crit_edge
  %24 = trunc i32 %conv74.lcssa.i to i16
  %etype_reg_index.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 3
  %25 = ptrtoint ptr %etype_reg_index.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %etype_reg_index.i, align 4
  br label %if.end11

igb_rxnfc_write_etype_filter.exit:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #22
  %pdev.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 34
  %26 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5) #23
  br label %cleanup

if.end11:                                         ; preds = %igb_rxnfc_write_etype_filter.exit.thread, %if.end.if.end11_crit_edge
  %err.0 = phi i32 [ -22, %if.end.if.end11_crit_edge ], [ 0, %igb_rxnfc_write_etype_filter.exit.thread ]
  %28 = ptrtoint ptr %filter2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %filter2, align 4
  %30 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool16.not = icmp eq i8 %30, 0
  br i1 %tobool16.not, label %if.end11.if.end26_crit_edge, label %if.then17

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26

if.then17:                                        ; preds = %if.end11
  %dst_addr = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1, i32 4
  %action = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 5
  %31 = ptrtoint ptr %action to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %action, align 4
  %conv19 = trunc i16 %32 to i8
  %call20 = tail call i32 @igb_add_mac_steering_filter(ptr noundef %adapter, ptr noundef %dst_addr, i8 noundef zeroext %conv19, i8 noundef zeroext 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %tobool23.not = icmp sgt i32 %call20, -1
  br i1 %tobool23.not, label %if.then17.if.end26_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26

if.end26:                                         ; preds = %if.then17.if.end26_crit_edge, %if.end11.if.end26_crit_edge
  %err.1 = phi i32 [ 0, %if.then17.if.end26_crit_edge ], [ %err.0, %if.end11.if.end26_crit_edge ]
  %33 = ptrtoint ptr %filter2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %filter2, align 4
  %35 = and i8 %34, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool31.not = icmp eq i8 %35, 0
  br i1 %tobool31.not, label %if.end26.if.end48_crit_edge, label %if.then32

if.end26.if.end48_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48

if.then32:                                        ; preds = %if.end26
  %src_addr = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1, i32 3
  %action35 = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 5
  %36 = ptrtoint ptr %action35 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %action35, align 4
  %conv36 = trunc i16 %37 to i8
  %call37 = tail call i32 @igb_add_mac_steering_filter(ptr noundef %adapter, ptr noundef %src_addr, i8 noundef zeroext %conv36, i8 noundef zeroext 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37)
  %tobool45.not = icmp sgt i32 %call37, -1
  br i1 %tobool45.not, label %if.then32.if.end48_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then32.if.end48_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48

if.end48:                                         ; preds = %if.then32.if.end48_crit_edge, %if.end26.if.end48_crit_edge
  %err.2 = phi i32 [ 0, %if.then32.if.end48_crit_edge ], [ %err.1, %if.end26.if.end48_crit_edge ]
  %38 = ptrtoint ptr %filter2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %filter2, align 4
  %40 = and i8 %39, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool53.not = icmp eq i8 %40, 0
  br i1 %tobool53.not, label %if.end48.cleanup_crit_edge, label %if.then54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then54:                                        ; preds = %if.end48
  %hw1.i85 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %call.i86 = tail call i32 @igb_rd32(ptr noundef %hw1.i85, i32 noundef 21936) #20
  %vlan_tci.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vlan_tci.i, align 4
  %43 = lshr i16 %42, 11
  %44 = and i16 %43, 28
  %mul.i87 = zext i16 %44 to i32
  %add.i88 = or i32 %mul.i87, 3
  %shl.i89 = shl nuw i32 1, %add.i88
  %and9.i = and i32 %shl.i89, %call.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i90 = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i90, label %if.then54.if.end.i_crit_edge, label %land.lhs.true.i

if.then54.if.end.i_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then54
  %shr4.i = lshr i32 %call.i86, %mul.i87
  %conv6.i = and i32 %shr4.i, 3
  %action.i91 = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 5
  %45 = ptrtoint ptr %action.i91 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %action.i91, align 4
  %conv11.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i, i32 %conv11.i)
  %cmp.not.i = icmp eq i32 %conv6.i, %conv11.i
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i94

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

do.end.i94:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %pdev.i92 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 34
  %47 = ptrtoint ptr %pdev.i92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev.i92, align 16
  %dev.i93 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i93, ptr noundef nonnull @.str.7) #23
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then54.if.end.i_crit_edge
  %action17.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 5
  %49 = ptrtoint ptr %action17.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %action17.i, align 4
  %hw_addr27.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %51 = ptrtoint ptr %hw_addr27.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %hw_addr27.i, align 4
  %tobool28.not.i = icmp eq ptr %52, null
  br i1 %tobool28.not.i, label %if.end.i.cleanup_crit_edge, label %do.body33.i, !prof !162

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body33.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %or.i95 = or i32 %shl.i89, %call.i86
  %conv18.i = zext i16 %50 to i32
  %shl21.i = shl i32 %conv18.i, %mul.i87
  %or22.i = or i32 %or.i95, %shl21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !165
  tail call void @arm_heavy_mb() #20
  %53 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #20
  %arrayidx.i96 = getelementptr i8, ptr %52, i32 21936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i96, i32 %53) #20, !srcloc !164
  br label %cleanup

cleanup:                                          ; preds = %do.body33.i, %if.end.i.cleanup_crit_edge, %do.end.i94, %if.end48.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %igb_rxnfc_write_etype_filter.exit, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -22, %igb_rxnfc_write_etype_filter.exit ], [ %call20, %if.then17.cleanup_crit_edge ], [ %call37, %if.then32.cleanup_crit_edge ], [ %err.2, %if.end48.cleanup_crit_edge ], [ -17, %do.end.i94 ], [ 0, %do.body33.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_add_mac_steering_filter(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_erase_filter(ptr noundef %adapter, ptr noundef %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %filter = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1
  %0 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %filter, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  %etype_reg_index = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 3
  %3 = ptrtoint ptr %etype_reg_index to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %etype_reg_index, align 4
  %hw1.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %conv.i = zext i16 %4 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 23728
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef %add.i) #20
  %hw_addr5.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %5 = ptrtoint ptr %hw_addr5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr5.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.igb_clear_etype_filter_regs.exit_crit_edge, label %do.body9.i, !prof !162

if.then.igb_clear_etype_filter_regs.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_clear_etype_filter_regs.exit

do.body9.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %and3.i = and i32 %call.i, 2079916031
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !166
  tail call void @arm_heavy_mb() #20
  %7 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #20
  %arrayidx.i = getelementptr i8, ptr %6, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %7) #20, !srcloc !164
  br label %igb_clear_etype_filter_regs.exit

igb_clear_etype_filter_regs.exit:                 ; preds = %do.body9.i, %if.then.igb_clear_etype_filter_regs.exit_crit_edge
  %arrayidx17.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 91, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx17.i, align 1
  br label %if.end

if.end:                                           ; preds = %igb_clear_etype_filter_regs.exit, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %filter, align 4
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %vlan_tci = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_tci, align 4
  %hw1.i42 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %call.i43 = tail call i32 @igb_rd32(ptr noundef %hw1.i42, i32 noundef 21936) #20
  %hw_addr11.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %14 = ptrtoint ptr %hw_addr11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr11.i, align 4
  %tobool.not.i44 = icmp eq ptr %15, null
  br i1 %tobool.not.i44, label %if.then6.if.end8_crit_edge, label %do.body15.i, !prof !162

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

do.body15.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  %16 = lshr i16 %13, 11
  %17 = and i16 %16, 28
  %mul.i45 = zext i16 %17 to i32
  %shl7.i = shl nuw nsw i32 3, %mul.i45
  %add.i46 = or i32 %mul.i45, 3
  %shl.i = shl nuw i32 1, %add.i46
  %18 = or i32 %shl.i, %shl7.i
  %19 = xor i32 %18, -1
  %and9.i = and i32 %call.i43, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !167
  tail call void @arm_heavy_mb() #20
  %20 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #20
  %arrayidx.i47 = getelementptr i8, ptr %15, i32 21936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i47, i32 %20) #20, !srcloc !164
  br label %if.end8

if.end8:                                          ; preds = %do.body15.i, %if.then6.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %21 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %filter, align 4
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13.not = icmp eq i8 %23, 0
  br i1 %tobool13.not, label %if.end8.if.end17_crit_edge, label %if.then14

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %src_addr = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1, i32 3
  %action = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 5
  %24 = ptrtoint ptr %action to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %action, align 4
  %conv16 = trunc i16 %25 to i8
  %call = tail call i32 @igb_del_mac_steering_filter(ptr noundef %adapter, ptr noundef %src_addr, i8 noundef zeroext %conv16, i8 noundef zeroext 4) #20
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end8.if.end17_crit_edge
  %26 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %filter, align 4
  %28 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool22.not = icmp eq i8 %28, 0
  br i1 %tobool22.not, label %if.end17.if.end29_crit_edge, label %if.then23

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %dst_addr = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 1, i32 4
  %action26 = getelementptr inbounds %struct.igb_nfc_filter, ptr %input, i32 0, i32 5
  %29 = ptrtoint ptr %action26 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %action26, align 4
  %conv27 = trunc i16 %30 to i8
  %call28 = tail call i32 @igb_del_mac_steering_filter(ptr noundef %adapter, ptr noundef %dst_addr, i8 noundef zeroext %conv27, i8 noundef zeroext 0) #20
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end17.if.end29_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_del_mac_steering_filter(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_write_rss_indir_tbl(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 4, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %vfs_allocated_count = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 50
  %3 = ptrtoint ptr %vfs_allocated_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vfs_allocated_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %shift.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 6, %sw.bb ], [ %spec.select, %sw.bb2 ]
  %hw_addr5 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end16.for.cond.preheader_crit_edge, %sw.epilog
  %i.036 = phi i32 [ 0, %sw.epilog ], [ %add20, %if.end16.for.cond.preheader_crit_edge ]
  %reg.034 = phi i32 [ 23552, %sw.epilog ], [ %add19, %if.end16.for.cond.preheader_crit_edge ]
  %add = or i32 %i.036, 3
  %arrayidx = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 82, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %add.1 = or i32 %i.036, 2
  %arrayidx.1 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 82, i32 %add.1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  %add.2 = or i32 %i.036, 1
  %arrayidx.2 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 82, i32 %add.2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 82, i32 %i.036
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  %13 = ptrtoint ptr %hw_addr5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw_addr5, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %for.cond.preheader.if.end16_crit_edge, label %do.body11, !prof !162

for.cond.preheader.if.end16_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

do.body11:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %conv = zext i8 %6 to i32
  %15 = shl nuw nsw i32 %conv, 16
  %conv.1 = zext i8 %8 to i32
  %16 = shl nuw nsw i32 %conv.1, 8
  %shl.2 = or i32 %15, %16
  %conv.2 = zext i8 %10 to i32
  %or.2 = or i32 %shl.2, %conv.2
  %shl.3 = shl nuw i32 %or.2, 8
  %conv.3 = zext i8 %12 to i32
  %or.3 = or i32 %shl.3, %conv.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !168
  tail call void @arm_heavy_mb() #20
  %shl14 = shl i32 %or.3, %shift.0
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl14)
  %arrayidx15 = getelementptr i8, ptr %14, i32 %reg.034
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx15, i32 %17) #20, !srcloc !164
  br label %if.end16

if.end16:                                         ; preds = %do.body11, %for.cond.preheader.if.end16_crit_edge
  %add19 = add nuw nsw i32 %reg.034, 4
  %add20 = add nuw nsw i32 %i.036, 4
  %cmp = icmp ult i32 %i.036, 124
  br i1 %cmp, label %if.end16.for.cond.preheader_crit_edge, label %while.end

if.end16.for.cond.preheader_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.preheader

while.end:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @igb_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @igb_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_get_drvinfo(ptr noundef %netdev, ptr noundef %drvinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @igb_driver_name, i32 noundef 32) #20
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %fw_version3 = getelementptr i8, ptr %netdev, i32 7080
  %call5 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %fw_version3, i32 noundef 32) #20
  %pdev = getelementptr i8, ptr %netdev, i32 3344
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call8 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #20
  %n_priv_flags = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 7
  %6 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %n_priv_flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_regs_len(ptr nocapture noundef readnone %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2960
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  %0 = call ptr @memset(ptr %p, i32 0, i32 2960)
  %revision_id = getelementptr i8, ptr %netdev, i32 4566
  %1 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %revision_id, align 2
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device_id = getelementptr i8, ptr %netdev, i32 4558
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %4 to i32
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or3, ptr %version, align 4
  %call4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 0) #20
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %p, align 4
  %call5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 8) #20
  %arrayidx6 = getelementptr i32, ptr %p, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call5, ptr %arrayidx6, align 4
  %call7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 24) #20
  %arrayidx8 = getelementptr i32, ptr %p, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call7, ptr %arrayidx8, align 4
  %call9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 32) #20
  %arrayidx10 = getelementptr i32, ptr %p, i32 3
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call9, ptr %arrayidx10, align 4
  %call11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 36) #20
  %arrayidx12 = getelementptr i32, ptr %p, i32 4
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call11, ptr %arrayidx12, align 4
  %call13 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 52) #20
  %arrayidx14 = getelementptr i32, ptr %p, i32 5
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call13, ptr %arrayidx14, align 4
  %call15 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 56) #20
  %arrayidx16 = getelementptr i32, ptr %p, i32 6
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call15, ptr %arrayidx16, align 4
  %call17 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 3584) #20
  %arrayidx18 = getelementptr i32, ptr %p, i32 7
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call17, ptr %arrayidx18, align 4
  %call19 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 4096) #20
  %arrayidx20 = getelementptr i32, ptr %p, i32 8
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call19, ptr %arrayidx20, align 4
  %call21 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 4104) #20
  %arrayidx22 = getelementptr i32, ptr %p, i32 9
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call21, ptr %arrayidx22, align 4
  %call23 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 4168) #20
  %arrayidx24 = getelementptr i32, ptr %p, i32 10
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call23, ptr %arrayidx24, align 4
  %call25 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 4172) #20
  %arrayidx26 = getelementptr i32, ptr %p, i32 11
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call25, ptr %arrayidx26, align 4
  %call27 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 16) #20
  %arrayidx28 = getelementptr i32, ptr %p, i32 12
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call27, ptr %arrayidx28, align 4
  %call29 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5408) #20
  %arrayidx30 = getelementptr i32, ptr %p, i32 13
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call29, ptr %arrayidx30, align 4
  %call31 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5408) #20
  %arrayidx32 = getelementptr i32, ptr %p, i32 14
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call31, ptr %arrayidx32, align 4
  %call33 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5412) #20
  %arrayidx34 = getelementptr i32, ptr %p, i32 15
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call33, ptr %arrayidx34, align 4
  %call35 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5416) #20
  %arrayidx36 = getelementptr i32, ptr %p, i32 16
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call35, ptr %arrayidx36, align 4
  %call37 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5420) #20
  %arrayidx38 = getelementptr i32, ptr %p, i32 17
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call37, ptr %arrayidx38, align 4
  %call39 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5424) #20
  %arrayidx40 = getelementptr i32, ptr %p, i32 18
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call39, ptr %arrayidx40, align 4
  %call41 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 200) #20
  %arrayidx42 = getelementptr i32, ptr %p, i32 19
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call41, ptr %arrayidx42, align 4
  %call43 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 200) #20
  %arrayidx44 = getelementptr i32, ptr %p, i32 20
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call43, ptr %arrayidx44, align 4
  %call45 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 208) #20
  %arrayidx46 = getelementptr i32, ptr %p, i32 21
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call45, ptr %arrayidx46, align 4
  %call47 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 216) #20
  %arrayidx48 = getelementptr i32, ptr %p, i32 22
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call47, ptr %arrayidx48, align 4
  %call49 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 16640) #20
  %arrayidx50 = getelementptr i32, ptr %p, i32 23
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call49, ptr %arrayidx50, align 4
  %call51 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 224) #20
  %arrayidx52 = getelementptr i32, ptr %p, i32 24
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call51, ptr %arrayidx52, align 4
  %call53 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23232) #20
  %arrayidx54 = getelementptr i32, ptr %p, i32 25
  %31 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call53, ptr %arrayidx54, align 4
  %call55 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 40) #20
  %arrayidx56 = getelementptr i32, ptr %p, i32 26
  %32 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call55, ptr %arrayidx56, align 4
  %call57 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 44) #20
  %arrayidx58 = getelementptr i32, ptr %p, i32 27
  %33 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call57, ptr %arrayidx58, align 4
  %call59 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 368) #20
  %arrayidx60 = getelementptr i32, ptr %p, i32 28
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call59, ptr %arrayidx60, align 4
  %call61 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 8544) #20
  %arrayidx62 = getelementptr i32, ptr %p, i32 29
  %35 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call61, ptr %arrayidx62, align 4
  %call63 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 8552) #20
  %arrayidx64 = getelementptr i32, ptr %p, i32 30
  %36 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call63, ptr %arrayidx64, align 4
  %call65 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 9312) #20
  %arrayidx66 = getelementptr i32, ptr %p, i32 31
  %37 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call65, ptr %arrayidx66, align 4
  %call67 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 256) #20
  %arrayidx68 = getelementptr i32, ptr %p, i32 32
  %38 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call67, ptr %arrayidx68, align 4
  %call69 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 20480) #20
  %arrayidx70 = getelementptr i32, ptr %p, i32 33
  %39 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call69, ptr %arrayidx70, align 4
  %call71 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 20484) #20
  %arrayidx72 = getelementptr i32, ptr %p, i32 34
  %40 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call71, ptr %arrayidx72, align 4
  %call73 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 20488) #20
  %arrayidx74 = getelementptr i32, ptr %p, i32 35
  %41 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call73, ptr %arrayidx74, align 4
  %call75 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22552) #20
  %arrayidx76 = getelementptr i32, ptr %p, i32 36
  %42 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call75, ptr %arrayidx76, align 4
  %call77 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22556) #20
  %arrayidx78 = getelementptr i32, ptr %p, i32 37
  %43 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call77, ptr %arrayidx78, align 4
  %call79 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 1024) #20
  %arrayidx80 = getelementptr i32, ptr %p, i32 38
  %44 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call79, ptr %arrayidx80, align 4
  %call81 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 1028) #20
  %arrayidx82 = getelementptr i32, ptr %p, i32 39
  %45 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call81, ptr %arrayidx82, align 4
  %call83 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 1040) #20
  %arrayidx84 = getelementptr i32, ptr %p, i32 40
  %46 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call83, ptr %arrayidx84, align 4
  %call85 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 13712) #20
  %arrayidx86 = getelementptr i32, ptr %p, i32 41
  %47 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call85, ptr %arrayidx86, align 4
  %call87 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22528) #20
  %arrayidx88 = getelementptr i32, ptr %p, i32 42
  %48 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call87, ptr %arrayidx88, align 4
  %call89 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22536) #20
  %arrayidx90 = getelementptr i32, ptr %p, i32 43
  %49 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call89, ptr %arrayidx90, align 4
  %call91 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22544) #20
  %arrayidx92 = getelementptr i32, ptr %p, i32 44
  %50 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call91, ptr %arrayidx92, align 4
  %call93 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22584) #20
  %arrayidx94 = getelementptr i32, ptr %p, i32 45
  %51 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call93, ptr %arrayidx94, align 4
  %call95 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22784) #20
  %arrayidx96 = getelementptr i32, ptr %p, i32 46
  %52 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call95, ptr %arrayidx96, align 4
  %call97 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 16896) #20
  %arrayidx98 = getelementptr i32, ptr %p, i32 47
  %53 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call97, ptr %arrayidx98, align 4
  %call99 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 16904) #20
  %arrayidx100 = getelementptr i32, ptr %p, i32 48
  %54 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call99, ptr %arrayidx100, align 4
  %call101 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 16908) #20
  %arrayidx102 = getelementptr i32, ptr %p, i32 49
  %55 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call101, ptr %arrayidx102, align 4
  %call103 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 16920) #20
  %arrayidx104 = getelementptr i32, ptr %p, i32 50
  %56 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call103, ptr %arrayidx104, align 4
  %call105 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 16924) #20
  %arrayidx106 = getelementptr i32, ptr %p, i32 51
  %57 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call105, ptr %arrayidx106, align 4
  %call107 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 16928) #20
  %arrayidx108 = getelementptr i32, ptr %p, i32 52
  %58 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call107, ptr %arrayidx108, align 4
  %call109 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 16932) #20
  %arrayidx110 = getelementptr i32, ptr %p, i32 53
  %59 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call109, ptr %arrayidx110, align 4
  %stats = getelementptr i8, ptr %netdev, i32 4568
  %60 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %stats, align 8
  %conv111 = trunc i64 %61 to i32
  %arrayidx112 = getelementptr i32, ptr %p, i32 54
  %62 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv111, ptr %arrayidx112, align 4
  %algnerrc = getelementptr i8, ptr %netdev, i32 4576
  %63 = ptrtoint ptr %algnerrc to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %algnerrc, align 8
  %conv114 = trunc i64 %64 to i32
  %arrayidx115 = getelementptr i32, ptr %p, i32 55
  %65 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv114, ptr %arrayidx115, align 4
  %symerrs = getelementptr i8, ptr %netdev, i32 4584
  %66 = ptrtoint ptr %symerrs to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %symerrs, align 8
  %conv117 = trunc i64 %67 to i32
  %arrayidx118 = getelementptr i32, ptr %p, i32 56
  %68 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv117, ptr %arrayidx118, align 4
  %rxerrc = getelementptr i8, ptr %netdev, i32 4592
  %69 = ptrtoint ptr %rxerrc to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %rxerrc, align 8
  %conv120 = trunc i64 %70 to i32
  %arrayidx121 = getelementptr i32, ptr %p, i32 57
  %71 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv120, ptr %arrayidx121, align 4
  %mpc = getelementptr i8, ptr %netdev, i32 4600
  %72 = ptrtoint ptr %mpc to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %mpc, align 8
  %conv123 = trunc i64 %73 to i32
  %arrayidx124 = getelementptr i32, ptr %p, i32 58
  %74 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv123, ptr %arrayidx124, align 4
  %scc = getelementptr i8, ptr %netdev, i32 4608
  %75 = ptrtoint ptr %scc to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %scc, align 8
  %conv126 = trunc i64 %76 to i32
  %arrayidx127 = getelementptr i32, ptr %p, i32 59
  %77 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv126, ptr %arrayidx127, align 4
  %ecol = getelementptr i8, ptr %netdev, i32 4616
  %78 = ptrtoint ptr %ecol to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ecol, align 8
  %conv129 = trunc i64 %79 to i32
  %arrayidx130 = getelementptr i32, ptr %p, i32 60
  %80 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv129, ptr %arrayidx130, align 4
  %mcc = getelementptr i8, ptr %netdev, i32 4624
  %81 = ptrtoint ptr %mcc to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %mcc, align 8
  %conv132 = trunc i64 %82 to i32
  %arrayidx133 = getelementptr i32, ptr %p, i32 61
  %83 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv132, ptr %arrayidx133, align 4
  %latecol = getelementptr i8, ptr %netdev, i32 4632
  %84 = ptrtoint ptr %latecol to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %latecol, align 8
  %conv135 = trunc i64 %85 to i32
  %arrayidx136 = getelementptr i32, ptr %p, i32 62
  %86 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv135, ptr %arrayidx136, align 4
  %colc = getelementptr i8, ptr %netdev, i32 4640
  %87 = ptrtoint ptr %colc to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %colc, align 8
  %conv138 = trunc i64 %88 to i32
  %arrayidx139 = getelementptr i32, ptr %p, i32 63
  %89 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv138, ptr %arrayidx139, align 4
  %dc = getelementptr i8, ptr %netdev, i32 4648
  %90 = ptrtoint ptr %dc to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %dc, align 8
  %conv141 = trunc i64 %91 to i32
  %arrayidx142 = getelementptr i32, ptr %p, i32 64
  %92 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv141, ptr %arrayidx142, align 4
  %tncrs = getelementptr i8, ptr %netdev, i32 4656
  %93 = ptrtoint ptr %tncrs to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %tncrs, align 8
  %conv144 = trunc i64 %94 to i32
  %arrayidx145 = getelementptr i32, ptr %p, i32 65
  %95 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv144, ptr %arrayidx145, align 4
  %sec = getelementptr i8, ptr %netdev, i32 4664
  %96 = ptrtoint ptr %sec to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %sec, align 8
  %conv147 = trunc i64 %97 to i32
  %arrayidx148 = getelementptr i32, ptr %p, i32 66
  %98 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv147, ptr %arrayidx148, align 4
  %htdpmc = getelementptr i8, ptr %netdev, i32 5080
  %99 = ptrtoint ptr %htdpmc to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %htdpmc, align 8
  %conv150 = trunc i64 %100 to i32
  %arrayidx151 = getelementptr i32, ptr %p, i32 67
  %101 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv150, ptr %arrayidx151, align 4
  %rlec = getelementptr i8, ptr %netdev, i32 4680
  %102 = ptrtoint ptr %rlec to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %rlec, align 8
  %conv153 = trunc i64 %103 to i32
  %arrayidx154 = getelementptr i32, ptr %p, i32 68
  %104 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv153, ptr %arrayidx154, align 4
  %xonrxc = getelementptr i8, ptr %netdev, i32 4688
  %105 = ptrtoint ptr %xonrxc to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %xonrxc, align 8
  %conv156 = trunc i64 %106 to i32
  %arrayidx157 = getelementptr i32, ptr %p, i32 69
  %107 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv156, ptr %arrayidx157, align 4
  %xontxc = getelementptr i8, ptr %netdev, i32 4696
  %108 = ptrtoint ptr %xontxc to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %xontxc, align 8
  %conv159 = trunc i64 %109 to i32
  %arrayidx160 = getelementptr i32, ptr %p, i32 70
  %110 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv159, ptr %arrayidx160, align 4
  %xoffrxc = getelementptr i8, ptr %netdev, i32 4704
  %111 = ptrtoint ptr %xoffrxc to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %xoffrxc, align 8
  %conv162 = trunc i64 %112 to i32
  %arrayidx163 = getelementptr i32, ptr %p, i32 71
  %113 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv162, ptr %arrayidx163, align 4
  %xofftxc = getelementptr i8, ptr %netdev, i32 4712
  %114 = ptrtoint ptr %xofftxc to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %xofftxc, align 8
  %conv165 = trunc i64 %115 to i32
  %arrayidx166 = getelementptr i32, ptr %p, i32 72
  %116 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv165, ptr %arrayidx166, align 4
  %fcruc = getelementptr i8, ptr %netdev, i32 4720
  %117 = ptrtoint ptr %fcruc to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %fcruc, align 8
  %conv168 = trunc i64 %118 to i32
  %arrayidx169 = getelementptr i32, ptr %p, i32 73
  %119 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv168, ptr %arrayidx169, align 4
  %prc64 = getelementptr i8, ptr %netdev, i32 4728
  %120 = ptrtoint ptr %prc64 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %prc64, align 8
  %conv171 = trunc i64 %121 to i32
  %arrayidx172 = getelementptr i32, ptr %p, i32 74
  %122 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv171, ptr %arrayidx172, align 4
  %prc127 = getelementptr i8, ptr %netdev, i32 4736
  %123 = ptrtoint ptr %prc127 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %prc127, align 8
  %conv174 = trunc i64 %124 to i32
  %arrayidx175 = getelementptr i32, ptr %p, i32 75
  %125 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv174, ptr %arrayidx175, align 4
  %prc255 = getelementptr i8, ptr %netdev, i32 4744
  %126 = ptrtoint ptr %prc255 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %prc255, align 8
  %conv177 = trunc i64 %127 to i32
  %arrayidx178 = getelementptr i32, ptr %p, i32 76
  %128 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv177, ptr %arrayidx178, align 4
  %prc511 = getelementptr i8, ptr %netdev, i32 4752
  %129 = ptrtoint ptr %prc511 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %prc511, align 8
  %conv180 = trunc i64 %130 to i32
  %arrayidx181 = getelementptr i32, ptr %p, i32 77
  %131 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv180, ptr %arrayidx181, align 4
  %prc1023 = getelementptr i8, ptr %netdev, i32 4760
  %132 = ptrtoint ptr %prc1023 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %prc1023, align 8
  %conv183 = trunc i64 %133 to i32
  %arrayidx184 = getelementptr i32, ptr %p, i32 78
  %134 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv183, ptr %arrayidx184, align 4
  %prc1522 = getelementptr i8, ptr %netdev, i32 4768
  %135 = ptrtoint ptr %prc1522 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %prc1522, align 8
  %conv186 = trunc i64 %136 to i32
  %arrayidx187 = getelementptr i32, ptr %p, i32 79
  %137 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv186, ptr %arrayidx187, align 4
  %gprc = getelementptr i8, ptr %netdev, i32 4776
  %138 = ptrtoint ptr %gprc to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %gprc, align 8
  %conv189 = trunc i64 %139 to i32
  %arrayidx190 = getelementptr i32, ptr %p, i32 80
  %140 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv189, ptr %arrayidx190, align 4
  %bprc = getelementptr i8, ptr %netdev, i32 4784
  %141 = ptrtoint ptr %bprc to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %bprc, align 8
  %conv192 = trunc i64 %142 to i32
  %arrayidx193 = getelementptr i32, ptr %p, i32 81
  %143 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv192, ptr %arrayidx193, align 4
  %mprc = getelementptr i8, ptr %netdev, i32 4792
  %144 = ptrtoint ptr %mprc to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %mprc, align 8
  %conv195 = trunc i64 %145 to i32
  %arrayidx196 = getelementptr i32, ptr %p, i32 82
  %146 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv195, ptr %arrayidx196, align 4
  %gptc = getelementptr i8, ptr %netdev, i32 4800
  %147 = ptrtoint ptr %gptc to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %gptc, align 8
  %conv198 = trunc i64 %148 to i32
  %arrayidx199 = getelementptr i32, ptr %p, i32 83
  %149 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv198, ptr %arrayidx199, align 4
  %gorc = getelementptr i8, ptr %netdev, i32 4808
  %150 = ptrtoint ptr %gorc to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %gorc, align 8
  %conv201 = trunc i64 %151 to i32
  %arrayidx202 = getelementptr i32, ptr %p, i32 84
  %152 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv201, ptr %arrayidx202, align 4
  %gotc = getelementptr i8, ptr %netdev, i32 4816
  %153 = ptrtoint ptr %gotc to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %gotc, align 8
  %conv204 = trunc i64 %154 to i32
  %arrayidx205 = getelementptr i32, ptr %p, i32 86
  %155 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv204, ptr %arrayidx205, align 4
  %rnbc = getelementptr i8, ptr %netdev, i32 4824
  %156 = ptrtoint ptr %rnbc to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %rnbc, align 8
  %conv207 = trunc i64 %157 to i32
  %arrayidx208 = getelementptr i32, ptr %p, i32 88
  %158 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %conv207, ptr %arrayidx208, align 4
  %ruc = getelementptr i8, ptr %netdev, i32 4832
  %159 = ptrtoint ptr %ruc to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %ruc, align 8
  %conv210 = trunc i64 %160 to i32
  %arrayidx211 = getelementptr i32, ptr %p, i32 89
  %161 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %conv210, ptr %arrayidx211, align 4
  %rfc = getelementptr i8, ptr %netdev, i32 4840
  %162 = ptrtoint ptr %rfc to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rfc, align 8
  %conv213 = trunc i64 %163 to i32
  %arrayidx214 = getelementptr i32, ptr %p, i32 90
  %164 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %conv213, ptr %arrayidx214, align 4
  %roc = getelementptr i8, ptr %netdev, i32 4848
  %165 = ptrtoint ptr %roc to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %roc, align 8
  %conv216 = trunc i64 %166 to i32
  %arrayidx217 = getelementptr i32, ptr %p, i32 91
  %167 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv216, ptr %arrayidx217, align 4
  %rjc = getelementptr i8, ptr %netdev, i32 4856
  %168 = ptrtoint ptr %rjc to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %rjc, align 8
  %conv219 = trunc i64 %169 to i32
  %arrayidx220 = getelementptr i32, ptr %p, i32 92
  %170 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv219, ptr %arrayidx220, align 4
  %mgprc = getelementptr i8, ptr %netdev, i32 4864
  %171 = ptrtoint ptr %mgprc to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %mgprc, align 8
  %conv222 = trunc i64 %172 to i32
  %arrayidx223 = getelementptr i32, ptr %p, i32 93
  %173 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %conv222, ptr %arrayidx223, align 4
  %mgpdc = getelementptr i8, ptr %netdev, i32 4872
  %174 = ptrtoint ptr %mgpdc to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %mgpdc, align 8
  %conv225 = trunc i64 %175 to i32
  %arrayidx226 = getelementptr i32, ptr %p, i32 94
  %176 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %conv225, ptr %arrayidx226, align 4
  %mgptc = getelementptr i8, ptr %netdev, i32 4880
  %177 = ptrtoint ptr %mgptc to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %mgptc, align 8
  %conv228 = trunc i64 %178 to i32
  %arrayidx229 = getelementptr i32, ptr %p, i32 95
  %179 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv228, ptr %arrayidx229, align 4
  %tor = getelementptr i8, ptr %netdev, i32 4888
  %180 = ptrtoint ptr %tor to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %tor, align 8
  %conv231 = trunc i64 %181 to i32
  %arrayidx232 = getelementptr i32, ptr %p, i32 96
  %182 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %conv231, ptr %arrayidx232, align 4
  %tot = getelementptr i8, ptr %netdev, i32 4896
  %183 = ptrtoint ptr %tot to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %tot, align 8
  %conv234 = trunc i64 %184 to i32
  %arrayidx235 = getelementptr i32, ptr %p, i32 98
  %185 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %conv234, ptr %arrayidx235, align 4
  %tpr = getelementptr i8, ptr %netdev, i32 4904
  %186 = ptrtoint ptr %tpr to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %tpr, align 8
  %conv237 = trunc i64 %187 to i32
  %arrayidx238 = getelementptr i32, ptr %p, i32 100
  %188 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %conv237, ptr %arrayidx238, align 4
  %tpt = getelementptr i8, ptr %netdev, i32 4912
  %189 = ptrtoint ptr %tpt to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %tpt, align 8
  %conv240 = trunc i64 %190 to i32
  %arrayidx241 = getelementptr i32, ptr %p, i32 101
  %191 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv240, ptr %arrayidx241, align 4
  %ptc64 = getelementptr i8, ptr %netdev, i32 4920
  %192 = ptrtoint ptr %ptc64 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %ptc64, align 8
  %conv243 = trunc i64 %193 to i32
  %arrayidx244 = getelementptr i32, ptr %p, i32 102
  %194 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv243, ptr %arrayidx244, align 4
  %ptc127 = getelementptr i8, ptr %netdev, i32 4928
  %195 = ptrtoint ptr %ptc127 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %ptc127, align 8
  %conv246 = trunc i64 %196 to i32
  %arrayidx247 = getelementptr i32, ptr %p, i32 103
  %197 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %conv246, ptr %arrayidx247, align 4
  %ptc255 = getelementptr i8, ptr %netdev, i32 4936
  %198 = ptrtoint ptr %ptc255 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %ptc255, align 8
  %conv249 = trunc i64 %199 to i32
  %arrayidx250 = getelementptr i32, ptr %p, i32 104
  %200 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %conv249, ptr %arrayidx250, align 4
  %ptc511 = getelementptr i8, ptr %netdev, i32 4944
  %201 = ptrtoint ptr %ptc511 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %ptc511, align 8
  %conv252 = trunc i64 %202 to i32
  %arrayidx253 = getelementptr i32, ptr %p, i32 105
  %203 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %conv252, ptr %arrayidx253, align 4
  %ptc1023 = getelementptr i8, ptr %netdev, i32 4952
  %204 = ptrtoint ptr %ptc1023 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %ptc1023, align 8
  %conv255 = trunc i64 %205 to i32
  %arrayidx256 = getelementptr i32, ptr %p, i32 106
  %206 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %conv255, ptr %arrayidx256, align 4
  %ptc1522 = getelementptr i8, ptr %netdev, i32 4960
  %207 = ptrtoint ptr %ptc1522 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %ptc1522, align 8
  %conv258 = trunc i64 %208 to i32
  %arrayidx259 = getelementptr i32, ptr %p, i32 107
  %209 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv258, ptr %arrayidx259, align 4
  %mptc = getelementptr i8, ptr %netdev, i32 4968
  %210 = ptrtoint ptr %mptc to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %mptc, align 8
  %conv261 = trunc i64 %211 to i32
  %arrayidx262 = getelementptr i32, ptr %p, i32 108
  %212 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %conv261, ptr %arrayidx262, align 4
  %bptc = getelementptr i8, ptr %netdev, i32 4976
  %213 = ptrtoint ptr %bptc to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %bptc, align 8
  %conv264 = trunc i64 %214 to i32
  %arrayidx265 = getelementptr i32, ptr %p, i32 109
  %215 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %conv264, ptr %arrayidx265, align 4
  %tsctc = getelementptr i8, ptr %netdev, i32 4984
  %216 = ptrtoint ptr %tsctc to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %tsctc, align 8
  %conv267 = trunc i64 %217 to i32
  %arrayidx268 = getelementptr i32, ptr %p, i32 110
  %218 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %conv267, ptr %arrayidx268, align 4
  %iac = getelementptr i8, ptr %netdev, i32 5000
  %219 = ptrtoint ptr %iac to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %iac, align 8
  %conv270 = trunc i64 %220 to i32
  %arrayidx271 = getelementptr i32, ptr %p, i32 111
  %221 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %conv270, ptr %arrayidx271, align 4
  %rpthc = getelementptr i8, ptr %netdev, i32 5104
  %222 = ptrtoint ptr %rpthc to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %rpthc, align 8
  %conv273 = trunc i64 %223 to i32
  %arrayidx274 = getelementptr i32, ptr %p, i32 112
  %224 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %conv273, ptr %arrayidx274, align 4
  %hgptc = getelementptr i8, ptr %netdev, i32 5112
  %225 = ptrtoint ptr %hgptc to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %hgptc, align 8
  %conv276 = trunc i64 %226 to i32
  %arrayidx277 = getelementptr i32, ptr %p, i32 113
  %227 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %conv276, ptr %arrayidx277, align 4
  %hgorc = getelementptr i8, ptr %netdev, i32 5128
  %228 = ptrtoint ptr %hgorc to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %hgorc, align 8
  %conv279 = trunc i64 %229 to i32
  %arrayidx280 = getelementptr i32, ptr %p, i32 114
  %230 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %conv279, ptr %arrayidx280, align 4
  %hgotc = getelementptr i8, ptr %netdev, i32 5136
  %231 = ptrtoint ptr %hgotc to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %hgotc, align 8
  %conv282 = trunc i64 %232 to i32
  %arrayidx283 = getelementptr i32, ptr %p, i32 116
  %233 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %conv282, ptr %arrayidx283, align 4
  %lenerrs = getelementptr i8, ptr %netdev, i32 5144
  %234 = ptrtoint ptr %lenerrs to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %lenerrs, align 8
  %conv285 = trunc i64 %235 to i32
  %arrayidx286 = getelementptr i32, ptr %p, i32 118
  %236 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %conv285, ptr %arrayidx286, align 4
  %scvpc = getelementptr i8, ptr %netdev, i32 5152
  %237 = ptrtoint ptr %scvpc to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %scvpc, align 8
  %conv288 = trunc i64 %238 to i32
  %arrayidx289 = getelementptr i32, ptr %p, i32 119
  %239 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %conv288, ptr %arrayidx289, align 4
  %hrmpc = getelementptr i8, ptr %netdev, i32 5160
  %240 = ptrtoint ptr %hrmpc to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %hrmpc, align 8
  %conv291 = trunc i64 %241 to i32
  %arrayidx292 = getelementptr i32, ptr %p, i32 120
  %242 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %conv291, ptr %arrayidx292, align 4
  %call302 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10252) #20
  %arrayidx305 = getelementptr i32, ptr %p, i32 121
  %243 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %call302, ptr %arrayidx305, align 4
  %call302.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10508) #20
  %arrayidx305.1 = getelementptr i32, ptr %p, i32 122
  %244 = ptrtoint ptr %arrayidx305.1 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %call302.1, ptr %arrayidx305.1, align 4
  %call302.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10764) #20
  %arrayidx305.2 = getelementptr i32, ptr %p, i32 123
  %245 = ptrtoint ptr %arrayidx305.2 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %call302.2, ptr %arrayidx305.2, align 4
  %call302.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 11020) #20
  %arrayidx305.3 = getelementptr i32, ptr %p, i32 124
  %246 = ptrtoint ptr %arrayidx305.3 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %call302.3, ptr %arrayidx305.3, align 4
  %call314 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21632) #20
  %arrayidx317 = getelementptr i32, ptr %p, i32 125
  %247 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %call314, ptr %arrayidx317, align 4
  %call314.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21636) #20
  %arrayidx317.1 = getelementptr i32, ptr %p, i32 126
  %248 = ptrtoint ptr %arrayidx317.1 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %call314.1, ptr %arrayidx317.1, align 4
  %call314.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21640) #20
  %arrayidx317.2 = getelementptr i32, ptr %p, i32 127
  %249 = ptrtoint ptr %arrayidx317.2 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %call314.2, ptr %arrayidx317.2, align 4
  %call314.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21644) #20
  %arrayidx317.3 = getelementptr i32, ptr %p, i32 128
  %250 = ptrtoint ptr %arrayidx317.3 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %call314.3, ptr %arrayidx317.3, align 4
  %call339 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10240) #20
  %arrayidx342 = getelementptr i32, ptr %p, i32 129
  %251 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %call339, ptr %arrayidx342, align 4
  %call339.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10496) #20
  %arrayidx342.1 = getelementptr i32, ptr %p, i32 130
  %252 = ptrtoint ptr %arrayidx342.1 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %call339.1, ptr %arrayidx342.1, align 4
  %call339.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10752) #20
  %arrayidx342.2 = getelementptr i32, ptr %p, i32 131
  %253 = ptrtoint ptr %arrayidx342.2 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %call339.2, ptr %arrayidx342.2, align 4
  %call339.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 11008) #20
  %arrayidx342.3 = getelementptr i32, ptr %p, i32 132
  %254 = ptrtoint ptr %arrayidx342.3 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %call339.3, ptr %arrayidx342.3, align 4
  %call364 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10244) #20
  %arrayidx367 = getelementptr i32, ptr %p, i32 133
  %255 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %call364, ptr %arrayidx367, align 4
  %call364.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10500) #20
  %arrayidx367.1 = getelementptr i32, ptr %p, i32 134
  %256 = ptrtoint ptr %arrayidx367.1 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %call364.1, ptr %arrayidx367.1, align 4
  %call364.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10756) #20
  %arrayidx367.2 = getelementptr i32, ptr %p, i32 135
  %257 = ptrtoint ptr %arrayidx367.2 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %call364.2, ptr %arrayidx367.2, align 4
  %call364.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 11012) #20
  %arrayidx367.3 = getelementptr i32, ptr %p, i32 136
  %258 = ptrtoint ptr %arrayidx367.3 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %call364.3, ptr %arrayidx367.3, align 4
  %call389 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10248) #20
  %arrayidx392 = getelementptr i32, ptr %p, i32 137
  %259 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %call389, ptr %arrayidx392, align 4
  %call389.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10504) #20
  %arrayidx392.1 = getelementptr i32, ptr %p, i32 138
  %260 = ptrtoint ptr %arrayidx392.1 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %call389.1, ptr %arrayidx392.1, align 4
  %call389.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10760) #20
  %arrayidx392.2 = getelementptr i32, ptr %p, i32 139
  %261 = ptrtoint ptr %arrayidx392.2 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %call389.2, ptr %arrayidx392.2, align 4
  %call389.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 11016) #20
  %arrayidx392.3 = getelementptr i32, ptr %p, i32 140
  %262 = ptrtoint ptr %arrayidx392.3 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %call389.3, ptr %arrayidx392.3, align 4
  %call414 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10256) #20
  %arrayidx417 = getelementptr i32, ptr %p, i32 141
  %263 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %call414, ptr %arrayidx417, align 4
  %call414.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10512) #20
  %arrayidx417.1 = getelementptr i32, ptr %p, i32 142
  %264 = ptrtoint ptr %arrayidx417.1 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %call414.1, ptr %arrayidx417.1, align 4
  %call414.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10768) #20
  %arrayidx417.2 = getelementptr i32, ptr %p, i32 143
  %265 = ptrtoint ptr %arrayidx417.2 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %call414.2, ptr %arrayidx417.2, align 4
  %call414.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 11024) #20
  %arrayidx417.3 = getelementptr i32, ptr %p, i32 144
  %266 = ptrtoint ptr %arrayidx417.3 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %call414.3, ptr %arrayidx417.3, align 4
  %call439 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10264) #20
  %arrayidx442 = getelementptr i32, ptr %p, i32 145
  %267 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %call439, ptr %arrayidx442, align 4
  %call439.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10520) #20
  %arrayidx442.1 = getelementptr i32, ptr %p, i32 146
  %268 = ptrtoint ptr %arrayidx442.1 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %call439.1, ptr %arrayidx442.1, align 4
  %call439.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10776) #20
  %arrayidx442.2 = getelementptr i32, ptr %p, i32 147
  %269 = ptrtoint ptr %arrayidx442.2 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %call439.2, ptr %arrayidx442.2, align 4
  %call439.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 11032) #20
  %arrayidx442.3 = getelementptr i32, ptr %p, i32 148
  %270 = ptrtoint ptr %arrayidx442.3 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %call439.3, ptr %arrayidx442.3, align 4
  %call464 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10280) #20
  %arrayidx467 = getelementptr i32, ptr %p, i32 149
  %271 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %call464, ptr %arrayidx467, align 4
  %call464.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10536) #20
  %arrayidx467.1 = getelementptr i32, ptr %p, i32 150
  %272 = ptrtoint ptr %arrayidx467.1 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %call464.1, ptr %arrayidx467.1, align 4
  %call464.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 10792) #20
  %arrayidx467.2 = getelementptr i32, ptr %p, i32 151
  %273 = ptrtoint ptr %arrayidx467.2 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %call464.2, ptr %arrayidx467.2, align 4
  %call464.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 11048) #20
  %arrayidx467.3 = getelementptr i32, ptr %p, i32 152
  %274 = ptrtoint ptr %arrayidx467.3 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %call464.3, ptr %arrayidx467.3, align 4
  %call479 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5760) #20
  %arrayidx482 = getelementptr i32, ptr %p, i32 153
  %275 = ptrtoint ptr %arrayidx482 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %call479, ptr %arrayidx482, align 4
  %call479.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5764) #20
  %arrayidx482.1 = getelementptr i32, ptr %p, i32 154
  %276 = ptrtoint ptr %arrayidx482.1 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %call479.1, ptr %arrayidx482.1, align 4
  %call479.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5768) #20
  %arrayidx482.2 = getelementptr i32, ptr %p, i32 155
  %277 = ptrtoint ptr %arrayidx482.2 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %call479.2, ptr %arrayidx482.2, align 4
  %call479.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5772) #20
  %arrayidx482.3 = getelementptr i32, ptr %p, i32 156
  %278 = ptrtoint ptr %arrayidx482.3 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %call479.3, ptr %arrayidx482.3, align 4
  %call479.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5776) #20
  %arrayidx482.4 = getelementptr i32, ptr %p, i32 157
  %279 = ptrtoint ptr %arrayidx482.4 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %call479.4, ptr %arrayidx482.4, align 4
  %call479.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5780) #20
  %arrayidx482.5 = getelementptr i32, ptr %p, i32 158
  %280 = ptrtoint ptr %arrayidx482.5 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %call479.5, ptr %arrayidx482.5, align 4
  %call479.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5784) #20
  %arrayidx482.6 = getelementptr i32, ptr %p, i32 159
  %281 = ptrtoint ptr %arrayidx482.6 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %call479.6, ptr %arrayidx482.6, align 4
  %call479.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5788) #20
  %arrayidx482.7 = getelementptr i32, ptr %p, i32 160
  %282 = ptrtoint ptr %arrayidx482.7 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %call479.7, ptr %arrayidx482.7, align 4
  %call479.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5792) #20
  %arrayidx482.8 = getelementptr i32, ptr %p, i32 161
  %283 = ptrtoint ptr %arrayidx482.8 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %call479.8, ptr %arrayidx482.8, align 4
  %call479.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 5796) #20
  %arrayidx482.9 = getelementptr i32, ptr %p, i32 162
  %284 = ptrtoint ptr %arrayidx482.9 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %call479.9, ptr %arrayidx482.9, align 4
  %call494 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23168) #20
  %arrayidx497 = getelementptr i32, ptr %p, i32 163
  %285 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %call494, ptr %arrayidx497, align 4
  %call494.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23172) #20
  %arrayidx497.1 = getelementptr i32, ptr %p, i32 164
  %286 = ptrtoint ptr %arrayidx497.1 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %call494.1, ptr %arrayidx497.1, align 4
  %call494.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23176) #20
  %arrayidx497.2 = getelementptr i32, ptr %p, i32 165
  %287 = ptrtoint ptr %arrayidx497.2 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %call494.2, ptr %arrayidx497.2, align 4
  %call494.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23180) #20
  %arrayidx497.3 = getelementptr i32, ptr %p, i32 166
  %288 = ptrtoint ptr %arrayidx497.3 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %call494.3, ptr %arrayidx497.3, align 4
  %call494.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23184) #20
  %arrayidx497.4 = getelementptr i32, ptr %p, i32 167
  %289 = ptrtoint ptr %arrayidx497.4 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %call494.4, ptr %arrayidx497.4, align 4
  %call494.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23188) #20
  %arrayidx497.5 = getelementptr i32, ptr %p, i32 168
  %290 = ptrtoint ptr %arrayidx497.5 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %call494.5, ptr %arrayidx497.5, align 4
  %call494.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23192) #20
  %arrayidx497.6 = getelementptr i32, ptr %p, i32 169
  %291 = ptrtoint ptr %arrayidx497.6 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %call494.6, ptr %arrayidx497.6, align 4
  %call494.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23196) #20
  %arrayidx497.7 = getelementptr i32, ptr %p, i32 170
  %292 = ptrtoint ptr %arrayidx497.7 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %call494.7, ptr %arrayidx497.7, align 4
  %call509 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23200) #20
  %arrayidx512 = getelementptr i32, ptr %p, i32 171
  %293 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %call509, ptr %arrayidx512, align 4
  %call509.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23204) #20
  %arrayidx512.1 = getelementptr i32, ptr %p, i32 172
  %294 = ptrtoint ptr %arrayidx512.1 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %call509.1, ptr %arrayidx512.1, align 4
  %call509.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23208) #20
  %arrayidx512.2 = getelementptr i32, ptr %p, i32 173
  %295 = ptrtoint ptr %arrayidx512.2 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %call509.2, ptr %arrayidx512.2, align 4
  %call509.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23212) #20
  %arrayidx512.3 = getelementptr i32, ptr %p, i32 174
  %296 = ptrtoint ptr %arrayidx512.3 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %call509.3, ptr %arrayidx512.3, align 4
  %call509.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23216) #20
  %arrayidx512.4 = getelementptr i32, ptr %p, i32 175
  %297 = ptrtoint ptr %arrayidx512.4 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %call509.4, ptr %arrayidx512.4, align 4
  %call509.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23220) #20
  %arrayidx512.5 = getelementptr i32, ptr %p, i32 176
  %298 = ptrtoint ptr %arrayidx512.5 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %call509.5, ptr %arrayidx512.5, align 4
  %call509.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23224) #20
  %arrayidx512.6 = getelementptr i32, ptr %p, i32 177
  %299 = ptrtoint ptr %arrayidx512.6 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %call509.6, ptr %arrayidx512.6, align 4
  %call509.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23228) #20
  %arrayidx512.7 = getelementptr i32, ptr %p, i32 178
  %300 = ptrtoint ptr %arrayidx512.7 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %call509.7, ptr %arrayidx512.7, align 4
  %call534 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21504) #20
  %arrayidx537 = getelementptr i32, ptr %p, i32 179
  %301 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %call534, ptr %arrayidx537, align 4
  %call534.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21512) #20
  %arrayidx537.1 = getelementptr i32, ptr %p, i32 180
  %302 = ptrtoint ptr %arrayidx537.1 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %call534.1, ptr %arrayidx537.1, align 4
  %call534.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21520) #20
  %arrayidx537.2 = getelementptr i32, ptr %p, i32 181
  %303 = ptrtoint ptr %arrayidx537.2 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %call534.2, ptr %arrayidx537.2, align 4
  %call534.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21528) #20
  %arrayidx537.3 = getelementptr i32, ptr %p, i32 182
  %304 = ptrtoint ptr %arrayidx537.3 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %call534.3, ptr %arrayidx537.3, align 4
  %call534.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21536) #20
  %arrayidx537.4 = getelementptr i32, ptr %p, i32 183
  %305 = ptrtoint ptr %arrayidx537.4 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %call534.4, ptr %arrayidx537.4, align 4
  %call534.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21544) #20
  %arrayidx537.5 = getelementptr i32, ptr %p, i32 184
  %306 = ptrtoint ptr %arrayidx537.5 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %call534.5, ptr %arrayidx537.5, align 4
  %call534.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21552) #20
  %arrayidx537.6 = getelementptr i32, ptr %p, i32 185
  %307 = ptrtoint ptr %arrayidx537.6 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %call534.6, ptr %arrayidx537.6, align 4
  %call534.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21560) #20
  %arrayidx537.7 = getelementptr i32, ptr %p, i32 186
  %308 = ptrtoint ptr %arrayidx537.7 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %call534.7, ptr %arrayidx537.7, align 4
  %call534.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21568) #20
  %arrayidx537.8 = getelementptr i32, ptr %p, i32 187
  %309 = ptrtoint ptr %arrayidx537.8 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %call534.8, ptr %arrayidx537.8, align 4
  %call534.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21576) #20
  %arrayidx537.9 = getelementptr i32, ptr %p, i32 188
  %310 = ptrtoint ptr %arrayidx537.9 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %call534.9, ptr %arrayidx537.9, align 4
  %call534.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21584) #20
  %arrayidx537.10 = getelementptr i32, ptr %p, i32 189
  %311 = ptrtoint ptr %arrayidx537.10 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %call534.10, ptr %arrayidx537.10, align 4
  %call534.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21592) #20
  %arrayidx537.11 = getelementptr i32, ptr %p, i32 190
  %312 = ptrtoint ptr %arrayidx537.11 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %call534.11, ptr %arrayidx537.11, align 4
  %call534.12 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21600) #20
  %arrayidx537.12 = getelementptr i32, ptr %p, i32 191
  %313 = ptrtoint ptr %arrayidx537.12 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %call534.12, ptr %arrayidx537.12, align 4
  %call534.13 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21608) #20
  %arrayidx537.13 = getelementptr i32, ptr %p, i32 192
  %314 = ptrtoint ptr %arrayidx537.13 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %call534.13, ptr %arrayidx537.13, align 4
  %call534.14 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21616) #20
  %arrayidx537.14 = getelementptr i32, ptr %p, i32 193
  %315 = ptrtoint ptr %arrayidx537.14 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %call534.14, ptr %arrayidx537.14, align 4
  %call534.15 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21624) #20
  %arrayidx537.15 = getelementptr i32, ptr %p, i32 194
  %316 = ptrtoint ptr %arrayidx537.15 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %call534.15, ptr %arrayidx537.15, align 4
  %call560 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21508) #20
  %arrayidx563 = getelementptr i32, ptr %p, i32 195
  %317 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %call560, ptr %arrayidx563, align 4
  %call560.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21516) #20
  %arrayidx563.1 = getelementptr i32, ptr %p, i32 196
  %318 = ptrtoint ptr %arrayidx563.1 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %call560.1, ptr %arrayidx563.1, align 4
  %call560.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21524) #20
  %arrayidx563.2 = getelementptr i32, ptr %p, i32 197
  %319 = ptrtoint ptr %arrayidx563.2 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %call560.2, ptr %arrayidx563.2, align 4
  %call560.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21532) #20
  %arrayidx563.3 = getelementptr i32, ptr %p, i32 198
  %320 = ptrtoint ptr %arrayidx563.3 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %call560.3, ptr %arrayidx563.3, align 4
  %call560.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21540) #20
  %arrayidx563.4 = getelementptr i32, ptr %p, i32 199
  %321 = ptrtoint ptr %arrayidx563.4 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %call560.4, ptr %arrayidx563.4, align 4
  %call560.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21548) #20
  %arrayidx563.5 = getelementptr i32, ptr %p, i32 200
  %322 = ptrtoint ptr %arrayidx563.5 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %call560.5, ptr %arrayidx563.5, align 4
  %call560.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21556) #20
  %arrayidx563.6 = getelementptr i32, ptr %p, i32 201
  %323 = ptrtoint ptr %arrayidx563.6 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %call560.6, ptr %arrayidx563.6, align 4
  %call560.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21564) #20
  %arrayidx563.7 = getelementptr i32, ptr %p, i32 202
  %324 = ptrtoint ptr %arrayidx563.7 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %call560.7, ptr %arrayidx563.7, align 4
  %call560.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21572) #20
  %arrayidx563.8 = getelementptr i32, ptr %p, i32 203
  %325 = ptrtoint ptr %arrayidx563.8 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %call560.8, ptr %arrayidx563.8, align 4
  %call560.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21580) #20
  %arrayidx563.9 = getelementptr i32, ptr %p, i32 204
  %326 = ptrtoint ptr %arrayidx563.9 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %call560.9, ptr %arrayidx563.9, align 4
  %call560.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21588) #20
  %arrayidx563.10 = getelementptr i32, ptr %p, i32 205
  %327 = ptrtoint ptr %arrayidx563.10 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %call560.10, ptr %arrayidx563.10, align 4
  %call560.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21596) #20
  %arrayidx563.11 = getelementptr i32, ptr %p, i32 206
  %328 = ptrtoint ptr %arrayidx563.11 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %call560.11, ptr %arrayidx563.11, align 4
  %call560.12 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21604) #20
  %arrayidx563.12 = getelementptr i32, ptr %p, i32 207
  %329 = ptrtoint ptr %arrayidx563.12 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %call560.12, ptr %arrayidx563.12, align 4
  %call560.13 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21612) #20
  %arrayidx563.13 = getelementptr i32, ptr %p, i32 208
  %330 = ptrtoint ptr %arrayidx563.13 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %call560.13, ptr %arrayidx563.13, align 4
  %call560.14 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21620) #20
  %arrayidx563.14 = getelementptr i32, ptr %p, i32 209
  %331 = ptrtoint ptr %arrayidx563.14 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %call560.14, ptr %arrayidx563.14, align 4
  %call560.15 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21628) #20
  %arrayidx563.15 = getelementptr i32, ptr %p, i32 210
  %332 = ptrtoint ptr %arrayidx563.15 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %call560.15, ptr %arrayidx563.15, align 4
  %call585 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14336) #20
  %arrayidx588 = getelementptr i32, ptr %p, i32 211
  %333 = ptrtoint ptr %arrayidx588 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %call585, ptr %arrayidx588, align 4
  %call585.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14592) #20
  %arrayidx588.1 = getelementptr i32, ptr %p, i32 212
  %334 = ptrtoint ptr %arrayidx588.1 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %call585.1, ptr %arrayidx588.1, align 4
  %call585.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14848) #20
  %arrayidx588.2 = getelementptr i32, ptr %p, i32 213
  %335 = ptrtoint ptr %arrayidx588.2 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %call585.2, ptr %arrayidx588.2, align 4
  %call585.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 15104) #20
  %arrayidx588.3 = getelementptr i32, ptr %p, i32 214
  %336 = ptrtoint ptr %arrayidx588.3 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %call585.3, ptr %arrayidx588.3, align 4
  %call610 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14340) #20
  %arrayidx613 = getelementptr i32, ptr %p, i32 215
  %337 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %call610, ptr %arrayidx613, align 4
  %call610.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14596) #20
  %arrayidx613.1 = getelementptr i32, ptr %p, i32 216
  %338 = ptrtoint ptr %arrayidx613.1 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %call610.1, ptr %arrayidx613.1, align 4
  %call610.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14852) #20
  %arrayidx613.2 = getelementptr i32, ptr %p, i32 217
  %339 = ptrtoint ptr %arrayidx613.2 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %call610.2, ptr %arrayidx613.2, align 4
  %call610.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 15108) #20
  %arrayidx613.3 = getelementptr i32, ptr %p, i32 218
  %340 = ptrtoint ptr %arrayidx613.3 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %call610.3, ptr %arrayidx613.3, align 4
  %call635 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14344) #20
  %arrayidx638 = getelementptr i32, ptr %p, i32 219
  %341 = ptrtoint ptr %arrayidx638 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %call635, ptr %arrayidx638, align 4
  %call635.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14600) #20
  %arrayidx638.1 = getelementptr i32, ptr %p, i32 220
  %342 = ptrtoint ptr %arrayidx638.1 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %call635.1, ptr %arrayidx638.1, align 4
  %call635.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14856) #20
  %arrayidx638.2 = getelementptr i32, ptr %p, i32 221
  %343 = ptrtoint ptr %arrayidx638.2 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %call635.2, ptr %arrayidx638.2, align 4
  %call635.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 15112) #20
  %arrayidx638.3 = getelementptr i32, ptr %p, i32 222
  %344 = ptrtoint ptr %arrayidx638.3 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %call635.3, ptr %arrayidx638.3, align 4
  %call660 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14352) #20
  %arrayidx663 = getelementptr i32, ptr %p, i32 223
  %345 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %call660, ptr %arrayidx663, align 4
  %call660.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14608) #20
  %arrayidx663.1 = getelementptr i32, ptr %p, i32 224
  %346 = ptrtoint ptr %arrayidx663.1 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %call660.1, ptr %arrayidx663.1, align 4
  %call660.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14864) #20
  %arrayidx663.2 = getelementptr i32, ptr %p, i32 225
  %347 = ptrtoint ptr %arrayidx663.2 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %call660.2, ptr %arrayidx663.2, align 4
  %call660.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 15120) #20
  %arrayidx663.3 = getelementptr i32, ptr %p, i32 226
  %348 = ptrtoint ptr %arrayidx663.3 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %call660.3, ptr %arrayidx663.3, align 4
  %call685 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14360) #20
  %arrayidx688 = getelementptr i32, ptr %p, i32 227
  %349 = ptrtoint ptr %arrayidx688 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %call685, ptr %arrayidx688, align 4
  %call685.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14616) #20
  %arrayidx688.1 = getelementptr i32, ptr %p, i32 228
  %350 = ptrtoint ptr %arrayidx688.1 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %call685.1, ptr %arrayidx688.1, align 4
  %call685.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14872) #20
  %arrayidx688.2 = getelementptr i32, ptr %p, i32 229
  %351 = ptrtoint ptr %arrayidx688.2 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %call685.2, ptr %arrayidx688.2, align 4
  %call685.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 15128) #20
  %arrayidx688.3 = getelementptr i32, ptr %p, i32 230
  %352 = ptrtoint ptr %arrayidx688.3 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %call685.3, ptr %arrayidx688.3, align 4
  %call710 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14376) #20
  %arrayidx713 = getelementptr i32, ptr %p, i32 231
  %353 = ptrtoint ptr %arrayidx713 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %call710, ptr %arrayidx713, align 4
  %call710.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14632) #20
  %arrayidx713.1 = getelementptr i32, ptr %p, i32 232
  %354 = ptrtoint ptr %arrayidx713.1 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %call710.1, ptr %arrayidx713.1, align 4
  %call710.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14888) #20
  %arrayidx713.2 = getelementptr i32, ptr %p, i32 233
  %355 = ptrtoint ptr %arrayidx713.2 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %call710.2, ptr %arrayidx713.2, align 4
  %call710.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 15144) #20
  %arrayidx713.3 = getelementptr i32, ptr %p, i32 234
  %356 = ptrtoint ptr %arrayidx713.3 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %call710.3, ptr %arrayidx713.3, align 4
  %call735 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14392) #20
  %arrayidx738 = getelementptr i32, ptr %p, i32 235
  %357 = ptrtoint ptr %arrayidx738 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %call735, ptr %arrayidx738, align 4
  %call735.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14648) #20
  %arrayidx738.1 = getelementptr i32, ptr %p, i32 236
  %358 = ptrtoint ptr %arrayidx738.1 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %call735.1, ptr %arrayidx738.1, align 4
  %call735.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14904) #20
  %arrayidx738.2 = getelementptr i32, ptr %p, i32 237
  %359 = ptrtoint ptr %arrayidx738.2 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %call735.2, ptr %arrayidx738.2, align 4
  %call735.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 15160) #20
  %arrayidx738.3 = getelementptr i32, ptr %p, i32 238
  %360 = ptrtoint ptr %arrayidx738.3 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %call735.3, ptr %arrayidx738.3, align 4
  %call760 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14396) #20
  %arrayidx763 = getelementptr i32, ptr %p, i32 239
  %361 = ptrtoint ptr %arrayidx763 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %call760, ptr %arrayidx763, align 4
  %call760.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14652) #20
  %arrayidx763.1 = getelementptr i32, ptr %p, i32 240
  %362 = ptrtoint ptr %arrayidx763.1 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %call760.1, ptr %arrayidx763.1, align 4
  %call760.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14908) #20
  %arrayidx763.2 = getelementptr i32, ptr %p, i32 241
  %363 = ptrtoint ptr %arrayidx763.2 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %call760.2, ptr %arrayidx763.2, align 4
  %call760.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 15164) #20
  %arrayidx763.3 = getelementptr i32, ptr %p, i32 242
  %364 = ptrtoint ptr %arrayidx763.3 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %call760.3, ptr %arrayidx763.3, align 4
  %call785 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14356) #20
  %arrayidx788 = getelementptr i32, ptr %p, i32 243
  %365 = ptrtoint ptr %arrayidx788 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %call785, ptr %arrayidx788, align 4
  %call785.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14612) #20
  %arrayidx788.1 = getelementptr i32, ptr %p, i32 244
  %366 = ptrtoint ptr %arrayidx788.1 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %call785.1, ptr %arrayidx788.1, align 4
  %call785.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 14868) #20
  %arrayidx788.2 = getelementptr i32, ptr %p, i32 245
  %367 = ptrtoint ptr %arrayidx788.2 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %call785.2, ptr %arrayidx788.2, align 4
  %call785.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 15124) #20
  %arrayidx788.3 = getelementptr i32, ptr %p, i32 246
  %368 = ptrtoint ptr %arrayidx788.3 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %call785.3, ptr %arrayidx788.3, align 4
  %call800 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22592) #20
  %arrayidx803 = getelementptr i32, ptr %p, i32 247
  %369 = ptrtoint ptr %arrayidx803 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %call800, ptr %arrayidx803, align 4
  %call800.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22600) #20
  %arrayidx803.1 = getelementptr i32, ptr %p, i32 248
  %370 = ptrtoint ptr %arrayidx803.1 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %call800.1, ptr %arrayidx803.1, align 4
  %call800.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22608) #20
  %arrayidx803.2 = getelementptr i32, ptr %p, i32 249
  %371 = ptrtoint ptr %arrayidx803.2 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %call800.2, ptr %arrayidx803.2, align 4
  %call800.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22616) #20
  %arrayidx803.3 = getelementptr i32, ptr %p, i32 250
  %372 = ptrtoint ptr %arrayidx803.3 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %call800.3, ptr %arrayidx803.3, align 4
  %call815 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22656) #20
  %arrayidx818 = getelementptr i32, ptr %p, i32 251
  %373 = ptrtoint ptr %arrayidx818 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %call815, ptr %arrayidx818, align 4
  %call815.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22660) #20
  %arrayidx818.1 = getelementptr i32, ptr %p, i32 252
  %374 = ptrtoint ptr %arrayidx818.1 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %call815.1, ptr %arrayidx818.1, align 4
  %call815.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22664) #20
  %arrayidx818.2 = getelementptr i32, ptr %p, i32 253
  %375 = ptrtoint ptr %arrayidx818.2 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %call815.2, ptr %arrayidx818.2, align 4
  %call815.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 22668) #20
  %arrayidx818.3 = getelementptr i32, ptr %p, i32 254
  %376 = ptrtoint ptr %arrayidx818.3 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %call815.3, ptr %arrayidx818.3, align 4
  br label %for.body826

for.body826:                                      ; preds = %for.body826.for.body826_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body826.for.body826_crit_edge ]
  %mul828 = shl nuw nsw i32 %indvars.iv, 2
  %add829 = or i32 %mul828, 23040
  %call830 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef %add829) #20
  %add832 = add nuw nsw i32 %indvars.iv, 255
  %arrayidx833 = getelementptr i32, ptr %p, i32 %add832
  %377 = ptrtoint ptr %arrayidx833 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %call830, ptr %arrayidx833, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.body826.for.body841_crit_edge, label %for.body826.for.body826_crit_edge

for.body826.for.body826_crit_edge:                ; preds = %for.body826
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body826

for.body826.for.body841_crit_edge:                ; preds = %for.body826
  br label %for.body841

for.body841:                                      ; preds = %for.body841.for.body841_crit_edge, %for.body826.for.body841_crit_edge
  %indvars.iv1984 = phi i32 [ %indvars.iv.next1985, %for.body841.for.body841_crit_edge ], [ 0, %for.body826.for.body841_crit_edge ]
  %mul843 = shl nuw nsw i32 %indvars.iv1984, 3
  %add844 = or i32 %mul843, 36864
  %call845 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef %add844) #20
  %add847 = add nuw nsw i32 %indvars.iv1984, 287
  %arrayidx848 = getelementptr i32, ptr %p, i32 %add847
  %378 = ptrtoint ptr %arrayidx848 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %call845, ptr %arrayidx848, align 4
  %indvars.iv.next1985 = add nuw nsw i32 %indvars.iv1984, 1
  %exitcond1986.not = icmp eq i32 %indvars.iv.next1985, 128
  br i1 %exitcond1986.not, label %for.body841.for.body856_crit_edge, label %for.body841.for.body841_crit_edge

for.body841.for.body841_crit_edge:                ; preds = %for.body841
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body841

for.body841.for.body856_crit_edge:                ; preds = %for.body841
  br label %for.body856

for.body856:                                      ; preds = %for.body856.for.body856_crit_edge, %for.body841.for.body856_crit_edge
  %indvars.iv1987 = phi i32 [ %indvars.iv.next1988, %for.body856.for.body856_crit_edge ], [ 0, %for.body841.for.body856_crit_edge ]
  %mul858 = shl nuw nsw i32 %indvars.iv1987, 3
  %add859 = or i32 %mul858, 38912
  %call860 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef %add859) #20
  %add862 = add nuw nsw i32 %indvars.iv1987, 415
  %arrayidx863 = getelementptr i32, ptr %p, i32 %add862
  %379 = ptrtoint ptr %arrayidx863 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %call860, ptr %arrayidx863, align 4
  %indvars.iv.next1988 = add nuw nsw i32 %indvars.iv1987, 1
  %exitcond1989.not = icmp eq i32 %indvars.iv.next1988, 128
  br i1 %exitcond1989.not, label %for.body871.preheader, label %for.body856.for.body856_crit_edge

for.body856.for.body856_crit_edge:                ; preds = %for.body856
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body856

for.body871.preheader:                            ; preds = %for.body856
  %call875 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 24320) #20
  %arrayidx878 = getelementptr i32, ptr %p, i32 543
  %380 = ptrtoint ptr %arrayidx878 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %call875, ptr %arrayidx878, align 4
  %call875.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 24328) #20
  %arrayidx878.1 = getelementptr i32, ptr %p, i32 544
  %381 = ptrtoint ptr %arrayidx878.1 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %call875.1, ptr %arrayidx878.1, align 4
  %call875.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 24336) #20
  %arrayidx878.2 = getelementptr i32, ptr %p, i32 545
  %382 = ptrtoint ptr %arrayidx878.2 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %call875.2, ptr %arrayidx878.2, align 4
  %call875.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 24344) #20
  %arrayidx878.3 = getelementptr i32, ptr %p, i32 546
  %383 = ptrtoint ptr %arrayidx878.3 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %call875.3, ptr %arrayidx878.3, align 4
  %call882 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 13328) #20
  %arrayidx883 = getelementptr i32, ptr %p, i32 547
  %384 = ptrtoint ptr %arrayidx883 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %call882, ptr %arrayidx883, align 4
  %call884 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 13336) #20
  %arrayidx885 = getelementptr i32, ptr %p, i32 548
  %385 = ptrtoint ptr %arrayidx885 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %call884, ptr %arrayidx885, align 4
  %call886 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 13344) #20
  %arrayidx887 = getelementptr i32, ptr %p, i32 549
  %386 = ptrtoint ptr %arrayidx887 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %call886, ptr %arrayidx887, align 4
  %call888 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 13360) #20
  %arrayidx889 = getelementptr i32, ptr %p, i32 550
  %387 = ptrtoint ptr %arrayidx889 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %call888, ptr %arrayidx889, align 4
  %type = getelementptr i8, ptr %netdev, i32 3664
  %388 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %389)
  %cmp890 = icmp ugt i32 %389, 3
  br i1 %cmp890, label %if.then, label %for.body871.preheader.if.end_crit_edge

for.body871.preheader.if.end_crit_edge:           ; preds = %for.body871.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %for.body871.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %o2bgptc = getelementptr i8, ptr %netdev, i32 5176
  %390 = ptrtoint ptr %o2bgptc to i32
  call void @__asan_load8_noabort(i32 %390)
  %391 = load i64, ptr %o2bgptc, align 8
  %conv893 = trunc i64 %391 to i32
  %arrayidx894 = getelementptr i32, ptr %p, i32 551
  %392 = ptrtoint ptr %arrayidx894 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %conv893, ptr %arrayidx894, align 4
  %b2ospc = getelementptr i8, ptr %netdev, i32 5192
  %393 = ptrtoint ptr %b2ospc to i32
  call void @__asan_load8_noabort(i32 %393)
  %394 = load i64, ptr %b2ospc, align 8
  %conv896 = trunc i64 %394 to i32
  %arrayidx897 = getelementptr i32, ptr %p, i32 552
  %395 = ptrtoint ptr %arrayidx897 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %conv896, ptr %arrayidx897, align 4
  %o2bspc = getelementptr i8, ptr %netdev, i32 5184
  %396 = ptrtoint ptr %o2bspc to i32
  call void @__asan_load8_noabort(i32 %396)
  %397 = load i64, ptr %o2bspc, align 8
  %conv899 = trunc i64 %397 to i32
  %arrayidx900 = getelementptr i32, ptr %p, i32 553
  %398 = ptrtoint ptr %arrayidx900 to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %conv899, ptr %arrayidx900, align 4
  %b2ogprc = getelementptr i8, ptr %netdev, i32 5200
  %399 = ptrtoint ptr %b2ogprc to i32
  call void @__asan_load8_noabort(i32 %399)
  %400 = load i64, ptr %b2ogprc, align 8
  %conv902 = trunc i64 %400 to i32
  %arrayidx903 = getelementptr i32, ptr %p, i32 554
  %401 = ptrtoint ptr %arrayidx903 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %conv902, ptr %arrayidx903, align 4
  %402 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %402)
  %.pr = load i32, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body871.preheader.if.end_crit_edge
  %403 = phi i32 [ %.pr, %if.then ], [ %389, %for.body871.preheader.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %403)
  %cmp906 = icmp eq i32 %403, 2
  br i1 %cmp906, label %cond.end928.preheader, label %if.end.if.end1345_crit_edge

if.end.if.end1345_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end1345

cond.end928.preheader:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call930 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49420) #20
  %arrayidx933 = getelementptr i32, ptr %p, i32 555
  %404 = ptrtoint ptr %arrayidx933 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %call930, ptr %arrayidx933, align 4
  %call930.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49484) #20
  %arrayidx933.1 = getelementptr i32, ptr %p, i32 556
  %405 = ptrtoint ptr %arrayidx933.1 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %call930.1, ptr %arrayidx933.1, align 4
  %call930.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49548) #20
  %arrayidx933.2 = getelementptr i32, ptr %p, i32 557
  %406 = ptrtoint ptr %arrayidx933.2 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %call930.2, ptr %arrayidx933.2, align 4
  %call930.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49612) #20
  %arrayidx933.3 = getelementptr i32, ptr %p, i32 558
  %407 = ptrtoint ptr %arrayidx933.3 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %call930.3, ptr %arrayidx933.3, align 4
  %call930.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49676) #20
  %arrayidx933.4 = getelementptr i32, ptr %p, i32 559
  %408 = ptrtoint ptr %arrayidx933.4 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %call930.4, ptr %arrayidx933.4, align 4
  %call930.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49740) #20
  %arrayidx933.5 = getelementptr i32, ptr %p, i32 560
  %409 = ptrtoint ptr %arrayidx933.5 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %call930.5, ptr %arrayidx933.5, align 4
  %call930.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49804) #20
  %arrayidx933.6 = getelementptr i32, ptr %p, i32 561
  %410 = ptrtoint ptr %arrayidx933.6 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %call930.6, ptr %arrayidx933.6, align 4
  %call930.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49868) #20
  %arrayidx933.7 = getelementptr i32, ptr %p, i32 562
  %411 = ptrtoint ptr %arrayidx933.7 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %call930.7, ptr %arrayidx933.7, align 4
  %call930.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49932) #20
  %arrayidx933.8 = getelementptr i32, ptr %p, i32 563
  %412 = ptrtoint ptr %arrayidx933.8 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %call930.8, ptr %arrayidx933.8, align 4
  %call930.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49996) #20
  %arrayidx933.9 = getelementptr i32, ptr %p, i32 564
  %413 = ptrtoint ptr %arrayidx933.9 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %call930.9, ptr %arrayidx933.9, align 4
  %call930.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50060) #20
  %arrayidx933.10 = getelementptr i32, ptr %p, i32 565
  %414 = ptrtoint ptr %arrayidx933.10 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %call930.10, ptr %arrayidx933.10, align 4
  %call930.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50124) #20
  %arrayidx933.11 = getelementptr i32, ptr %p, i32 566
  %415 = ptrtoint ptr %arrayidx933.11 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %call930.11, ptr %arrayidx933.11, align 4
  %call946 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21648) #20
  %arrayidx949 = getelementptr i32, ptr %p, i32 567
  %416 = ptrtoint ptr %arrayidx949 to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %call946, ptr %arrayidx949, align 4
  %call946.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21652) #20
  %arrayidx949.1 = getelementptr i32, ptr %p, i32 568
  %417 = ptrtoint ptr %arrayidx949.1 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %call946.1, ptr %arrayidx949.1, align 4
  %call946.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21656) #20
  %arrayidx949.2 = getelementptr i32, ptr %p, i32 569
  %418 = ptrtoint ptr %arrayidx949.2 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %call946.2, ptr %arrayidx949.2, align 4
  %call946.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 21660) #20
  %arrayidx949.3 = getelementptr i32, ptr %p, i32 570
  %419 = ptrtoint ptr %arrayidx949.3 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %call946.3, ptr %arrayidx949.3, align 4
  %call974 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49408) #20
  %arrayidx977 = getelementptr i32, ptr %p, i32 571
  %420 = ptrtoint ptr %arrayidx977 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %call974, ptr %arrayidx977, align 4
  %call974.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49472) #20
  %arrayidx977.1 = getelementptr i32, ptr %p, i32 572
  %421 = ptrtoint ptr %arrayidx977.1 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %call974.1, ptr %arrayidx977.1, align 4
  %call974.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49536) #20
  %arrayidx977.2 = getelementptr i32, ptr %p, i32 573
  %422 = ptrtoint ptr %arrayidx977.2 to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %call974.2, ptr %arrayidx977.2, align 4
  %call974.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49600) #20
  %arrayidx977.3 = getelementptr i32, ptr %p, i32 574
  %423 = ptrtoint ptr %arrayidx977.3 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %call974.3, ptr %arrayidx977.3, align 4
  %call974.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49664) #20
  %arrayidx977.4 = getelementptr i32, ptr %p, i32 575
  %424 = ptrtoint ptr %arrayidx977.4 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %call974.4, ptr %arrayidx977.4, align 4
  %call974.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49728) #20
  %arrayidx977.5 = getelementptr i32, ptr %p, i32 576
  %425 = ptrtoint ptr %arrayidx977.5 to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %call974.5, ptr %arrayidx977.5, align 4
  %call974.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49792) #20
  %arrayidx977.6 = getelementptr i32, ptr %p, i32 577
  %426 = ptrtoint ptr %arrayidx977.6 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %call974.6, ptr %arrayidx977.6, align 4
  %call974.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49856) #20
  %arrayidx977.7 = getelementptr i32, ptr %p, i32 578
  %427 = ptrtoint ptr %arrayidx977.7 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %call974.7, ptr %arrayidx977.7, align 4
  %call974.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49920) #20
  %arrayidx977.8 = getelementptr i32, ptr %p, i32 579
  %428 = ptrtoint ptr %arrayidx977.8 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %call974.8, ptr %arrayidx977.8, align 4
  %call974.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49984) #20
  %arrayidx977.9 = getelementptr i32, ptr %p, i32 580
  %429 = ptrtoint ptr %arrayidx977.9 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %call974.9, ptr %arrayidx977.9, align 4
  %call974.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50048) #20
  %arrayidx977.10 = getelementptr i32, ptr %p, i32 581
  %430 = ptrtoint ptr %arrayidx977.10 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %call974.10, ptr %arrayidx977.10, align 4
  %call974.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50112) #20
  %arrayidx977.11 = getelementptr i32, ptr %p, i32 582
  %431 = ptrtoint ptr %arrayidx977.11 to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %call974.11, ptr %arrayidx977.11, align 4
  %call1002 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49412) #20
  %arrayidx1005 = getelementptr i32, ptr %p, i32 583
  %432 = ptrtoint ptr %arrayidx1005 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %call1002, ptr %arrayidx1005, align 4
  %call1002.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49476) #20
  %arrayidx1005.1 = getelementptr i32, ptr %p, i32 584
  %433 = ptrtoint ptr %arrayidx1005.1 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %call1002.1, ptr %arrayidx1005.1, align 4
  %call1002.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49540) #20
  %arrayidx1005.2 = getelementptr i32, ptr %p, i32 585
  %434 = ptrtoint ptr %arrayidx1005.2 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %call1002.2, ptr %arrayidx1005.2, align 4
  %call1002.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49604) #20
  %arrayidx1005.3 = getelementptr i32, ptr %p, i32 586
  %435 = ptrtoint ptr %arrayidx1005.3 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %call1002.3, ptr %arrayidx1005.3, align 4
  %call1002.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49668) #20
  %arrayidx1005.4 = getelementptr i32, ptr %p, i32 587
  %436 = ptrtoint ptr %arrayidx1005.4 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %call1002.4, ptr %arrayidx1005.4, align 4
  %call1002.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49732) #20
  %arrayidx1005.5 = getelementptr i32, ptr %p, i32 588
  %437 = ptrtoint ptr %arrayidx1005.5 to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %call1002.5, ptr %arrayidx1005.5, align 4
  %call1002.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49796) #20
  %arrayidx1005.6 = getelementptr i32, ptr %p, i32 589
  %438 = ptrtoint ptr %arrayidx1005.6 to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %call1002.6, ptr %arrayidx1005.6, align 4
  %call1002.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49860) #20
  %arrayidx1005.7 = getelementptr i32, ptr %p, i32 590
  %439 = ptrtoint ptr %arrayidx1005.7 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %call1002.7, ptr %arrayidx1005.7, align 4
  %call1002.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49924) #20
  %arrayidx1005.8 = getelementptr i32, ptr %p, i32 591
  %440 = ptrtoint ptr %arrayidx1005.8 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %call1002.8, ptr %arrayidx1005.8, align 4
  %call1002.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49988) #20
  %arrayidx1005.9 = getelementptr i32, ptr %p, i32 592
  %441 = ptrtoint ptr %arrayidx1005.9 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %call1002.9, ptr %arrayidx1005.9, align 4
  %call1002.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50052) #20
  %arrayidx1005.10 = getelementptr i32, ptr %p, i32 593
  %442 = ptrtoint ptr %arrayidx1005.10 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %call1002.10, ptr %arrayidx1005.10, align 4
  %call1002.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50116) #20
  %arrayidx1005.11 = getelementptr i32, ptr %p, i32 594
  %443 = ptrtoint ptr %arrayidx1005.11 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %call1002.11, ptr %arrayidx1005.11, align 4
  %call1030 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49416) #20
  %arrayidx1033 = getelementptr i32, ptr %p, i32 595
  %444 = ptrtoint ptr %arrayidx1033 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %call1030, ptr %arrayidx1033, align 4
  %call1030.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49480) #20
  %arrayidx1033.1 = getelementptr i32, ptr %p, i32 596
  %445 = ptrtoint ptr %arrayidx1033.1 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %call1030.1, ptr %arrayidx1033.1, align 4
  %call1030.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49544) #20
  %arrayidx1033.2 = getelementptr i32, ptr %p, i32 597
  %446 = ptrtoint ptr %arrayidx1033.2 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %call1030.2, ptr %arrayidx1033.2, align 4
  %call1030.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49608) #20
  %arrayidx1033.3 = getelementptr i32, ptr %p, i32 598
  %447 = ptrtoint ptr %arrayidx1033.3 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %call1030.3, ptr %arrayidx1033.3, align 4
  %call1030.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49672) #20
  %arrayidx1033.4 = getelementptr i32, ptr %p, i32 599
  %448 = ptrtoint ptr %arrayidx1033.4 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %call1030.4, ptr %arrayidx1033.4, align 4
  %call1030.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49736) #20
  %arrayidx1033.5 = getelementptr i32, ptr %p, i32 600
  %449 = ptrtoint ptr %arrayidx1033.5 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %call1030.5, ptr %arrayidx1033.5, align 4
  %call1030.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49800) #20
  %arrayidx1033.6 = getelementptr i32, ptr %p, i32 601
  %450 = ptrtoint ptr %arrayidx1033.6 to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 %call1030.6, ptr %arrayidx1033.6, align 4
  %call1030.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49864) #20
  %arrayidx1033.7 = getelementptr i32, ptr %p, i32 602
  %451 = ptrtoint ptr %arrayidx1033.7 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %call1030.7, ptr %arrayidx1033.7, align 4
  %call1030.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49928) #20
  %arrayidx1033.8 = getelementptr i32, ptr %p, i32 603
  %452 = ptrtoint ptr %arrayidx1033.8 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %call1030.8, ptr %arrayidx1033.8, align 4
  %call1030.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49992) #20
  %arrayidx1033.9 = getelementptr i32, ptr %p, i32 604
  %453 = ptrtoint ptr %arrayidx1033.9 to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 %call1030.9, ptr %arrayidx1033.9, align 4
  %call1030.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50056) #20
  %arrayidx1033.10 = getelementptr i32, ptr %p, i32 605
  %454 = ptrtoint ptr %arrayidx1033.10 to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 %call1030.10, ptr %arrayidx1033.10, align 4
  %call1030.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50120) #20
  %arrayidx1033.11 = getelementptr i32, ptr %p, i32 606
  %455 = ptrtoint ptr %arrayidx1033.11 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %call1030.11, ptr %arrayidx1033.11, align 4
  %call1058 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49424) #20
  %arrayidx1061 = getelementptr i32, ptr %p, i32 607
  %456 = ptrtoint ptr %arrayidx1061 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %call1058, ptr %arrayidx1061, align 4
  %call1058.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49488) #20
  %arrayidx1061.1 = getelementptr i32, ptr %p, i32 608
  %457 = ptrtoint ptr %arrayidx1061.1 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %call1058.1, ptr %arrayidx1061.1, align 4
  %call1058.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49552) #20
  %arrayidx1061.2 = getelementptr i32, ptr %p, i32 609
  %458 = ptrtoint ptr %arrayidx1061.2 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %call1058.2, ptr %arrayidx1061.2, align 4
  %call1058.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49616) #20
  %arrayidx1061.3 = getelementptr i32, ptr %p, i32 610
  %459 = ptrtoint ptr %arrayidx1061.3 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %call1058.3, ptr %arrayidx1061.3, align 4
  %call1058.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49680) #20
  %arrayidx1061.4 = getelementptr i32, ptr %p, i32 611
  %460 = ptrtoint ptr %arrayidx1061.4 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %call1058.4, ptr %arrayidx1061.4, align 4
  %call1058.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49744) #20
  %arrayidx1061.5 = getelementptr i32, ptr %p, i32 612
  %461 = ptrtoint ptr %arrayidx1061.5 to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %call1058.5, ptr %arrayidx1061.5, align 4
  %call1058.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49808) #20
  %arrayidx1061.6 = getelementptr i32, ptr %p, i32 613
  %462 = ptrtoint ptr %arrayidx1061.6 to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %call1058.6, ptr %arrayidx1061.6, align 4
  %call1058.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49872) #20
  %arrayidx1061.7 = getelementptr i32, ptr %p, i32 614
  %463 = ptrtoint ptr %arrayidx1061.7 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %call1058.7, ptr %arrayidx1061.7, align 4
  %call1058.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49936) #20
  %arrayidx1061.8 = getelementptr i32, ptr %p, i32 615
  %464 = ptrtoint ptr %arrayidx1061.8 to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %call1058.8, ptr %arrayidx1061.8, align 4
  %call1058.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50000) #20
  %arrayidx1061.9 = getelementptr i32, ptr %p, i32 616
  %465 = ptrtoint ptr %arrayidx1061.9 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %call1058.9, ptr %arrayidx1061.9, align 4
  %call1058.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50064) #20
  %arrayidx1061.10 = getelementptr i32, ptr %p, i32 617
  %466 = ptrtoint ptr %arrayidx1061.10 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %call1058.10, ptr %arrayidx1061.10, align 4
  %call1058.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50128) #20
  %arrayidx1061.11 = getelementptr i32, ptr %p, i32 618
  %467 = ptrtoint ptr %arrayidx1061.11 to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 %call1058.11, ptr %arrayidx1061.11, align 4
  %call1086 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49432) #20
  %arrayidx1089 = getelementptr i32, ptr %p, i32 619
  %468 = ptrtoint ptr %arrayidx1089 to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 %call1086, ptr %arrayidx1089, align 4
  %call1086.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49496) #20
  %arrayidx1089.1 = getelementptr i32, ptr %p, i32 620
  %469 = ptrtoint ptr %arrayidx1089.1 to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %call1086.1, ptr %arrayidx1089.1, align 4
  %call1086.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49560) #20
  %arrayidx1089.2 = getelementptr i32, ptr %p, i32 621
  %470 = ptrtoint ptr %arrayidx1089.2 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %call1086.2, ptr %arrayidx1089.2, align 4
  %call1086.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49624) #20
  %arrayidx1089.3 = getelementptr i32, ptr %p, i32 622
  %471 = ptrtoint ptr %arrayidx1089.3 to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %call1086.3, ptr %arrayidx1089.3, align 4
  %call1086.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49688) #20
  %arrayidx1089.4 = getelementptr i32, ptr %p, i32 623
  %472 = ptrtoint ptr %arrayidx1089.4 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %call1086.4, ptr %arrayidx1089.4, align 4
  %call1086.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49752) #20
  %arrayidx1089.5 = getelementptr i32, ptr %p, i32 624
  %473 = ptrtoint ptr %arrayidx1089.5 to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 %call1086.5, ptr %arrayidx1089.5, align 4
  %call1086.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49816) #20
  %arrayidx1089.6 = getelementptr i32, ptr %p, i32 625
  %474 = ptrtoint ptr %arrayidx1089.6 to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %call1086.6, ptr %arrayidx1089.6, align 4
  %call1086.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49880) #20
  %arrayidx1089.7 = getelementptr i32, ptr %p, i32 626
  %475 = ptrtoint ptr %arrayidx1089.7 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %call1086.7, ptr %arrayidx1089.7, align 4
  %call1086.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49944) #20
  %arrayidx1089.8 = getelementptr i32, ptr %p, i32 627
  %476 = ptrtoint ptr %arrayidx1089.8 to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %call1086.8, ptr %arrayidx1089.8, align 4
  %call1086.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50008) #20
  %arrayidx1089.9 = getelementptr i32, ptr %p, i32 628
  %477 = ptrtoint ptr %arrayidx1089.9 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 %call1086.9, ptr %arrayidx1089.9, align 4
  %call1086.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50072) #20
  %arrayidx1089.10 = getelementptr i32, ptr %p, i32 629
  %478 = ptrtoint ptr %arrayidx1089.10 to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %call1086.10, ptr %arrayidx1089.10, align 4
  %call1086.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50136) #20
  %arrayidx1089.11 = getelementptr i32, ptr %p, i32 630
  %479 = ptrtoint ptr %arrayidx1089.11 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %call1086.11, ptr %arrayidx1089.11, align 4
  %call1114 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49448) #20
  %arrayidx1117 = getelementptr i32, ptr %p, i32 631
  %480 = ptrtoint ptr %arrayidx1117 to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 %call1114, ptr %arrayidx1117, align 4
  %call1114.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49512) #20
  %arrayidx1117.1 = getelementptr i32, ptr %p, i32 632
  %481 = ptrtoint ptr %arrayidx1117.1 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 %call1114.1, ptr %arrayidx1117.1, align 4
  %call1114.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49576) #20
  %arrayidx1117.2 = getelementptr i32, ptr %p, i32 633
  %482 = ptrtoint ptr %arrayidx1117.2 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %call1114.2, ptr %arrayidx1117.2, align 4
  %call1114.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49640) #20
  %arrayidx1117.3 = getelementptr i32, ptr %p, i32 634
  %483 = ptrtoint ptr %arrayidx1117.3 to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 %call1114.3, ptr %arrayidx1117.3, align 4
  %call1114.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49704) #20
  %arrayidx1117.4 = getelementptr i32, ptr %p, i32 635
  %484 = ptrtoint ptr %arrayidx1117.4 to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %call1114.4, ptr %arrayidx1117.4, align 4
  %call1114.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49768) #20
  %arrayidx1117.5 = getelementptr i32, ptr %p, i32 636
  %485 = ptrtoint ptr %arrayidx1117.5 to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 %call1114.5, ptr %arrayidx1117.5, align 4
  %call1114.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49832) #20
  %arrayidx1117.6 = getelementptr i32, ptr %p, i32 637
  %486 = ptrtoint ptr %arrayidx1117.6 to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 %call1114.6, ptr %arrayidx1117.6, align 4
  %call1114.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49896) #20
  %arrayidx1117.7 = getelementptr i32, ptr %p, i32 638
  %487 = ptrtoint ptr %arrayidx1117.7 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %call1114.7, ptr %arrayidx1117.7, align 4
  %call1114.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 49960) #20
  %arrayidx1117.8 = getelementptr i32, ptr %p, i32 639
  %488 = ptrtoint ptr %arrayidx1117.8 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %call1114.8, ptr %arrayidx1117.8, align 4
  %call1114.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50024) #20
  %arrayidx1117.9 = getelementptr i32, ptr %p, i32 640
  %489 = ptrtoint ptr %arrayidx1117.9 to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 %call1114.9, ptr %arrayidx1117.9, align 4
  %call1114.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50088) #20
  %arrayidx1117.10 = getelementptr i32, ptr %p, i32 641
  %490 = ptrtoint ptr %arrayidx1117.10 to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 %call1114.10, ptr %arrayidx1117.10, align 4
  %call1114.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 50152) #20
  %arrayidx1117.11 = getelementptr i32, ptr %p, i32 642
  %491 = ptrtoint ptr %arrayidx1117.11 to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 %call1114.11, ptr %arrayidx1117.11, align 4
  %call1142 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57600) #20
  %arrayidx1145 = getelementptr i32, ptr %p, i32 643
  %492 = ptrtoint ptr %arrayidx1145 to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 %call1142, ptr %arrayidx1145, align 4
  %call1142.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57664) #20
  %arrayidx1145.1 = getelementptr i32, ptr %p, i32 644
  %493 = ptrtoint ptr %arrayidx1145.1 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %call1142.1, ptr %arrayidx1145.1, align 4
  %call1142.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57728) #20
  %arrayidx1145.2 = getelementptr i32, ptr %p, i32 645
  %494 = ptrtoint ptr %arrayidx1145.2 to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 %call1142.2, ptr %arrayidx1145.2, align 4
  %call1142.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57792) #20
  %arrayidx1145.3 = getelementptr i32, ptr %p, i32 646
  %495 = ptrtoint ptr %arrayidx1145.3 to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %call1142.3, ptr %arrayidx1145.3, align 4
  %call1142.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57856) #20
  %arrayidx1145.4 = getelementptr i32, ptr %p, i32 647
  %496 = ptrtoint ptr %arrayidx1145.4 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %call1142.4, ptr %arrayidx1145.4, align 4
  %call1142.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57920) #20
  %arrayidx1145.5 = getelementptr i32, ptr %p, i32 648
  %497 = ptrtoint ptr %arrayidx1145.5 to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 %call1142.5, ptr %arrayidx1145.5, align 4
  %call1142.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57984) #20
  %arrayidx1145.6 = getelementptr i32, ptr %p, i32 649
  %498 = ptrtoint ptr %arrayidx1145.6 to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %call1142.6, ptr %arrayidx1145.6, align 4
  %call1142.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58048) #20
  %arrayidx1145.7 = getelementptr i32, ptr %p, i32 650
  %499 = ptrtoint ptr %arrayidx1145.7 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 %call1142.7, ptr %arrayidx1145.7, align 4
  %call1142.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58112) #20
  %arrayidx1145.8 = getelementptr i32, ptr %p, i32 651
  %500 = ptrtoint ptr %arrayidx1145.8 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 %call1142.8, ptr %arrayidx1145.8, align 4
  %call1142.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58176) #20
  %arrayidx1145.9 = getelementptr i32, ptr %p, i32 652
  %501 = ptrtoint ptr %arrayidx1145.9 to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 %call1142.9, ptr %arrayidx1145.9, align 4
  %call1142.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58240) #20
  %arrayidx1145.10 = getelementptr i32, ptr %p, i32 653
  %502 = ptrtoint ptr %arrayidx1145.10 to i32
  call void @__asan_store4_noabort(i32 %502)
  store i32 %call1142.10, ptr %arrayidx1145.10, align 4
  %call1142.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58304) #20
  %arrayidx1145.11 = getelementptr i32, ptr %p, i32 654
  %503 = ptrtoint ptr %arrayidx1145.11 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 %call1142.11, ptr %arrayidx1145.11, align 4
  %call1170 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57604) #20
  %arrayidx1173 = getelementptr i32, ptr %p, i32 655
  %504 = ptrtoint ptr %arrayidx1173 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %call1170, ptr %arrayidx1173, align 4
  %call1170.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57668) #20
  %arrayidx1173.1 = getelementptr i32, ptr %p, i32 656
  %505 = ptrtoint ptr %arrayidx1173.1 to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %call1170.1, ptr %arrayidx1173.1, align 4
  %call1170.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57732) #20
  %arrayidx1173.2 = getelementptr i32, ptr %p, i32 657
  %506 = ptrtoint ptr %arrayidx1173.2 to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 %call1170.2, ptr %arrayidx1173.2, align 4
  %call1170.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57796) #20
  %arrayidx1173.3 = getelementptr i32, ptr %p, i32 658
  %507 = ptrtoint ptr %arrayidx1173.3 to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 %call1170.3, ptr %arrayidx1173.3, align 4
  %call1170.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57860) #20
  %arrayidx1173.4 = getelementptr i32, ptr %p, i32 659
  %508 = ptrtoint ptr %arrayidx1173.4 to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %call1170.4, ptr %arrayidx1173.4, align 4
  %call1170.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57924) #20
  %arrayidx1173.5 = getelementptr i32, ptr %p, i32 660
  %509 = ptrtoint ptr %arrayidx1173.5 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %call1170.5, ptr %arrayidx1173.5, align 4
  %call1170.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57988) #20
  %arrayidx1173.6 = getelementptr i32, ptr %p, i32 661
  %510 = ptrtoint ptr %arrayidx1173.6 to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 %call1170.6, ptr %arrayidx1173.6, align 4
  %call1170.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58052) #20
  %arrayidx1173.7 = getelementptr i32, ptr %p, i32 662
  %511 = ptrtoint ptr %arrayidx1173.7 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %call1170.7, ptr %arrayidx1173.7, align 4
  %call1170.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58116) #20
  %arrayidx1173.8 = getelementptr i32, ptr %p, i32 663
  %512 = ptrtoint ptr %arrayidx1173.8 to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %call1170.8, ptr %arrayidx1173.8, align 4
  %call1170.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58180) #20
  %arrayidx1173.9 = getelementptr i32, ptr %p, i32 664
  %513 = ptrtoint ptr %arrayidx1173.9 to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %call1170.9, ptr %arrayidx1173.9, align 4
  %call1170.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58244) #20
  %arrayidx1173.10 = getelementptr i32, ptr %p, i32 665
  %514 = ptrtoint ptr %arrayidx1173.10 to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 %call1170.10, ptr %arrayidx1173.10, align 4
  %call1170.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58308) #20
  %arrayidx1173.11 = getelementptr i32, ptr %p, i32 666
  %515 = ptrtoint ptr %arrayidx1173.11 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 %call1170.11, ptr %arrayidx1173.11, align 4
  %call1198 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57608) #20
  %arrayidx1201 = getelementptr i32, ptr %p, i32 667
  %516 = ptrtoint ptr %arrayidx1201 to i32
  call void @__asan_store4_noabort(i32 %516)
  store i32 %call1198, ptr %arrayidx1201, align 4
  %call1198.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57672) #20
  %arrayidx1201.1 = getelementptr i32, ptr %p, i32 668
  %517 = ptrtoint ptr %arrayidx1201.1 to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %call1198.1, ptr %arrayidx1201.1, align 4
  %call1198.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57736) #20
  %arrayidx1201.2 = getelementptr i32, ptr %p, i32 669
  %518 = ptrtoint ptr %arrayidx1201.2 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 %call1198.2, ptr %arrayidx1201.2, align 4
  %call1198.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57800) #20
  %arrayidx1201.3 = getelementptr i32, ptr %p, i32 670
  %519 = ptrtoint ptr %arrayidx1201.3 to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 %call1198.3, ptr %arrayidx1201.3, align 4
  %call1198.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57864) #20
  %arrayidx1201.4 = getelementptr i32, ptr %p, i32 671
  %520 = ptrtoint ptr %arrayidx1201.4 to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %call1198.4, ptr %arrayidx1201.4, align 4
  %call1198.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57928) #20
  %arrayidx1201.5 = getelementptr i32, ptr %p, i32 672
  %521 = ptrtoint ptr %arrayidx1201.5 to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 %call1198.5, ptr %arrayidx1201.5, align 4
  %call1198.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57992) #20
  %arrayidx1201.6 = getelementptr i32, ptr %p, i32 673
  %522 = ptrtoint ptr %arrayidx1201.6 to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 %call1198.6, ptr %arrayidx1201.6, align 4
  %call1198.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58056) #20
  %arrayidx1201.7 = getelementptr i32, ptr %p, i32 674
  %523 = ptrtoint ptr %arrayidx1201.7 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 %call1198.7, ptr %arrayidx1201.7, align 4
  %call1198.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58120) #20
  %arrayidx1201.8 = getelementptr i32, ptr %p, i32 675
  %524 = ptrtoint ptr %arrayidx1201.8 to i32
  call void @__asan_store4_noabort(i32 %524)
  store i32 %call1198.8, ptr %arrayidx1201.8, align 4
  %call1198.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58184) #20
  %arrayidx1201.9 = getelementptr i32, ptr %p, i32 676
  %525 = ptrtoint ptr %arrayidx1201.9 to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 %call1198.9, ptr %arrayidx1201.9, align 4
  %call1198.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58248) #20
  %arrayidx1201.10 = getelementptr i32, ptr %p, i32 677
  %526 = ptrtoint ptr %arrayidx1201.10 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %call1198.10, ptr %arrayidx1201.10, align 4
  %call1198.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58312) #20
  %arrayidx1201.11 = getelementptr i32, ptr %p, i32 678
  %527 = ptrtoint ptr %arrayidx1201.11 to i32
  call void @__asan_store4_noabort(i32 %527)
  store i32 %call1198.11, ptr %arrayidx1201.11, align 4
  %call1226 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57616) #20
  %arrayidx1229 = getelementptr i32, ptr %p, i32 679
  %528 = ptrtoint ptr %arrayidx1229 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 %call1226, ptr %arrayidx1229, align 4
  %call1226.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57680) #20
  %arrayidx1229.1 = getelementptr i32, ptr %p, i32 680
  %529 = ptrtoint ptr %arrayidx1229.1 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %call1226.1, ptr %arrayidx1229.1, align 4
  %call1226.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57744) #20
  %arrayidx1229.2 = getelementptr i32, ptr %p, i32 681
  %530 = ptrtoint ptr %arrayidx1229.2 to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %call1226.2, ptr %arrayidx1229.2, align 4
  %call1226.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57808) #20
  %arrayidx1229.3 = getelementptr i32, ptr %p, i32 682
  %531 = ptrtoint ptr %arrayidx1229.3 to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 %call1226.3, ptr %arrayidx1229.3, align 4
  %call1226.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57872) #20
  %arrayidx1229.4 = getelementptr i32, ptr %p, i32 683
  %532 = ptrtoint ptr %arrayidx1229.4 to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 %call1226.4, ptr %arrayidx1229.4, align 4
  %call1226.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57936) #20
  %arrayidx1229.5 = getelementptr i32, ptr %p, i32 684
  %533 = ptrtoint ptr %arrayidx1229.5 to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %call1226.5, ptr %arrayidx1229.5, align 4
  %call1226.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58000) #20
  %arrayidx1229.6 = getelementptr i32, ptr %p, i32 685
  %534 = ptrtoint ptr %arrayidx1229.6 to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 %call1226.6, ptr %arrayidx1229.6, align 4
  %call1226.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58064) #20
  %arrayidx1229.7 = getelementptr i32, ptr %p, i32 686
  %535 = ptrtoint ptr %arrayidx1229.7 to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 %call1226.7, ptr %arrayidx1229.7, align 4
  %call1226.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58128) #20
  %arrayidx1229.8 = getelementptr i32, ptr %p, i32 687
  %536 = ptrtoint ptr %arrayidx1229.8 to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 %call1226.8, ptr %arrayidx1229.8, align 4
  %call1226.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58192) #20
  %arrayidx1229.9 = getelementptr i32, ptr %p, i32 688
  %537 = ptrtoint ptr %arrayidx1229.9 to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 %call1226.9, ptr %arrayidx1229.9, align 4
  %call1226.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58256) #20
  %arrayidx1229.10 = getelementptr i32, ptr %p, i32 689
  %538 = ptrtoint ptr %arrayidx1229.10 to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 %call1226.10, ptr %arrayidx1229.10, align 4
  %call1226.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58320) #20
  %arrayidx1229.11 = getelementptr i32, ptr %p, i32 690
  %539 = ptrtoint ptr %arrayidx1229.11 to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 %call1226.11, ptr %arrayidx1229.11, align 4
  %call1254 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57624) #20
  %arrayidx1257 = getelementptr i32, ptr %p, i32 691
  %540 = ptrtoint ptr %arrayidx1257 to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 %call1254, ptr %arrayidx1257, align 4
  %call1254.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57688) #20
  %arrayidx1257.1 = getelementptr i32, ptr %p, i32 692
  %541 = ptrtoint ptr %arrayidx1257.1 to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %call1254.1, ptr %arrayidx1257.1, align 4
  %call1254.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57752) #20
  %arrayidx1257.2 = getelementptr i32, ptr %p, i32 693
  %542 = ptrtoint ptr %arrayidx1257.2 to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 %call1254.2, ptr %arrayidx1257.2, align 4
  %call1254.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57816) #20
  %arrayidx1257.3 = getelementptr i32, ptr %p, i32 694
  %543 = ptrtoint ptr %arrayidx1257.3 to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 %call1254.3, ptr %arrayidx1257.3, align 4
  %call1254.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57880) #20
  %arrayidx1257.4 = getelementptr i32, ptr %p, i32 695
  %544 = ptrtoint ptr %arrayidx1257.4 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %call1254.4, ptr %arrayidx1257.4, align 4
  %call1254.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57944) #20
  %arrayidx1257.5 = getelementptr i32, ptr %p, i32 696
  %545 = ptrtoint ptr %arrayidx1257.5 to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 %call1254.5, ptr %arrayidx1257.5, align 4
  %call1254.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58008) #20
  %arrayidx1257.6 = getelementptr i32, ptr %p, i32 697
  %546 = ptrtoint ptr %arrayidx1257.6 to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 %call1254.6, ptr %arrayidx1257.6, align 4
  %call1254.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58072) #20
  %arrayidx1257.7 = getelementptr i32, ptr %p, i32 698
  %547 = ptrtoint ptr %arrayidx1257.7 to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 %call1254.7, ptr %arrayidx1257.7, align 4
  %call1254.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58136) #20
  %arrayidx1257.8 = getelementptr i32, ptr %p, i32 699
  %548 = ptrtoint ptr %arrayidx1257.8 to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %call1254.8, ptr %arrayidx1257.8, align 4
  %call1254.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58200) #20
  %arrayidx1257.9 = getelementptr i32, ptr %p, i32 700
  %549 = ptrtoint ptr %arrayidx1257.9 to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 %call1254.9, ptr %arrayidx1257.9, align 4
  %call1254.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58264) #20
  %arrayidx1257.10 = getelementptr i32, ptr %p, i32 701
  %550 = ptrtoint ptr %arrayidx1257.10 to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %call1254.10, ptr %arrayidx1257.10, align 4
  %call1254.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58328) #20
  %arrayidx1257.11 = getelementptr i32, ptr %p, i32 702
  %551 = ptrtoint ptr %arrayidx1257.11 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 %call1254.11, ptr %arrayidx1257.11, align 4
  %call1282 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57640) #20
  %arrayidx1285 = getelementptr i32, ptr %p, i32 703
  %552 = ptrtoint ptr %arrayidx1285 to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 %call1282, ptr %arrayidx1285, align 4
  %call1282.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57704) #20
  %arrayidx1285.1 = getelementptr i32, ptr %p, i32 704
  %553 = ptrtoint ptr %arrayidx1285.1 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 %call1282.1, ptr %arrayidx1285.1, align 4
  %call1282.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57768) #20
  %arrayidx1285.2 = getelementptr i32, ptr %p, i32 705
  %554 = ptrtoint ptr %arrayidx1285.2 to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 %call1282.2, ptr %arrayidx1285.2, align 4
  %call1282.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57832) #20
  %arrayidx1285.3 = getelementptr i32, ptr %p, i32 706
  %555 = ptrtoint ptr %arrayidx1285.3 to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 %call1282.3, ptr %arrayidx1285.3, align 4
  %call1282.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57896) #20
  %arrayidx1285.4 = getelementptr i32, ptr %p, i32 707
  %556 = ptrtoint ptr %arrayidx1285.4 to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 %call1282.4, ptr %arrayidx1285.4, align 4
  %call1282.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57960) #20
  %arrayidx1285.5 = getelementptr i32, ptr %p, i32 708
  %557 = ptrtoint ptr %arrayidx1285.5 to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 %call1282.5, ptr %arrayidx1285.5, align 4
  %call1282.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58024) #20
  %arrayidx1285.6 = getelementptr i32, ptr %p, i32 709
  %558 = ptrtoint ptr %arrayidx1285.6 to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 %call1282.6, ptr %arrayidx1285.6, align 4
  %call1282.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58088) #20
  %arrayidx1285.7 = getelementptr i32, ptr %p, i32 710
  %559 = ptrtoint ptr %arrayidx1285.7 to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 %call1282.7, ptr %arrayidx1285.7, align 4
  %call1282.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58152) #20
  %arrayidx1285.8 = getelementptr i32, ptr %p, i32 711
  %560 = ptrtoint ptr %arrayidx1285.8 to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 %call1282.8, ptr %arrayidx1285.8, align 4
  %call1282.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58216) #20
  %arrayidx1285.9 = getelementptr i32, ptr %p, i32 712
  %561 = ptrtoint ptr %arrayidx1285.9 to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 %call1282.9, ptr %arrayidx1285.9, align 4
  %call1282.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58280) #20
  %arrayidx1285.10 = getelementptr i32, ptr %p, i32 713
  %562 = ptrtoint ptr %arrayidx1285.10 to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %call1282.10, ptr %arrayidx1285.10, align 4
  %call1282.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58344) #20
  %arrayidx1285.11 = getelementptr i32, ptr %p, i32 714
  %563 = ptrtoint ptr %arrayidx1285.11 to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %call1282.11, ptr %arrayidx1285.11, align 4
  %call1310 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57656) #20
  %arrayidx1313 = getelementptr i32, ptr %p, i32 715
  %564 = ptrtoint ptr %arrayidx1313 to i32
  call void @__asan_store4_noabort(i32 %564)
  store i32 %call1310, ptr %arrayidx1313, align 4
  %call1310.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57720) #20
  %arrayidx1313.1 = getelementptr i32, ptr %p, i32 716
  %565 = ptrtoint ptr %arrayidx1313.1 to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %call1310.1, ptr %arrayidx1313.1, align 4
  %call1310.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57784) #20
  %arrayidx1313.2 = getelementptr i32, ptr %p, i32 717
  %566 = ptrtoint ptr %arrayidx1313.2 to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 %call1310.2, ptr %arrayidx1313.2, align 4
  %call1310.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57848) #20
  %arrayidx1313.3 = getelementptr i32, ptr %p, i32 718
  %567 = ptrtoint ptr %arrayidx1313.3 to i32
  call void @__asan_store4_noabort(i32 %567)
  store i32 %call1310.3, ptr %arrayidx1313.3, align 4
  %call1310.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57912) #20
  %arrayidx1313.4 = getelementptr i32, ptr %p, i32 719
  %568 = ptrtoint ptr %arrayidx1313.4 to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 %call1310.4, ptr %arrayidx1313.4, align 4
  %call1310.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57976) #20
  %arrayidx1313.5 = getelementptr i32, ptr %p, i32 720
  %569 = ptrtoint ptr %arrayidx1313.5 to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 %call1310.5, ptr %arrayidx1313.5, align 4
  %call1310.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58040) #20
  %arrayidx1313.6 = getelementptr i32, ptr %p, i32 721
  %570 = ptrtoint ptr %arrayidx1313.6 to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 %call1310.6, ptr %arrayidx1313.6, align 4
  %call1310.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58104) #20
  %arrayidx1313.7 = getelementptr i32, ptr %p, i32 722
  %571 = ptrtoint ptr %arrayidx1313.7 to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %call1310.7, ptr %arrayidx1313.7, align 4
  %call1310.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58168) #20
  %arrayidx1313.8 = getelementptr i32, ptr %p, i32 723
  %572 = ptrtoint ptr %arrayidx1313.8 to i32
  call void @__asan_store4_noabort(i32 %572)
  store i32 %call1310.8, ptr %arrayidx1313.8, align 4
  %call1310.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58232) #20
  %arrayidx1313.9 = getelementptr i32, ptr %p, i32 724
  %573 = ptrtoint ptr %arrayidx1313.9 to i32
  call void @__asan_store4_noabort(i32 %573)
  store i32 %call1310.9, ptr %arrayidx1313.9, align 4
  %call1310.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58296) #20
  %arrayidx1313.10 = getelementptr i32, ptr %p, i32 725
  %574 = ptrtoint ptr %arrayidx1313.10 to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %call1310.10, ptr %arrayidx1313.10, align 4
  %call1310.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58360) #20
  %arrayidx1313.11 = getelementptr i32, ptr %p, i32 726
  %575 = ptrtoint ptr %arrayidx1313.11 to i32
  call void @__asan_store4_noabort(i32 %575)
  store i32 %call1310.11, ptr %arrayidx1313.11, align 4
  %call1338 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57660) #20
  %arrayidx1341 = getelementptr i32, ptr %p, i32 727
  %576 = ptrtoint ptr %arrayidx1341 to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 %call1338, ptr %arrayidx1341, align 4
  %call1338.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57724) #20
  %arrayidx1341.1 = getelementptr i32, ptr %p, i32 728
  %577 = ptrtoint ptr %arrayidx1341.1 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %call1338.1, ptr %arrayidx1341.1, align 4
  %call1338.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57788) #20
  %arrayidx1341.2 = getelementptr i32, ptr %p, i32 729
  %578 = ptrtoint ptr %arrayidx1341.2 to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 %call1338.2, ptr %arrayidx1341.2, align 4
  %call1338.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57852) #20
  %arrayidx1341.3 = getelementptr i32, ptr %p, i32 730
  %579 = ptrtoint ptr %arrayidx1341.3 to i32
  call void @__asan_store4_noabort(i32 %579)
  store i32 %call1338.3, ptr %arrayidx1341.3, align 4
  %call1338.4 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57916) #20
  %arrayidx1341.4 = getelementptr i32, ptr %p, i32 731
  %580 = ptrtoint ptr %arrayidx1341.4 to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 %call1338.4, ptr %arrayidx1341.4, align 4
  %call1338.5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 57980) #20
  %arrayidx1341.5 = getelementptr i32, ptr %p, i32 732
  %581 = ptrtoint ptr %arrayidx1341.5 to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 %call1338.5, ptr %arrayidx1341.5, align 4
  %call1338.6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58044) #20
  %arrayidx1341.6 = getelementptr i32, ptr %p, i32 733
  %582 = ptrtoint ptr %arrayidx1341.6 to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 %call1338.6, ptr %arrayidx1341.6, align 4
  %call1338.7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58108) #20
  %arrayidx1341.7 = getelementptr i32, ptr %p, i32 734
  %583 = ptrtoint ptr %arrayidx1341.7 to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 %call1338.7, ptr %arrayidx1341.7, align 4
  %call1338.8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58172) #20
  %arrayidx1341.8 = getelementptr i32, ptr %p, i32 735
  %584 = ptrtoint ptr %arrayidx1341.8 to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 %call1338.8, ptr %arrayidx1341.8, align 4
  %call1338.9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58236) #20
  %arrayidx1341.9 = getelementptr i32, ptr %p, i32 736
  %585 = ptrtoint ptr %arrayidx1341.9 to i32
  call void @__asan_store4_noabort(i32 %585)
  store i32 %call1338.9, ptr %arrayidx1341.9, align 4
  %call1338.10 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58300) #20
  %arrayidx1341.10 = getelementptr i32, ptr %p, i32 737
  %586 = ptrtoint ptr %arrayidx1341.10 to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 %call1338.10, ptr %arrayidx1341.10, align 4
  %call1338.11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 58364) #20
  %arrayidx1341.11 = getelementptr i32, ptr %p, i32 738
  %587 = ptrtoint ptr %arrayidx1341.11 to i32
  call void @__asan_store4_noabort(i32 %587)
  store i32 %call1338.11, ptr %arrayidx1341.11, align 4
  br label %if.end1345

if.end1345:                                       ; preds = %cond.end928.preheader, %if.end.if.end1345_crit_edge
  %588 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %type, align 4
  %590 = and i32 %589, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %590)
  %switch = icmp eq i32 %590, 6
  br i1 %switch, label %if.then1354, label %if.end1345.if.end1357_crit_edge

if.end1345.if.end1357_crit_edge:                  ; preds = %if.end1345
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end1357

if.then1354:                                      ; preds = %if.end1345
  call void @__sanitizer_cov_trace_pc() #22
  %call1355 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 23540) #20
  %arrayidx1356 = getelementptr i32, ptr %p, i32 739
  %591 = ptrtoint ptr %arrayidx1356 to i32
  call void @__asan_store4_noabort(i32 %591)
  store i32 %call1355, ptr %arrayidx1356, align 4
  br label %if.end1357

if.end1357:                                       ; preds = %if.then1354, %if.end1345.if.end1357_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @igb_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wolopts, align 4
  %flags = getelementptr i8, ptr %netdev, i32 2828
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 47, ptr %supported, align 4
  %wol1 = getelementptr i8, ptr %netdev, i32 3184
  %4 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wol1, align 16
  %and2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %wolopts, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %7 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wol1, align 16
  %and8 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end13_crit_edge, label %if.then10

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %or12 = or i32 %10, 4
  store i32 %or12, ptr %wolopts, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  %11 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wol1, align 16
  %and15 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end20_crit_edge, label %if.then17

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  %13 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts, align 4
  %or19 = or i32 %14, 8
  store i32 %or19, ptr %wolopts, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13.if.end20_crit_edge
  %15 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol1, align 16
  %and22 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %or26 = or i32 %18, 32
  store i32 %or26, ptr %wolopts, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %19 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wol1, align 16
  %and29 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.then31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  %21 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wolopts, align 4
  %or33 = or i32 %22, 1
  store i32 %or33, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 2828
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and1 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool5.not, i32 0, i32 -95
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %wol7 = getelementptr i8, ptr %netdev, i32 3184
  %4 = ptrtoint ptr %wol7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wol7, align 16
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wolopts, align 4
  %and9 = shl i32 %6, 1
  %7 = and i32 %and9, 4
  store i32 %7, ptr %wol7, align 16
  %8 = load i32, ptr %wolopts, align 4
  %and15 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end6.if.end20_crit_edge, label %if.then17

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  %or19 = or i32 %7, 8
  %9 = ptrtoint ptr %wol7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or19, ptr %wol7, align 16
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end6.if.end20_crit_edge
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wolopts, align 4
  %and22 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wol7, align 16
  %or26 = or i32 %13, 16
  store i32 %or26, ptr %wol7, align 16
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %14 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wolopts, align 4
  %and29 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.then31

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  %16 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wol7, align 16
  %or33 = or i32 %17, 2
  store i32 %or33, ptr %wol7, align 16
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %18 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wolopts, align 4
  %and36 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end41_crit_edge, label %if.then38

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wol7, align 16
  %or40 = or i32 %21, 1
  store i32 %or40, ptr %wol7, align 16
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34.if.end41_crit_edge
  %pdev = getelementptr i8, ptr %netdev, i32 3344
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %wol7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wol7, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool43 = icmp ne i32 %25, 0
  %call44 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool43) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %cond, %if.then3 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_msglevel(ptr nocapture noundef readonly %netdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 6144
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @igb_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 6144
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_nway_reset(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @igb_reinit_locked(ptr noundef %add.ptr.i) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_link(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %get_link_status = getelementptr i8, ptr %netdev, i32 4213
  %3 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %get_link_status, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call3 = tail call zeroext i1 @igb_has_link(ptr noundef %add.ptr.i) #20
  %conv = zext i1 %call3 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_eeprom_len(ptr nocapture noundef readonly %netdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr i8, ptr %netdev, i32 4432
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 1
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_id = getelementptr i8, ptr %netdev, i32 4564
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %3 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 4558
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %5 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %shr = lshr i32 %8, 1
  %add = add i32 %1, -1
  %sub = add i32 %add, %8
  %shr5 = lshr i32 %sub, 1
  %sub6 = sub nsw i32 %shr5, %shr
  %add7 = add i32 %sub6, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add7, i32 2) #20
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !162

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #24
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end10

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end10:                                         ; preds = %if.end7.i
  %type = getelementptr i8, ptr %netdev, i32 4416
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp11 = icmp eq i32 %13, 2
  %read = getelementptr i8, ptr %netdev, i32 4392
  br i1 %cmp11, label %if.then13, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub6)
  %cmp2395 = icmp ult i32 %sub6, 2147483647
  br i1 %cmp2395, label %for.body.lr.ph, label %for.cond.preheader.for.end47_crit_edge

for.cond.preheader.for.end47_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end47

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %14 = trunc i32 %shr to i16
  br label %for.body

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read, align 4
  %conv15 = trunc i32 %shr to i16
  %conv18 = trunc i32 %add7 to i16
  %call19 = tail call i32 %16(ptr noundef %hw1, i16 noundef zeroext %conv15, i16 noundef zeroext %conv18, ptr noundef nonnull %call8.i) #20
  br label %if.end35

for.cond:                                         ; preds = %for.body
  %inc = add i16 %i.096, 1
  %conv20 = zext i16 %inc to i32
  %cmp23 = icmp sgt i32 %add7, %conv20
  br i1 %cmp23, label %for.cond.for.body_crit_edge, label %for.cond.if.end35_crit_edge

for.cond.if.end35_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv2097 = phi i32 [ 0, %for.body.lr.ph ], [ %conv20, %for.cond.for.body_crit_edge ]
  %i.096 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %17 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read, align 4
  %conv30 = add i16 %i.096, %14
  %arrayidx = getelementptr i16, ptr %call8.i, i32 %conv2097
  %call31 = tail call i32 %18(ptr noundef %hw1, i16 noundef zeroext %conv30, i16 noundef zeroext 1, ptr noundef %arrayidx) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.cond, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.end35:                                         ; preds = %for.body.if.end35_crit_edge, %for.cond.if.end35_crit_edge, %if.then13
  %ret_val.1 = phi i32 [ %call19, %if.then13 ], [ %call31, %for.body.if.end35_crit_edge ], [ 0, %for.cond.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub6)
  %cmp4099 = icmp ult i32 %sub6, 2147483647
  br i1 %cmp4099, label %if.end35.for.body42_crit_edge, label %if.end35.for.end47_crit_edge

if.end35.for.end47_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end47

if.end35.for.body42_crit_edge:                    ; preds = %if.end35
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %if.end35.for.body42_crit_edge
  %conv37101 = phi i32 [ %conv37, %for.body42.for.body42_crit_edge ], [ 0, %if.end35.for.body42_crit_edge ]
  %i.1100 = phi i16 [ %inc46, %for.body42.for.body42_crit_edge ], [ 0, %if.end35.for.body42_crit_edge ]
  %arrayidx44 = getelementptr i16, ptr %call8.i, i32 %conv37101
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx44, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #20
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx44, align 2
  %inc46 = add i16 %i.1100, 1
  %conv37 = zext i16 %inc46 to i32
  %cmp40 = icmp sgt i32 %add7, %conv37
  br i1 %cmp40, label %for.body42.for.body42_crit_edge, label %for.body42.for.end47_crit_edge

for.body42.for.end47_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end47

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body42

for.end47:                                        ; preds = %for.body42.for.end47_crit_edge, %if.end35.for.end47_crit_edge, %for.cond.preheader.for.end47_crit_edge
  %ret_val.1104 = phi i32 [ %ret_val.1, %if.end35.for.end47_crit_edge ], [ 0, %for.cond.preheader.for.end47_crit_edge ], [ %ret_val.1, %for.body42.for.end47_crit_edge ]
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %and = and i32 %24, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = call ptr @memcpy(ptr %bytes, ptr %add.ptr, i32 %26)
  tail call void @kfree(ptr noundef nonnull %call8.i) #20
  br label %cleanup

cleanup:                                          ; preds = %for.end47, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.1104, %for.end47 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr i8, ptr %netdev, i32 3664
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp2 = icmp ugt i32 %3, 5
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call zeroext i1 @igb_get_flash_presence_i210(ptr noundef %hw1) #20
  br i1 %call3, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  %vendor_id = getelementptr i8, ptr %netdev, i32 4564
  %6 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %7 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 4558
  %8 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device_id, align 2
  %conv6 = zext i16 %9 to i32
  %shl = shl nuw i32 %conv6, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %or)
  %cmp7.not = icmp eq i32 %5, %or
  br i1 %cmp7.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %shr = lshr i32 %11, 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add = add i32 %11, -1
  %sub = add i32 %add, %13
  %shr14 = lshr i32 %sub, 1
  %word_size = getelementptr i8, ptr %netdev, i32 4432
  %14 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %word_size, align 4
  %conv11 = zext i16 %15 to i32
  %mul = shl nuw nsw i32 %conv11, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #24
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end17.if.end24_crit_edge, label %if.then20

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %read = getelementptr i8, ptr %netdev, i32 4392
  %18 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read, align 4
  %conv22 = trunc i32 %shr to i16
  %call23 = tail call i32 %19(ptr noundef %hw1, i16 noundef zeroext %conv22, i16 noundef zeroext 1, ptr noundef nonnull %call9.i) #20
  %incdec.ptr = getelementptr i8, ptr %call9.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %phi.cmp = icmp eq i32 %call23, 0
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17.if.end24_crit_edge
  %ptr.0 = phi ptr [ %incdec.ptr, %if.then20 ], [ %call9.i, %if.end17.if.end24_crit_edge ]
  %ret_val.0 = phi i1 [ %phi.cmp, %if.then20 ], [ true, %if.end17.if.end24_crit_edge ]
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %add27 = add i32 %23, %21
  %and28 = and i32 %add27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp ne i32 %and28, 0
  %or.cond = select i1 %tobool29.not, i1 %ret_val.0, i1 false
  br i1 %or.cond, label %if.then33, label %if.end24.if.end41_crit_edge

if.end24.if.end41_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  %.pre = sub nsw i32 %shr14, %shr
  br label %if.end41

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  %read36 = getelementptr i8, ptr %netdev, i32 4392
  %24 = ptrtoint ptr %read36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read36, align 4
  %conv37 = trunc i32 %shr14 to i16
  %sub38 = sub nsw i32 %shr14, %shr
  %arrayidx39 = getelementptr i16, ptr %call9.i, i32 %sub38
  %call40 = tail call i32 %25(ptr noundef %hw1, i16 noundef zeroext %conv37, i16 noundef zeroext 1, ptr noundef %arrayidx39) #20
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %if.end24.if.end41_crit_edge
  %sub43.pre-phi = phi i32 [ %.pre, %if.end24.if.end41_crit_edge ], [ %sub38, %if.then33 ]
  %add44 = add i32 %sub43.pre-phi, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub43.pre-phi)
  %cmp45133 = icmp ult i32 %sub43.pre-phi, 2147483647
  br i1 %cmp45133, label %if.end41.for.body_crit_edge, label %for.end.thread

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

for.end.thread:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %27)
  br label %for.end60

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end41.for.body_crit_edge
  %conv42135 = phi i32 [ %conv42, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %i.0134 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %arrayidx47 = getelementptr i16, ptr %call9.i, i32 %conv42135
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx47, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #20
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx47, align 2
  %inc = add i16 %i.0134, 1
  %conv42 = zext i16 %inc to i32
  %cmp45 = icmp sgt i32 %add44, %conv42
  br i1 %cmp45, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %35 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %34)
  br i1 %cmp45133, label %for.end.for.body55_crit_edge, label %for.end.for.end60_crit_edge

for.end.for.end60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end60

for.end.for.body55_crit_edge:                     ; preds = %for.end
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.end.for.body55_crit_edge
  %conv50138 = phi i32 [ %conv50, %for.body55.for.body55_crit_edge ], [ 0, %for.end.for.body55_crit_edge ]
  %i.1137 = phi i16 [ %inc59, %for.body55.for.body55_crit_edge ], [ 0, %for.end.for.body55_crit_edge ]
  %arrayidx57 = getelementptr i16, ptr %call9.i, i32 %conv50138
  %36 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx57, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #20
  %39 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx57, align 2
  %inc59 = add i16 %i.1137, 1
  %conv50 = zext i16 %inc59 to i32
  %cmp53 = icmp sgt i32 %add44, %conv50
  br i1 %cmp53, label %for.body55.for.body55_crit_edge, label %for.body55.for.end60_crit_edge

for.body55.for.end60_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end60

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body55

for.end60:                                        ; preds = %for.body55.for.end60_crit_edge, %for.end.for.end60_crit_edge, %for.end.thread
  %write = getelementptr i8, ptr %netdev, i32 4400
  %40 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write, align 4
  %conv63 = trunc i32 %shr to i16
  %conv66 = trunc i32 %add44 to i16
  %call67 = tail call i32 %41(ptr noundef %hw1, i16 noundef zeroext %conv63, i16 noundef zeroext %conv66, ptr noundef nonnull %call9.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %for.end60.if.end74_crit_edge

for.end60.if.end74_crit_edge:                     ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end74

if.then70:                                        ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #22
  %update = getelementptr i8, ptr %netdev, i32 4404
  %42 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %update, align 4
  %call73 = tail call i32 %43(ptr noundef %hw1) #20
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %for.end60.if.end74_crit_edge
  tail call void @igb_set_fw_version(ptr noundef %add.ptr.i) #20
  tail call void @kfree(ptr noundef nonnull %call9.i) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.end74 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_itr_setting = getelementptr i8, ptr %netdev, i32 2916
  %0 = ptrtoint ptr %rx_itr_setting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_itr_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  %shr = lshr i32 %1, 2
  %spec.select = select i1 %cmp, i32 %1, i32 %shr
  %2 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %flags = getelementptr i8, ptr %netdev, i32 2828
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %tx_itr_setting = getelementptr i8, ptr %netdev, i32 2920
  %6 = ptrtoint ptr %tx_itr_setting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_itr_setting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp5 = icmp ult i32 %7, 4
  %shr10 = lshr i32 %7, 2
  %.sink = select i1 %cmp5, i32 %7, i32 %shr10
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %tx_coalesce_usecs, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_coalesce(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %1)
  %cmp = icmp ugt i32 %1, 10000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 8
  br i1 %2, label %switch.hole_check, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end:                                           ; preds = %switch.hole_check.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %3 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %4)
  %cmp8 = icmp ugt i32 %4, 10000
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %lor.lhs.false9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end
  %switch.tableidx145 = add i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx145)
  %5 = icmp ult i32 %switch.tableidx145, 8
  br i1 %5, label %switch.hole_check146, label %lor.lhs.false9.if.end19_crit_edge

lor.lhs.false9.if.end19_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end19

if.end19:                                         ; preds = %switch.hole_check146.if.end19_crit_edge, %lor.lhs.false9.if.end19_crit_edge
  %flags = getelementptr i8, ptr %netdev, i32 2828
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool22.not = icmp eq i32 %4, 0
  %or.cond133 = select i1 %tobool.not, i1 true, i1 %tobool22.not
  br i1 %or.cond133, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26 = icmp ne i32 %1, 0
  %and29 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or.cond139 = select i1 %cmp26, i1 true, i1 %tobool30.not
  br i1 %or.cond139, label %if.end24.if.end35_crit_edge, label %if.then31

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  %and33 = and i32 %7, -17
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and33, ptr %flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end24.if.end35_crit_edge
  %9 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_coalesce_usecs, align 4
  %11 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %12 = icmp ult i32 %11, 3
  %shl = shl i32 %10, 2
  %spec.select = select i1 %12, i32 %10, i32 %shl
  %13 = getelementptr i8, ptr %netdev, i32 2916
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %13, align 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and47 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else51, label %if.then49

if.then49:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 4
  br label %if.end65

if.else51:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_coalesce_usecs, align 4
  %21 = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %22 = icmp ult i32 %21, 3
  %shl62 = shl i32 %20, 2
  %spec.select143 = select i1 %22, i32 %20, i32 %shl62
  br label %if.end65

if.end65:                                         ; preds = %if.else51, %if.then49
  %.sink = phi i32 [ %18, %if.then49 ], [ %spec.select143, %if.else51 ]
  %tx_itr_setting59 = getelementptr i8, ptr %netdev, i32 2920
  %23 = ptrtoint ptr %tx_itr_setting59 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %tx_itr_setting59, align 8
  %num_q_vectors = getelementptr i8, ptr %netdev, i32 2832
  %24 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_q_vectors, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp66140.not = icmp eq i32 %25, 0
  br i1 %cmp66140.not, label %if.end65.cleanup_crit_edge, label %for.body.lr.ph

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end65
  %tx_work_limit = getelementptr i8, ptr %netdev, i32 2928
  %tx_itr_setting72 = getelementptr i8, ptr %netdev, i32 2920
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 45, i32 %i.0141
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %tx_work_limit to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tx_work_limit, align 16
  %work_limit = getelementptr inbounds %struct.igb_q_vector, ptr %27, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %work_limit to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %work_limit, align 4
  %rx = getelementptr inbounds %struct.igb_q_vector, ptr %27, i32 0, i32 6
  %31 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx, align 4
  %tobool68.not = icmp eq ptr %32, null
  %spec.select142 = select i1 %tobool68.not, ptr %tx_itr_setting72, ptr %13
  %33 = ptrtoint ptr %spec.select142 to i32
  call void @__asan_load4_noabort(i32 %33)
  %conv.sink.in = load i32, ptr %spec.select142, align 4
  %conv.sink = trunc i32 %conv.sink.in to i16
  %34 = getelementptr inbounds %struct.igb_q_vector, ptr %27, i32 0, i32 3
  %35 = add i16 %conv.sink, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %35)
  %36 = icmp ult i16 %35, 3
  %storemerge = select i1 %36, i16 648, i16 %conv.sink
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %storemerge, ptr %34, align 4
  %set_itr = getelementptr inbounds %struct.igb_q_vector, ptr %27, i32 0, i32 4
  %38 = ptrtoint ptr %set_itr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %set_itr, align 2
  %inc = add nuw i32 %i.0141, 1
  %39 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_q_vectors, align 16
  %cmp66 = icmp ult i32 %inc, %40
  br i1 %cmp66, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

switch.hole_check:                                ; preds = %lor.lhs.false
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -3, %switch.maskindex
  %41 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %switch.lobit.not = icmp eq i8 %41, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

switch.hole_check146:                             ; preds = %lor.lhs.false9
  %switch.maskindex148 = trunc i32 %switch.tableidx145 to i8
  %switch.shifted149 = lshr i8 -3, %switch.maskindex148
  %42 = and i8 %switch.shifted149, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.lobit150.not = icmp eq i8 %42, 0
  br i1 %switch.lobit150.not, label %switch.hole_check146.if.end19_crit_edge, label %switch.hole_check146.cleanup_crit_edge

switch.hole_check146.cleanup_crit_edge:           ; preds = %switch.hole_check146
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

switch.hole_check146.if.end19_crit_edge:          ; preds = %switch.hole_check146
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end19

cleanup:                                          ; preds = %switch.hole_check146.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %switch.hole_check146.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @igb_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 6190
  %2 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_ring_count, align 2
  %conv = zext i16 %3 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %rx_pending, align 4
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 6188
  %5 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_ring_count, align 4
  %conv1 = zext i16 %6 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 4096)
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 80)
  %8 = trunc i32 %7 to i16
  %9 = add nuw nsw i16 %8, 7
  %conv15 = and i16 %9, 16376
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %10 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pending, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 4096)
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 80)
  %14 = trunc i32 %13 to i16
  %15 = add nuw nsw i16 %14, 7
  %conv39 = and i16 %15, 16376
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 6188
  %16 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_ring_count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv39, i16 %17)
  %cmp42 = icmp eq i16 %conv39, %17
  br i1 %cmp42, label %land.lhs.true, label %if.end.if.end49_crit_edge

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 6190
  %18 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_ring_count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv15, i16 %19)
  %cmp46 = icmp eq i16 %conv15, %19
  br i1 %cmp46, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2824
  %call50291 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50291)
  %tobool51.not292 = icmp eq i32 %call50291, 0
  br i1 %tobool51.not292, label %if.end49.while.end_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  br label %while.body

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end49.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #20
  %call50 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #20
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end49.while.end_crit_edge
  %netdev52 = getelementptr i8, ptr %netdev, i32 2816
  %20 = ptrtoint ptr %netdev52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev52, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2936
  %24 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues, align 8
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.end68

for.cond.preheader:                               ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp55305 = icmp sgt i32 %25, 0
  br i1 %cmp55305, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond57.preheader_crit_edge

for.cond.preheader.for.cond57.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond57.preheader

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond57.preheader:                             ; preds = %for.body.for.cond57.preheader_crit_edge, %for.cond.preheader.for.cond57.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 3004
  %26 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp58307 = icmp sgt i32 %27, 0
  br i1 %cmp58307, label %for.cond57.preheader.for.body60_crit_edge, label %for.cond57.preheader.for.end65_crit_edge

for.cond57.preheader.for.end65_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end65

for.cond57.preheader.for.body60_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body60

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0306 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %i.0306
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.igb_ring, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv39, ptr %count, align 8
  %inc = add nuw nsw i32 %i.0306, 1
  %31 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues, align 8
  %cmp55 = icmp slt i32 %inc, %32
  br i1 %cmp55, label %for.body.for.body_crit_edge, label %for.body.for.cond57.preheader_crit_edge

for.body.for.cond57.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond57.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.cond57.preheader.for.body60_crit_edge
  %i.1308 = phi i32 [ %inc64, %for.body60.for.body60_crit_edge ], [ 0, %for.cond57.preheader.for.body60_crit_edge ]
  %arrayidx61 = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 16, i32 %i.1308
  %33 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx61, align 4
  %count62 = getelementptr inbounds %struct.igb_ring, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %count62 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv15, ptr %count62, align 8
  %inc64 = add nuw nsw i32 %i.1308, 1
  %36 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_rx_queues, align 4
  %cmp58 = icmp slt i32 %inc64, %37
  br i1 %cmp58, label %for.body60.for.body60_crit_edge, label %for.body60.for.end65_crit_edge

for.body60.for.end65_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end65

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body60

for.end65:                                        ; preds = %for.body60.for.end65_crit_edge, %for.cond57.preheader.for.end65_crit_edge
  %38 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv39, ptr %tx_ring_count, align 4
  %rx_ring_count67 = getelementptr i8, ptr %netdev, i32 6190
  %39 = ptrtoint ptr %rx_ring_count67 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv15, ptr %rx_ring_count67, align 2
  br label %clear_reset

if.end68:                                         ; preds = %while.end
  %num_rx_queues70 = getelementptr i8, ptr %netdev, i32 3004
  %40 = ptrtoint ptr %num_rx_queues70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_rx_queues70, align 4
  %42 = call i32 @llvm.smax.i32(i32 %25, i32 %41)
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 384) #20
  %44 = extractvalue { i32, i1 } %43, 1
  %45 = extractvalue { i32, i1 } %43, 0
  %retval.0.i287 = select i1 %44, i32 -1, i32 %45
  %call79 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i287) #24
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %if.end68.clear_reset_crit_edge, label %if.end83

if.end68.clear_reset_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %clear_reset

if.end83:                                         ; preds = %if.end68
  tail call void @igb_down(ptr noundef %add.ptr.i) #20
  %46 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tx_ring_count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv39, i16 %47)
  %cmp87.not = icmp eq i16 %conv39, %47
  br i1 %cmp87.not, label %if.end83.if.end127_crit_edge, label %for.cond90.preheader

if.end83.if.end127_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end127

for.cond90.preheader:                             ; preds = %if.end83
  %48 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp92293 = icmp sgt i32 %49, 0
  br i1 %cmp92293, label %for.cond90.preheader.for.body94_crit_edge, label %for.cond90.preheader.for.end125_crit_edge

for.cond90.preheader.for.end125_crit_edge:        ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end125

for.cond90.preheader.for.body94_crit_edge:        ; preds = %for.cond90.preheader
  br label %for.body94

for.cond113.preheader:                            ; preds = %for.inc110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp115295 = icmp sgt i32 %55, 0
  br i1 %cmp115295, label %for.cond113.preheader.for.body117_crit_edge, label %for.cond113.preheader.for.end125_crit_edge

for.cond113.preheader.for.end125_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end125

for.cond113.preheader.for.body117_crit_edge:      ; preds = %for.cond113.preheader
  br label %for.body117

for.body94:                                       ; preds = %for.inc110.for.body94_crit_edge, %for.cond90.preheader.for.body94_crit_edge
  %i.2294 = phi i32 [ %inc111, %for.inc110.for.body94_crit_edge ], [ 0, %for.cond90.preheader.for.body94_crit_edge ]
  %arrayidx95 = getelementptr %struct.igb_ring, ptr %call79, i32 %i.2294
  %arrayidx97 = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %i.2294
  %50 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx97, align 4
  %52 = call ptr @memcpy(ptr %arrayidx95, ptr %51, i32 384)
  %count99 = getelementptr %struct.igb_ring, ptr %call79, i32 %i.2294, i32 10
  %53 = ptrtoint ptr %count99 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv39, ptr %count99, align 8
  %call101 = tail call i32 @igb_setup_tx_resources(ptr noundef %arrayidx95) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %for.inc110, label %while.cond104.preheader

while.cond104.preheader:                          ; preds = %for.body94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2294)
  %tobool105.not297 = icmp eq i32 %i.2294, 0
  br i1 %tobool105.not297, label %while.cond104.preheader.err_setup_crit_edge, label %while.cond104.preheader.while.body106_crit_edge

while.cond104.preheader.while.body106_crit_edge:  ; preds = %while.cond104.preheader
  br label %while.body106

while.cond104.preheader.err_setup_crit_edge:      ; preds = %while.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_setup

while.body106:                                    ; preds = %while.body106.while.body106_crit_edge, %while.cond104.preheader.while.body106_crit_edge
  %i.3298 = phi i32 [ %dec, %while.body106.while.body106_crit_edge ], [ %i.2294, %while.cond104.preheader.while.body106_crit_edge ]
  %dec = add nsw i32 %i.3298, -1
  %arrayidx107 = getelementptr %struct.igb_ring, ptr %call79, i32 %dec
  tail call void @igb_free_tx_resources(ptr noundef %arrayidx107) #20
  %tobool105.not = icmp eq i32 %dec, 0
  br i1 %tobool105.not, label %while.body106.err_setup_crit_edge, label %while.body106.while.body106_crit_edge

while.body106.while.body106_crit_edge:            ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body106

while.body106.err_setup_crit_edge:                ; preds = %while.body106
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_setup

for.inc110:                                       ; preds = %for.body94
  %inc111 = add nuw nsw i32 %i.2294, 1
  %54 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_tx_queues, align 8
  %cmp92 = icmp slt i32 %inc111, %55
  br i1 %cmp92, label %for.inc110.for.body94_crit_edge, label %for.cond113.preheader

for.inc110.for.body94_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body94

for.body117:                                      ; preds = %for.body117.for.body117_crit_edge, %for.cond113.preheader.for.body117_crit_edge
  %i.4296 = phi i32 [ %inc124, %for.body117.for.body117_crit_edge ], [ 0, %for.cond113.preheader.for.body117_crit_edge ]
  %arrayidx119 = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %i.4296
  %56 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx119, align 4
  tail call void @igb_free_tx_resources(ptr noundef %57) #20
  %58 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx119, align 4
  %arrayidx122 = getelementptr %struct.igb_ring, ptr %call79, i32 %i.4296
  %60 = call ptr @memcpy(ptr %59, ptr %arrayidx122, i32 384)
  %inc124 = add nuw nsw i32 %i.4296, 1
  %61 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_tx_queues, align 8
  %cmp115 = icmp slt i32 %inc124, %62
  br i1 %cmp115, label %for.body117.for.body117_crit_edge, label %for.body117.for.end125_crit_edge

for.body117.for.end125_crit_edge:                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end125

for.body117.for.body117_crit_edge:                ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body117

for.end125:                                       ; preds = %for.body117.for.end125_crit_edge, %for.cond113.preheader.for.end125_crit_edge, %for.cond90.preheader.for.end125_crit_edge
  %63 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv39, ptr %tx_ring_count, align 4
  br label %if.end127

if.end127:                                        ; preds = %for.end125, %if.end83.if.end127_crit_edge
  %rx_ring_count129 = getelementptr i8, ptr %netdev, i32 6190
  %64 = ptrtoint ptr %rx_ring_count129 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %rx_ring_count129, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv15, i16 %65)
  %cmp131.not = icmp eq i16 %conv15, %65
  br i1 %cmp131.not, label %if.end127.err_setup_crit_edge, label %for.cond134.preheader

if.end127.err_setup_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_setup

for.cond134.preheader:                            ; preds = %if.end127
  %66 = ptrtoint ptr %num_rx_queues70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_rx_queues70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp136299 = icmp sgt i32 %67, 0
  br i1 %cmp136299, label %for.cond134.preheader.for.body138_crit_edge, label %for.cond134.preheader.for.end171_crit_edge

for.cond134.preheader.for.end171_crit_edge:       ; preds = %for.cond134.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end171

for.cond134.preheader.for.body138_crit_edge:      ; preds = %for.cond134.preheader
  br label %for.body138

for.cond159.preheader:                            ; preds = %for.inc156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp161301 = icmp sgt i32 %74, 0
  br i1 %cmp161301, label %for.cond159.preheader.for.body163_crit_edge, label %for.cond159.preheader.for.end171_crit_edge

for.cond159.preheader.for.end171_crit_edge:       ; preds = %for.cond159.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end171

for.cond159.preheader.for.body163_crit_edge:      ; preds = %for.cond159.preheader
  br label %for.body163

for.body138:                                      ; preds = %for.inc156.for.body138_crit_edge, %for.cond134.preheader.for.body138_crit_edge
  %i.5300 = phi i32 [ %inc157, %for.inc156.for.body138_crit_edge ], [ 0, %for.cond134.preheader.for.body138_crit_edge ]
  %arrayidx139 = getelementptr %struct.igb_ring, ptr %call79, i32 %i.5300
  %arrayidx141 = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 16, i32 %i.5300
  %68 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx141, align 4
  %70 = call ptr @memcpy(ptr %arrayidx139, ptr %69, i32 384)
  %xdp_rxq = getelementptr %struct.igb_ring, ptr %call79, i32 %i.5300, i32 24
  %71 = call ptr @memset(ptr %xdp_rxq, i32 0, i32 128)
  %count144 = getelementptr %struct.igb_ring, ptr %call79, i32 %i.5300, i32 10
  %72 = ptrtoint ptr %count144 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv15, ptr %count144, align 8
  %call146 = tail call i32 @igb_setup_rx_resources(ptr noundef %arrayidx139) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %for.inc156, label %while.cond149.preheader

while.cond149.preheader:                          ; preds = %for.body138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5300)
  %tobool150.not303 = icmp eq i32 %i.5300, 0
  br i1 %tobool150.not303, label %while.cond149.preheader.err_setup_crit_edge, label %while.cond149.preheader.while.body151_crit_edge

while.cond149.preheader.while.body151_crit_edge:  ; preds = %while.cond149.preheader
  br label %while.body151

while.cond149.preheader.err_setup_crit_edge:      ; preds = %while.cond149.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_setup

while.body151:                                    ; preds = %while.body151.while.body151_crit_edge, %while.cond149.preheader.while.body151_crit_edge
  %i.6304 = phi i32 [ %dec152, %while.body151.while.body151_crit_edge ], [ %i.5300, %while.cond149.preheader.while.body151_crit_edge ]
  %dec152 = add nsw i32 %i.6304, -1
  %arrayidx153 = getelementptr %struct.igb_ring, ptr %call79, i32 %dec152
  tail call void @igb_free_rx_resources(ptr noundef %arrayidx153) #20
  %tobool150.not = icmp eq i32 %dec152, 0
  br i1 %tobool150.not, label %while.body151.err_setup_crit_edge, label %while.body151.while.body151_crit_edge

while.body151.while.body151_crit_edge:            ; preds = %while.body151
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body151

while.body151.err_setup_crit_edge:                ; preds = %while.body151
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_setup

for.inc156:                                       ; preds = %for.body138
  %inc157 = add nuw nsw i32 %i.5300, 1
  %73 = ptrtoint ptr %num_rx_queues70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_rx_queues70, align 4
  %cmp136 = icmp slt i32 %inc157, %74
  br i1 %cmp136, label %for.inc156.for.body138_crit_edge, label %for.cond159.preheader

for.inc156.for.body138_crit_edge:                 ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body138

for.body163:                                      ; preds = %for.body163.for.body163_crit_edge, %for.cond159.preheader.for.body163_crit_edge
  %i.7302 = phi i32 [ %inc170, %for.body163.for.body163_crit_edge ], [ 0, %for.cond159.preheader.for.body163_crit_edge ]
  %arrayidx165 = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 16, i32 %i.7302
  %75 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx165, align 4
  tail call void @igb_free_rx_resources(ptr noundef %76) #20
  %77 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx165, align 4
  %arrayidx168 = getelementptr %struct.igb_ring, ptr %call79, i32 %i.7302
  %79 = call ptr @memcpy(ptr %78, ptr %arrayidx168, i32 384)
  %inc170 = add nuw nsw i32 %i.7302, 1
  %80 = ptrtoint ptr %num_rx_queues70 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_rx_queues70, align 4
  %cmp161 = icmp slt i32 %inc170, %81
  br i1 %cmp161, label %for.body163.for.body163_crit_edge, label %for.body163.for.end171_crit_edge

for.body163.for.end171_crit_edge:                 ; preds = %for.body163
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end171

for.body163.for.body163_crit_edge:                ; preds = %for.body163
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body163

for.end171:                                       ; preds = %for.body163.for.end171_crit_edge, %for.cond159.preheader.for.end171_crit_edge, %for.cond134.preheader.for.end171_crit_edge
  %82 = ptrtoint ptr %rx_ring_count129 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv15, ptr %rx_ring_count129, align 2
  br label %err_setup

err_setup:                                        ; preds = %for.end171, %while.body151.err_setup_crit_edge, %while.cond149.preheader.err_setup_crit_edge, %if.end127.err_setup_crit_edge, %while.body106.err_setup_crit_edge, %while.cond104.preheader.err_setup_crit_edge
  %err.3 = phi i32 [ 0, %for.end171 ], [ 0, %if.end127.err_setup_crit_edge ], [ %call146, %while.cond149.preheader.err_setup_crit_edge ], [ %call101, %while.cond104.preheader.err_setup_crit_edge ], [ %call146, %while.body151.err_setup_crit_edge ], [ %call101, %while.body106.err_setup_crit_edge ]
  %call174 = tail call i32 @igb_up(ptr noundef %add.ptr.i) #20
  tail call void @vfree(ptr noundef nonnull %call79) #20
  br label %clear_reset

clear_reset:                                      ; preds = %err_setup, %if.end68.clear_reset_crit_edge, %for.end65
  %err.4 = phi i32 [ %err.3, %err_setup ], [ 0, %for.end65 ], [ -12, %if.end68.clear_reset_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #20
  br label %cleanup

cleanup:                                          ; preds = %clear_reset, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %clear_reset ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @igb_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 3288
  %0 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fc_autoneg, align 8, !range !161
  %2 = zext i8 %1 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %autoneg, align 4
  %current_mode = getelementptr i8, ptr %netdev, i32 4244
  %4 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %5, label %entry.if.end14_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then5
    i32 3, label %if.then10
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  br label %if.end14.sink.split

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end14.sink.split

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %rx_pause11 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %7 = ptrtoint ptr %rx_pause11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rx_pause11, align 4
  %tx_pause12 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then10, %if.then5, %if.then
  %tx_pause.sink = phi ptr [ %tx_pause, %if.then5 ], [ %tx_pause12, %if.then10 ], [ %rx_pause, %if.then ]
  %8 = ptrtoint ptr %tx_pause.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tx_pause.sink, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  %eth_flags = getelementptr i8, ptr %netdev, i32 4552
  %0 = ptrtoint ptr %eth_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %eth_flags, align 4
  %1 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3 = icmp ne i32 %3, 0
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 3288
  %frombool = zext i1 %tobool3 to i8
  %4 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %fc_autoneg, align 8
  %state = getelementptr i8, ptr %netdev, i32 2824
  %call497 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call497)
  %tobool5.not98 = icmp eq i32 %call497, 0
  br i1 %tobool5.not98, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #20
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #20
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %5 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fc_autoneg, align 8, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.else15, label %if.then9

if.then9:                                         ; preds = %while.end
  %requested_mode = getelementptr i8, ptr %netdev, i32 4248
  %7 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %requested_mode, align 4
  %netdev10 = getelementptr i8, ptr %netdev, i32 2816
  %8 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev10, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @igb_down(ptr noundef %add.ptr.i) #20
  %call13 = tail call i32 @igb_up(ptr noundef %add.ptr.i) #20
  br label %if.end61

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @igb_reset(ptr noundef %add.ptr.i) #20
  br label %if.end61

if.else15:                                        ; preds = %while.end
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %12 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  %tx_pause34 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %14 = ptrtoint ptr %tx_pause34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pause34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool35.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %land.lhs.true33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else15
  br i1 %tobool35.not, label %land.lhs.true24, label %land.lhs.true.if.end51.sink.split_crit_edge

land.lhs.true.if.end51.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51.sink.split

land.lhs.true24:                                  ; preds = %land.lhs.true
  %16 = ptrtoint ptr %tx_pause34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pause34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end51.sink.split_crit_edge, label %land.lhs.true24.if.end51_crit_edge

land.lhs.true24.if.end51_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51

land.lhs.true24.if.end51.sink.split_crit_edge:    ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51.sink.split

land.lhs.true33:                                  ; preds = %if.else15
  br i1 %tobool35.not, label %land.lhs.true42, label %land.lhs.true33.if.end51.sink.split_crit_edge

land.lhs.true33.if.end51.sink.split_crit_edge:    ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51.sink.split

land.lhs.true42:                                  ; preds = %land.lhs.true33
  %18 = ptrtoint ptr %tx_pause34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_pause34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool44.not = icmp eq i32 %19, 0
  br i1 %tobool44.not, label %land.lhs.true42.if.end51.sink.split_crit_edge, label %land.lhs.true42.if.end51_crit_edge

land.lhs.true42.if.end51_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51

land.lhs.true42.if.end51.sink.split_crit_edge:    ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %land.lhs.true42.if.end51.sink.split_crit_edge, %land.lhs.true33.if.end51.sink.split_crit_edge, %land.lhs.true24.if.end51.sink.split_crit_edge, %land.lhs.true.if.end51.sink.split_crit_edge
  %.sink = phi i32 [ 3, %land.lhs.true.if.end51.sink.split_crit_edge ], [ 1, %land.lhs.true24.if.end51.sink.split_crit_edge ], [ 2, %land.lhs.true33.if.end51.sink.split_crit_edge ], [ 0, %land.lhs.true42.if.end51.sink.split_crit_edge ]
  %requested_mode29 = getelementptr i8, ptr %netdev, i32 4248
  %20 = ptrtoint ptr %requested_mode29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %requested_mode29, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %land.lhs.true42.if.end51_crit_edge, %land.lhs.true24.if.end51_crit_edge
  %requested_mode53 = getelementptr i8, ptr %netdev, i32 4248
  %21 = ptrtoint ptr %requested_mode53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %requested_mode53, align 4
  %current_mode = getelementptr i8, ptr %netdev, i32 4244
  %23 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %current_mode, align 4
  %media_type = getelementptr i8, ptr %netdev, i32 4356
  %24 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp55 = icmp eq i32 %25, 1
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #22
  %call57 = tail call i32 @igb_force_mac_fc(ptr noundef %hw1) #20
  br label %cond.end

cond.false:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #22
  %call58 = tail call i32 @igb_setup_link(ptr noundef %hw1) #20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call57, %cond.true ], [ %call58, %cond.false ]
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 3004
  %26 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp5999 = icmp sgt i32 %27, 0
  br i1 %cmp5999, label %cond.end.for.body_crit_edge, label %cond.end.if.end61_crit_edge

cond.end.if.end61_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.0100 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 16, i32 %i.0100
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  tail call void @igb_setup_srrctl(ptr noundef %add.ptr.i, ptr noundef %29) #20
  %inc = add nuw nsw i32 %i.0100, 1
  %30 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_rx_queues, align 4
  %cmp59 = icmp slt i32 %inc, %31
  br i1 %cmp59, label %for.body.for.body_crit_edge, label %for.body.if.end61_crit_edge

for.body.if.end61_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end61

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end61:                                         ; preds = %for.body.if.end61_crit_edge, %cond.end.if.end61_crit_edge, %if.else, %if.then12
  %retval2.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.else ], [ %cond, %cond.end.if.end61_crit_edge ], [ %cond, %for.body.if.end61_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %if.end61 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_diag_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr nocapture noundef %data) #0 align 64 {
entry:
  %phy_reg.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %state = getelementptr i8, ptr %netdev, i32 2824
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #20
  %mas_capable = getelementptr i8, ptr %netdev, i32 4556
  %2 = ptrtoint ptr %mas_capable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mas_capable, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -2
  store i32 %and, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags2 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then3, label %do.end73

if.then3:                                         ; preds = %if.end
  %autoneg_advertised5 = getelementptr i8, ptr %netdev, i32 4360
  %8 = ptrtoint ptr %autoneg_advertised5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %autoneg_advertised5, align 4
  %forced_speed_duplex7 = getelementptr i8, ptr %netdev, i32 4206
  %10 = ptrtoint ptr %forced_speed_duplex7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %forced_speed_duplex7, align 2
  %autoneg10 = getelementptr i8, ptr %netdev, i32 4210
  %12 = ptrtoint ptr %autoneg10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autoneg10, align 2, !range !161
  %pdev = getelementptr i8, ptr %netdev, i32 3344
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #23
  tail call void @igb_power_up_link(ptr noundef %add.ptr.i) #20
  %arrayidx = getelementptr i64, ptr %data, i32 4
  %hw1.i = getelementptr i8, ptr %netdev, i32 3584
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %arrayidx, align 8
  %media_type.i = getelementptr i8, ptr %netdev, i32 4356
  %17 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i = icmp eq i32 %18, 3
  %mac.i = getelementptr i8, ptr %netdev, i32 3600
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then3
  %serdes_has_link.i = getelementptr i8, ptr %netdev, i32 4217
  %19 = ptrtoint ptr %serdes_has_link.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %serdes_has_link.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.i
  %i.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac.i, align 4
  %call.i = tail call i32 %21(ptr noundef %hw1.i) #20
  %22 = ptrtoint ptr %serdes_has_link.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %serdes_has_link.i, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.igb_link_test.exit_crit_edge

do.body.i.igb_link_test.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_link_test.exit

if.end.i:                                         ; preds = %do.body.i
  tail call void @msleep(i32 noundef 20) #20
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3751
  br i1 %exitcond.not.i, label %if.end.i.if.end22.sink.split.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

if.end.i.if.end22.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22.sink.split.i

if.else.i:                                        ; preds = %if.then3
  %24 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac.i, align 4
  %call13.i = tail call i32 %25(ptr noundef %hw1.i) #20
  %26 = ptrtoint ptr %autoneg10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %autoneg10, align 2, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool15.not.i = icmp eq i8 %27, 0
  br i1 %tobool15.not.i, label %if.else.i.if.end17.i_crit_edge, label %if.then16.i

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @msleep(i32 noundef 5000) #20
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.else.i.if.end17.i_crit_edge
  %call18.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 8) #20
  %and.i = and i32 %call18.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end22.sink.split.i_crit_edge, label %if.end17.i.igb_link_test.exit_crit_edge

if.end17.i.igb_link_test.exit_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_link_test.exit

if.end17.i.if.end22.sink.split.i_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.end17.i.if.end22.sink.split.i_crit_edge, %if.end.i.if.end22.sink.split.i_crit_edge
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1, ptr %arrayidx, align 8
  br label %igb_link_test.exit

igb_link_test.exit:                               ; preds = %if.end22.sink.split.i, %if.end17.i.igb_link_test.exit_crit_edge, %do.body.i.igb_link_test.exit_crit_edge
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx, align 8
  %conv.i = trunc i64 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool13.not = icmp eq i32 %conv.i, 0
  br i1 %tobool13.not, label %igb_link_test.exit.if.end16_crit_edge, label %if.then14

igb_link_test.exit.if.end16_crit_edge:            ; preds = %igb_link_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then14:                                        ; preds = %igb_link_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  %31 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags2, align 4
  %or = or i32 %32, 2
  store i32 %or, ptr %flags2, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %igb_link_test.exit.if.end16_crit_edge
  br i1 %tobool.i.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #22
  %call19 = tail call i32 @igb_close(ptr noundef %netdev) #20
  br label %if.end20

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @igb_reset(ptr noundef %add.ptr.i) #20
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  %type.i = getelementptr i8, ptr %netdev, i32 3664
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 16
  %switch.tableidx = add i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %35 = icmp ult i32 %switch.tableidx, 6
  br i1 %35, label %switch.lookup, label %if.end20.sw.epilog.i_crit_edge

if.end20.sw.epilog.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.igb_diag_test, i32 0, i32 %switch.tableidx
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep225 = getelementptr inbounds [6 x i32], ptr @switch.table.igb_diag_test.71, i32 0, i32 %switch.tableidx
  %37 = ptrtoint ptr %switch.gep225 to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load226 = load i32, ptr %switch.gep225, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end20.sw.epilog.i_crit_edge
  %test.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @reg_test_82575, %if.end20.sw.epilog.i_crit_edge ]
  %toggle.0.i = phi i32 [ %switch.load226, %switch.lookup ], [ 2147480575, %if.end20.sw.epilog.i_crit_edge ]
  %call.i143 = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 8) #20
  %call6.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 8) #20
  %and.i144 = and i32 %call6.i, %toggle.0.i
  %hw_addr8.i = getelementptr i8, ptr %netdev, i32 3588
  %38 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool.not.i145 = icmp eq ptr %39, null
  br i1 %tobool.not.i145, label %sw.epilog.i.if.end.i146_crit_edge, label %do.body12.i, !prof !162

sw.epilog.i.if.end.i146_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i146

do.body12.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !169
  tail call void @arm_heavy_mb() #20
  %40 = tail call i32 @llvm.bswap.i32(i32 %toggle.0.i) #20
  %arrayidx.i = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %40) #20, !srcloc !164
  br label %if.end.i146

if.end.i146:                                      ; preds = %do.body12.i, %sw.epilog.i.if.end.i146_crit_edge
  %call17.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 8) #20
  %and18.i = and i32 %call17.i, %toggle.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i144, i32 %and18.i)
  %cmp.not.i = icmp eq i32 %and.i144, %and18.i
  br i1 %cmp.not.i, label %do.body24.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #22
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %and18.i, i32 noundef %and.i144) #23
  br label %igb_reg_test.exit

do.body24.i:                                      ; preds = %if.end.i146
  %43 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool31.not.i = icmp eq ptr %44, null
  br i1 %tobool31.not.i, label %do.body24.i.if.end45.i_crit_edge, label %do.body41.i, !prof !162

do.body24.i.if.end45.i_crit_edge:                 ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end45.i

do.body41.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !170
  tail call void @arm_heavy_mb() #20
  %45 = tail call i32 @llvm.bswap.i32(i32 %call.i143) #20
  %arrayidx44.i = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx44.i, i32 %45) #20, !srcloc !164
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.body41.i, %do.body24.i.if.end45.i_crit_edge
  %46 = ptrtoint ptr %test.0.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %test.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool48.not195.i = icmp eq i16 %47, 0
  br i1 %tobool48.not195.i, label %if.end45.i.igb_reg_test.exit.thread219_crit_edge, label %if.end45.i.for.cond.preheader.i_crit_edge

if.end45.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end45.i
  br label %for.cond.preheader.i

if.end45.i.igb_reg_test.exit.thread219_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_reg_test.exit.thread219

for.cond.preheader.i:                             ; preds = %for.end.i.for.cond.preheader.i_crit_edge, %if.end45.i.for.cond.preheader.i_crit_edge
  %test.1196.i = phi ptr [ %incdec.ptr.i, %for.end.i.for.cond.preheader.i_crit_edge ], [ %test.0.i, %if.end45.i.for.cond.preheader.i_crit_edge ]
  %array_len.i = getelementptr inbounds %struct.igb_reg_test, ptr %test.1196.i, i32 0, i32 2
  %48 = ptrtoint ptr %array_len.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %array_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp49192.not.i = icmp eq i16 %49, 0
  br i1 %cmp49192.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %test_type.i = getelementptr inbounds %struct.igb_reg_test, ptr %test.1196.i, i32 0, i32 3
  %mask123.i = getelementptr inbounds %struct.igb_reg_test, ptr %test.1196.i, i32 0, i32 4
  %write124.i = getelementptr inbounds %struct.igb_reg_test, ptr %test.1196.i, i32 0, i32 5
  %reg_offset86.i = getelementptr inbounds %struct.igb_reg_test, ptr %test.1196.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0193.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i148, %for.inc.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %test_type.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %test_type.i, align 2
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %51, label %for.body.i.for.inc.i_crit_edge [
    i16 1, label %do.body53.i
    i16 2, label %do.body63.i
    i16 3, label %do.body78.i
    i16 4, label %do.body91.i
    i16 5, label %do.body104.i
    i16 6, label %do.body117.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

do.body53.i:                                      ; preds = %for.body.i
  %53 = ptrtoint ptr %test.1196.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %test.1196.i, align 4
  %conv55.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %reg_offset86.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %reg_offset86.i, align 2
  %conv56.i = zext i16 %56 to i32
  %mul.i = mul i32 %i.0193.i, %conv56.i
  %add.i = add i32 %mul.i, %conv55.i
  %57 = ptrtoint ptr %mask123.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask123.i, align 4
  %59 = ptrtoint ptr %write124.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %write124.i, align 4
  %call57.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add.i, i32 noundef %58, i32 noundef %60) #20
  br i1 %call57.i, label %do.body53.i.if.then24_crit_edge, label %do.body53.i.for.inc.i_crit_edge

do.body53.i.for.inc.i_crit_edge:                  ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

do.body53.i.if.then24_crit_edge:                  ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then24

do.body63.i:                                      ; preds = %for.body.i
  %61 = ptrtoint ptr %test.1196.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %test.1196.i, align 4
  %conv65.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %reg_offset86.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %reg_offset86.i, align 2
  %conv67.i = zext i16 %64 to i32
  %mul68.i = mul i32 %i.0193.i, %conv67.i
  %add69.i = add i32 %mul68.i, %conv65.i
  %65 = ptrtoint ptr %mask123.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mask123.i, align 4
  %67 = ptrtoint ptr %write124.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %write124.i, align 4
  %69 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge.i.i, label %do.body7.i.i, !prof !162

entry.if.end_crit_edge.i.i:                       ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #22
  %.pre.i.i = and i32 %68, %66
  br label %if.end.i.i

do.body7.i.i:                                     ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !171
  tail call void @arm_heavy_mb() #20
  %and.i.i = and i32 %68, %66
  %71 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #20
  %arrayidx.i.i = getelementptr i8, ptr %70, i32 %add69.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %71) #20, !srcloc !164
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body7.i.i, %entry.if.end_crit_edge.i.i
  %and12.pre-phi.i.i = phi i32 [ %.pre.i.i, %entry.if.end_crit_edge.i.i ], [ %and.i.i, %do.body7.i.i ]
  %call.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef %add69.i) #20
  %and13.i.i = and i32 %call.i.i, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %and12.pre-phi.i.i, i32 %and13.i.i)
  %cmp.not.i.i = icmp eq i32 %and12.pre-phi.i.i, %and13.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %reg_set_and_check.exit.thread.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

reg_set_and_check.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %72 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev, align 16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19, i32 noundef %add69.i, i32 noundef %and13.i.i, i32 noundef %and12.pre-phi.i.i) #23
  %conv.i.i = sext i32 %add69.i to i64
  br label %igb_reg_test.exit

do.body78.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !172
  tail call void @arm_heavy_mb() #20
  %74 = ptrtoint ptr %write124.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %write124.i, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #20
  %77 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_addr8.i, align 4
  %79 = ptrtoint ptr %test.1196.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %test.1196.i, align 4
  %conv85.i = zext i16 %80 to i32
  %add.ptr.i147 = getelementptr i8, ptr %78, i32 %conv85.i
  %81 = ptrtoint ptr %reg_offset86.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %reg_offset86.i, align 2
  %conv87.i = zext i16 %82 to i32
  %mul88.i = mul i32 %i.0193.i, %conv87.i
  %add.ptr89.i = getelementptr i8, ptr %add.ptr.i147, i32 %mul88.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 %76) #20, !srcloc !164
  br label %for.inc.i

do.body91.i:                                      ; preds = %for.body.i
  %83 = ptrtoint ptr %test.1196.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %test.1196.i, align 4
  %conv93.i = zext i16 %84 to i32
  %mul94.i = shl i32 %i.0193.i, 2
  %add95.i = add i32 %mul94.i, %conv93.i
  %85 = ptrtoint ptr %mask123.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mask123.i, align 4
  %87 = ptrtoint ptr %write124.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %write124.i, align 4
  %call98.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add95.i, i32 noundef %86, i32 noundef %88) #20
  br i1 %call98.i, label %do.body91.i.if.then24_crit_edge, label %do.body91.i.for.inc.i_crit_edge

do.body91.i.for.inc.i_crit_edge:                  ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

do.body91.i.if.then24_crit_edge:                  ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then24

do.body104.i:                                     ; preds = %for.body.i
  %89 = ptrtoint ptr %test.1196.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %test.1196.i, align 4
  %conv106.i = zext i16 %90 to i32
  %mul107.i = shl i32 %i.0193.i, 3
  %add108.i = add i32 %mul107.i, %conv106.i
  %91 = ptrtoint ptr %mask123.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mask123.i, align 4
  %93 = ptrtoint ptr %write124.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %write124.i, align 4
  %call111.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add108.i, i32 noundef %92, i32 noundef %94) #20
  br i1 %call111.i, label %do.body104.i.if.then24_crit_edge, label %do.body104.i.for.inc.i_crit_edge

do.body104.i.for.inc.i_crit_edge:                 ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

do.body104.i.if.then24_crit_edge:                 ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then24

do.body117.i:                                     ; preds = %for.body.i
  %95 = ptrtoint ptr %test.1196.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %test.1196.i, align 4
  %conv119.i = zext i16 %96 to i32
  %mul121.i = shl i32 %i.0193.i, 3
  %add120.i = or i32 %mul121.i, 4
  %add122.i = add i32 %add120.i, %conv119.i
  %97 = ptrtoint ptr %mask123.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mask123.i, align 4
  %99 = ptrtoint ptr %write124.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %write124.i, align 4
  %call125.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add122.i, i32 noundef %98, i32 noundef %100) #20
  br i1 %call125.i, label %do.body117.i.if.then24_crit_edge, label %do.body117.i.for.inc.i_crit_edge

do.body117.i.for.inc.i_crit_edge:                 ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

do.body117.i.if.then24_crit_edge:                 ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then24

for.inc.i:                                        ; preds = %do.body117.i.for.inc.i_crit_edge, %do.body104.i.for.inc.i_crit_edge, %do.body91.i.for.inc.i_crit_edge, %do.body78.i, %if.end.i.i.for.inc.i_crit_edge, %do.body53.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i148 = add nuw nsw i32 %i.0193.i, 1
  %101 = ptrtoint ptr %array_len.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %array_len.i, align 4
  %conv.i149 = zext i16 %102 to i32
  %cmp49.i = icmp ult i32 %inc.i148, %conv.i149
  br i1 %cmp49.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.igb_reg_test, ptr %test.1196.i, i32 1
  %103 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %incdec.ptr.i, align 4
  %tobool48.not.i = icmp eq i16 %104, 0
  br i1 %tobool48.not.i, label %for.end.i.igb_reg_test.exit.thread219_crit_edge, label %for.end.i.for.cond.preheader.i_crit_edge

for.end.i.for.cond.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.preheader.i

for.end.i.igb_reg_test.exit.thread219_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_reg_test.exit.thread219

igb_reg_test.exit.thread219:                      ; preds = %for.end.i.igb_reg_test.exit.thread219_crit_edge, %if.end45.i.igb_reg_test.exit.thread219_crit_edge
  %105 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 0, ptr %data, align 8
  br label %if.end27

igb_reg_test.exit:                                ; preds = %reg_set_and_check.exit.thread.i, %do.end22.i
  %conv.i.sink.i = phi i64 [ %conv.i.i, %reg_set_and_check.exit.thread.i ], [ 1, %do.end22.i ]
  %106 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv.i.sink.i, ptr %data, align 8
  br label %if.then24

if.then24:                                        ; preds = %igb_reg_test.exit, %do.body117.i.if.then24_crit_edge, %do.body104.i.if.then24_crit_edge, %do.body91.i.if.then24_crit_edge, %do.body53.i.if.then24_crit_edge
  %107 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags2, align 4
  %or26 = or i32 %108, 2
  store i32 %or26, ptr %flags2, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %igb_reg_test.exit.thread219
  tail call void @igb_reset(ptr noundef %add.ptr.i) #20
  %arrayidx28 = getelementptr i64, ptr %data, i32 1
  %109 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 0, ptr %arrayidx28, align 8
  %110 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %type.i, align 4
  %112 = and i32 %111, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %112)
  %switch.i = icmp eq i32 %112, 6
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i155

sw.bb.i:                                          ; preds = %if.end27
  %call.i152 = tail call zeroext i1 @igb_get_flash_presence_i210(ptr noundef %hw1.i) #20
  br i1 %call.i152, label %if.then.i154, label %sw.bb.i.igb_eeprom_test.exit_crit_edge

sw.bb.i.igb_eeprom_test.exit_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_eeprom_test.exit

if.then.i154:                                     ; preds = %sw.bb.i
  %validate.i = getelementptr i8, ptr %netdev, i32 4408
  %113 = ptrtoint ptr %validate.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %validate.i, align 4
  %call4.i = tail call i32 %114(ptr noundef %hw1.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i153 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i153, label %if.then.i154.sw.epilog.sink.split.i_crit_edge, label %if.then.i154.igb_eeprom_test.exit_crit_edge

if.then.i154.igb_eeprom_test.exit_crit_edge:      ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_eeprom_test.exit

if.then.i154.sw.epilog.sink.split.i_crit_edge:    ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.sink.split.i

sw.default.i155:                                  ; preds = %if.end27
  %validate10.i = getelementptr i8, ptr %netdev, i32 4408
  %115 = ptrtoint ptr %validate10.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %validate10.i, align 4
  %call12.i = tail call i32 %116(ptr noundef %hw1.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %sw.default.i155.sw.epilog.sink.split.i_crit_edge, label %sw.default.i155.igb_eeprom_test.exit_crit_edge

sw.default.i155.igb_eeprom_test.exit_crit_edge:   ; preds = %sw.default.i155
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_eeprom_test.exit

sw.default.i155.sw.epilog.sink.split.i_crit_edge: ; preds = %sw.default.i155
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.default.i155.sw.epilog.sink.split.i_crit_edge, %if.then.i154.sw.epilog.sink.split.i_crit_edge
  %117 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 2, ptr %arrayidx28, align 8
  br label %igb_eeprom_test.exit

igb_eeprom_test.exit:                             ; preds = %sw.epilog.sink.split.i, %sw.default.i155.igb_eeprom_test.exit_crit_edge, %if.then.i154.igb_eeprom_test.exit_crit_edge, %sw.bb.i.igb_eeprom_test.exit_crit_edge
  %118 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx28, align 8
  %conv.i156 = trunc i64 %119 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i156)
  %tobool30.not = icmp eq i32 %conv.i156, 0
  br i1 %tobool30.not, label %igb_eeprom_test.exit.if.end34_crit_edge, label %if.then31

igb_eeprom_test.exit.if.end34_crit_edge:          ; preds = %igb_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34

if.then31:                                        ; preds = %igb_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  %120 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags2, align 4
  %or33 = or i32 %121, 2
  store i32 %or33, ptr %flags2, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %igb_eeprom_test.exit.if.end34_crit_edge
  tail call void @igb_reset(ptr noundef %add.ptr.i) #20
  %arrayidx35 = getelementptr i64, ptr %data, i32 2
  %netdev2.i = getelementptr i8, ptr %netdev, i32 2816
  %122 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %netdev2.i, align 128
  %124 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev, align 16
  %irq3.i = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 46
  %126 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %irq3.i, align 4
  %128 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 0, ptr %arrayidx35, align 8
  %flags.i = getelementptr i8, ptr %netdev, i32 2828
  %129 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags.i, align 4
  %and.i160 = and i32 %130, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i160)
  %tobool.not.i161 = icmp eq i32 %and.i160, 0
  br i1 %tobool.not.i161, label %if.else.i164, label %if.then.i163

if.then.i163:                                     ; preds = %if.end34
  %msix_entries.i = getelementptr i8, ptr %netdev, i32 2836
  %131 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %msix_entries.i, align 4
  %call.i.i162 = tail call i32 @request_threaded_irq(i32 noundef %132, ptr noundef nonnull @igb_test_intr, ptr noundef null, i32 noundef 0, ptr noundef %123, ptr noundef %add.ptr.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162)
  %tobool4.not.i = icmp eq i32 %call.i.i162, 0
  br i1 %tobool4.not.i, label %if.then.i163.do.end.i_crit_edge, label %if.then.i163.if.then38.sink.split_crit_edge

if.then.i163.if.then38.sink.split_crit_edge:      ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then38.sink.split

if.then.i163.do.end.i_crit_edge:                  ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

if.else.i164:                                     ; preds = %if.end34
  %and7.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else16.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i164
  %call.i417.i = tail call i32 @request_threaded_irq(i32 noundef %127, ptr noundef nonnull @igb_test_intr, ptr noundef null, i32 noundef 0, ptr noundef %123, ptr noundef %add.ptr.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i417.i)
  %tobool13.not.i = icmp eq i32 %call.i417.i, 0
  br i1 %tobool13.not.i, label %if.then9.i.do.end.i_crit_edge, label %if.then9.i.if.then38.sink.split_crit_edge

if.then9.i.if.then38.sink.split_crit_edge:        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then38.sink.split

if.then9.i.do.end.i_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

if.else16.i:                                      ; preds = %if.else.i164
  %call.i418.i = tail call i32 @request_threaded_irq(i32 noundef %127, ptr noundef nonnull @igb_test_intr, ptr noundef null, i32 noundef 256, ptr noundef %123, ptr noundef %add.ptr.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i418.i)
  %tobool20.not.i = icmp eq i32 %call.i418.i, 0
  br i1 %tobool20.not.i, label %if.else16.i.do.end.i_crit_edge, label %if.else22.i

if.else16.i.do.end.i_crit_edge:                   ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

if.else22.i:                                      ; preds = %if.else16.i
  %call.i419.i = tail call i32 @request_threaded_irq(i32 noundef %127, ptr noundef nonnull @igb_test_intr, ptr noundef null, i32 noundef 128, ptr noundef %123, ptr noundef %add.ptr.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419.i)
  %tobool26.not.i = icmp eq i32 %call.i419.i, 0
  br i1 %tobool26.not.i, label %if.else22.i.do.end.i_crit_edge, label %if.else22.i.if.then38.sink.split_crit_edge

if.else22.i.if.then38.sink.split_crit_edge:       ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then38.sink.split

if.else22.i.do.end.i_crit_edge:                   ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

do.end.i:                                         ; preds = %if.else22.i.do.end.i_crit_edge, %if.else16.i.do.end.i_crit_edge, %if.then9.i.do.end.i_crit_edge, %if.then.i163.do.end.i_crit_edge
  %tobool33.not422.i = phi i1 [ false, %if.then.i163.do.end.i_crit_edge ], [ false, %if.else22.i.do.end.i_crit_edge ], [ true, %if.then9.i.do.end.i_crit_edge ], [ true, %if.else16.i.do.end.i_crit_edge ]
  %133 = phi ptr [ @.str.23, %if.then.i163.do.end.i_crit_edge ], [ @.str.23, %if.else22.i.do.end.i_crit_edge ], [ @.str.24, %if.then9.i.do.end.i_crit_edge ], [ @.str.24, %if.else16.i.do.end.i_crit_edge ]
  %134 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn.i = load ptr, ptr %pdev, align 16
  %dev424.i = getelementptr inbounds %struct.pci_dev, ptr %.pn.i, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev424.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %133) #23
  %135 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool39.not.i = icmp eq ptr %136, null
  br i1 %tobool39.not.i, label %do.end.i.if.end48.i_crit_edge, label %do.body44.i, !prof !162

do.end.i.if.end48.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48.i

do.body44.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !173
  tail call void @arm_heavy_mb() #20
  %arrayidx47.i = getelementptr i8, ptr %136, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx47.i, i32 -1) #20, !srcloc !164
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.body44.i, %do.end.i.if.end48.i_crit_edge
  %call51.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %137 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %type.i, align 4
  %switch.tableidx228 = add i32 %138, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx228)
  %139 = icmp ult i32 %switch.tableidx228, 7
  br i1 %139, label %switch.lookup227, label %if.end48.i.sw.epilog.i167_crit_edge

if.end48.i.sw.epilog.i167_crit_edge:              ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i167

switch.lookup227:                                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep229 = getelementptr inbounds [7 x i32], ptr @switch.table.igb_diag_test.72, i32 0, i32 %switch.tableidx228
  %140 = ptrtoint ptr %switch.gep229 to i32
  call void @__asan_load4_noabort(i32 %140)
  %switch.load230 = load i32, ptr %switch.gep229, align 4
  br label %sw.epilog.i167

sw.epilog.i167:                                   ; preds = %switch.lookup227, %if.end48.i.sw.epilog.i167_crit_edge
  %ics_mask.0.i = phi i32 [ %switch.load230, %switch.lookup227 ], [ 2147483647, %if.end48.i.sw.epilog.i167_crit_edge ]
  %test_icr.i = getelementptr i8, ptr %netdev, i32 5344
  br label %for.body.i168

for.body.i168:                                    ; preds = %for.inc.i172.for.body.i168_crit_edge, %sw.epilog.i167
  %i.0426.i = phi i32 [ 0, %sw.epilog.i167 ], [ %inc.i170, %for.inc.i172.for.body.i168_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.0426.i
  %and55.i = and i32 %shl.i, %ics_mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %for.body.i168.for.inc.i172_crit_edge, label %if.end58.i

for.body.i168.for.inc.i172_crit_edge:             ; preds = %for.body.i168
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i172

if.end58.i:                                       ; preds = %for.body.i168
  br i1 %tobool33.not422.i, label %if.then60.i, label %if.end58.i.if.end139.i_crit_edge

if.end58.i.if.end139.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end139.i

if.then60.i:                                      ; preds = %if.end58.i
  %141 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %test_icr.i, align 32
  %142 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool68.not.i = icmp eq ptr %143, null
  br i1 %tobool68.not.i, label %if.then60.i.if.end82.i_crit_edge, label %do.body78.i169, !prof !162

if.then60.i.if.end82.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end82.i

do.body78.i169:                                   ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !174
  tail call void @arm_heavy_mb() #20
  %arrayidx81.i = getelementptr i8, ptr %143, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx81.i, i32 -1) #20, !srcloc !164
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.body78.i169, %if.then60.i.if.end82.i_crit_edge
  %144 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool92.not.i = icmp eq ptr %145, null
  br i1 %tobool92.not.i, label %if.end82.i.if.end106.i_crit_edge, label %do.body102.i, !prof !162

if.end82.i.if.end106.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end106.i

do.body102.i:                                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !175
  tail call void @arm_heavy_mb() #20
  %146 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #20
  %arrayidx105.i = getelementptr i8, ptr %145, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx105.i, i32 %146) #20, !srcloc !164
  br label %if.end106.i

if.end106.i:                                      ; preds = %do.body102.i, %if.end82.i.if.end106.i_crit_edge
  %147 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool116.not.i = icmp eq ptr %148, null
  br i1 %tobool116.not.i, label %if.end106.i.if.end130.i_crit_edge, label %do.body126.i, !prof !162

if.end106.i.if.end130.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end130.i

do.body126.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !176
  tail call void @arm_heavy_mb() #20
  %149 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #20
  %arrayidx129.i = getelementptr i8, ptr %148, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx129.i, i32 %149) #20, !srcloc !164
  br label %if.end130.i

if.end130.i:                                      ; preds = %do.body126.i, %if.end106.i.if.end130.i_crit_edge
  %call133.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %150 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %test_icr.i, align 32
  %and135.i = and i32 %151, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %if.end130.i.if.end139.i_crit_edge, label %if.end130.i.do.body302.sink.split.i_crit_edge

if.end130.i.do.body302.sink.split.i_crit_edge:    ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body302.sink.split.i

if.end130.i.if.end139.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.end130.i.if.end139.i_crit_edge, %if.end58.i.if.end139.i_crit_edge
  %152 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %test_icr.i, align 32
  %153 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool148.not.i = icmp eq ptr %154, null
  br i1 %tobool148.not.i, label %if.end139.i.if.end162.i_crit_edge, label %do.body158.i, !prof !162

if.end139.i.if.end162.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end162.i

do.body158.i:                                     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !177
  tail call void @arm_heavy_mb() #20
  %arrayidx161.i = getelementptr i8, ptr %154, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx161.i, i32 -1) #20, !srcloc !164
  br label %if.end162.i

if.end162.i:                                      ; preds = %do.body158.i, %if.end139.i.if.end162.i_crit_edge
  %155 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool172.not.i = icmp eq ptr %156, null
  br i1 %tobool172.not.i, label %if.end162.i.if.end186.i_crit_edge, label %do.body182.i, !prof !162

if.end162.i.if.end186.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end186.i

do.body182.i:                                     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !178
  tail call void @arm_heavy_mb() #20
  %157 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #20
  %arrayidx185.i = getelementptr i8, ptr %156, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx185.i, i32 %157) #20, !srcloc !164
  br label %if.end186.i

if.end186.i:                                      ; preds = %do.body182.i, %if.end162.i.if.end186.i_crit_edge
  %158 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool196.not.i = icmp eq ptr %159, null
  br i1 %tobool196.not.i, label %if.end186.i.if.end210.i_crit_edge, label %do.body206.i, !prof !162

if.end186.i.if.end210.i_crit_edge:                ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end210.i

do.body206.i:                                     ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !179
  tail call void @arm_heavy_mb() #20
  %160 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #20
  %arrayidx209.i = getelementptr i8, ptr %159, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx209.i, i32 %160) #20, !srcloc !164
  br label %if.end210.i

if.end210.i:                                      ; preds = %do.body206.i, %if.end186.i.if.end210.i_crit_edge
  %call213.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %161 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %test_icr.i, align 32
  %and215.i = and i32 %162, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215.i)
  %tobool216.not.i = icmp eq i32 %and215.i, 0
  br i1 %tobool216.not.i, label %if.end210.i.do.body302.sink.split.i_crit_edge, label %if.end218.i

if.end210.i.do.body302.sink.split.i_crit_edge:    ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body302.sink.split.i

if.end218.i:                                      ; preds = %if.end210.i
  br i1 %tobool33.not422.i, label %if.then220.i, label %if.end218.i.for.inc.i172_crit_edge

if.end218.i.for.inc.i172_crit_edge:               ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i172

if.then220.i:                                     ; preds = %if.end218.i
  %163 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %test_icr.i, align 32
  %164 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool229.not.i = icmp eq ptr %165, null
  br i1 %tobool229.not.i, label %if.then220.i.if.end243.i_crit_edge, label %do.body239.i, !prof !162

if.then220.i.if.end243.i_crit_edge:               ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end243.i

do.body239.i:                                     ; preds = %if.then220.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !180
  tail call void @arm_heavy_mb() #20
  %arrayidx242.i = getelementptr i8, ptr %165, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx242.i, i32 -1) #20, !srcloc !164
  br label %if.end243.i

if.end243.i:                                      ; preds = %do.body239.i, %if.then220.i.if.end243.i_crit_edge
  %166 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool253.not.i = icmp eq ptr %167, null
  br i1 %tobool253.not.i, label %if.end243.i.if.end267.i_crit_edge, label %do.body263.i, !prof !162

if.end243.i.if.end267.i_crit_edge:                ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end267.i

do.body263.i:                                     ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !181
  tail call void @arm_heavy_mb() #20
  %neg.i = xor i32 %shl.i, -1
  %168 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #20
  %arrayidx266.i = getelementptr i8, ptr %167, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx266.i, i32 %168) #20, !srcloc !164
  br label %if.end267.i

if.end267.i:                                      ; preds = %do.body263.i, %if.end243.i.if.end267.i_crit_edge
  %169 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool277.not.i = icmp eq ptr %170, null
  br i1 %tobool277.not.i, label %if.end267.i.if.end292.i_crit_edge, label %do.body287.i, !prof !162

if.end267.i.if.end292.i_crit_edge:                ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end292.i

do.body287.i:                                     ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !182
  tail call void @arm_heavy_mb() #20
  %neg290.i = xor i32 %shl.i, -1
  %171 = tail call i32 @llvm.bswap.i32(i32 %neg290.i) #20
  %arrayidx291.i = getelementptr i8, ptr %170, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx291.i, i32 %171) #20, !srcloc !164
  br label %if.end292.i

if.end292.i:                                      ; preds = %do.body287.i, %if.end267.i.if.end292.i_crit_edge
  %call295.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %172 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %test_icr.i, align 32
  %and297.i = and i32 %173, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297.i)
  %tobool298.not.i = icmp eq i32 %and297.i, 0
  br i1 %tobool298.not.i, label %if.end292.i.for.inc.i172_crit_edge, label %if.end292.i.do.body302.sink.split.i_crit_edge

if.end292.i.do.body302.sink.split.i_crit_edge:    ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body302.sink.split.i

if.end292.i.for.inc.i172_crit_edge:               ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i172

for.inc.i172:                                     ; preds = %if.end292.i.for.inc.i172_crit_edge, %if.end218.i.for.inc.i172_crit_edge, %for.body.i168.for.inc.i172_crit_edge
  %inc.i170 = add nuw nsw i32 %i.0426.i, 1
  %exitcond.not.i171 = icmp eq i32 %inc.i170, 31
  br i1 %exitcond.not.i171, label %for.inc.i172.do.body302.i_crit_edge, label %for.inc.i172.for.body.i168_crit_edge

for.inc.i172.for.body.i168_crit_edge:             ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i168

for.inc.i172.do.body302.i_crit_edge:              ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body302.i

do.body302.sink.split.i:                          ; preds = %if.end292.i.do.body302.sink.split.i_crit_edge, %if.end210.i.do.body302.sink.split.i_crit_edge, %if.end130.i.do.body302.sink.split.i_crit_edge
  %.sink.i = phi i64 [ 3, %if.end130.i.do.body302.sink.split.i_crit_edge ], [ 4, %if.end210.i.do.body302.sink.split.i_crit_edge ], [ 5, %if.end292.i.do.body302.sink.split.i_crit_edge ]
  %174 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %.sink.i, ptr %arrayidx35, align 8
  br label %do.body302.i

do.body302.i:                                     ; preds = %do.body302.sink.split.i, %for.inc.i172.do.body302.i_crit_edge
  %175 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool309.not.i = icmp eq ptr %176, null
  br i1 %tobool309.not.i, label %do.body302.i.if.end323.i_crit_edge, label %do.body319.i, !prof !162

do.body302.i.if.end323.i_crit_edge:               ; preds = %do.body302.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end323.i

do.body319.i:                                     ; preds = %do.body302.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !183
  tail call void @arm_heavy_mb() #20
  %arrayidx322.i = getelementptr i8, ptr %176, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx322.i, i32 -1) #20, !srcloc !164
  br label %if.end323.i

if.end323.i:                                      ; preds = %do.body319.i, %do.body302.i.if.end323.i_crit_edge
  %call326.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %177 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %flags.i, align 4
  %and328.i = and i32 %178, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328.i)
  %tobool329.not.i = icmp eq i32 %and328.i, 0
  br i1 %tobool329.not.i, label %if.end323.i.igb_intr_test.exit_crit_edge, label %if.then330.i

if.end323.i.igb_intr_test.exit_crit_edge:         ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_intr_test.exit

if.then330.i:                                     ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #22
  %msix_entries331.i = getelementptr i8, ptr %netdev, i32 2836
  %179 = ptrtoint ptr %msix_entries331.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %msix_entries331.i, align 4
  br label %igb_intr_test.exit

igb_intr_test.exit:                               ; preds = %if.then330.i, %if.end323.i.igb_intr_test.exit_crit_edge
  %.sink427.i = phi i32 [ %180, %if.then330.i ], [ %127, %if.end323.i.igb_intr_test.exit_crit_edge ]
  %call336.i = tail call ptr @free_irq(i32 noundef %.sink427.i, ptr noundef %add.ptr.i) #20
  %181 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %arrayidx35, align 8
  %conv.i173 = trunc i64 %182 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i173)
  %tobool37.not = icmp eq i32 %conv.i173, 0
  br i1 %tobool37.not, label %igb_intr_test.exit.if.end41_crit_edge, label %igb_intr_test.exit.if.then38_crit_edge

igb_intr_test.exit.if.then38_crit_edge:           ; preds = %igb_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then38

igb_intr_test.exit.if.end41_crit_edge:            ; preds = %igb_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.then38.sink.split:                             ; preds = %if.else22.i.if.then38.sink.split_crit_edge, %if.then9.i.if.then38.sink.split_crit_edge, %if.then.i163.if.then38.sink.split_crit_edge
  %183 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 1, ptr %arrayidx35, align 8
  br label %if.then38

if.then38:                                        ; preds = %if.then38.sink.split, %igb_intr_test.exit.if.then38_crit_edge
  %184 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %flags2, align 4
  %or40 = or i32 %185, 2
  store i32 %or40, ptr %flags2, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %igb_intr_test.exit.if.end41_crit_edge
  tail call void @igb_reset(ptr noundef %add.ptr.i) #20
  tail call void @igb_power_up_link(ptr noundef %add.ptr.i) #20
  %arrayidx42 = getelementptr i64, ptr %data, i32 3
  %call.i175 = tail call i32 @igb_check_reset_block(ptr noundef %hw1.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool.not.i176 = icmp eq i32 %call.i175, 0
  br i1 %tobool.not.i176, label %if.end.i182, label %do.end.i179

do.end.i179:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  %186 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pdev, align 16
  %dev.i178 = getelementptr inbounds %struct.pci_dev, ptr %187, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i178, ptr noundef nonnull @.str.25) #23
  %188 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 0, ptr %arrayidx42, align 8
  br label %igb_loopback_test.exit

if.end.i182:                                      ; preds = %if.end41
  %189 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %190)
  %cmp.i181 = icmp eq i32 %190, 5
  br i1 %cmp.i181, label %do.end4.i, label %if.end7.i

do.end4.i:                                        ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #22
  %191 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pdev, align 16
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %192, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6.i, ptr noundef nonnull @.str.28) #23
  %193 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 0, ptr %arrayidx42, align 8
  br label %igb_loopback_test.exit

if.end7.i:                                        ; preds = %if.end.i182
  %test_tx_ring.i.i = getelementptr i8, ptr %netdev, i32 5376
  %test_rx_ring.i.i = getelementptr i8, ptr %netdev, i32 5760
  %count.i.i = getelementptr i8, ptr %netdev, i32 5416
  %194 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 256, ptr %count.i.i, align 8
  %195 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pdev, align 16
  %dev.i.i184 = getelementptr inbounds %struct.pci_dev, ptr %196, i32 0, i32 44
  %dev2.i.i = getelementptr i8, ptr %netdev, i32 5388
  %197 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %dev.i.i184, ptr %dev2.i.i, align 4
  %198 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %netdev2.i, align 128
  %netdev3.i.i = getelementptr i8, ptr %netdev, i32 5380
  %200 = ptrtoint ptr %netdev3.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %199, ptr %netdev3.i.i, align 4
  %vfs_allocated_count.i.i = getelementptr i8, ptr %netdev, i32 6192
  %201 = ptrtoint ptr %vfs_allocated_count.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %vfs_allocated_count.i.i, align 16
  %conv.i.i185 = trunc i32 %202 to i8
  %reg_idx.i.i = getelementptr i8, ptr %netdev, i32 5419
  %203 = ptrtoint ptr %reg_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv.i.i185, ptr %reg_idx.i.i, align 1
  %call.i.i186 = tail call i32 @igb_setup_tx_resources(ptr noundef %test_tx_ring.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186)
  %tobool.not.i.i187 = icmp eq i32 %call.i.i186, 0
  br i1 %tobool.not.i.i187, label %if.end.i.i188, label %if.end7.i.igb_setup_desc_rings.exit.i_crit_edge

if.end7.i.igb_setup_desc_rings.exit.i_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_setup_desc_rings.exit.i

if.end.i.i188:                                    ; preds = %if.end7.i
  tail call void @igb_setup_tctl(ptr noundef %add.ptr.i) #20
  tail call void @igb_configure_tx_ring(ptr noundef %add.ptr.i, ptr noundef %test_tx_ring.i.i) #20
  %count4.i.i = getelementptr i8, ptr %netdev, i32 5800
  %204 = ptrtoint ptr %count4.i.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 256, ptr %count4.i.i, align 8
  %205 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pdev, align 16
  %dev6.i.i = getelementptr inbounds %struct.pci_dev, ptr %206, i32 0, i32 44
  %dev7.i.i = getelementptr i8, ptr %netdev, i32 5772
  %207 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %dev6.i.i, ptr %dev7.i.i, align 4
  %208 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %netdev2.i, align 128
  %netdev9.i.i = getelementptr i8, ptr %netdev, i32 5764
  %210 = ptrtoint ptr %netdev9.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %netdev9.i.i, align 4
  %211 = ptrtoint ptr %vfs_allocated_count.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %vfs_allocated_count.i.i, align 16
  %conv11.i.i = trunc i32 %212 to i8
  %reg_idx12.i.i = getelementptr i8, ptr %netdev, i32 5803
  %213 = ptrtoint ptr %reg_idx12.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv11.i.i, ptr %reg_idx12.i.i, align 1
  %call13.i.i = tail call i32 @igb_setup_rx_resources(ptr noundef %test_rx_ring.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body.i.i, label %if.end.i.i188.igb_setup_desc_rings.exit.i_crit_edge

if.end.i.i188.igb_setup_desc_rings.exit.i_crit_edge: ; preds = %if.end.i.i188
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_setup_desc_rings.exit.i

do.body.i.i:                                      ; preds = %if.end.i.i188
  %214 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool19.not.i.i = icmp eq ptr %215, null
  br i1 %tobool19.not.i.i, label %do.body.i.i.if.end28.i.i_crit_edge, label %do.body24.i.i, !prof !162

do.body.i.i.if.end28.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end28.i.i

do.body24.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !184
  tail call void @arm_heavy_mb() #20
  %216 = ptrtoint ptr %vfs_allocated_count.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %vfs_allocated_count.i.i, align 16
  %shl.i.i = shl i32 %217, 3
  %218 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #20
  %arrayidx.i.i189 = getelementptr i8, ptr %215, i32 22552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i189, i32 %218) #20, !srcloc !164
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %do.body24.i.i, %do.body.i.i.if.end28.i.i_crit_edge
  tail call void @igb_setup_rctl(ptr noundef %add.ptr.i) #20
  tail call void @igb_configure_rx_ring(ptr noundef %add.ptr.i, ptr noundef %test_rx_ring.i.i) #20
  %next_to_clean.i.i.i = getelementptr i8, ptr %netdev, i32 5824
  %219 = ptrtoint ptr %next_to_clean.i.i.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %next_to_clean.i.i.i, align 64
  %next_to_use.i.i.i = getelementptr i8, ptr %netdev, i32 5826
  %221 = ptrtoint ptr %next_to_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %next_to_use.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %220, i16 %222)
  %cmp.i.i.i = icmp ugt i16 %220, %222
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %223 = xor i16 %222, -1
  %sub7.i.i.i = add i16 %220, %223
  br label %if.end11.i

if.end.i.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %224 = ptrtoint ptr %count4.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %count4.i.i, align 8
  %226 = xor i16 %222, -1
  %add.i.i.i = add i16 %220, %226
  %sub14.i.i.i = add i16 %add.i.i.i, %225
  br label %if.end11.i

igb_setup_desc_rings.exit.i:                      ; preds = %if.end.i.i188.igb_setup_desc_rings.exit.i_crit_edge, %if.end7.i.igb_setup_desc_rings.exit.i_crit_edge
  %ret_val.0.i.i = phi i32 [ 1, %if.end7.i.igb_setup_desc_rings.exit.i_crit_edge ], [ 3, %if.end.i.i188.igb_setup_desc_rings.exit.i_crit_edge ]
  tail call void @igb_free_tx_resources(ptr noundef %test_tx_ring.i.i) #20
  tail call void @igb_free_rx_resources(ptr noundef %test_rx_ring.i.i) #20
  %227 = zext i32 %ret_val.0.i.i to i64
  %228 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %227, ptr %arrayidx42, align 8
  br label %igb_loopback_test.exit

if.end11.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i16 [ %sub7.i.i.i, %if.then.i.i.i ], [ %sub14.i.i.i, %if.end.i.i.i ]
  tail call void @igb_alloc_rx_buffers(ptr noundef %test_rx_ring.i.i, i16 noundef zeroext %retval.0.i.i.i) #20
  %229 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 0, ptr %arrayidx42, align 8
  %call.i35.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 24) #20
  %and.i.i190 = and i32 %call.i35.i, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i190)
  %tobool.not.i36.i = icmp eq i32 %and.i.i190, 0
  br i1 %tobool.not.i36.i, label %if.end229.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end11.i
  %device_id.i.i = getelementptr i8, ptr %netdev, i32 4558
  %230 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %device_id.i.i, align 2
  %232 = zext i16 %231 to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %231, label %if.then.i.i.if.end68.i.i_crit_edge [
    i16 1080, label %if.then.i.i.if.then27.i.i_crit_edge
    i16 1082, label %if.then.i.i.if.then27.i.i_crit_edge231
    i16 1084, label %if.then.i.i.if.then27.i.i_crit_edge232
    i16 1088, label %if.then.i.i.if.then27.i.i_crit_edge233
    i16 8001, label %if.then.i.i.if.then27.i.i_crit_edge234
    i16 8005, label %if.then.i.i.if.then27.i.i_crit_edge235
  ]

if.then.i.i.if.then27.i.i_crit_edge235:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then27.i.i

if.then.i.i.if.then27.i.i_crit_edge234:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then27.i.i

if.then.i.i.if.then27.i.i_crit_edge233:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then27.i.i

if.then.i.i.if.then27.i.i_crit_edge232:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then27.i.i

if.then.i.i.if.then27.i.i_crit_edge231:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then27.i.i

if.then.i.i.if.then27.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then27.i.i

if.then.i.i.if.end68.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68.i.i

if.then27.i.i:                                    ; preds = %if.then.i.i.if.then27.i.i_crit_edge, %if.then.i.i.if.then27.i.i_crit_edge231, %if.then.i.i.if.then27.i.i_crit_edge232, %if.then.i.i.if.then27.i.i_crit_edge233, %if.then.i.i.if.then27.i.i_crit_edge234, %if.then.i.i.if.then27.i.i_crit_edge235
  %call28.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 36) #20
  %233 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool32.not.i.i = icmp eq ptr %234, null
  br i1 %tobool32.not.i.i, label %if.then27.i.i.if.end.i38.i_crit_edge, label %do.body37.i.i, !prof !162

if.then27.i.i.if.end.i38.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i38.i

do.body37.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %and29.i.i = and i32 %call28.i.i, -65536
  %or.i.i = or i32 %and29.i.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !185
  tail call void @arm_heavy_mb() #20
  %235 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #20
  %arrayidx.i37.i = getelementptr i8, ptr %234, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i37.i, i32 %235) #20, !srcloc !164
  br label %if.end.i38.i

if.end.i38.i:                                     ; preds = %do.body37.i.i, %if.then27.i.i.if.end.i38.i_crit_edge
  %call42.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 3600) #20
  %236 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool51.not.i.i = icmp eq ptr %237, null
  br i1 %tobool51.not.i.i, label %if.end.i38.i.if.end68.i.i_crit_edge, label %do.body61.i.i, !prof !162

if.end.i38.i.if.end68.i.i_crit_edge:              ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68.i.i

do.body61.i.i:                                    ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #22
  %or43.i.i = or i32 %call42.i.i, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !186
  tail call void @arm_heavy_mb() #20
  %238 = tail call i32 @llvm.bswap.i32(i32 %or43.i.i) #20
  %arrayidx64.i.i = getelementptr i8, ptr %237, i32 3600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx64.i.i, i32 %238) #20, !srcloc !164
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %do.body61.i.i, %if.end.i38.i.if.end68.i.i_crit_edge, %if.then.i.i.if.end68.i.i_crit_edge
  %call69.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 256) #20
  %239 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool78.not.i.i = icmp eq ptr %240, null
  br i1 %tobool78.not.i.i, label %if.end68.i.i.if.end92.i.i_crit_edge, label %do.body88.i.i, !prof !162

if.end68.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end92.i.i

do.body88.i.i:                                    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %or70.i.i = or i32 %call69.i.i, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !187
  tail call void @arm_heavy_mb() #20
  %241 = tail call i32 @llvm.bswap.i32(i32 %or70.i.i) #20
  %arrayidx91.i.i = getelementptr i8, ptr %240, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91.i.i, i32 %241) #20, !srcloc !164
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %do.body88.i.i, %if.end68.i.i.if.end92.i.i_crit_edge
  %242 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool102.not.i.i = icmp eq ptr %243, null
  br i1 %tobool102.not.i.i, label %if.end92.i.i.if.end116.i.i_crit_edge, label %do.body112.i.i, !prof !162

if.end92.i.i.if.end116.i.i_crit_edge:             ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end116.i.i

do.body112.i.i:                                   ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !188
  tail call void @arm_heavy_mb() #20
  %arrayidx115.i.i = getelementptr i8, ptr %243, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx115.i.i, i32 268697600) #20, !srcloc !164
  br label %if.end116.i.i

if.end116.i.i:                                    ; preds = %do.body112.i.i, %if.end92.i.i.if.end116.i.i_crit_edge
  %call119.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 0) #20
  %244 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool129.not.i.i = icmp eq ptr %245, null
  br i1 %tobool129.not.i.i, label %if.end116.i.i.if.end143.i.i_crit_edge, label %do.body139.i.i, !prof !162

if.end116.i.i.if.end143.i.i_crit_edge:            ; preds = %if.end116.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end143.i.i

do.body139.i.i:                                   ; preds = %if.end116.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %and120.i.i = and i32 %call119.i.i, -402653258
  %or121.i.i = or i32 %and120.i.i, 65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !189
  tail call void @arm_heavy_mb() #20
  %246 = tail call i32 @llvm.bswap.i32(i32 %or121.i.i) #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %245, i32 %246) #20, !srcloc !164
  br label %if.end143.i.i

if.end143.i.i:                                    ; preds = %do.body139.i.i, %if.end116.i.i.if.end143.i.i_crit_edge
  %call146.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 52) #20
  %247 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool155.not.i.i = icmp eq ptr %248, null
  br i1 %tobool155.not.i.i, label %if.end143.i.i.if.end169.i.i_crit_edge, label %do.body165.i.i, !prof !162

if.end143.i.i.if.end169.i.i_crit_edge:            ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end169.i.i

do.body165.i.i:                                   ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %and147.i.i = and i32 %call146.i.i, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !190
  tail call void @arm_heavy_mb() #20
  %249 = tail call i32 @llvm.bswap.i32(i32 %and147.i.i) #20
  %arrayidx168.i.i = getelementptr i8, ptr %248, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx168.i.i, i32 %249) #20, !srcloc !164
  br label %if.end169.i.i

if.end169.i.i:                                    ; preds = %do.body165.i.i, %if.end143.i.i.if.end169.i.i_crit_edge
  %250 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %251)
  %cmp172.i.i = icmp ugt i32 %251, 2
  br i1 %cmp172.i.i, label %if.then174.i.i, label %if.end169.i.i.if.end201.i.i_crit_edge

if.end169.i.i.if.end201.i.i_crit_edge:            ; preds = %if.end169.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end201.i.i

if.then174.i.i:                                   ; preds = %if.end169.i.i
  %call175.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 16896) #20
  %252 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool184.not.i.i = icmp eq ptr %253, null
  br i1 %tobool184.not.i.i, label %if.then174.i.i.if.end201.i.i_crit_edge, label %do.body194.i.i, !prof !162

if.then174.i.i.if.end201.i.i_crit_edge:           ; preds = %if.then174.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end201.i.i

do.body194.i.i:                                   ; preds = %if.then174.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %or176.i.i = or i32 %call175.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !191
  tail call void @arm_heavy_mb() #20
  %254 = tail call i32 @llvm.bswap.i32(i32 %or176.i.i) #20
  %arrayidx197.i.i = getelementptr i8, ptr %253, i32 16896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx197.i.i, i32 %254) #20, !srcloc !164
  br label %if.end201.i.i

if.end201.i.i:                                    ; preds = %do.body194.i.i, %if.then174.i.i.if.end201.i.i_crit_edge, %if.end169.i.i.if.end201.i.i_crit_edge
  %call202.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 16904) #20
  %255 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool212.not.i.i = icmp eq ptr %256, null
  br i1 %tobool212.not.i.i, label %if.end201.i.i.igb_setup_loopback_test.exit.i_crit_edge, label %do.body222.i.i, !prof !162

if.end201.i.i.igb_setup_loopback_test.exit.i_crit_edge: ; preds = %if.end201.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_setup_loopback_test.exit.i

do.body222.i.i:                                   ; preds = %if.end201.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %and203.i.i = and i32 %call202.i.i, -65598
  %or204.i.i = or i32 %and203.i.i, 61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !192
  tail call void @arm_heavy_mb() #20
  %257 = tail call i32 @llvm.bswap.i32(i32 %or204.i.i) #20
  %arrayidx225.i.i = getelementptr i8, ptr %256, i32 16904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx225.i.i, i32 %257) #20, !srcloc !164
  br label %igb_setup_loopback_test.exit.i

if.end229.i.i:                                    ; preds = %if.end11.i
  %258 = ptrtoint ptr %autoneg10 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %autoneg10, align 2
  %type.i.i.i.i = getelementptr i8, ptr %netdev, i32 4312
  %259 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %type.i.i.i.i, align 4
  %261 = zext i32 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %260, label %if.end229.i.i.if.end16.i.i.i.i_crit_edge [
    i32 2, label %if.then.i.i.i.i
    i32 8, label %if.then13.i.i.i.i
  ]

if.end229.i.i.if.end16.i.i.i.i_crit_edge:         ; preds = %if.end229.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end229.i.i
  %id.i.i.i.i = getelementptr i8, ptr %netdev, i32 4344
  %262 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040128, i32 %263)
  %cmp3.not.i.i.i.i = icmp eq i32 %263, 21040128
  %write_reg.i11.i.i.i.i = getelementptr i8, ptr %netdev, i32 4300
  %264 = ptrtoint ptr %write_reg.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write_reg.i11.i.i.i.i, align 4
  %tobool.not.i12.i.i.i.i = icmp eq ptr %265, null
  br i1 %cmp3.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then4.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  br i1 %tobool.not.i12.i.i.i.i, label %if.then4.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %igb_write_phy_reg.exit.i.i.i.i

if.then4.i.i.i.i.if.end16.i.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i.i.i.i

igb_write_phy_reg.exit.i.i.i.i:                   ; preds = %if.then4.i.i.i.i
  %call.i.i.i.i.i = tail call i32 %265(ptr noundef %hw1.i, i32 noundef 16, i16 noundef zeroext 2056) #20
  %266 = ptrtoint ptr %write_reg.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %.pr.i.i.i.i = load ptr, ptr %write_reg.i11.i.i.i.i, align 4
  %tobool.not.i2.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %tobool.not.i2.i.i.i.i, label %igb_write_phy_reg.exit.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %igb_write_phy_reg.exit5.i.i.i.i

igb_write_phy_reg.exit.i.i.i.i.if.end16.i.i.i.i_crit_edge: ; preds = %igb_write_phy_reg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i.i.i.i

igb_write_phy_reg.exit5.i.i.i.i:                  ; preds = %igb_write_phy_reg.exit.i.i.i.i
  %call.i3.i.i.i.i = tail call i32 %.pr.i.i.i.i(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext -28352) #20
  %267 = ptrtoint ptr %write_reg.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %.pr32.i.i.i.i = load ptr, ptr %write_reg.i11.i.i.i.i, align 4
  %tobool.not.i7.i.i.i.i = icmp eq ptr %.pr32.i.i.i.i, null
  br i1 %tobool.not.i7.i.i.i.i, label %igb_write_phy_reg.exit5.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %if.then.i9.i.i.i.i

igb_write_phy_reg.exit5.i.i.i.i.if.end16.i.i.i.i_crit_edge: ; preds = %igb_write_phy_reg.exit5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i.i.i.i

if.then.i9.i.i.i.i:                               ; preds = %igb_write_phy_reg.exit5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i8.i.i.i.i = tail call i32 %.pr32.i.i.i.i(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext -32448) #20
  br label %if.end16.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i.i
  br i1 %tobool.not.i12.i.i.i.i, label %if.else.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %igb_write_phy_reg.exit15.i.i.i.i

if.else.i.i.i.i.if.end16.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i.i.i.i

igb_write_phy_reg.exit15.i.i.i.i:                 ; preds = %if.else.i.i.i.i
  %call.i13.i.i.i.i = tail call i32 %265(ptr noundef %hw1.i, i32 noundef 22, i16 noundef zeroext 0) #20
  %268 = ptrtoint ptr %write_reg.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %.pr34.i.i.i.i = load ptr, ptr %write_reg.i11.i.i.i.i, align 4
  %tobool.not.i17.i.i.i.i = icmp eq ptr %.pr34.i.i.i.i, null
  br i1 %tobool.not.i17.i.i.i.i, label %igb_write_phy_reg.exit15.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %if.then.i19.i.i.i.i

igb_write_phy_reg.exit15.i.i.i.i.if.end16.i.i.i.i_crit_edge: ; preds = %igb_write_phy_reg.exit15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i.i.i.i

if.then.i19.i.i.i.i:                              ; preds = %igb_write_phy_reg.exit15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i18.i.i.i.i = tail call i32 %.pr34.i.i.i.i(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext 16704) #20
  br label %if.end16.i.i.i.i

if.then13.i.i.i.i:                                ; preds = %if.end229.i.i
  %write_reg.i21.i.i.i.i = getelementptr i8, ptr %netdev, i32 4300
  %269 = ptrtoint ptr %write_reg.i21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %write_reg.i21.i.i.i.i, align 4
  %tobool.not.i22.i.i.i.i = icmp eq ptr %270, null
  br i1 %tobool.not.i22.i.i.i.i, label %if.then13.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %if.then.i24.i.i.i.i

if.then13.i.i.i.i.if.end16.i.i.i.i_crit_edge:     ; preds = %if.then13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i.i.i.i

if.then.i24.i.i.i.i:                              ; preds = %if.then13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i23.i.i.i.i = tail call i32 %270(ptr noundef %hw1.i, i32 noundef 19, i16 noundef zeroext -32703) #20
  br label %if.end16.i.i.i.i

if.end16.i.i.i.i:                                 ; preds = %if.then.i24.i.i.i.i, %if.then13.i.i.i.i.if.end16.i.i.i.i_crit_edge, %if.then.i19.i.i.i.i, %igb_write_phy_reg.exit15.i.i.i.i.if.end16.i.i.i.i_crit_edge, %if.else.i.i.i.i.if.end16.i.i.i.i_crit_edge, %if.then.i9.i.i.i.i, %igb_write_phy_reg.exit5.i.i.i.i.if.end16.i.i.i.i_crit_edge, %igb_write_phy_reg.exit.i.i.i.i.if.end16.i.i.i.i_crit_edge, %if.then4.i.i.i.i.if.end16.i.i.i.i_crit_edge, %if.end229.i.i.if.end16.i.i.i.i_crit_edge
  tail call void @msleep(i32 noundef 50) #20
  %write_reg.i26.i.i.i.i = getelementptr i8, ptr %netdev, i32 4300
  %271 = ptrtoint ptr %write_reg.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %write_reg.i26.i.i.i.i, align 4
  %tobool.not.i27.i.i.i.i = icmp eq ptr %272, null
  br i1 %tobool.not.i27.i.i.i.i, label %if.end16.i.i.i.i.igb_write_phy_reg.exit30.i.i.i.i_crit_edge, label %if.then.i29.i.i.i.i

if.end16.i.i.i.i.igb_write_phy_reg.exit30.i.i.i.i_crit_edge: ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_write_phy_reg.exit30.i.i.i.i

if.then.i29.i.i.i.i:                              ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i28.i.i.i.i = tail call i32 %272(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext 16704) #20
  br label %igb_write_phy_reg.exit30.i.i.i.i

igb_write_phy_reg.exit30.i.i.i.i:                 ; preds = %if.then.i29.i.i.i.i, %if.end16.i.i.i.i.igb_write_phy_reg.exit30.i.i.i.i_crit_edge
  %call18.i.i.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 0) #20
  %273 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %type.i.i.i.i, align 4
  %275 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %276, null
  br i1 %tobool.not.i.i.i.i, label %igb_write_phy_reg.exit30.i.i.i.i.if.end34.i.i.i.i_crit_edge, label %do.body31.i.i.i.i, !prof !162

igb_write_phy_reg.exit30.i.i.i.i.if.end34.i.i.i.i_crit_edge: ; preds = %igb_write_phy_reg.exit30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34.i.i.i.i

do.body31.i.i.i.i:                                ; preds = %igb_write_phy_reg.exit30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %274)
  %cmp21.i.i.i.i = icmp eq i32 %274, 2
  %and.i.i.i.i = and i32 %call18.i.i.i.i, -6978
  %spec.select.v.i.i.i.i = select i1 %cmp21.i.i.i.i, i32 6849, i32 6721
  %spec.select.i.i.i.i = or i32 %spec.select.v.i.i.i.i, %and.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !193
  tail call void @arm_heavy_mb() #20
  %277 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i.i.i) #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %276, i32 %277) #20, !srcloc !164
  %278 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %.pr36.i.i.i.i = load i32, ptr %type.i.i.i.i, align 4
  br label %if.end34.i.i.i.i

if.end34.i.i.i.i:                                 ; preds = %do.body31.i.i.i.i, %igb_write_phy_reg.exit30.i.i.i.i.if.end34.i.i.i.i_crit_edge
  %279 = phi i32 [ %.pr36.i.i.i.i, %do.body31.i.i.i.i ], [ %274, %igb_write_phy_reg.exit30.i.i.i.i.if.end34.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %279)
  %cmp39.i.i.i.i = icmp eq i32 %279, 2
  br i1 %cmp39.i.i.i.i, label %if.then40.i.i.i.i, label %if.end34.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge

if.end34.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge: ; preds = %if.end34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_set_phy_loopback.exit.i.i

if.then40.i.i.i.i:                                ; preds = %if.end34.i.i.i.i
  %280 = ptrtoint ptr %write_reg.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write_reg.i26.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %281, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then40.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge, label %igb_write_phy_reg.exit.i.i.i.i.i

if.then40.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge: ; preds = %if.then40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_set_phy_loopback.exit.i.i

igb_write_phy_reg.exit.i.i.i.i.i:                 ; preds = %if.then40.i.i.i.i
  %call.i.i.i.i.i.i = tail call i32 %281(ptr noundef %hw1.i, i32 noundef 29, i16 noundef zeroext 31) #20
  %282 = ptrtoint ptr %write_reg.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %.pr.i.i.i.i.i = load ptr, ptr %write_reg.i26.i.i.i.i, align 4
  %tobool.not.i9.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %tobool.not.i9.i.i.i.i.i, label %igb_write_phy_reg.exit.i.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge, label %igb_write_phy_reg.exit12.i.i.i.i.i

igb_write_phy_reg.exit.i.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge: ; preds = %igb_write_phy_reg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_set_phy_loopback.exit.i.i

igb_write_phy_reg.exit12.i.i.i.i.i:               ; preds = %igb_write_phy_reg.exit.i.i.i.i.i
  %call.i10.i.i.i.i.i = tail call i32 %.pr.i.i.i.i.i(ptr noundef %hw1.i, i32 noundef 30, i16 noundef zeroext -28676) #20
  %283 = ptrtoint ptr %write_reg.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %.pr24.i.i.i.i.i = load ptr, ptr %write_reg.i26.i.i.i.i, align 4
  %tobool.not.i14.i.i.i.i.i = icmp eq ptr %.pr24.i.i.i.i.i, null
  br i1 %tobool.not.i14.i.i.i.i.i, label %igb_write_phy_reg.exit12.i.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge, label %igb_write_phy_reg.exit17.i.i.i.i.i

igb_write_phy_reg.exit12.i.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge: ; preds = %igb_write_phy_reg.exit12.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_set_phy_loopback.exit.i.i

igb_write_phy_reg.exit17.i.i.i.i.i:               ; preds = %igb_write_phy_reg.exit12.i.i.i.i.i
  %call.i15.i.i.i.i.i = tail call i32 %.pr24.i.i.i.i.i(ptr noundef %hw1.i, i32 noundef 29, i16 noundef zeroext 26) #20
  %284 = ptrtoint ptr %write_reg.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %.pr26.pr.i.i.i.i.i = load ptr, ptr %write_reg.i26.i.i.i.i, align 4
  %tobool.not.i19.i.i.i.i.i = icmp eq ptr %.pr26.pr.i.i.i.i.i, null
  br i1 %tobool.not.i19.i.i.i.i.i, label %igb_write_phy_reg.exit17.i.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge, label %if.then.i21.i.i.i.i.i

igb_write_phy_reg.exit17.i.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge: ; preds = %igb_write_phy_reg.exit17.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_set_phy_loopback.exit.i.i

if.then.i21.i.i.i.i.i:                            ; preds = %igb_write_phy_reg.exit17.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i20.i.i.i.i.i = tail call i32 %.pr26.pr.i.i.i.i.i(ptr noundef %hw1.i, i32 noundef 30, i16 noundef zeroext -28688) #20
  br label %igb_set_phy_loopback.exit.i.i

igb_set_phy_loopback.exit.i.i:                    ; preds = %if.then.i21.i.i.i.i.i, %igb_write_phy_reg.exit17.i.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge, %igb_write_phy_reg.exit12.i.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge, %igb_write_phy_reg.exit.i.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge, %if.then40.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge, %if.end34.i.i.i.i.igb_set_phy_loopback.exit.i.i_crit_edge
  tail call void @msleep(i32 noundef 500) #20
  br label %igb_setup_loopback_test.exit.i

igb_setup_loopback_test.exit.i:                   ; preds = %igb_set_phy_loopback.exit.i.i, %do.body222.i.i, %if.end201.i.i.igb_setup_loopback_test.exit.i_crit_edge
  %285 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %285)
  store i64 0, ptr %arrayidx42, align 8
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 256, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #20
  %tobool.not.i41.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i41.i, label %igb_setup_loopback_test.exit.i.igb_run_loopback_test.exit.i_crit_edge, label %if.end.i44.i

igb_setup_loopback_test.exit.i.igb_run_loopback_test.exit.i_crit_edge: ; preds = %igb_setup_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_run_loopback_test.exit.i

if.end.i44.i:                                     ; preds = %igb_setup_loopback_test.exit.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %286 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %data.i.i.i, align 4
  %288 = call ptr @memset(ptr %287, i32 255, i32 256)
  %289 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %289, i32 128
  %290 = call ptr @memset(ptr %arrayidx.i.i.i, i32 170, i32 127)
  %291 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr i8, ptr %291, i32 138
  %292 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 -66, ptr %arrayidx3.i.i.i, align 1
  %293 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr i8, ptr %293, i32 140
  %294 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 -81, ptr %arrayidx6.i.i.i, align 1
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 256) #20
  %295 = ptrtoint ptr %count4.i.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %count4.i.i, align 8
  %297 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %count.i.i, align 8
  %299 = tail call i16 @llvm.umax.i16(i16 %296, i16 %298) #20
  %lc.0.in.i.i = lshr i16 %299, 5
  %lc.0.i.i = or i16 %lc.0.in.i.i, 1
  %users.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 21
  %next_to_clean1.i.i.i = getelementptr i8, ptr %netdev, i32 5440
  %desc.i.i.i = getelementptr i8, ptr %netdev, i32 5780
  %300 = getelementptr i8, ptr %netdev, i32 5776
  %301 = getelementptr i8, ptr %netdev, i32 5392
  %queue_index.i.i.i.i = getelementptr i8, ptr %netdev, i32 5418
  br label %for.cond20.preheader.i.i

for.cond.i.i:                                     ; preds = %igb_clean_test_rings.exit.i.i
  %inc45.i.i = add nuw nsw i16 %j.078.i.i, 1
  %cmp18.not.not.i.i = icmp ult i16 %j.078.i.i, %lc.0.i.i
  br i1 %cmp18.not.not.i.i, label %for.cond.i.i.for.cond20.preheader.i.i_crit_edge, label %for.cond.i.i.for.end46.i.i_crit_edge

for.cond.i.i.for.end46.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end46.i.i

for.cond.i.i.for.cond20.preheader.i.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond20.preheader.i.i

for.cond20.preheader.i.i:                         ; preds = %for.cond.i.i.for.cond20.preheader.i.i_crit_edge, %if.end.i44.i
  %j.078.i.i = phi i16 [ 0, %if.end.i44.i ], [ %inc45.i.i, %for.cond.i.i.for.cond20.preheader.i.i_crit_edge ]
  br label %for.body24.i.i

for.body24.i.i:                                   ; preds = %skb_get.exit.i.i.for.body24.i.i_crit_edge, %for.cond20.preheader.i.i
  %good_cnt.077.i.i = phi i16 [ 0, %for.cond20.preheader.i.i ], [ %spec.select.i.i, %skb_get.exit.i.i.for.body24.i.i_crit_edge ]
  %i.076.i.i = phi i16 [ 0, %for.cond20.preheader.i.i ], [ %inc31.i.i, %skb_get.exit.i.i.for.body24.i.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i.i, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr %users.i.i.i, i32 1, i32 3, i32 1) #20
  %302 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i.i, ptr %users.i.i.i, i32 1, ptr elementtype(i32) %users.i.i.i) #20, !srcloc !194
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %302, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %for.body24.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !162

for.body24.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %for.body24.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %303 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %303)
  %.not.i.i.i.i.i.i = icmp sgt i32 %303, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.skb_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !195

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.skb_get.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %skb_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %for.body24.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %for.body24.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #20
  br label %skb_get.exit.i.i

skb_get.exit.i.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.skb_get.exit.i.i_crit_edge
  %call26.i.i = tail call i32 @igb_xmit_frame_ring(ptr noundef nonnull %call.i.i.i, ptr noundef %test_tx_ring.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %cmp27.i.i = icmp eq i32 %call26.i.i, 0
  %inc.i.i = zext i1 %cmp27.i.i to i16
  %spec.select.i.i = add i16 %good_cnt.077.i.i, %inc.i.i
  %inc31.i.i = add nuw nsw i16 %i.076.i.i, 1
  %cmp22.i.i = icmp ult i16 %i.076.i.i, 63
  br i1 %cmp22.i.i, label %skb_get.exit.i.i.for.body24.i.i_crit_edge, label %for.end.i.i

skb_get.exit.i.i.for.body24.i.i_crit_edge:        ; preds = %skb_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body24.i.i

for.end.i.i:                                      ; preds = %skb_get.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %spec.select.i.i)
  %cmp33.not.i.i = icmp eq i16 %spec.select.i.i, 64
  br i1 %cmp33.not.i.i, label %if.end36.i.i, label %for.end.i.i.for.end46.i.i_crit_edge

for.end.i.i.for.end46.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end46.i.i

if.end36.i.i:                                     ; preds = %for.end.i.i
  tail call void @msleep(i32 noundef 200) #20
  %304 = ptrtoint ptr %next_to_clean.i.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %next_to_clean.i.i.i, align 64
  %306 = ptrtoint ptr %next_to_clean1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %next_to_clean1.i.i.i, align 64
  %308 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %desc.i.i.i, align 4
  %idxprom.i.i.i = zext i16 %305 to i32
  %arrayidx.i74.i.i = getelementptr %union.e1000_adv_rx_desc, ptr %309, i32 %idxprom.i.i.i
  %length1.i.i.i = getelementptr inbounds %struct.anon.141, ptr %arrayidx.i74.i.i, i32 0, i32 1, i32 1
  %310 = ptrtoint ptr %length1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %length1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %311)
  %tobool.not2.i.i.i = icmp eq i16 %311, 0
  br i1 %tobool.not2.i.i.i, label %if.end36.i.i.igb_clean_test_rings.exit.i.i_crit_edge, label %if.end36.i.i.while.body.i.i.i_crit_edge

if.end36.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end36.i.i
  br label %while.body.i.i.i

if.end36.i.i.igb_clean_test_rings.exit.i.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_clean_test_rings.exit.i.i

while.body.i.i.i:                                 ; preds = %igb_check_lbtest_frame.exit.i.i.i.while.body.i.i.i_crit_edge, %if.end36.i.i.while.body.i.i.i_crit_edge
  %count.05.i.i.i = phi i16 [ %spec.select.i.i.i, %igb_check_lbtest_frame.exit.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.end36.i.i.while.body.i.i.i_crit_edge ]
  %tx_ntc.04.i.i.i = phi i16 [ %spec.store.select33.i.i.i, %igb_check_lbtest_frame.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %307, %if.end36.i.i.while.body.i.i.i_crit_edge ]
  %rx_ntc.03.i.i.i = phi i16 [ %spec.store.select.i.i.i, %igb_check_lbtest_frame.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %305, %if.end36.i.i.while.body.i.i.i_crit_edge ]
  %312 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %300, align 16
  %idxprom2.i.i.i = zext i16 %rx_ntc.03.i.i.i to i32
  %arrayidx3.i75.i.i = getelementptr %struct.igb_rx_buffer, ptr %313, i32 %idxprom2.i.i.i
  %314 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev7.i.i, align 4
  %316 = ptrtoint ptr %arrayidx3.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx3.i75.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %315, i32 noundef %317, i32 noundef 256, i32 noundef 2) #20
  %page.i.i.i.i = getelementptr %struct.igb_rx_buffer, ptr %313, i32 %idxprom2.i.i.i, i32 1
  %318 = ptrtoint ptr %page.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %page.i.i.i.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 44) #20
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %319, align 4
  %shr.i.i.i.i.i.i = lshr i32 %321, 30
  %322 = zext i32 %shr.i.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %322, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %shr.i.i.i.i.i.i, label %while.body.i.i.i.if.then.i.i.i.i.i_crit_edge [
    i32 2, label %while.body.i.i.i.if.else.i.i.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i.i.i
  ]

while.body.i.i.i.if.else.i.i.i.i.i_crit_edge:     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else.i.i.i.i.i

while.body.i.i.i.if.then.i.i.i.i.i_crit_edge:     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i.i.i

is_highmem_idx.exit.i.i.i.i.i:                    ; preds = %while.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %323 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %323)
  %cmp2.i.not.i.i.i.i.i = icmp eq i32 %323, 2
  br i1 %cmp2.i.not.i.i.i.i.i, label %is_highmem_idx.exit.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge

is_highmem_idx.exit.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i.i.i

is_highmem_idx.exit.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %is_highmem_idx.exit.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge, %while.body.i.i.i.if.then.i.i.i.i.i_crit_edge
  %call5.i.i.i.i.i = tail call ptr @page_address(ptr noundef %319) #20
  br label %kmap.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %is_highmem_idx.exit.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge, %while.body.i.i.i.if.else.i.i.i.i.i_crit_edge
  %call6.i.i.i.i.i = tail call ptr @kmap_high(ptr noundef %319) #20
  br label %kmap.exit.i.i.i.i

kmap.exit.i.i.i.i:                                ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %addr.0.i.i.i.i.i = phi ptr [ %call6.i.i.i.i.i, %if.else.i.i.i.i.i ], [ %call5.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %arrayidx.i.i.i.i = getelementptr i8, ptr %addr.0.i.i.i.i.i, i32 3
  %324 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %325)
  %cmp.not.i.i.i.i = icmp eq i8 %325, -1
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %kmap.exit.i.i.i.i.if.then.i.i.i45.i_crit_edge

kmap.exit.i.i.i.i.if.then.i.i.i45.i_crit_edge:    ; preds = %kmap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i45.i

lor.lhs.false.i.i.i.i:                            ; preds = %kmap.exit.i.i.i.i
  %arrayidx2.i.i.i.i = getelementptr i8, ptr %addr.0.i.i.i.i.i, i32 138
  %326 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %327)
  %cmp4.not.i.i.i.i = icmp eq i8 %327, -66
  br i1 %cmp4.not.i.i.i.i, label %lor.lhs.false6.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then.i.i.i45.i_crit_edge

lor.lhs.false.i.i.i.i.if.then.i.i.i45.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i45.i

lor.lhs.false6.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %arrayidx8.i.i.i.i = getelementptr i8, ptr %addr.0.i.i.i.i.i, i32 140
  %328 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx8.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %329)
  %cmp10.not.i.i.i.i = icmp eq i8 %329, -81
  br i1 %cmp10.not.i.i.i.i, label %lor.lhs.false6.i.i.i.i.if.end.i.i.i.i_crit_edge, label %lor.lhs.false6.i.i.i.i.if.then.i.i.i45.i_crit_edge

lor.lhs.false6.i.i.i.i.if.then.i.i.i45.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i.i.i45.i

lor.lhs.false6.i.i.i.i.if.end.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i.i

if.then.i.i.i45.i:                                ; preds = %lor.lhs.false6.i.i.i.i.if.then.i.i.i45.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then.i.i.i45.i_crit_edge, %kmap.exit.i.i.i.i.if.then.i.i.i45.i_crit_edge
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i45.i, %lor.lhs.false6.i.i.i.i.if.end.i.i.i.i_crit_edge
  %tobool4.not.i.i.i = phi i1 [ false, %if.then.i.i.i45.i ], [ true, %lor.lhs.false6.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  %330 = ptrtoint ptr %page.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %page.i.i.i.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 55) #20
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %331, align 4
  %shr.i.i1.i.i.i.i = lshr i32 %333, 30
  %334 = zext i32 %shr.i.i1.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %334, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %shr.i.i1.i.i.i.i, label %if.end.i.i.i.i.igb_check_lbtest_frame.exit.i.i.i_crit_edge [
    i32 2, label %if.end.i.i.i.i.if.end.i.i.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i3.i.i.i.i
  ]

if.end.i.i.i.i.if.end.i.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.igb_check_lbtest_frame.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_check_lbtest_frame.exit.i.i.i

is_highmem_idx.exit.i3.i.i.i.i:                   ; preds = %if.end.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %335 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %335)
  %cmp2.i.not.i2.i.i.i.i = icmp eq i32 %335, 2
  br i1 %cmp2.i.not.i2.i.i.i.i, label %is_highmem_idx.exit.i3.i.i.i.i.if.end.i.i.i.i.i_crit_edge, label %is_highmem_idx.exit.i3.i.i.i.i.igb_check_lbtest_frame.exit.i.i.i_crit_edge

is_highmem_idx.exit.i3.i.i.i.i.igb_check_lbtest_frame.exit.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_check_lbtest_frame.exit.i.i.i

is_highmem_idx.exit.i3.i.i.i.i.if.end.i.i.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %is_highmem_idx.exit.i3.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %331) #20
  br label %igb_check_lbtest_frame.exit.i.i.i

igb_check_lbtest_frame.exit.i.i.i:                ; preds = %if.end.i.i.i.i.i, %is_highmem_idx.exit.i3.i.i.i.i.igb_check_lbtest_frame.exit.i.i.i_crit_edge, %if.end.i.i.i.i.igb_check_lbtest_frame.exit.i.i.i_crit_edge
  %inc.i.i.i = zext i1 %tobool4.not.i.i.i to i16
  %spec.select.i.i.i = add i16 %count.05.i.i.i, %inc.i.i.i
  %336 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %dev7.i.i, align 4
  %338 = ptrtoint ptr %arrayidx3.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx3.i75.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %337, i32 noundef %339, i32 noundef 256, i32 noundef 2) #20
  %340 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %301, align 16
  %idxprom7.i.i.i = zext i16 %tx_ntc.04.i.i.i to i32
  %342 = getelementptr %struct.igb_tx_buffer, ptr %341, i32 %idxprom7.i.i.i, i32 3
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %342, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %344, i32 noundef 1) #20
  %345 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %dev2.i.i, align 4
  %dma10.i.i.i = getelementptr %struct.igb_tx_buffer, ptr %341, i32 %idxprom7.i.i.i, i32 7
  %347 = ptrtoint ptr %dma10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %dma10.i.i.i, align 4
  %len.i.i.i = getelementptr %struct.igb_tx_buffer, ptr %341, i32 %idxprom7.i.i.i, i32 8
  %349 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %len.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %346, i32 noundef %348, i32 noundef %350, i32 noundef 1, i32 noundef 0) #20
  %351 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 0, ptr %len.i.i.i, align 4
  %inc12.i.i.i = add i16 %rx_ntc.03.i.i.i, 1
  %352 = ptrtoint ptr %count4.i.i to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %count4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc12.i.i.i, i16 %353)
  %cmp.i.i46.i = icmp eq i16 %inc12.i.i.i, %353
  %spec.store.select.i.i.i = select i1 %cmp.i.i46.i, i16 0, i16 %inc12.i.i.i
  %inc18.i.i.i = add i16 %tx_ntc.04.i.i.i, 1
  %354 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc18.i.i.i, i16 %355)
  %cmp22.i.i.i = icmp eq i16 %inc18.i.i.i, %355
  %spec.store.select33.i.i.i = select i1 %cmp22.i.i.i, i16 0, i16 %inc18.i.i.i
  %356 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %desc.i.i.i, align 4
  %idxprom27.i.i.i = zext i16 %spec.store.select.i.i.i to i32
  %arrayidx28.i.i.i = getelementptr %union.e1000_adv_rx_desc, ptr %357, i32 %idxprom27.i.i.i
  %length.i.i.i = getelementptr inbounds %struct.anon.141, ptr %arrayidx28.i.i.i, i32 0, i32 1, i32 1
  %358 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %length.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq i16 %359, 0
  br i1 %tobool.not.i.i.i, label %igb_check_lbtest_frame.exit.i.i.i.igb_clean_test_rings.exit.i.i_crit_edge, label %igb_check_lbtest_frame.exit.i.i.i.while.body.i.i.i_crit_edge

igb_check_lbtest_frame.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %igb_check_lbtest_frame.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.i.i

igb_check_lbtest_frame.exit.i.i.i.igb_clean_test_rings.exit.i.i_crit_edge: ; preds = %igb_check_lbtest_frame.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_clean_test_rings.exit.i.i

igb_clean_test_rings.exit.i.i:                    ; preds = %igb_check_lbtest_frame.exit.i.i.i.igb_clean_test_rings.exit.i.i_crit_edge, %if.end36.i.i.igb_clean_test_rings.exit.i.i_crit_edge
  %rx_ntc.0.lcssa.i.i.i = phi i16 [ %305, %if.end36.i.i.igb_clean_test_rings.exit.i.i_crit_edge ], [ %spec.store.select.i.i.i, %igb_check_lbtest_frame.exit.i.i.i.igb_clean_test_rings.exit.i.i_crit_edge ]
  %tx_ntc.0.lcssa.i.i.i = phi i16 [ %307, %if.end36.i.i.igb_clean_test_rings.exit.i.i_crit_edge ], [ %spec.store.select33.i.i.i, %igb_check_lbtest_frame.exit.i.i.i.igb_clean_test_rings.exit.i.i_crit_edge ]
  %count.0.lcssa.i.i.i = phi i16 [ 0, %if.end36.i.i.igb_clean_test_rings.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %igb_check_lbtest_frame.exit.i.i.i.igb_clean_test_rings.exit.i.i_crit_edge ]
  %360 = ptrtoint ptr %netdev3.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %netdev3.i.i, align 4
  %362 = ptrtoint ptr %queue_index.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %queue_index.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %363 to i32
  %_tx.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %361, i32 0, i32 103
  %364 = ptrtoint ptr %_tx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %_tx.i.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr %struct.netdev_queue, ptr %365, i32 %conv.i.i.i.i, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i.i) #20
  %dql.i.i.i.i = getelementptr %struct.netdev_queue, ptr %365, i32 %conv.i.i.i.i, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i.i.i) #20
  tail call void @igb_alloc_rx_buffers(ptr noundef %test_rx_ring.i.i, i16 noundef zeroext %count.0.lcssa.i.i.i) #20
  %366 = ptrtoint ptr %next_to_clean.i.i.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 %rx_ntc.0.lcssa.i.i.i, ptr %next_to_clean.i.i.i, align 64
  %367 = ptrtoint ptr %next_to_clean1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %tx_ntc.0.lcssa.i.i.i, ptr %next_to_clean1.i.i.i, align 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %count.0.lcssa.i.i.i)
  %cmp40.not.i.i = icmp eq i16 %count.0.lcssa.i.i.i, 64
  br i1 %cmp40.not.i.i, label %for.cond.i.i, label %igb_clean_test_rings.exit.i.i.for.end46.i.i_crit_edge

igb_clean_test_rings.exit.i.i.for.end46.i.i_crit_edge: ; preds = %igb_clean_test_rings.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end46.i.i

for.end46.i.i:                                    ; preds = %igb_clean_test_rings.exit.i.i.for.end46.i.i_crit_edge, %for.end.i.i.for.end46.i.i_crit_edge, %for.cond.i.i.for.end46.i.i_crit_edge
  %ret_val.0.i47.i = phi i32 [ 0, %for.cond.i.i.for.end46.i.i_crit_edge ], [ 12, %for.end.i.i.for.end46.i.i_crit_edge ], [ 13, %igb_clean_test_rings.exit.i.i.for.end46.i.i_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #20
  br label %igb_run_loopback_test.exit.i

igb_run_loopback_test.exit.i:                     ; preds = %for.end46.i.i, %igb_setup_loopback_test.exit.i.igb_run_loopback_test.exit.i_crit_edge
  %retval.0.i48.i = phi i32 [ %ret_val.0.i47.i, %for.end46.i.i ], [ 11, %igb_setup_loopback_test.exit.i.igb_run_loopback_test.exit.i_crit_edge ]
  %conv1865.i = zext i32 %retval.0.i48.i to i64
  %368 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %368)
  store i64 %conv1865.i, ptr %arrayidx42, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg.i.i) #20
  %369 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 -1, ptr %phy_reg.i.i, align 2, !annotation !196
  %device_id.i50.i = getelementptr i8, ptr %netdev, i32 4558
  %370 = ptrtoint ptr %device_id.i50.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %device_id.i50.i, align 2
  %372 = zext i16 %371 to i64
  call void @__sanitizer_cov_trace_switch(i64 %372, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %371, label %igb_run_loopback_test.exit.i.if.end59.i.i_crit_edge [
    i16 1080, label %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge
    i16 1082, label %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge236
    i16 1084, label %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge237
    i16 1088, label %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge238
    i16 8001, label %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge239
  ]

igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge239: ; preds = %igb_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i53.i

igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge238: ; preds = %igb_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i53.i

igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge237: ; preds = %igb_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i53.i

igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge236: ; preds = %igb_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i53.i

igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge: ; preds = %igb_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then.i53.i

igb_run_loopback_test.exit.i.if.end59.i.i_crit_edge: ; preds = %igb_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59.i.i

if.then.i53.i:                                    ; preds = %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge, %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge236, %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge237, %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge238, %igb_run_loopback_test.exit.i.if.then.i53.i_crit_edge239
  %call.i51.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 36) #20
  %373 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool.not.i52.i = icmp eq ptr %374, null
  br i1 %tobool.not.i52.i, label %if.then.i53.i.if.end.i57.i_crit_edge, label %do.body28.i.i, !prof !162

if.then.i53.i.if.end.i57.i_crit_edge:             ; preds = %if.then.i53.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i57.i

do.body28.i.i:                                    ; preds = %if.then.i53.i
  call void @__sanitizer_cov_trace_pc() #22
  %and.i54.i = and i32 %call.i51.i, -65536
  %or.i55.i = or i32 %and.i54.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !197
  tail call void @arm_heavy_mb() #20
  %375 = tail call i32 @llvm.bswap.i32(i32 %or.i55.i) #20
  %arrayidx.i56.i = getelementptr i8, ptr %374, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i56.i, i32 %375) #20, !srcloc !164
  br label %if.end.i57.i

if.end.i57.i:                                     ; preds = %do.body28.i.i, %if.then.i53.i.if.end.i57.i_crit_edge
  %call33.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 3600) #20
  %376 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool42.not.i.i = icmp eq ptr %377, null
  br i1 %tobool42.not.i.i, label %if.end.i57.i.if.end59.i.i_crit_edge, label %do.body52.i.i, !prof !162

if.end.i57.i.if.end59.i.i_crit_edge:              ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59.i.i

do.body52.i.i:                                    ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #22
  %and34.i.i = and i32 %call33.i.i, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !198
  tail call void @arm_heavy_mb() #20
  %378 = tail call i32 @llvm.bswap.i32(i32 %and34.i.i) #20
  %arrayidx55.i.i = getelementptr i8, ptr %377, i32 3600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx55.i.i, i32 %378) #20, !srcloc !164
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %do.body52.i.i, %if.end.i57.i.if.end59.i.i_crit_edge, %igb_run_loopback_test.exit.i.if.end59.i.i_crit_edge
  %call60.i.i = tail call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 256) #20
  %379 = ptrtoint ptr %hw_addr8.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load volatile ptr, ptr %hw_addr8.i, align 4
  %tobool69.not.i.i = icmp eq ptr %380, null
  br i1 %tobool69.not.i.i, label %if.end59.i.i.if.end83.i.i_crit_edge, label %do.body79.i.i, !prof !162

if.end59.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end83.i.i

do.body79.i.i:                                    ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %and61.i.i = and i32 %call60.i.i, -193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !199
  tail call void @arm_heavy_mb() #20
  %381 = tail call i32 @llvm.bswap.i32(i32 %and61.i.i) #20
  %arrayidx82.i.i = getelementptr i8, ptr %380, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx82.i.i, i32 %381) #20, !srcloc !164
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %do.body79.i.i, %if.end59.i.i.if.end83.i.i_crit_edge
  %382 = ptrtoint ptr %autoneg10 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 1, ptr %autoneg10, align 2
  %read_reg.i.i.i = getelementptr i8, ptr %netdev, i32 4280
  %383 = ptrtoint ptr %read_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %read_reg.i.i.i, align 4
  %tobool.not.i.i58.i = icmp eq ptr %384, null
  br i1 %tobool.not.i.i58.i, label %if.end83.i.i.igb_read_phy_reg.exit.i.i_crit_edge, label %if.then.i.i60.i

if.end83.i.i.igb_read_phy_reg.exit.i.i_crit_edge: ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_read_phy_reg.exit.i.i

if.then.i.i60.i:                                  ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i59.i = call i32 %384(ptr noundef %hw1.i, i32 noundef 0, ptr noundef nonnull %phy_reg.i.i) #20
  br label %igb_read_phy_reg.exit.i.i

igb_read_phy_reg.exit.i.i:                        ; preds = %if.then.i.i60.i, %if.end83.i.i.igb_read_phy_reg.exit.i.i_crit_edge
  %385 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %phy_reg.i.i, align 2
  %387 = and i16 %386, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %387)
  %tobool89.not.i.i = icmp eq i16 %387, 0
  br i1 %tobool89.not.i.i, label %igb_read_phy_reg.exit.i.i.igb_loopback_cleanup.exit.i_crit_edge, label %if.then90.i.i

igb_read_phy_reg.exit.i.i.igb_loopback_cleanup.exit.i_crit_edge: ; preds = %igb_read_phy_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_loopback_cleanup.exit.i

if.then90.i.i:                                    ; preds = %igb_read_phy_reg.exit.i.i
  %and92.i.i = and i16 %386, -16385
  %388 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_store2_noabort(i32 %388)
  store i16 %and92.i.i, ptr %phy_reg.i.i, align 2
  %write_reg.i.i.i = getelementptr i8, ptr %netdev, i32 4300
  %389 = ptrtoint ptr %write_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %write_reg.i.i.i, align 4
  %tobool.not.i118.i.i = icmp eq ptr %390, null
  br i1 %tobool.not.i118.i.i, label %if.then90.i.i.igb_write_phy_reg.exit.i.i_crit_edge, label %if.then.i120.i.i

if.then90.i.i.igb_write_phy_reg.exit.i.i_crit_edge: ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_write_phy_reg.exit.i.i

if.then.i120.i.i:                                 ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i119.i.i = call i32 %390(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext %and92.i.i) #20
  br label %igb_write_phy_reg.exit.i.i

igb_write_phy_reg.exit.i.i:                       ; preds = %if.then.i120.i.i, %if.then90.i.i.igb_write_phy_reg.exit.i.i_crit_edge
  %call95.i.i = call i32 @igb_phy_sw_reset(ptr noundef %hw1.i) #20
  br label %igb_loopback_cleanup.exit.i

igb_loopback_cleanup.exit.i:                      ; preds = %igb_write_phy_reg.exit.i.i, %igb_read_phy_reg.exit.i.i.igb_loopback_cleanup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i.i) #20
  call void @igb_free_tx_resources(ptr noundef %test_tx_ring.i.i) #20
  call void @igb_free_rx_resources(ptr noundef %test_rx_ring.i.i) #20
  br label %igb_loopback_test.exit

igb_loopback_test.exit:                           ; preds = %igb_loopback_cleanup.exit.i, %igb_setup_desc_rings.exit.i, %do.end4.i, %do.end.i179
  %391 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %391)
  %392 = load i64, ptr %arrayidx42, align 8
  %conv19.i = trunc i64 %392 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv19.i)
  %tobool44.not = icmp eq i32 %conv19.i, 0
  br i1 %tobool44.not, label %igb_loopback_test.exit.if.end48_crit_edge, label %if.then45

igb_loopback_test.exit.if.end48_crit_edge:        ; preds = %igb_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48

if.then45:                                        ; preds = %igb_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #22
  %393 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %flags2, align 4
  %or47 = or i32 %394, 2
  store i32 %or47, ptr %flags2, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %igb_loopback_test.exit.if.end48_crit_edge
  %395 = ptrtoint ptr %autoneg_advertised5 to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 %9, ptr %autoneg_advertised5, align 4
  %396 = ptrtoint ptr %forced_speed_duplex7 to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 %11, ptr %forced_speed_duplex7, align 2
  %397 = ptrtoint ptr %autoneg10 to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %13, ptr %autoneg10, align 2
  %autoneg_wait_to_complete = getelementptr i8, ptr %netdev, i32 4384
  %398 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 1, ptr %autoneg_wait_to_complete, align 4
  call void @igb_reset(ptr noundef %add.ptr.i) #20
  %399 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 0, ptr %autoneg_wait_to_complete, align 4
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #20
  br i1 %tobool.i.not, label %if.end48.if.end92_crit_edge, label %if.then67

if.end48.if.end92_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end92

if.then67:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #22
  %call68 = call i32 @igb_open(ptr noundef %netdev) #20
  br label %if.end92

do.end73:                                         ; preds = %if.end
  %pdev74 = getelementptr i8, ptr %netdev, i32 3344
  %400 = ptrtoint ptr %pdev74 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %pdev74, align 16
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %401, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev75, ptr noundef nonnull @.str.13) #23
  br i1 %tobool.i.not, label %do.end73.if.else84_crit_edge, label %land.lhs.true

do.end73.if.else84_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else84

land.lhs.true:                                    ; preds = %do.end73
  %arrayidx78 = getelementptr i64, ptr %data, i32 4
  %hw1.i191 = getelementptr i8, ptr %netdev, i32 3584
  %402 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store8_noabort(i32 %402)
  store i64 0, ptr %arrayidx78, align 8
  %media_type.i192 = getelementptr i8, ptr %netdev, i32 4356
  %403 = ptrtoint ptr %media_type.i192 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %media_type.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %404)
  %cmp.i193 = icmp eq i32 %404, 3
  %mac.i194 = getelementptr i8, ptr %netdev, i32 3600
  br i1 %cmp.i193, label %if.then.i196, label %if.else.i207

if.then.i196:                                     ; preds = %land.lhs.true
  %serdes_has_link.i195 = getelementptr i8, ptr %netdev, i32 4217
  %405 = ptrtoint ptr %serdes_has_link.i195 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 0, ptr %serdes_has_link.i195, align 1
  br label %do.body.i200

do.body.i200:                                     ; preds = %if.end.i203.do.body.i200_crit_edge, %if.then.i196
  %i.0.i197 = phi i32 [ 0, %if.then.i196 ], [ %inc.i201, %if.end.i203.do.body.i200_crit_edge ]
  %406 = ptrtoint ptr %mac.i194 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %mac.i194, align 4
  %call.i198 = tail call i32 %407(ptr noundef %hw1.i191) #20
  %408 = ptrtoint ptr %serdes_has_link.i195 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %serdes_has_link.i195, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool.not.i199 = icmp eq i8 %409, 0
  br i1 %tobool.not.i199, label %if.end.i203, label %do.body.i200.igb_link_test.exit215_crit_edge

do.body.i200.igb_link_test.exit215_crit_edge:     ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_link_test.exit215

if.end.i203:                                      ; preds = %do.body.i200
  tail call void @msleep(i32 noundef 20) #20
  %inc.i201 = add nuw nsw i32 %i.0.i197, 1
  %exitcond.not.i202 = icmp eq i32 %inc.i201, 3751
  br i1 %exitcond.not.i202, label %if.end.i203.if.end22.sink.split.i213_crit_edge, label %if.end.i203.do.body.i200_crit_edge

if.end.i203.do.body.i200_crit_edge:               ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i200

if.end.i203.if.end22.sink.split.i213_crit_edge:   ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22.sink.split.i213

if.else.i207:                                     ; preds = %land.lhs.true
  %410 = ptrtoint ptr %mac.i194 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %mac.i194, align 4
  %call13.i204 = tail call i32 %411(ptr noundef %hw1.i191) #20
  %autoneg.i205 = getelementptr i8, ptr %netdev, i32 4210
  %412 = ptrtoint ptr %autoneg.i205 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %autoneg.i205, align 2, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %413)
  %tobool15.not.i206 = icmp eq i8 %413, 0
  br i1 %tobool15.not.i206, label %if.else.i207.if.end17.i212_crit_edge, label %if.then16.i208

if.else.i207.if.end17.i212_crit_edge:             ; preds = %if.else.i207
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i212

if.then16.i208:                                   ; preds = %if.else.i207
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @msleep(i32 noundef 5000) #20
  br label %if.end17.i212

if.end17.i212:                                    ; preds = %if.then16.i208, %if.else.i207.if.end17.i212_crit_edge
  %call18.i209 = tail call i32 @igb_rd32(ptr noundef %hw1.i191, i32 noundef 8) #20
  %and.i210 = and i32 %call18.i209, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210)
  %tobool19.not.i211 = icmp eq i32 %and.i210, 0
  br i1 %tobool19.not.i211, label %if.end17.i212.if.end22.sink.split.i213_crit_edge, label %if.end17.i212.igb_link_test.exit215_crit_edge

if.end17.i212.igb_link_test.exit215_crit_edge:    ; preds = %if.end17.i212
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_link_test.exit215

if.end17.i212.if.end22.sink.split.i213_crit_edge: ; preds = %if.end17.i212
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22.sink.split.i213

if.end22.sink.split.i213:                         ; preds = %if.end17.i212.if.end22.sink.split.i213_crit_edge, %if.end.i203.if.end22.sink.split.i213_crit_edge
  %414 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store8_noabort(i32 %414)
  store i64 1, ptr %arrayidx78, align 8
  br label %igb_link_test.exit215

igb_link_test.exit215:                            ; preds = %if.end22.sink.split.i213, %if.end17.i212.igb_link_test.exit215_crit_edge, %do.body.i200.igb_link_test.exit215_crit_edge
  %415 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load8_noabort(i32 %415)
  %416 = load i64, ptr %arrayidx78, align 8
  %conv.i214 = trunc i64 %416 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i214)
  %tobool80.not = icmp eq i32 %conv.i214, 0
  br i1 %tobool80.not, label %igb_link_test.exit215.if.else84_crit_edge, label %if.then81

igb_link_test.exit215.if.else84_crit_edge:        ; preds = %igb_link_test.exit215
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else84

if.then81:                                        ; preds = %igb_link_test.exit215
  call void @__sanitizer_cov_trace_pc() #22
  %417 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %flags2, align 4
  %or83 = or i32 %418, 2
  store i32 %or83, ptr %flags2, align 4
  br label %if.end86

if.else84:                                        ; preds = %igb_link_test.exit215.if.else84_crit_edge, %do.end73.if.else84_crit_edge
  %arrayidx85 = getelementptr i64, ptr %data, i32 4
  %419 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store8_noabort(i32 %419)
  store i64 0, ptr %arrayidx85, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then81
  %420 = call ptr @memset(ptr %data, i32 0, i32 32)
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #20
  br label %if.end92

if.end92:                                         ; preds = %if.end86, %if.then67, %if.end48.if.end92_crit_edge
  %call93 = call i32 @msleep_interruptible(i32 noundef 4000) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #20
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %p, align 4
  %1 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.for.body_crit_edge
    i32 2, label %sw.bb23
  ]

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %2 = call ptr @memcpy(ptr %data, ptr @igb_gstrings_test, i32 160)
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [42 x %struct.igb_stats], ptr @igb_gstrings_stats, i32 0, i32 %i.044
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef %arrayidx) #20
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %for.body4.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body4.preheader:                              ; preds = %for.body
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @igb_gstrings_net_stats) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 1)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 2)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 3)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 4)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 5)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 6)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 7)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 8)) #20
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2936
  %3 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1246 = icmp sgt i32 %4, 0
  br i1 %cmp1246, label %for.body4.preheader.for.body13_crit_edge, label %for.body4.preheader.for.cond17.preheader_crit_edge

for.body4.preheader.for.cond17.preheader_crit_edge: ; preds = %for.body4.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond17.preheader

for.body4.preheader.for.body13_crit_edge:         ; preds = %for.body4.preheader
  br label %for.body13

for.cond17.preheader:                             ; preds = %for.body13.for.cond17.preheader_crit_edge, %for.body4.preheader.for.cond17.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 3004
  %5 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1848 = icmp sgt i32 %6, 0
  br i1 %cmp1848, label %for.cond17.preheader.for.body19_crit_edge, label %for.cond17.preheader.sw.epilog_crit_edge

for.cond17.preheader.sw.epilog_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.cond17.preheader.for.body19_crit_edge:        ; preds = %for.cond17.preheader
  br label %for.body19

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body4.preheader.for.body13_crit_edge
  %i.247 = phi i32 [ %inc15, %for.body13.for.body13_crit_edge ], [ 0, %for.body4.preheader.for.body13_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.31, i32 noundef %i.247) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.32, i32 noundef %i.247) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.33, i32 noundef %i.247) #20
  %inc15 = add nuw nsw i32 %i.247, 1
  %7 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_tx_queues, align 8
  %cmp12 = icmp slt i32 %inc15, %8
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.for.cond17.preheader_crit_edge

for.body13.for.cond17.preheader_crit_edge:        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond17.preheader

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body13

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond17.preheader.for.body19_crit_edge
  %i.349 = phi i32 [ %inc21, %for.body19.for.body19_crit_edge ], [ 0, %for.cond17.preheader.for.body19_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.34, i32 noundef %i.349) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.35, i32 noundef %i.349) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.36, i32 noundef %i.349) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.37, i32 noundef %i.349) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.38, i32 noundef %i.349) #20
  %inc21 = add nuw nsw i32 %i.349, 1
  %9 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_rx_queues, align 4
  %cmp18 = icmp slt i32 %inc21, %10
  br i1 %cmp18, label %for.body19.for.body19_crit_edge, label %for.body19.sw.epilog_crit_edge

for.body19.sw.epilog_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body19

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %11 = call ptr @memcpy(ptr %data, ptr @igb_priv_flags_strings, i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %for.body19.sw.epilog_crit_edge, %for.cond17.preheader.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_phys_id(ptr noundef %netdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 0, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call2 = tail call i32 @igb_blink_led(ptr noundef %hw1) #20
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call4 = tail call i32 @igb_blink_led(ptr noundef %hw1) #20
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call6 = tail call i32 @igb_led_off(ptr noundef %hw1) #20
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call8 = tail call i32 @igb_led_off(ptr noundef %hw1) #20
  %led_status = getelementptr i8, ptr %netdev, i32 3340
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %led_status) #20
  %call9 = tail call i32 @igb_cleanup_led(ptr noundef %hw1) #20
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %stats64_lock = getelementptr i8, ptr %netdev, i32 3348
  tail call void @_raw_spin_lock(ptr noundef %stats64_lock) #20
  tail call void @igb_update_stats(ptr noundef %add.ptr.i) #20
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry
  %i.0149 = phi i32 [ 0, %entry ], [ %inc, %cond.end.for.body_crit_edge ]
  %stat_offset = getelementptr [42 x %struct.igb_stats], ptr @igb_gstrings_stats, i32 0, i32 %i.0149, i32 2
  %0 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %sizeof_stat = getelementptr [42 x %struct.igb_stats], ptr @igb_gstrings_stats, i32 0, i32 %i.0149, i32 1
  %2 = ptrtoint ptr %sizeof_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeof_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp2 = icmp eq i32 %3, 8
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %7 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %conv, %cond.false ]
  %arrayidx3 = getelementptr i64, ptr %data, i32 %i.0149
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %cond, ptr %arrayidx3, align 8
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %cond.true15.preheader, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

cond.true15.preheader:                            ; preds = %cond.end
  %add.ptr10 = getelementptr i8, ptr %netdev, i32 3424
  %9 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr10, align 8
  %arrayidx20 = getelementptr i64, ptr %data, i32 42
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx20, align 8
  %add.ptr10.1 = getelementptr i8, ptr %netdev, i32 3432
  %12 = ptrtoint ptr %add.ptr10.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr10.1, align 8
  %arrayidx20.1 = getelementptr i64, ptr %data, i32 43
  %14 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx20.1, align 8
  %add.ptr10.2 = getelementptr i8, ptr %netdev, i32 3448
  %15 = ptrtoint ptr %add.ptr10.2 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr10.2, align 8
  %arrayidx20.2 = getelementptr i64, ptr %data, i32 44
  %17 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx20.2, align 8
  %add.ptr10.3 = getelementptr i8, ptr %netdev, i32 3472
  %18 = ptrtoint ptr %add.ptr10.3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr10.3, align 8
  %arrayidx20.3 = getelementptr i64, ptr %data, i32 45
  %20 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx20.3, align 8
  %add.ptr10.4 = getelementptr i8, ptr %netdev, i32 3480
  %21 = ptrtoint ptr %add.ptr10.4 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr10.4, align 8
  %arrayidx20.4 = getelementptr i64, ptr %data, i32 46
  %23 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx20.4, align 8
  %add.ptr10.5 = getelementptr i8, ptr %netdev, i32 3496
  %24 = ptrtoint ptr %add.ptr10.5 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr10.5, align 8
  %arrayidx20.5 = getelementptr i64, ptr %data, i32 47
  %26 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx20.5, align 8
  %add.ptr10.6 = getelementptr i8, ptr %netdev, i32 3504
  %27 = ptrtoint ptr %add.ptr10.6 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr10.6, align 8
  %arrayidx20.6 = getelementptr i64, ptr %data, i32 48
  %29 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx20.6, align 8
  %add.ptr10.7 = getelementptr i8, ptr %netdev, i32 3536
  %30 = ptrtoint ptr %add.ptr10.7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr10.7, align 8
  %arrayidx20.7 = getelementptr i64, ptr %data, i32 49
  %32 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx20.7, align 8
  %add.ptr10.8 = getelementptr i8, ptr %netdev, i32 3544
  %33 = ptrtoint ptr %add.ptr10.8 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr10.8, align 8
  %arrayidx20.8 = getelementptr i64, ptr %data, i32 50
  %35 = ptrtoint ptr %arrayidx20.8 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx20.8, align 8
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2936
  %36 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp26152 = icmp sgt i32 %37, 0
  br i1 %cmp26152, label %cond.true15.preheader.for.body28_crit_edge, label %cond.true15.preheader.for.cond53.preheader_crit_edge

cond.true15.preheader.for.cond53.preheader_crit_edge: ; preds = %cond.true15.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond53.preheader

cond.true15.preheader.for.body28_crit_edge:       ; preds = %cond.true15.preheader
  br label %for.body28

for.cond53.preheader:                             ; preds = %do.end45.for.cond53.preheader_crit_edge, %cond.true15.preheader.for.cond53.preheader_crit_edge
  %i.2.lcssa = phi i32 [ 51, %cond.true15.preheader.for.cond53.preheader_crit_edge ], [ %add49, %do.end45.for.cond53.preheader_crit_edge ]
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 3004
  %38 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp54155 = icmp sgt i32 %39, 0
  br i1 %cmp54155, label %for.cond53.preheader.for.body56_crit_edge, label %for.cond53.preheader.for.end82_crit_edge

for.cond53.preheader.for.end82_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end82

for.cond53.preheader.for.body56_crit_edge:        ; preds = %for.cond53.preheader
  br label %for.body56

for.body28:                                       ; preds = %do.end45.for.body28_crit_edge, %cond.true15.preheader.for.body28_crit_edge
  %j.1154 = phi i32 [ %inc51, %do.end45.for.body28_crit_edge ], [ 0, %cond.true15.preheader.for.body28_crit_edge ]
  %i.2153 = phi i32 [ %add49, %do.end45.for.body28_crit_edge ], [ 51, %cond.true15.preheader.for.body28_crit_edge ]
  %arrayidx29 = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %j.1154
  %40 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx29, align 4
  %42 = getelementptr inbounds %struct.igb_ring, ptr %41, i32 0, i32 22
  %tx_syncp = getelementptr inbounds %struct.igb_ring, ptr %41, i32 0, i32 22, i32 0, i32 1
  %arrayidx31 = getelementptr i64, ptr %data, i32 %i.2153
  %bytes = getelementptr inbounds %struct.igb_ring, ptr %41, i32 0, i32 22, i32 0, i32 0, i32 1
  %add = add i32 %i.2153, 1
  %arrayidx33 = getelementptr i64, ptr %data, i32 %add
  %restart_queue = getelementptr inbounds %struct.igb_ring, ptr %41, i32 0, i32 22, i32 0, i32 0, i32 2
  %add35 = add i32 %i.2153, 2
  %arrayidx36 = getelementptr i64, ptr %data, i32 %add35
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body28
  %call30 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %tx_syncp)
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %42, align 8
  %45 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx31, align 8
  %46 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bytes, align 8
  %48 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx33, align 8
  %49 = ptrtoint ptr %restart_queue to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %restart_queue, align 8
  %51 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx36, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !200
  %52 = ptrtoint ptr %tx_syncp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %tx_syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %53, %call30
  br i1 %cmp.i.i.i.i.not, label %do.body39.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.body39.preheader:                              ; preds = %do.body
  %tx_syncp2 = getelementptr inbounds %struct.igb_ring, ptr %41, i32 0, i32 22, i32 0, i32 2
  %restart_queue2 = getelementptr inbounds %struct.igb_ring, ptr %41, i32 0, i32 22, i32 0, i32 0, i32 3
  br label %do.body39

do.body39:                                        ; preds = %do.body39.do.body39_crit_edge, %do.body39.preheader
  %call40 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %tx_syncp2)
  %54 = ptrtoint ptr %restart_queue2 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %restart_queue2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !200
  %56 = ptrtoint ptr %tx_syncp2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %tx_syncp2, align 4
  %cmp.i.i.i.i147.not = icmp eq i32 %57, %call40
  br i1 %cmp.i.i.i.i147.not, label %do.end45, label %do.body39.do.body39_crit_edge

do.body39.do.body39_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body39

do.end45:                                         ; preds = %do.body39
  %58 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx36, align 8
  %add48 = add i64 %59, %55
  store i64 %add48, ptr %arrayidx36, align 8
  %add49 = add i32 %i.2153, 3
  %inc51 = add nuw nsw i32 %j.1154, 1
  %60 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_tx_queues, align 8
  %cmp26 = icmp slt i32 %inc51, %61
  br i1 %cmp26, label %do.end45.for.body28_crit_edge, label %do.end45.for.cond53.preheader_crit_edge

do.end45.for.cond53.preheader_crit_edge:          ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond53.preheader

do.end45.for.body28_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body28

for.body56:                                       ; preds = %do.end78.for.body56_crit_edge, %for.cond53.preheader.for.body56_crit_edge
  %j.2157 = phi i32 [ %inc81, %do.end78.for.body56_crit_edge ], [ 0, %for.cond53.preheader.for.body56_crit_edge ]
  %i.3156 = phi i32 [ %add79, %do.end78.for.body56_crit_edge ], [ %i.2.lcssa, %for.cond53.preheader.for.body56_crit_edge ]
  %arrayidx57 = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 16, i32 %j.2157
  %62 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx57, align 4
  %rx_syncp = getelementptr inbounds %struct.igb_ring, ptr %63, i32 0, i32 22, i32 0, i32 1, i32 0, i32 1, i32 2
  %rx_stats = getelementptr inbounds %struct.igb_ring, ptr %63, i32 0, i32 22, i32 0, i32 0, i32 1
  %arrayidx61 = getelementptr i64, ptr %data, i32 %i.3156
  %bytes63 = getelementptr inbounds %struct.igb_ring, ptr %63, i32 0, i32 22, i32 0, i32 0, i32 2
  %add64 = add i32 %i.3156, 1
  %arrayidx65 = getelementptr i64, ptr %data, i32 %add64
  %drops = getelementptr inbounds %struct.igb_ring, ptr %63, i32 0, i32 22, i32 0, i32 0, i32 3
  %add67 = add i32 %i.3156, 2
  %arrayidx68 = getelementptr i64, ptr %data, i32 %add67
  %csum_err = getelementptr inbounds %struct.igb_ring, ptr %63, i32 0, i32 22, i32 0, i32 1
  %add70 = add i32 %i.3156, 3
  %arrayidx71 = getelementptr i64, ptr %data, i32 %add70
  %alloc_failed = getelementptr inbounds %struct.igb_ring, ptr %63, i32 0, i32 22, i32 0, i32 1, i32 0, i32 1, i32 1
  %add73 = add i32 %i.3156, 4
  %arrayidx74 = getelementptr i64, ptr %data, i32 %add73
  br label %do.body58

do.body58:                                        ; preds = %do.body58.do.body58_crit_edge, %for.body56
  %call59 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %rx_syncp)
  %64 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %rx_stats, align 8
  %66 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %arrayidx61, align 8
  %67 = ptrtoint ptr %bytes63 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bytes63, align 8
  %69 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %arrayidx65, align 8
  %70 = ptrtoint ptr %drops to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %drops, align 8
  %72 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %arrayidx68, align 8
  %73 = ptrtoint ptr %csum_err to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %csum_err, align 8
  %75 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %arrayidx71, align 8
  %76 = ptrtoint ptr %alloc_failed to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %alloc_failed, align 8
  %78 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %arrayidx74, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !200
  %79 = ptrtoint ptr %rx_syncp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %rx_syncp, align 4
  %cmp.i.i.i.i148.not = icmp eq i32 %80, %call59
  br i1 %cmp.i.i.i.i148.not, label %do.end78, label %do.body58.do.body58_crit_edge

do.body58.do.body58_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body58

do.end78:                                         ; preds = %do.body58
  %add79 = add i32 %i.3156, 5
  %inc81 = add nuw nsw i32 %j.2157, 1
  %81 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_rx_queues, align 4
  %cmp54 = icmp slt i32 %inc81, %82
  br i1 %cmp54, label %do.end78.for.body56_crit_edge, label %do.end78.for.end82_crit_edge

do.end78.for.end82_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end82

do.end78.for.body56_crit_edge:                    ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body56

for.end82:                                        ; preds = %do.end78.for.end82_crit_edge, %for.cond53.preheader.for.end82_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stats64_lock) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ethtool_begin(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %netdev, i32 3344
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_ethtool_complete(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %netdev, i32 3344
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_priv_flags(ptr nocapture noundef readonly %netdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 2828
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 16
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_priv_flags(ptr noundef %netdev, i32 noundef %priv_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags1 = getelementptr i8, ptr %netdev, i32 2828
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, -65537
  %and2 = shl i32 %priv_flags, 16
  %2 = and i32 %and2, 65536
  %spec.select = or i32 %and, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %1)
  %cmp.not = icmp eq i32 %spec.select, %1
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then4

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

if.then4:                                         ; preds = %entry
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %flags1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then4.if.end9_crit_edge, label %if.then7

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @igb_reinit_locked(ptr noundef %add.ptr.i) #20
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %sset, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %entry.return_crit_edge
    i32 2, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 3004
  %1 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_rx_queues, align 4
  %mul = mul i32 %2, 5
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2936
  %3 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx_queues, align 8
  %mul2 = mul i32 %4, 3
  %add = add i32 %mul, 51
  %add3 = add i32 %add, %mul2
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -524, %sw.default ], [ 1, %sw.bb5 ], [ %add3, %sw.bb ], [ 5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_rxnfc(ptr nocapture noundef readonly %dev, ptr noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb2
    i32 47, label %sw.bb3
    i32 48, label %sw.bb5
    i32 41, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %num_rx_queues = getelementptr i8, ptr %dev, i32 3004
  %3 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_rx_queues, align 4
  %conv = sext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %nfc_filter_count = getelementptr i8, ptr %dev, i32 8692
  %6 = ptrtoint ptr %nfc_filter_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfc_filter_count, align 4
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 16, ptr %data.i, align 8
  %nfc_filter_list.i = getelementptr i8, ptr %dev, i32 8684
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %sw.bb3
  %rule.0.in.i = phi ptr [ %nfc_filter_list.i, %sw.bb3 ], [ %rule.0.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %rule.0.i = load ptr, ptr %rule.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %rule.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.sw.epilog_crit_edge, label %for.body.i

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

for.body.i:                                       ; preds = %for.cond.i
  %12 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %location.i, align 8
  %sw_idx.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 4
  %14 = ptrtoint ptr %sw_idx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sw_idx.i, align 2
  %conv.i = zext i16 %15 to i32
  %cmp.not.i = icmp ugt i32 %13, %conv.i
  br i1 %cmp.not.i, label %for.body.i.for.cond.i_crit_edge, label %lor.lhs.false.critedge.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.i

lor.lhs.false.critedge.i:                         ; preds = %for.body.i
  %conv.i.le = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i.le)
  %cmp18.not.i = icmp eq i32 %13, %conv.i.le
  br i1 %cmp18.not.i, label %if.end21.i, label %lor.lhs.false.critedge.i.sw.epilog_crit_edge

lor.lhs.false.critedge.i.sw.epilog_crit_edge:     ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end21.i:                                       ; preds = %lor.lhs.false.critedge.i
  %filter.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %filter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not.i = icmp eq i8 %17, 0
  br i1 %tobool22.not.i, label %if.end21.i.sw.epilog_crit_edge, label %if.then23.i

if.end21.i.sw.epilog_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then23.i:                                      ; preds = %if.end21.i
  %18 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 18, ptr %fs.i, align 8
  %action.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 5
  %19 = ptrtoint ptr %action.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %action.i, align 4
  %conv24.i = zext i16 %20 to i64
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %21 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv24.i, ptr %ring_cookie.i, align 8
  %22 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %filter.i, align 4
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool28.not.i = icmp eq i8 %24, 0
  br i1 %tobool28.not.i, label %if.then23.i.if.end32.i_crit_edge, label %if.then29.i

if.then23.i.if.end32.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #22
  %etype.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %etype.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %etype.i, align 2
  %h_proto.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %h_proto.i, align 4
  %h_proto31.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %h_proto31.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %h_proto31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.then23.i.if.end32.i_crit_edge
  %29 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %filter.i, align 4
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool37.not.i = icmp eq i8 %31, 0
  br i1 %tobool37.not.i, label %if.end32.i.if.end43.i_crit_edge, label %if.then38.i

if.end32.i.if.end43.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #22
  %32 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2147483630, ptr %fs.i, align 8
  %vlan_tci.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vlan_tci.i, align 4
  %vlan_tci41.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %35 = ptrtoint ptr %vlan_tci41.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %vlan_tci41.i, align 2
  %vlan_tci42.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %36 = ptrtoint ptr %vlan_tci42.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -8192, ptr %vlan_tci42.i, align 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end32.i.if.end43.i_crit_edge
  %37 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %filter.i, align 4
  %39 = and i8 %38, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool48.not.i = icmp eq i8 %39, 0
  br i1 %tobool48.not.i, label %if.end43.i.if.end56.i_crit_edge, label %if.then49.i

if.end43.i.if.end56.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end56.i

if.then49.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  %h_u50.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %dst_addr.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst_addr.i, align 4
  %42 = ptrtoint ptr %h_u50.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %h_u50.i, align 4
  %add.ptr.i.i = getelementptr %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 1, i32 4, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr1.i.i, align 2
  %m_u53.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %46 = call ptr @memset(ptr %m_u53.i, i32 255, i32 6)
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then49.i, %if.end43.i.if.end56.i_crit_edge
  %47 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %filter.i, align 4
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool61.not.i = icmp eq i8 %49, 0
  br i1 %tobool61.not.i, label %if.end56.i.sw.epilog_crit_edge, label %if.then62.i

if.end56.i.sw.epilog_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then62.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #22
  %h_u63.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %h_u63.i, i32 0, i32 1
  %src_addr.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %src_addr.i, align 4
  %52 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %h_source.i, align 4
  %add.ptr.i104.i = getelementptr %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 1, i32 3, i32 4
  %53 = ptrtoint ptr %add.ptr.i104.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i104.i, align 2
  %add.ptr1.i105.i = getelementptr %struct.ethhdr, ptr %h_u63.i, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %add.ptr1.i105.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %add.ptr1.i105.i, align 2
  %m_u67.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_source68.i = getelementptr inbounds %struct.ethhdr, ptr %m_u67.i, i32 0, i32 1
  %56 = call ptr @memset(ptr %h_source68.i, i32 255, i32 6)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %data.i18 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %57 = ptrtoint ptr %data.i18 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 16, ptr %data.i18, align 8
  %nfc_filter_list.i19 = getelementptr i8, ptr %dev, i32 8684
  %58 = ptrtoint ptr %nfc_filter_list.i19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %rule.026.i = load ptr, ptr %nfc_filter_list.i19, align 4
  %tobool2.not27.i = icmp eq ptr %rule.026.i, null
  br i1 %tobool2.not27.i, label %sw.bb5.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb5.for.end.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb5
  %59 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %for.body.i20

for.body.i20:                                     ; preds = %if.end.i.for.body.i20_crit_edge, %for.body.lr.ph.i
  %rule.029.i = phi ptr [ %rule.026.i, %for.body.lr.ph.i ], [ %rule.0.i23, %if.end.i.for.body.i20_crit_edge ]
  %cnt.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i20_crit_edge ]
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.028.i, i32 %61)
  %cmp.i = icmp eq i32 %cnt.028.i, %61
  br i1 %cmp.i, label %for.body.i20.sw.epilog_crit_edge, label %if.end.i

for.body.i20.sw.epilog_crit_edge:                 ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i:                                         ; preds = %for.body.i20
  %sw_idx.i21 = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.029.i, i32 0, i32 4
  %62 = ptrtoint ptr %sw_idx.i21 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sw_idx.i21, align 2
  %conv.i22 = zext i16 %63 to i32
  %arrayidx.i = getelementptr i32, ptr %rule_locs, i32 %cnt.028.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv.i22, ptr %arrayidx.i, align 4
  %inc.i = add i32 %cnt.028.i, 1
  %65 = ptrtoint ptr %rule.029.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %rule.0.i23 = load ptr, ptr %rule.029.i, align 4
  %tobool2.not.i24 = icmp eq ptr %rule.0.i23, null
  br i1 %tobool2.not.i24, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i20_crit_edge

if.end.i.for.body.i20_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i20

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %sw.bb5.for.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %sw.bb5.for.end.i_crit_edge ], [ %inc.i, %if.end.i.for.end.i_crit_edge ]
  %66 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cnt.0.lcssa.i, ptr %66, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %data.i26 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %68 = ptrtoint ptr %data.i26 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %data.i26, align 8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %69 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flow_type.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %70, label %sw.bb7.sw.epilog_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb7.sw.bb2.i_crit_edge
    i32 3, label %sw.bb7.sw.epilog.i_crit_edge
    i32 4, label %sw.bb7.sw.epilog.i_crit_edge45
    i32 9, label %sw.bb7.sw.epilog.i_crit_edge46
    i32 10, label %sw.bb7.sw.epilog.i_crit_edge47
    i32 16, label %sw.bb7.sw.epilog.i_crit_edge48
    i32 5, label %sw.bb8.i
    i32 6, label %sw.bb7.sw.bb11.i_crit_edge
    i32 7, label %sw.bb7.sw.epilog.i_crit_edge49
    i32 8, label %sw.bb7.sw.epilog.i_crit_edge50
    i32 11, label %sw.bb7.sw.epilog.i_crit_edge51
    i32 12, label %sw.bb7.sw.epilog.i_crit_edge52
    i32 17, label %sw.bb7.sw.epilog.i_crit_edge53
  ]

sw.bb7.sw.epilog.i_crit_edge53:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge52:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge51:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge50:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge49:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.bb11.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb11.i

sw.bb7.sw.epilog.i_crit_edge48:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge47:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge46:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge45:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.epilog.i_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb7.sw.bb2.i_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb2.i

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  %72 = ptrtoint ptr %data.i26 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 192, ptr %data.i26, align 8
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %sw.bb7.sw.bb2.i_crit_edge
  %flags.i = getelementptr i8, ptr %dev, i32 2828
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb2.i.sw.epilog.i_crit_edge, label %sw.bb2.i.sw.epilog.sink.split.i_crit_edge

sw.bb2.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.sink.split.i

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #22
  %75 = ptrtoint ptr %data.i26 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 192, ptr %data.i26, align 8
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %sw.bb8.i, %sw.bb7.sw.bb11.i_crit_edge
  %flags12.i = getelementptr i8, ptr %dev, i32 2828
  %76 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags12.i, align 4
  %and13.i = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %sw.bb11.i.sw.epilog.i_crit_edge, label %sw.bb11.i.sw.epilog.sink.split.i_crit_edge

sw.bb11.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.sink.split.i

sw.bb11.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb11.i.sw.epilog.sink.split.i_crit_edge, %sw.bb2.i.sw.epilog.sink.split.i_crit_edge
  %78 = ptrtoint ptr %data.i26 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %data.i26, align 8
  %or17.i = or i64 %79, 192
  store i64 %or17.i, ptr %data.i26, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb11.i.sw.epilog.i_crit_edge, %sw.bb2.i.sw.epilog.i_crit_edge, %sw.bb7.sw.epilog.i_crit_edge, %sw.bb7.sw.epilog.i_crit_edge45, %sw.bb7.sw.epilog.i_crit_edge46, %sw.bb7.sw.epilog.i_crit_edge47, %sw.bb7.sw.epilog.i_crit_edge48, %sw.bb7.sw.epilog.i_crit_edge49, %sw.bb7.sw.epilog.i_crit_edge50, %sw.bb7.sw.epilog.i_crit_edge51, %sw.bb7.sw.epilog.i_crit_edge52, %sw.bb7.sw.epilog.i_crit_edge53
  %80 = ptrtoint ptr %data.i26 to i32
  call void @__asan_load8_noabort(i32 %80)
  %storemerge.in.i = load i64, ptr %data.i26, align 8
  %storemerge.i = or i64 %storemerge.in.i, 48
  store i64 %storemerge.i, ptr %data.i26, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.i, %sw.bb7.sw.epilog_crit_edge, %for.end.i, %for.body.i20.sw.epilog_crit_edge, %if.then62.i, %if.end56.i.sw.epilog_crit_edge, %if.end21.i.sw.epilog_crit_edge, %lor.lhs.false.critedge.i.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %lor.lhs.false.critedge.i.sw.epilog_crit_edge ], [ 0, %if.then62.i ], [ 0, %if.end56.i.sw.epilog_crit_edge ], [ -22, %if.end21.i.sw.epilog_crit_edge ], [ 0, %for.end.i ], [ 0, %sw.epilog.i ], [ -22, %sw.bb7.sw.epilog_crit_edge ], [ -22, %for.cond.i.sw.epilog_crit_edge ], [ -90, %for.body.i20.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_rxnfc(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 42, label %sw.bb
    i32 50, label %sw.bb3
    i32 49, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %flags1.i = getelementptr i8, ptr %dev, i32 2828
  %3 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags1.i, align 4
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data.i, align 8
  %and.i = and i64 %6, -241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_type.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %8, label %if.end.i.sw.epilog_crit_edge [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 5, label %if.end.i.sw.bb.i_crit_edge71
    i32 2, label %sw.bb18.i
    i32 6, label %sw.bb33.i
    i32 4, label %if.end.i.sw.bb51.i_crit_edge
    i32 9, label %if.end.i.sw.bb51.i_crit_edge72
    i32 10, label %if.end.i.sw.bb51.i_crit_edge73
    i32 3, label %if.end.i.sw.bb51.i_crit_edge74
    i32 8, label %if.end.i.sw.bb51.i_crit_edge75
    i32 11, label %if.end.i.sw.bb51.i_crit_edge76
    i32 12, label %if.end.i.sw.bb51.i_crit_edge77
    i32 7, label %if.end.i.sw.bb51.i_crit_edge78
  ]

if.end.i.sw.bb51.i_crit_edge78:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge77:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge76:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge75:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge74:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge73:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge72:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb51.i

if.end.i.sw.bb51.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb51.i

if.end.i.sw.bb.i_crit_edge71:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge71
  %10 = and i64 %6, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %10)
  %.not156.i = icmp eq i64 %10, 240
  br i1 %.not156.i, label %sw.bb.i.sw.epilog70.thread.i_crit_edge, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb.i.sw.epilog70.thread.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog70.thread.i

sw.bb18.i:                                        ; preds = %if.end.i
  %11 = and i64 %6, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %11)
  %.not155.i = icmp eq i64 %11, 48
  br i1 %.not155.i, label %if.end27.i, label %sw.bb18.i.sw.epilog_crit_edge

sw.bb18.i.sw.epilog_crit_edge:                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end27.i:                                       ; preds = %sw.bb18.i
  %12 = trunc i64 %6 to i8
  %trunc145.i = and i8 %12, -64
  %13 = zext i8 %trunc145.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %trunc145.i, label %if.end27.i.sw.epilog_crit_edge [
    i8 0, label %sw.bb30.i
    i8 -64, label %sw.bb32.i
  ]

if.end27.i.sw.epilog_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb30.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #22
  %and31.i = and i32 %4, -65
  br label %sw.epilog70.i

sw.bb32.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #22
  %or.i = or i32 %4, 64
  br label %sw.epilog70.i

sw.bb33.i:                                        ; preds = %if.end.i
  %14 = and i64 %6, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %14)
  %.not.i = icmp eq i64 %14, 48
  br i1 %.not.i, label %if.end42.i, label %sw.bb33.i.sw.epilog_crit_edge

sw.bb33.i.sw.epilog_crit_edge:                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end42.i:                                       ; preds = %sw.bb33.i
  %15 = trunc i64 %6 to i8
  %trunc.i = and i8 %15, -64
  %16 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %trunc.i, label %if.end42.i.sw.epilog_crit_edge [
    i8 0, label %sw.bb45.i
    i8 -64, label %sw.bb47.i
  ]

if.end42.i.sw.epilog_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb45.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #22
  %and46.i = and i32 %4, -129
  br label %sw.epilog70.i

sw.bb47.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #22
  %or48.i = or i32 %4, 128
  br label %sw.epilog70.i

sw.bb51.i:                                        ; preds = %if.end.i.sw.bb51.i_crit_edge, %if.end.i.sw.bb51.i_crit_edge72, %if.end.i.sw.bb51.i_crit_edge73, %if.end.i.sw.bb51.i_crit_edge74, %if.end.i.sw.bb51.i_crit_edge75, %if.end.i.sw.bb51.i_crit_edge76, %if.end.i.sw.bb51.i_crit_edge77, %if.end.i.sw.bb51.i_crit_edge78
  %17 = and i64 %6, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %17)
  %18 = icmp eq i64 %17, 48
  br i1 %18, label %sw.bb51.i.sw.epilog70.thread.i_crit_edge, label %sw.bb51.i.sw.epilog_crit_edge

sw.bb51.i.sw.epilog_crit_edge:                    ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb51.i.sw.epilog70.thread.i_crit_edge:         ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog70.thread.i

sw.epilog70.thread.i:                             ; preds = %sw.bb51.i.sw.epilog70.thread.i_crit_edge, %sw.bb.i.sw.epilog70.thread.i_crit_edge
  br label %sw.epilog

sw.epilog70.i:                                    ; preds = %sw.bb47.i, %sw.bb45.i, %sw.bb32.i, %sw.bb30.i
  %flags.0.i = phi i32 [ %or48.i, %sw.bb47.i ], [ %and46.i, %sw.bb45.i ], [ %or.i, %sw.bb32.i ], [ %and31.i, %sw.bb30.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %flags.0.i, i32 %4)
  %cmp.not.i = icmp eq i32 %flags.0.i, %4
  br i1 %cmp.not.i, label %sw.epilog70.i.sw.epilog_crit_edge, label %if.then72.i

sw.epilog70.i.sw.epilog_crit_edge:                ; preds = %sw.epilog70.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then72.i:                                      ; preds = %sw.epilog70.i
  %hw73.i = getelementptr i8, ptr %dev, i32 3584
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw73.i, i32 noundef 22552) #20
  %and74.i = and i32 %flags.0.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.then72.i.if.end80.i_crit_edge, label %land.lhs.true.i

if.then72.i.if.end80.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end80.i

land.lhs.true.i:                                  ; preds = %if.then72.i
  %19 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags1.i, align 4
  %and77.i = and i32 %20, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %do.end.i, label %land.lhs.true.i.if.end80.i_crit_edge

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end80.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  %pdev.i = getelementptr i8, ptr %dev, i32 3344
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #23
  br label %if.end80.i

if.end80.i:                                       ; preds = %do.end.i, %land.lhs.true.i.if.end80.i_crit_edge, %if.then72.i.if.end80.i_crit_edge
  %23 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %flags.0.i, ptr %flags1.i, align 4
  %hw_addr98.i = getelementptr i8, ptr %dev, i32 3588
  %24 = ptrtoint ptr %hw_addr98.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw_addr98.i, align 4
  %tobool99.not.i = icmp eq ptr %25, null
  br i1 %tobool99.not.i, label %if.end80.i.sw.epilog_crit_edge, label %do.body104.i, !prof !162

if.end80.i.sw.epilog_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

do.body104.i:                                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #22
  %or82.i = and i32 %call.i, -15925249
  %and84.i = and i32 %flags.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  %spec.select.v.i = select i1 %tobool85.not.i, i32 3342336, i32 7536640
  %and89.i = shl i32 %flags.0.i, 16
  %26 = and i32 %and89.i, 8388608
  %spec.select.i = or i32 %spec.select.v.i, %26
  %27 = or i32 %spec.select.i, %or82.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !201
  tail call void @arm_heavy_mb() #20
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #20
  %arrayidx.i = getelementptr i8, ptr %25, i32 22552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %28) #20, !srcloc !164
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %netdev1.i = getelementptr i8, ptr %dev, i32 2816
  %29 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev1.i, align 128
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %hw_features.i, align 8
  %and.i12 = and i64 %32, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i12)
  %tobool.not.i13 = icmp eq i64 %and.i12, 0
  br i1 %tobool.not.i13, label %sw.bb3.sw.epilog_crit_edge, label %if.end.i14

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end.i14:                                       ; preds = %sw.bb3
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %33 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ring_cookie.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp.i = icmp eq i64 %34, -1
  br i1 %cmp.i, label %if.end.i14.do.end.i17_crit_edge, label %lor.lhs.false.i

if.end.i14.do.end.i17_crit_edge:                  ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i17

lor.lhs.false.i:                                  ; preds = %if.end.i14
  %num_rx_queues.i = getelementptr i8, ptr %dev, i32 3004
  %35 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_rx_queues.i, align 4
  %conv.i = sext i32 %36 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %conv.i)
  %cmp3.not.i = icmp ult i64 %34, %conv.i
  br i1 %cmp3.not.i, label %if.end6.i, label %lor.lhs.false.i.do.end.i17_crit_edge

lor.lhs.false.i.do.end.i17_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i17

do.end.i17:                                       ; preds = %lor.lhs.false.i.do.end.i17_crit_edge, %if.end.i14.do.end.i17_crit_edge
  %pdev.i15 = getelementptr i8, ptr %dev, i32 3344
  %37 = ptrtoint ptr %pdev.i15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i15, align 16
  %dev.i16 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16, ptr noundef nonnull @.str.41) #23
  br label %sw.epilog

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %39 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %40)
  %cmp7.i = icmp ugt i32 %40, 15
  br i1 %cmp7.i, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #22
  %pdev13.i = getelementptr i8, ptr %dev, i32 3344
  %41 = ptrtoint ptr %pdev13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev13.i, align 16
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.44) #23
  br label %sw.epilog

if.end15.i:                                       ; preds = %if.end6.i
  %43 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fs.i, align 8
  %and16.i = and i32 %44, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and16.i)
  %cmp17.not.i = icmp eq i32 %and16.i, 18
  br i1 %cmp17.not.i, label %if.end20.i, label %if.end15.i.sw.epilog_crit_edge

if.end15.i.sw.epilog_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end20.i:                                       ; preds = %if.end15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 40) #25
  %tobool21.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool21.not.i, label %if.end20.i.sw.epilog_crit_edge, label %if.end23.i

if.end20.i.sw.epilog_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end23.i:                                       ; preds = %if.end20.i
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_proto.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %h_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %47)
  %cmp25.i = icmp eq i16 %47, -1
  br i1 %cmp25.i, label %if.then27.i, label %if.end23.i.if.end30.i_crit_edge

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #22
  %h_proto28.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %48 = ptrtoint ptr %h_proto28.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %h_proto28.i, align 4
  %filter.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1
  %etype.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %etype.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %etype.i, align 2
  %51 = ptrtoint ptr %filter.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %filter.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.end23.i.if.end30.i_crit_edge
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %m_u.i, i32 0, i32 1
  %52 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %h_source.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %54 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %55, %53
  %add.ptr3.i.i = getelementptr %struct.ethhdr, ptr %m_u.i, i32 0, i32 1, i32 4
  %56 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %57
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i, label %if.then33.i, label %if.end30.i.if.end43.i_crit_edge

if.end30.i.if.end43.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #22
  %filter34.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %filter34.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %filter34.i, align 8
  %60 = or i8 %59, 4
  store i8 %60, ptr %filter34.i, align 8
  %src_addr.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %h_u40.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %h_source41.i = getelementptr inbounds %struct.ethhdr, ptr %h_u40.i, i32 0, i32 1
  %61 = ptrtoint ptr %h_source41.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %h_source41.i, align 4
  %63 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %src_addr.i, align 4
  %add.ptr.i.i = getelementptr %struct.ethhdr, ptr %h_u40.i, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i169.i = getelementptr %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 3, i32 4
  %66 = ptrtoint ptr %add.ptr1.i169.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %add.ptr1.i169.i, align 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end43.i_crit_edge
  %67 = ptrtoint ptr %m_u.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %m_u.i, align 2
  %add.ptr1.i170.i = getelementptr i8, ptr %m_u.i, i32 2
  %69 = ptrtoint ptr %add.ptr1.i170.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr1.i170.i, align 2
  %and9.i171.i = and i16 %70, %68
  %add.ptr3.i172.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %add.ptr3.i172.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr3.i172.i, align 2
  %and510.i173.i = and i16 %and9.i171.i, %72
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i173.i)
  %cmp.i174.i = icmp eq i16 %and510.i173.i, -1
  br i1 %cmp.i174.i, label %if.then47.i, label %if.end43.i.if.end58.i_crit_edge

if.end43.i.if.end58.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end58.i

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  %filter48.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %filter48.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %filter48.i, align 8
  %75 = or i8 %74, 8
  store i8 %75, ptr %filter48.i, align 8
  %dst_addr.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %h_u55.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %76 = ptrtoint ptr %h_u55.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %h_u55.i, align 4
  %78 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %dst_addr.i, align 4
  %add.ptr.i175.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %add.ptr.i175.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr.i175.i, align 2
  %add.ptr1.i176.i = getelementptr %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 4, i32 4
  %81 = ptrtoint ptr %add.ptr1.i176.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %add.ptr1.i176.i, align 8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then47.i, %if.end43.i.if.end58.i_crit_edge
  %82 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %tobool61.not.i = icmp sgt i32 %83, -1
  br i1 %tobool61.not.i, label %if.end58.i.if.end80.i19_crit_edge, label %land.lhs.true.i18

if.end58.i.if.end80.i19_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end80.i19

land.lhs.true.i18:                                ; preds = %if.end58.i
  %vlan_tci.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %84 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %vlan_tci.i, align 2
  %86 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %85, label %land.lhs.true.i18.err_out.i_crit_edge [
    i16 0, label %land.lhs.true.i18.if.end80.i19_crit_edge
    i16 -8192, label %if.end71.i
  ]

land.lhs.true.i18.if.end80.i19_crit_edge:         ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end80.i19

land.lhs.true.i18.err_out.i_crit_edge:            ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out.i

if.end71.i:                                       ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #22
  %vlan_tci72.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %87 = ptrtoint ptr %vlan_tci72.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %vlan_tci72.i, align 2
  %filter73.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1
  %vlan_tci74.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %89 = ptrtoint ptr %vlan_tci74.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %vlan_tci74.i, align 4
  %90 = ptrtoint ptr %filter73.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %filter73.i, align 8
  %92 = or i8 %91, 2
  store i8 %92, ptr %filter73.i, align 8
  br label %if.end80.i19

if.end80.i19:                                     ; preds = %if.end71.i, %land.lhs.true.i18.if.end80.i19_crit_edge, %if.end58.i.if.end80.i19_crit_edge
  %93 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %ring_cookie.i, align 8
  %conv82.i = trunc i64 %94 to i16
  %action.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 5
  %95 = ptrtoint ptr %action.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv82.i, ptr %action.i, align 4
  %96 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %location.i, align 8
  %conv84.i = trunc i32 %97 to i16
  %sw_idx.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 4
  %98 = ptrtoint ptr %sw_idx.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv84.i, ptr %sw_idx.i, align 2
  %nfc_lock.i = getelementptr i8, ptr %dev, i32 8696
  tail call void @_raw_spin_lock(ptr noundef %nfc_lock.i) #20
  %nfc_filter_list.i = getelementptr i8, ptr %dev, i32 8684
  %filter88.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %call7.i.i.i, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end80.i19
  %rule.0.in.i = phi ptr [ %nfc_filter_list.i, %if.end80.i19 ], [ %rule.0.i, %for.body.i.for.cond.i_crit_edge ]
  %99 = ptrtoint ptr %rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %rule.0.i = load ptr, ptr %rule.0.in.i, align 4
  %tobool87.not.i = icmp eq ptr %rule.0.i, null
  br i1 %tobool87.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %filter89.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(18) %filter88.i, ptr noundef dereferenceable(18) %filter89.i, i32 18) #26
  %tobool91.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool91.not.i, label %if.then92.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.i

if.then92.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %pdev96.i = getelementptr i8, ptr %dev, i32 3344
  %100 = ptrtoint ptr %pdev96.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev96.i, align 16
  %dev97.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97.i, ptr noundef nonnull @.str.47) #23
  br label %err_out_w_lock.i

for.end.i:                                        ; preds = %for.cond.i
  %call109.i = tail call i32 @igb_add_filter(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %if.end112.i, label %for.end.i.err_out_w_lock.i_crit_edge

for.end.i.err_out_w_lock.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_w_lock.i

if.end112.i:                                      ; preds = %for.end.i
  %102 = ptrtoint ptr %sw_idx.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %sw_idx.i, align 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end112.i
  %parent.0.i.i = phi ptr [ null, %if.end112.i ], [ %rule.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %rule.0.in.i.i = phi ptr [ %nfc_filter_list.i, %if.end112.i ], [ %rule.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %104 = ptrtoint ptr %rule.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %rule.0.i.i = load ptr, ptr %rule.0.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %rule.0.i.i, null
  br i1 %tobool2.not.i.i, label %for.cond.i.i.if.end30.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end30.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %sw_idx3.i.i = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i.i, i32 0, i32 4
  %105 = ptrtoint ptr %sw_idx3.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sw_idx3.i.i, align 2
  %cmp.not.i.i = icmp ult i16 %106, %103
  br i1 %cmp.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %land.lhs.true.critedge.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.i.i

land.lhs.true.critedge.i.i:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %106, i16 %103)
  %cmp20.i.i = icmp eq i16 %106, %103
  br i1 %cmp20.i.i, label %if.end25.i.i, label %land.lhs.true.critedge.i.i.if.end30.i.i_crit_edge

land.lhs.true.critedge.i.i.if.end30.i.i_crit_edge: ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30.i.i

if.end25.i.i:                                     ; preds = %land.lhs.true.critedge.i.i
  %107 = ptrtoint ptr %rule.0.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rule.0.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %rule.0.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %108, ptr %110, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %108, null
  br i1 %tobool.not.i.i.i.i, label %if.end25.i.i.hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.end25.i.i.hlist_del.exit.i.i_crit_edge:        ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %hlist_del.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %108, i32 0, i32 1
  %112 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %110, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del.exit.i.i

hlist_del.exit.i.i:                               ; preds = %do.body13.i.i.i.i, %if.end25.i.i.hlist_del.exit.i.i_crit_edge
  %113 = ptrtoint ptr %rule.0.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0.i.i, align 4
  %114 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0.i.i) #20
  %nfc_filter_count.i.i = getelementptr i8, ptr %dev, i32 8692
  %115 = ptrtoint ptr %nfc_filter_count.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nfc_filter_count.i.i, align 4
  %dec.i.i = add i32 %116, -1
  store i32 %dec.i.i, ptr %nfc_filter_count.i.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %hlist_del.exit.i.i, %land.lhs.true.critedge.i.i.if.end30.i.i_crit_edge, %for.cond.i.i.if.end30.i.i_crit_edge
  %117 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %call7.i.i.i, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %pprev.i.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %parent.0.i.i, null
  br i1 %tobool32.not.i.i, label %if.else.i.i, label %if.then33.i.i

if.then33.i.i:                                    ; preds = %if.end30.i.i
  %119 = ptrtoint ptr %parent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %parent.0.i.i, align 4
  %121 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %120, ptr %call7.i.i.i, align 8
  store volatile ptr %call7.i.i.i, ptr %parent.0.i.i, align 4
  %122 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %parent.0.i.i, ptr %pprev.i.i.i, align 4
  %123 = load ptr, ptr %call7.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %123, null
  br i1 %tobool.not.i.i.i, label %if.then33.i.i.igb_update_ethtool_nfc_entry.exit.i_crit_edge, label %do.body24.i.i.i

if.then33.i.i.igb_update_ethtool_nfc_entry.exit.i_crit_edge: ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_update_ethtool_nfc_entry.exit.i

do.body24.i.i.i:                                  ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %pprev27.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %pprev27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %call7.i.i.i, ptr %pprev27.i.i.i, align 4
  br label %igb_update_ethtool_nfc_entry.exit.i

if.else.i.i:                                      ; preds = %if.end30.i.i
  %125 = ptrtoint ptr %nfc_filter_list.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %nfc_filter_list.i, align 4
  %127 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %126, ptr %call7.i.i.i, align 8
  %tobool.not.i65.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i65.i.i, label %if.else.i.i.hlist_add_head.exit.i.i_crit_edge, label %do.body12.i.i.i

if.else.i.i.hlist_add_head.exit.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %hlist_add_head.exit.i.i

do.body12.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %pprev.i66.i.i = getelementptr inbounds %struct.hlist_node, ptr %126, i32 0, i32 1
  %128 = ptrtoint ptr %pprev.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %call7.i.i.i, ptr %pprev.i66.i.i, align 4
  br label %hlist_add_head.exit.i.i

hlist_add_head.exit.i.i:                          ; preds = %do.body12.i.i.i, %if.else.i.i.hlist_add_head.exit.i.i_crit_edge
  %129 = ptrtoint ptr %nfc_filter_list.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %call7.i.i.i, ptr %nfc_filter_list.i, align 4
  %130 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %nfc_filter_list.i, ptr %pprev.i.i.i, align 4
  br label %igb_update_ethtool_nfc_entry.exit.i

igb_update_ethtool_nfc_entry.exit.i:              ; preds = %hlist_add_head.exit.i.i, %do.body24.i.i.i, %if.then33.i.i.igb_update_ethtool_nfc_entry.exit.i_crit_edge
  %nfc_filter_count39.i.i = getelementptr i8, ptr %dev, i32 8692
  %131 = ptrtoint ptr %nfc_filter_count39.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %nfc_filter_count39.i.i, align 4
  %inc.i.i = add i32 %132, 1
  store i32 %inc.i.i, ptr %nfc_filter_count39.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %nfc_lock.i) #20
  br label %sw.epilog

err_out_w_lock.i:                                 ; preds = %for.end.i.err_out_w_lock.i_crit_edge, %if.then92.i
  %err.0.i = phi i32 [ -17, %if.then92.i ], [ %call109.i, %for.end.i.err_out_w_lock.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %nfc_lock.i) #20
  br label %err_out.i

err_out.i:                                        ; preds = %err_out_w_lock.i, %land.lhs.true.i18.err_out.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %err_out_w_lock.i ], [ -22, %land.lhs.true.i18.err_out.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #20
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %nfc_lock.i21 = getelementptr i8, ptr %dev, i32 8696
  tail call void @_raw_spin_lock(ptr noundef %nfc_lock.i21) #20
  %location.i22 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %133 = ptrtoint ptr %location.i22 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %location.i22, align 8
  %conv.i23 = trunc i32 %134 to i16
  %nfc_filter_list.i.i = getelementptr i8, ptr %dev, i32 8684
  br label %for.cond.i.i27

for.cond.i.i27:                                   ; preds = %for.body.i.i30.for.cond.i.i27_crit_edge, %sw.bb5
  %rule.0.in.i.i24 = phi ptr [ %nfc_filter_list.i.i, %sw.bb5 ], [ %rule.0.i.i25, %for.body.i.i30.for.cond.i.i27_crit_edge ]
  %135 = ptrtoint ptr %rule.0.in.i.i24 to i32
  call void @__asan_load4_noabort(i32 %135)
  %rule.0.i.i25 = load ptr, ptr %rule.0.in.i.i24, align 4
  %tobool2.not.i.i26 = icmp eq ptr %rule.0.i.i25, null
  br i1 %tobool2.not.i.i26, label %for.cond.i.i27.igb_del_ethtool_nfc_entry.exit_crit_edge, label %for.body.i.i30

for.cond.i.i27.igb_del_ethtool_nfc_entry.exit_crit_edge: ; preds = %for.cond.i.i27
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_del_ethtool_nfc_entry.exit

for.body.i.i30:                                   ; preds = %for.cond.i.i27
  %sw_idx3.i.i28 = getelementptr inbounds %struct.igb_nfc_filter, ptr %rule.0.i.i25, i32 0, i32 4
  %136 = ptrtoint ptr %sw_idx3.i.i28 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %sw_idx3.i.i28, align 2
  %cmp.not.i.i29 = icmp ult i16 %137, %conv.i23
  br i1 %cmp.not.i.i29, label %for.body.i.i30.for.cond.i.i27_crit_edge, label %land.lhs.true.critedge.i.i32

for.body.i.i30.for.cond.i.i27_crit_edge:          ; preds = %for.body.i.i30
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.i.i27

land.lhs.true.critedge.i.i32:                     ; preds = %for.body.i.i30
  call void @__sanitizer_cov_trace_cmp2(i16 %137, i16 %conv.i23)
  %cmp20.i.i31 = icmp eq i16 %137, %conv.i23
  br i1 %cmp20.i.i31, label %if.then22.i.i, label %land.lhs.true.critedge.i.i32.igb_del_ethtool_nfc_entry.exit_crit_edge

land.lhs.true.critedge.i.i32.igb_del_ethtool_nfc_entry.exit_crit_edge: ; preds = %land.lhs.true.critedge.i.i32
  call void @__sanitizer_cov_trace_pc() #22
  br label %igb_del_ethtool_nfc_entry.exit

if.then22.i.i:                                    ; preds = %land.lhs.true.critedge.i.i32
  %call.i.i = tail call i32 @igb_erase_filter(ptr noundef %add.ptr.i, ptr noundef nonnull %rule.0.i.i25) #20
  %138 = ptrtoint ptr %rule.0.i.i25 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rule.0.i.i25, align 4
  %pprev2.i.i.i.i33 = getelementptr inbounds %struct.hlist_node, ptr %rule.0.i.i25, i32 0, i32 1
  %140 = ptrtoint ptr %pprev2.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pprev2.i.i.i.i33, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %139, ptr %141, align 4
  %tobool.not.i.i.i.i34 = icmp eq ptr %139, null
  br i1 %tobool.not.i.i.i.i34, label %if.then22.i.i.hlist_del.exit.i.i39_crit_edge, label %do.body13.i.i.i.i36

if.then22.i.i.hlist_del.exit.i.i39_crit_edge:     ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %hlist_del.exit.i.i39

do.body13.i.i.i.i36:                              ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %pprev14.i.i.i.i35 = getelementptr inbounds %struct.hlist_node, ptr %139, i32 0, i32 1
  %143 = ptrtoint ptr %pprev14.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %141, ptr %pprev14.i.i.i.i35, align 4
  br label %hlist_del.exit.i.i39

hlist_del.exit.i.i39:                             ; preds = %do.body13.i.i.i.i36, %if.then22.i.i.hlist_del.exit.i.i39_crit_edge
  %144 = ptrtoint ptr %rule.0.i.i25 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0.i.i25, align 4
  %145 = ptrtoint ptr %pprev2.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i33, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0.i.i25) #20
  %nfc_filter_count.i.i37 = getelementptr i8, ptr %dev, i32 8692
  %146 = ptrtoint ptr %nfc_filter_count.i.i37 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %nfc_filter_count.i.i37, align 4
  %dec.i.i38 = add i32 %147, -1
  store i32 %dec.i.i38, ptr %nfc_filter_count.i.i37, align 4
  br label %igb_del_ethtool_nfc_entry.exit

igb_del_ethtool_nfc_entry.exit:                   ; preds = %hlist_del.exit.i.i39, %land.lhs.true.critedge.i.i32.igb_del_ethtool_nfc_entry.exit_crit_edge, %for.cond.i.i27.igb_del_ethtool_nfc_entry.exit_crit_edge
  %err.1.i.i = phi i32 [ 0, %hlist_del.exit.i.i39 ], [ -22, %land.lhs.true.critedge.i.i32.igb_del_ethtool_nfc_entry.exit_crit_edge ], [ -22, %for.cond.i.i27.igb_del_ethtool_nfc_entry.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %nfc_lock.i21) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %igb_del_ethtool_nfc_entry.exit, %err_out.i, %igb_update_ethtool_nfc_entry.exit.i, %if.end20.i.sw.epilog_crit_edge, %if.end15.i.sw.epilog_crit_edge, %do.end12.i, %do.end.i17, %sw.bb3.sw.epilog_crit_edge, %do.body104.i, %if.end80.i.sw.epilog_crit_edge, %sw.epilog70.i.sw.epilog_crit_edge, %sw.epilog70.thread.i, %sw.bb51.i.sw.epilog_crit_edge, %if.end42.i.sw.epilog_crit_edge, %sw.bb33.i.sw.epilog_crit_edge, %if.end27.i.sw.epilog_crit_edge, %sw.bb18.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ %err.1.i.i, %igb_del_ethtool_nfc_entry.exit ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %sw.bb.i.sw.epilog_crit_edge ], [ -22, %sw.bb18.i.sw.epilog_crit_edge ], [ -22, %if.end27.i.sw.epilog_crit_edge ], [ -22, %sw.bb33.i.sw.epilog_crit_edge ], [ -22, %if.end42.i.sw.epilog_crit_edge ], [ -22, %sw.bb51.i.sw.epilog_crit_edge ], [ -22, %if.end.i.sw.epilog_crit_edge ], [ 0, %if.end80.i.sw.epilog_crit_edge ], [ 0, %do.body104.i ], [ 0, %sw.epilog70.i.sw.epilog_crit_edge ], [ 0, %sw.epilog70.thread.i ], [ -22, %do.end.i17 ], [ -22, %do.end12.i ], [ %err.1.i, %err_out.i ], [ 0, %igb_update_ethtool_nfc_entry.exit.i ], [ -95, %sw.bb3.sw.epilog_crit_edge ], [ -22, %if.end15.i.sw.epilog_crit_edge ], [ -12, %if.end20.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_rxfh_indir_size(ptr nocapture noundef readnone %netdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_rxfh(ptr nocapture noundef readonly %netdev, ptr noundef writeonly %indir, ptr nocapture noundef readnone %key, ptr noundef writeonly %hfunc) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %indir, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 82, i32 %i.011
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx4 = getelementptr i32, ptr %indir, i32 %i.011
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_rxfh(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef readnone %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  %or.cond = and i1 %tobool.not, %switch
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %indir, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %rss_queues = getelementptr i8, ptr %netdev, i32 6204
  %0 = ptrtoint ptr %rss_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_queues, align 4
  %type = getelementptr i8, ptr %netdev, i32 3664
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  br i1 %cond, label %sw.bb, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  %vfs_allocated_count = getelementptr i8, ptr %netdev, i32 6192
  %4 = ptrtoint ptr %vfs_allocated_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vfs_allocated_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool9.not, i32 %1, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end8.sw.epilog_crit_edge
  %num_queues.0 = phi i32 [ %1, %if.end8.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ]
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.cond.for.body21_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond.for.body21_crit_edge:                    ; preds = %for.cond
  br label %for.body21

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %sw.epilog
  %i.045 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.045
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %num_queues.0)
  %cmp14.not = icmp ult i32 %7, %num_queues.0
  br i1 %cmp14.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.cond.for.body21_crit_edge
  %i.146 = phi i32 [ %inc26, %for.body21.for.body21_crit_edge ], [ 0, %for.cond.for.body21_crit_edge ]
  %arrayidx22 = getelementptr i32, ptr %indir, i32 %i.146
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx22, align 4
  %conv23 = trunc i32 %9 to i8
  %arrayidx24 = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 82, i32 %i.146
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv23, ptr %arrayidx24, align 1
  %inc26 = add nuw nsw i32 %i.146, 1
  %exitcond48.not = icmp eq i32 %inc26, 128
  br i1 %exitcond48.not, label %for.end27, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body21

for.end27:                                        ; preds = %for.body21
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %12, label %for.end27.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

for.end27.sw.epilog.i_crit_edge:                  ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #22
  %vfs_allocated_count.i = getelementptr i8, ptr %netdev, i32 6192
  %14 = ptrtoint ptr %vfs_allocated_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vfs_allocated_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i, %for.end27.sw.epilog.i_crit_edge
  %shift.0.i = phi i32 [ 0, %for.end27.sw.epilog.i_crit_edge ], [ 6, %sw.bb.i ], [ %spec.select.i, %sw.bb2.i ]
  %hw_addr5.i = getelementptr i8, ptr %netdev, i32 3588
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end16.i.for.cond.preheader.i_crit_edge, %sw.epilog.i
  %i.036.i = phi i32 [ 0, %sw.epilog.i ], [ %add20.i, %if.end16.i.for.cond.preheader.i_crit_edge ]
  %reg.034.i = phi i32 [ 23552, %sw.epilog.i ], [ %add19.i, %if.end16.i.for.cond.preheader.i_crit_edge ]
  %add.i = or i32 %i.036.i, 3
  %arrayidx.i = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 82, i32 %add.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %add.1.i = or i32 %i.036.i, 2
  %arrayidx.1.i = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 82, i32 %add.1.i
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1.i, align 1
  %add.2.i = or i32 %i.036.i, 1
  %arrayidx.2.i = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 82, i32 %add.2.i
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.igb_adapter, ptr %add.ptr.i, i32 0, i32 82, i32 %i.036.i
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3.i, align 1
  %24 = ptrtoint ptr %hw_addr5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw_addr5.i, align 4
  %tobool6.not.i = icmp eq ptr %25, null
  br i1 %tobool6.not.i, label %for.cond.preheader.i.if.end16.i_crit_edge, label %do.body11.i, !prof !162

for.cond.preheader.i.if.end16.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i

do.body11.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  %conv.i = zext i8 %17 to i32
  %26 = shl nuw nsw i32 %conv.i, 16
  %conv.1.i = zext i8 %19 to i32
  %27 = shl nuw nsw i32 %conv.1.i, 8
  %shl.2.i = or i32 %27, %26
  %conv.2.i = zext i8 %21 to i32
  %or.2.i = or i32 %shl.2.i, %conv.2.i
  %shl.3.i = shl nuw i32 %or.2.i, 8
  %conv.3.i = zext i8 %23 to i32
  %or.3.i = or i32 %shl.3.i, %conv.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !168
  tail call void @arm_heavy_mb() #20
  %shl14.i = shl i32 %or.3.i, %shift.0.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %shl14.i) #20
  %arrayidx15.i = getelementptr i8, ptr %25, i32 %reg.034.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx15.i, i32 %28) #20, !srcloc !164
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.body11.i, %for.cond.preheader.i.if.end16.i_crit_edge
  %add19.i = add nuw nsw i32 %reg.034.i, 4
  %add20.i = add nuw nsw i32 %i.036.i, 4
  %cmp.i = icmp ult i32 %i.036.i, 124
  br i1 %cmp.i, label %if.end16.i.for.cond.preheader.i_crit_edge, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end16.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond.preheader.i

cleanup:                                          ; preds = %if.end16.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end16.i.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_get_channels(ptr noundef %netdev, ptr nocapture noundef writeonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call.i = tail call i32 @igb_get_max_rss_queues(ptr noundef %add.ptr.i) #20
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i, ptr %max_combined, align 4
  %flags = getelementptr i8, ptr %netdev, i32 2828
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 3
  %3 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max_other, align 4
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %4 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %other_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rss_queues = getelementptr i8, ptr %netdev, i32 6204
  %5 = ptrtoint ptr %rss_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rss_queues, align 4
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %7 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %combined_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_channels(ptr noundef %netdev, ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %2 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %6 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call i32 @igb_get_max_rss_queues(ptr noundef %add.ptr.i) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call.i)
  %cmp7 = icmp ugt i32 %1, %call.i
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %rss_queues = getelementptr i8, ptr %netdev, i32 6204
  %8 = ptrtoint ptr %rss_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rss_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp10.not = icmp eq i32 %1, %9
  br i1 %cmp10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %rss_queues to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %rss_queues, align 4
  tail call void @igb_set_flag_queue_pairs(ptr noundef %add.ptr.i, i32 noundef %call.i) #20
  %call13 = tail call i32 @igb_reinit_queues(ptr noundef %add.ptr.i) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then11 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_ts_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr i8, ptr %dev, i32 6216
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call2 = tail call i32 @ptp_clock_index(ptr noundef nonnull %1) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2.sink = phi i32 [ %call2, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %2 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.sink, ptr %2, align 4
  %type = getelementptr i8, ptr %dev, i32 3664
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 16
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb4_crit_edge
    i32 3, label %if.end.sw.bb4_crit_edge25
    i32 4, label %if.end.sw.bb4_crit_edge26
    i32 5, label %if.end.sw.bb4_crit_edge27
    i32 6, label %if.end.sw.bb4_crit_edge28
    i32 7, label %if.end.sw.bb4_crit_edge29
  ]

if.end.sw.bb4_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb4

if.end.sw.bb4_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb4

if.end.sw.bb4_crit_edge27:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb4

if.end.sw.bb4_crit_edge26:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb4

if.end.sw.bb4_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 26, ptr %so_timestamping, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge25, %if.end.sw.bb4_crit_edge26, %if.end.sw.bb4_crit_edge27, %if.end.sw.bb4_crit_edge28, %if.end.sw.bb4_crit_edge29
  %so_timestamping5 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %so_timestamping5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 95, ptr %so_timestamping5, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %rx_filters, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.inv = icmp ult i32 %12, 3
  %. = select i1 %cmp.inv, i32 4145, i32 3
  %13 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %., ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_module_info(ptr noundef %netdev, ptr nocapture noundef writeonly %modinfo) #0 align 64 {
entry:
  %sff8472_rev = alloca i16, align 2
  %addr_mode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sff8472_rev) #20
  %0 = ptrtoint ptr %sff8472_rev to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sff8472_rev, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_mode) #20
  %1 = ptrtoint ptr %addr_mode to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %addr_mode, align 2, !annotation !196
  %media_type = getelementptr i8, ptr %netdev, i32 4356
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @igb_read_phy_reg_i2c(ptr noundef %hw1, i32 noundef 94, ptr noundef nonnull %sff8472_rev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @igb_read_phy_reg_i2c(ptr noundef %hw1, i32 noundef 92, ptr noundef nonnull %addr_mode) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %addr_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr_mode, align 2
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool13.not = icmp eq i16 %6, 0
  br i1 %tobool13.not, label %if.end11.if.end25_crit_edge, label %do.body15

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_module_info.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_module_info, %if.end25.thread)) #20
          to label %if.end25 [label %if.end25.thread], !srcloc !202

if.end25.thread:                                  ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #22
  %call21 = call ptr @igb_get_hw_dev(ptr noundef %hw1) #20
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_module_info.__UNIQUE_ID_ddebug431, ptr noundef %call21, ptr noundef nonnull @.str.51) #20
  br label %cleanup.sink.split

if.end25:                                         ; preds = %do.body15, %if.end11.if.end25_crit_edge
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %sff8472_rev to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sff8472_rev, align 2
  %9 = and i16 %8, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp28 = icmp eq i16 %9, 0
  %tobool13.not.not = xor i1 %tobool13.not, true
  %brmerge = select i1 %cmp28, i1 true, i1 %tobool13.not.not
  %spec.select = select i1 %brmerge, i32 1, i32 2
  %spec.select55 = select i1 %brmerge, i32 256, i32 512
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end25, %if.end25.thread
  %.sink54 = phi i32 [ 1, %if.end25.thread ], [ %spec.select, %if.end25 ]
  %.sink = phi i32 [ 256, %if.end25.thread ], [ %spec.select55, %if.end25 ]
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink54, ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %11 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %eeprom_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end7.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_mode) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sff8472_rev) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_module_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %ee, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %shr = lshr i32 %3, 1
  %add = add i32 %1, 131071
  %sub = add i32 %add, %3
  %shr4 = lshr i32 %sub, 1
  %conv6 = and i32 %shr4, 65535
  %conv7 = and i32 %shr, 65535
  %sub8 = sub nsw i32 %conv6, %conv7
  %add9 = add nsw i32 %sub8, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add9, i32 2) #20
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !162

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #24
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp17.not53 = icmp slt i32 %sub8, 0
  br i1 %cmp17.not53, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.054, 1
  %cmp17.not.not = icmp slt i32 %i.054, %sub8
  br i1 %cmp17.not.not, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add20 = add nuw nsw i32 %i.054, %conv7
  %mul = shl nuw i32 %add20, 1
  %arrayidx = getelementptr i16, ptr %call8.i, i32 %i.054
  %call21 = tail call i32 @igb_read_phy_reg_i2c(ptr noundef %hw1, i32 noundef %mul, ptr noundef %arrayidx) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %and = and i32 %8, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %10)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %for.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.end ], [ -5, %for.body.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_eee(ptr noundef %netdev, ptr noundef %edata) #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #20
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !196
  %type = getelementptr i8, ptr %netdev, i32 3664
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ult i32 %2, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %media_type = getelementptr i8, ptr %netdev, i32 4356
  %3 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2.not = icmp eq i32 %4, 1
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %supported = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 1
  %5 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 40, ptr %supported, align 4
  %eee_disable = getelementptr i8, ptr %netdev, i32 4550
  %6 = ptrtoint ptr %eee_disable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eee_disable, align 2, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %eee_advert = getelementptr i8, ptr %netdev, i32 8680
  %8 = ptrtoint ptr %eee_advert to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %eee_advert, align 8
  %conv.i = zext i16 %9 to i32
  %and.i = shl nuw nsw i32 %conv.i, 2
  %10 = and i32 %and.i, 8
  %and2.i = shl nuw nsw i32 %conv.i, 3
  %11 = and i32 %and2.i, 32
  %12 = or i32 %11, %10
  %and8.i = shl nuw nsw i32 %conv.i, 9
  %13 = and i32 %and8.i, 4096
  %14 = or i32 %12, %13
  %and14.i = shl nuw nsw i32 %conv.i, 13
  %15 = and i32 %and14.i, 131072
  %16 = or i32 %14, %15
  %17 = and i32 %and14.i, 262144
  %18 = or i32 %16, %17
  %19 = and i32 %and14.i, 524288
  %20 = or i32 %18, %19
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %21 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %advertised, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp8 = icmp eq i32 %23, 5
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  %eee_active = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %call10 = tail call i32 @igb_get_eee_status_i354(ptr noundef %hw1, ptr noundef %eee_active) #20
  br label %if.end20

if.else:                                          ; preds = %if.end5
  %call11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 3632) #20
  %and = and i32 %call11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else.if.end15_crit_edge, label %if.then13

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %eee_active14 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %24 = ptrtoint ptr %eee_active14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %eee_active14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else.if.end15_crit_edge
  %and16 = and i32 %call11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %25 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %tx_lpi_enabled, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge, %if.then9
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %27, label %if.end20.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %if.end20.sw.bb28_crit_edge
    i32 6, label %if.end20.sw.bb28_crit_edge110
    i32 7, label %if.end20.sw.bb28_crit_edge111
  ]

if.end20.sw.bb28_crit_edge111:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb28

if.end20.sw.bb28_crit_edge110:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb28

if.end20.sw.bb28_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb28

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end20
  %call23 = call i32 @igb_read_emi_reg(ptr noundef %hw1, i16 noundef zeroext 1039, ptr noundef nonnull %phy_data) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %if.end20.sw.bb28_crit_edge, %if.end20.sw.bb28_crit_edge110, %if.end20.sw.bb28_crit_edge111
  %call29 = call i32 @igb_read_xmdio_reg(ptr noundef %hw1, i16 noundef zeroext 61, i8 noundef zeroext 7, ptr noundef nonnull %phy_data) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %sw.bb28.sw.epilog.sink.split_crit_edge, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb28.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb28.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %29 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %29)
  %.sink = load i16, ptr %phy_data, align 2
  %conv.i87 = zext i16 %.sink to i32
  %and.i88 = shl nuw nsw i32 %conv.i87, 2
  %30 = and i32 %and.i88, 8
  %and2.i89 = shl nuw nsw i32 %conv.i87, 3
  %31 = and i32 %and2.i89, 32
  %32 = or i32 %31, %30
  %and8.i90 = shl nuw nsw i32 %conv.i87, 9
  %33 = and i32 %and8.i90, 4096
  %34 = or i32 %32, %33
  %and14.i91 = shl nuw nsw i32 %conv.i87, 13
  %35 = and i32 %and14.i91, 131072
  %36 = or i32 %34, %35
  %37 = and i32 %and14.i91, 262144
  %38 = or i32 %36, %37
  %39 = and i32 %and14.i91, 524288
  %40 = or i32 %38, %39
  %lp_advertised34 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 3
  %41 = ptrtoint ptr %lp_advertised34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %lp_advertised34, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end20.sw.epilog_crit_edge
  %42 = ptrtoint ptr %eee_disable to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %eee_disable, align 2, !range !161
  %44 = xor i8 %43, 1
  %45 = zext i8 %44 to i32
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %46 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %eee_enabled, align 4
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %48)
  %cmp40 = icmp eq i32 %48, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool37.not = icmp eq i8 %43, 0
  %or.cond = select i1 %cmp40, i1 %tobool37.not, i1 false
  br i1 %or.cond, label %if.then43, label %sw.epilog.if.end45_crit_edge

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end45

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  %tx_lpi_enabled44 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %49 = ptrtoint ptr %tx_lpi_enabled44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %tx_lpi_enabled44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %sw.epilog.if.end45_crit_edge
  %link_duplex = getelementptr i8, ptr %netdev, i32 3194
  %50 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %link_duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %51)
  %cmp46 = icmp eq i16 %51, 1
  br i1 %cmp46, label %if.then48, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #22
  %52 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %eee_enabled, align 4
  %eee_active50 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %53 = ptrtoint ptr %eee_active50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %eee_active50, align 4
  %tx_lpi_enabled51 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %54 = ptrtoint ptr %tx_lpi_enabled51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tx_lpi_enabled51, align 4
  %advertised52 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %55 = ptrtoint ptr %advertised52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %advertised52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end45.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -61, %sw.bb.cleanup_crit_edge ], [ -61, %sw.bb28.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_eee(ptr noundef %netdev, ptr nocapture noundef readonly %edata) #0 align 64 {
entry:
  %eee_curr = alloca %struct.ethtool_eee, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %eee_curr) #20
  %type = getelementptr i8, ptr %netdev, i32 3664
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %media_type = getelementptr i8, ptr %netdev, i32 4356
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.not = icmp eq i32 %3, 1
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = call ptr @memset(ptr %eee_curr, i32 0, i32 40)
  %call3 = call i32 @igb_get_eee(ptr noundef %netdev, ptr noundef nonnull %eee_curr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee_curr, i32 0, i32 5
  %5 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee_curr, i32 0, i32 6
  %7 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_lpi_enabled, align 4
  %tx_lpi_enabled8 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %9 = ptrtoint ptr %tx_lpi_enabled8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_lpi_enabled8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp9.not = icmp eq i32 %8, %10
  br i1 %cmp9.not, label %if.end11, label %if.then7.cleanup.sink.split_crit_edge

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.then7
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %11 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_lpi_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.end19, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end11
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %13 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp ne i32 %14, 0
  %and = and i32 %14, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool20.not, %tobool23.not
  br i1 %or.cond, label %if.end30, label %if.end19.cleanup.sink.split_crit_edge

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  %and32 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33 = icmp ne i32 %and32, 0
  %and36 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37 = icmp ne i32 %and36, 0
  br label %if.end50

if.else:                                          ; preds = %if.end5
  %eee_enabled41 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %15 = ptrtoint ptr %eee_enabled41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eee_enabled41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool42.not = icmp eq i32 %16, 0
  br i1 %tobool42.not, label %if.else.cleanup.sink.split_crit_edge, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end50:                                         ; preds = %if.else.if.end50_crit_edge, %if.end30
  %adv1g_eee.0.off0 = phi i1 [ %tobool37, %if.end30 ], [ true, %if.else.if.end50_crit_edge ]
  %adv100m_eee.0.off0 = phi i1 [ %tobool33, %if.end30 ], [ true, %if.else.if.end50_crit_edge ]
  %advertised51 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %17 = ptrtoint ptr %advertised51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %advertised51, align 4
  %19 = trunc i32 %18 to i16
  %20 = lshr i16 %19, 2
  %21 = and i16 %20, 2
  %22 = lshr i16 %19, 3
  %23 = and i16 %22, 4
  %24 = or i16 %23, %21
  %25 = lshr i16 %19, 9
  %26 = and i16 %25, 8
  %27 = or i16 %24, %26
  %and16.i = lshr i32 %18, 13
  %28 = trunc i32 %and16.i to i16
  %29 = and i16 %28, 16
  %30 = or i16 %27, %29
  %31 = and i16 %28, 32
  %32 = or i16 %30, %31
  %33 = and i16 %28, 64
  %34 = or i16 %32, %33
  %eee_advert = getelementptr i8, ptr %netdev, i32 8680
  %35 = ptrtoint ptr %eee_advert to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %eee_advert, align 8
  %eee_disable = getelementptr i8, ptr %netdev, i32 4550
  %36 = ptrtoint ptr %eee_disable to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %eee_disable, align 2, !range !161
  %eee_enabled54 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %38 = ptrtoint ptr %eee_enabled54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eee_enabled54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool55.not = icmp eq i32 %39, 0
  %40 = zext i1 %tobool55.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %40)
  %cmp57.not = icmp eq i8 %37, %40
  br i1 %cmp57.not, label %if.end50.if.end71_crit_edge, label %if.then59

if.end50.if.end71_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end71

if.then59:                                        ; preds = %if.end50
  %41 = ptrtoint ptr %eee_disable to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %eee_disable, align 2
  %flags = getelementptr i8, ptr %netdev, i32 2828
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %or = or i32 %43, 16384
  store i32 %or, ptr %flags, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else69, label %if.then68

if.then68:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #22
  call void @igb_reinit_locked(ptr noundef %add.ptr.i) #20
  br label %if.end71

if.else69:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #22
  call void @igb_reset(ptr noundef %add.ptr.i) #20
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then68, %if.end50.if.end71_crit_edge
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %cmp74 = icmp eq i32 %47, 5
  br i1 %cmp74, label %if.then76, label %if.else80

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #22
  %call79 = call i32 @igb_set_eee_i354(ptr noundef %hw1, i1 noundef zeroext %adv1g_eee.0.off0, i1 noundef zeroext %adv100m_eee.0.off0) #20
  br label %if.end84

if.else80:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #22
  %call83 = call i32 @igb_set_eee_i350(ptr noundef %hw1, i1 noundef zeroext %adv1g_eee.0.off0, i1 noundef zeroext %adv100m_eee.0.off0) #20
  br label %if.end84

if.end84:                                         ; preds = %if.else80, %if.then76
  %ret_val.0 = phi i32 [ %call79, %if.then76 ], [ %call83, %if.else80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool85.not = icmp eq i32 %ret_val.0, 0
  br i1 %tobool85.not, label %if.end84.cleanup_crit_edge, label %if.end84.cleanup.sink.split_crit_edge

if.end84.cleanup.sink.split_crit_edge:            ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end84.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.end19.cleanup.sink.split_crit_edge, %if.end11.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge
  %.str.64.sink = phi ptr [ @.str.52, %if.then7.cleanup.sink.split_crit_edge ], [ @.str.55, %if.end11.cleanup.sink.split_crit_edge ], [ @.str.58, %if.end19.cleanup.sink.split_crit_edge ], [ @.str.61, %if.else.cleanup.sink.split_crit_edge ], [ @.str.64, %if.end84.cleanup.sink.split_crit_edge ]
  %pdev90 = getelementptr i8, ptr %netdev, i32 3344
  %48 = ptrtoint ptr %pdev90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev90, align 16
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev91, ptr noundef nonnull %.str.64.sink) #23
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end84.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %eee_curr) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %eth_flags3 = getelementptr i8, ptr %netdev, i32 4552
  %pdev = getelementptr i8, ptr %netdev, i32 3344
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 16
  %runtime_status.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.cond.false_crit_edge

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.false

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cond.end_crit_edge, label %pm_runtime_suspended.exit.cond.false_crit_edge

pm_runtime_suspended.exit.cond.false_crit_edge:   ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.false

pm_runtime_suspended.exit.cond.end_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end

cond.false:                                       ; preds = %pm_runtime_suspended.exit.cond.false_crit_edge, %entry.cond.false_crit_edge
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  %call5 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 8) #20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %pm_runtime_suspended.exit.cond.end_crit_edge
  %cond = phi i32 [ %call5, %cond.false ], [ 0, %pm_runtime_suspended.exit.cond.end_crit_edge ]
  %media_type = getelementptr i8, ptr %netdev, i32 4356
  %5 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %autoneg = getelementptr i8, ptr %netdev, i32 4210
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autoneg, align 2, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 4360
  %9 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %autoneg_advertised, align 4
  %11 = or i16 %10, 192
  %or11 = zext i16 %11 to i32
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %advertising.0 = phi i32 [ %or11, %if.then8 ], [ 128, %if.then.if.end_crit_edge ]
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %12 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %port, align 1
  %addr = getelementptr i8, ptr %netdev, i32 4340
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %conv13 = trunc i32 %14 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %15 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13, ptr %phy_address, align 2
  br label %if.end52

if.else:                                          ; preds = %cond.end
  %type = getelementptr i8, ptr %netdev, i32 3664
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp16 = icmp eq i32 %17, 5
  br i1 %cmp16, label %if.then18, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %device_id = getelementptr i8, ptr %netdev, i32 4558
  %18 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8005, i16 %19)
  %cmp20 = icmp eq i16 %19, 8005
  %and = and i32 %cond, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp20, i1 %tobool22.not, i1 false
  %spec.select210 = select i1 %or.cond, i32 42048, i32 140352
  %spec.select211 = select i1 %or.cond, i32 33792, i32 132096
  br label %if.end29

if.end29:                                         ; preds = %if.then18, %if.else.if.end29_crit_edge
  %supported.0 = phi i32 [ 140352, %if.else.if.end29_crit_edge ], [ %spec.select210, %if.then18 ]
  %advertising.1 = phi i32 [ 132096, %if.else.if.end29_crit_edge ], [ %spec.select211, %if.then18 ]
  %20 = ptrtoint ptr %eth_flags3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %eth_flags3, align 1
  %21 = and i8 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %22 = icmp eq i8 %21, 0
  %or38 = or i32 %supported.0, 8
  %or39 = or i32 %advertising.1, 8
  %supported.1 = select i1 %22, i32 %supported.0, i32 %or38
  %advertising.2 = select i1 %22, i32 %advertising.1, i32 %or39
  %autoneg42 = getelementptr i8, ptr %netdev, i32 4210
  %23 = ptrtoint ptr %autoneg42 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %autoneg42, align 2, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  %or48 = or i32 %advertising.2, 64
  %advertising.3 = select i1 %tobool43.not, i32 %advertising.2, i32 %or48
  %port51 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %port51 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 3, ptr %port51, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.end29, %if.end
  %supported.2 = phi i32 [ 8431, %if.end ], [ %supported.1, %if.end29 ]
  %advertising.4 = phi i32 [ %advertising.0, %if.end ], [ %advertising.3, %if.end29 ]
  %autoneg54 = getelementptr i8, ptr %netdev, i32 4210
  %26 = ptrtoint ptr %autoneg54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %autoneg54, align 2, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp57.not = icmp eq i8 %27, 1
  %and60 = and i32 %advertising.4, -24577
  %spec.select = select i1 %cmp57.not, i32 %advertising.4, i32 %and60
  %requested_mode = getelementptr i8, ptr %netdev, i32 4248
  %28 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %requested_mode, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %29, label %if.end52.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb63
    i32 2, label %sw.bb65
  ]

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  %or62 = or i32 %spec.select, 8192
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  %or64 = or i32 %spec.select, 24576
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #22
  %or66 = or i32 %spec.select, 16384
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb65, %sw.bb63, %sw.bb, %if.end52.sw.epilog_crit_edge
  %advertising.6 = phi i32 [ %or66, %sw.bb65 ], [ %or64, %sw.bb63 ], [ %or62, %sw.bb ], [ %and60, %if.end52.sw.epilog_crit_edge ]
  %and68 = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %sw.epilog.if.end105_crit_edge, label %if.then70

sw.epilog.if.end105_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end105

if.then70:                                        ; preds = %sw.epilog
  %31 = and i32 %cond, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %31)
  %32 = icmp eq i32 %31, 4096
  br i1 %32, label %if.then70.if.end88_crit_edge, label %if.else77

if.then70.if.end88_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88

if.else77:                                        ; preds = %if.then70
  %and78 = and i32 %cond, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.else81, label %if.else77.if.end88_crit_edge

if.else77.if.end88_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88

if.else81:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #22
  %and82 = and i32 %cond, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %. = select i1 %tobool83.not, i32 10, i32 100
  br label %if.end88

if.end88:                                         ; preds = %if.else81, %if.else77.if.end88_crit_edge, %if.then70.if.end88_crit_edge
  %speed.0 = phi i32 [ 2500, %if.then70.if.end88_crit_edge ], [ 1000, %if.else77.if.end88_crit_edge ], [ %., %if.else81 ]
  %and89 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %lor.lhs.false91, label %if.end88.if.end105_crit_edge

if.end88.if.end105_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end105

lor.lhs.false91:                                  ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #22
  %33 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp94.not = icmp ne i32 %34, 1
  %spec.select216 = zext i1 %cmp94.not to i8
  br label %if.end105

if.end105:                                        ; preds = %lor.lhs.false91, %if.end88.if.end105_crit_edge, %sw.epilog.if.end105_crit_edge
  %.sink213 = phi i8 [ 1, %if.end88.if.end105_crit_edge ], [ -1, %sw.epilog.if.end105_crit_edge ], [ %spec.select216, %lor.lhs.false91 ]
  %speed.1 = phi i32 [ %speed.0, %if.end88.if.end105_crit_edge ], [ -1, %sw.epilog.if.end105_crit_edge ], [ %speed.0, %lor.lhs.false91 ]
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %35 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink213, ptr %duplex, align 4
  %speed107 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %36 = ptrtoint ptr %speed107 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %speed.1, ptr %speed107, align 4
  %37 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp110 = icmp eq i32 %38, 2
  br i1 %cmp110, label %if.end105.if.end123_crit_edge, label %lor.lhs.false112

if.end105.if.end123_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end123

lor.lhs.false112:                                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #22
  %39 = ptrtoint ptr %autoneg54 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %autoneg54, align 2, !range !161
  br label %if.end123

if.end123:                                        ; preds = %lor.lhs.false112, %if.end105.if.end123_crit_edge
  %.sink214 = phi i8 [ 1, %if.end105.if.end123_crit_edge ], [ %40, %lor.lhs.false112 ]
  %autoneg122 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %41 = ptrtoint ptr %autoneg122 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink214, ptr %autoneg122, align 1
  %42 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp126 = icmp eq i32 %43, 1
  br i1 %cmp126, label %if.then128, label %if.end123.if.end138_crit_edge

if.end123.if.end138_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end138

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #22
  %is_mdix = getelementptr i8, ptr %netdev, i32 4380
  %44 = ptrtoint ptr %is_mdix to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_mdix, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool130.not = icmp eq i8 %45, 0
  %conv133 = select i1 %tobool130.not, i8 1, i8 2
  br label %if.end138

if.end138:                                        ; preds = %if.then128, %if.end123.if.end138_crit_edge
  %.sink = phi i8 [ %conv133, %if.then128 ], [ 0, %if.end123.if.end138_crit_edge ]
  %46 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 7
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink, ptr %46, align 1
  %mdix = getelementptr i8, ptr %netdev, i32 4378
  %48 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mdix, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp141 = icmp eq i8 %49, 0
  %spec.select215 = select i1 %cmp141, i8 3, i8 %49
  %50 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select215, ptr %50, align 2
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %supported.2) #20
  %advertising153 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising153, i32 noundef %advertising.6) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #0 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 3584
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #20
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !196
  %call2 = tail call i32 @igb_check_reset_block(ptr noundef %hw1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %pdev = getelementptr i8, ptr %netdev, i32 3344
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66) #23
  br label %cleanup98

if.end:                                           ; preds = %entry
  %eth_tp_mdix_ctrl = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %3 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.if.end22_crit_edge, label %if.then4

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.then4:                                         ; preds = %if.end
  %media_type = getelementptr i8, ptr %netdev, i32 4356
  %5 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end6, label %if.then4.cleanup98_crit_edge

if.then4.cleanup98_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup98

if.end6:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp9.not = icmp eq i8 %4, 3
  br i1 %cmp9.not, label %if.end6.if.end22_crit_edge, label %land.lhs.true

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end6
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp13.not = icmp eq i8 %8, 1
  br i1 %cmp13.not, label %land.lhs.true.if.end22_crit_edge, label %do.end18

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

do.end18:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %pdev19 = getelementptr i8, ptr %netdev, i32 3344
  %9 = ptrtoint ptr %pdev19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev19, align 16
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.69) #23
  br label %cleanup98

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end6.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2824
  %call23135 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23135)
  %tobool24.not136 = icmp eq i32 %call23135, 0
  br i1 %tobool24.not136, label %if.end22.while.end_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  br label %while.body

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end22.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #20
  %call23 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #20
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end22.while.end_crit_edge
  %advertising25 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call26 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising25) #20
  %autoneg28 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %autoneg28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autoneg28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp30 = icmp eq i8 %12, 1
  br i1 %cmp30, label %if.then32, label %if.else63

if.then32:                                        ; preds = %while.end
  %autoneg33 = getelementptr i8, ptr %netdev, i32 4210
  %13 = ptrtoint ptr %autoneg33 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %autoneg33, align 2
  %media_type35 = getelementptr i8, ptr %netdev, i32 4356
  %14 = ptrtoint ptr %media_type35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %media_type35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp36 = icmp eq i32 %15, 2
  %16 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %advertising, align 4
  %18 = trunc i32 %17 to i16
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.then32
  %conv40 = or i16 %18, 1088
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 4360
  %19 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv40, ptr %autoneg_advertised, align 4
  %link_speed = getelementptr i8, ptr %netdev, i32 3192
  %20 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %link_speed, align 8
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %21, label %if.then38.if.end56_crit_edge [
    i16 2500, label %sw.bb
    i16 1000, label %sw.bb45
    i16 100, label %sw.bb48
  ]

if.then38.if.end56_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end56

sw.bb:                                            ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #22
  %23 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -32768, ptr %autoneg_advertised, align 4
  br label %if.end56

sw.bb45:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #22
  %24 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 32, ptr %autoneg_advertised, align 4
  br label %if.end56

sw.bb48:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #22
  %25 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 8, ptr %autoneg_advertised, align 4
  br label %if.end56

if.else:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #22
  %conv53 = or i16 %18, 192
  %autoneg_advertised55 = getelementptr i8, ptr %netdev, i32 4360
  %26 = ptrtoint ptr %autoneg_advertised55 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv53, ptr %autoneg_advertised55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else, %sw.bb48, %sw.bb45, %sw.bb, %if.then38.if.end56_crit_edge
  %autoneg_advertised58 = getelementptr i8, ptr %netdev, i32 4360
  %27 = ptrtoint ptr %autoneg_advertised58 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %autoneg_advertised58, align 4
  %conv59 = zext i16 %28 to i32
  %29 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv59, ptr %advertising, align 4
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 3288
  %30 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fc_autoneg, align 8, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool60.not = icmp eq i8 %31, 0
  br i1 %tobool60.not, label %if.end56.if.end72_crit_edge, label %if.then61

if.end56.if.end72_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end72

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #22
  %requested_mode = getelementptr i8, ptr %netdev, i32 4248
  %32 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 255, ptr %requested_mode, align 4
  br label %if.end72

if.else63:                                        ; preds = %while.end
  %speed65 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %33 = ptrtoint ptr %speed65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %speed65, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %35 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %duplex, align 4
  %call67 = call i32 @igb_set_spd_dplx(ptr noundef %add.ptr.i, i32 noundef %34, i8 noundef zeroext %36) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.else63.if.end72_crit_edge, label %if.then69

if.else63.if.end72_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end72

if.then69:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #22
  call void @_clear_bit(i32 noundef 1, ptr noundef %state) #20
  br label %cleanup98

if.end72:                                         ; preds = %if.else63.if.end72_crit_edge, %if.then61, %if.end56.if.end72_crit_edge
  %37 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %38, label %if.else84 [
    i8 0, label %if.end72.if.end90_crit_edge
    i8 3, label %if.end72.if.end90.sink.split_crit_edge
  ]

if.end72.if.end90.sink.split_crit_edge:           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end90.sink.split

if.end72.if.end90_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end90

if.else84:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end90.sink.split

if.end90.sink.split:                              ; preds = %if.else84, %if.end72.if.end90.sink.split_crit_edge
  %.sink = phi i8 [ %38, %if.else84 ], [ 0, %if.end72.if.end90.sink.split_crit_edge ]
  %mdix = getelementptr i8, ptr %netdev, i32 4378
  %40 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink, ptr %mdix, align 2
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.end72.if.end90_crit_edge
  %netdev91 = getelementptr i8, ptr %netdev, i32 2816
  %41 = ptrtoint ptr %netdev91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev91, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else95, label %if.then93

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #22
  call void @igb_down(ptr noundef %add.ptr.i) #20
  %call94 = call i32 @igb_up(ptr noundef %add.ptr.i) #20
  br label %if.end96

if.else95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #22
  call void @igb_reset(ptr noundef %add.ptr.i) #20
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then93
  call void @_clear_bit(i32 noundef 1, ptr noundef %state) #20
  br label %cleanup98

cleanup98:                                        ; preds = %if.end96, %if.then69, %do.end18, %if.then4.cleanup98_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ 0, %if.end96 ], [ -95, %if.then4.cleanup98_crit_edge ], [ -22, %if.then69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #20
  ret i32 %retval.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_reinit_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_has_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_get_flash_presence_i210(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_set_fw_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_tx_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_free_tx_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_rx_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_free_rx_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_force_mac_fc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_setup_srrctl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_power_up_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_pattern_test(ptr noundef %adapter, ptr nocapture noundef writeonly %data, i32 noundef %reg, i32 noundef %mask, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %hw_addr3 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %and15 = and i32 %write, %mask
  %0 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body7, !prof !162

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

for.cond:                                         ; preds = %if.end
  %2 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.cond.if.end.1_crit_edge, label %do.body7.1, !prof !162

for.cond.if.end.1_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.1

do.body7.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !203
  tail call void @arm_heavy_mb() #20
  %and.1 = and i32 %write, -1515870811
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.1)
  %arrayidx10.1 = getelementptr i8, ptr %3, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx10.1, i32 %4) #20, !srcloc !164
  br label %if.end.1

if.end.1:                                         ; preds = %do.body7.1, %for.cond.if.end.1_crit_edge
  %call.1 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef %reg) #20
  %and13.1 = and i32 %call.1, %mask
  %and16.1 = and i32 %and15, -1515870811
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.1, i32 %and16.1)
  %cmp17.not.1 = icmp eq i32 %and13.1, %and16.1
  br i1 %cmp17.not.1, label %for.cond.1, label %if.end.1.do.end21_crit_edge

if.end.1.do.end21_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

for.cond.1:                                       ; preds = %if.end.1
  %5 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool.not.2 = icmp eq ptr %6, null
  br i1 %tobool.not.2, label %for.cond.1.if.end.2_crit_edge, label %do.body7.2, !prof !162

for.cond.1.if.end.2_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.2

do.body7.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !203
  tail call void @arm_heavy_mb() #20
  %arrayidx10.2 = getelementptr i8, ptr %6, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx10.2, i32 0) #20, !srcloc !164
  br label %if.end.2

if.end.2:                                         ; preds = %do.body7.2, %for.cond.1.if.end.2_crit_edge
  %call.2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef %reg) #20
  %and13.2 = and i32 %call.2, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.2)
  %cmp17.not.2 = icmp eq i32 %and13.2, 0
  br i1 %cmp17.not.2, label %for.cond.2, label %if.end.2.do.end21_crit_edge

if.end.2.do.end21_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

for.cond.2:                                       ; preds = %if.end.2
  %7 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool.not.3 = icmp eq ptr %8, null
  br i1 %tobool.not.3, label %for.cond.2.if.end.3_crit_edge, label %do.body7.3, !prof !162

for.cond.2.if.end.3_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.3

do.body7.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !203
  tail call void @arm_heavy_mb() #20
  %9 = tail call i32 @llvm.bswap.i32(i32 %write)
  %arrayidx10.3 = getelementptr i8, ptr %8, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx10.3, i32 %9) #20, !srcloc !164
  br label %if.end.3

if.end.3:                                         ; preds = %do.body7.3, %for.cond.2.if.end.3_crit_edge
  %call.3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef %reg) #20
  %and13.3 = and i32 %call.3, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.3, i32 %and15)
  %cmp17.not.3 = icmp eq i32 %and13.3, %and15
  br i1 %cmp17.not.3, label %if.end.3.cleanup_crit_edge, label %if.end.3.do.end21_crit_edge

if.end.3.do.end21_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !203
  tail call void @arm_heavy_mb() #20
  %and = and i32 %write, 1515870810
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx10 = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx10, i32 %10) #20, !srcloc !164
  br label %if.end

if.end:                                           ; preds = %do.body7, %entry.if.end_crit_edge
  %call = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef %reg) #20
  %and13 = and i32 %call, %mask
  %and16 = and i32 %and15, 1515870810
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %and16)
  %cmp17.not = icmp eq i32 %and13, %and16
  br i1 %cmp17.not, label %for.cond, label %if.end.do.end21_crit_edge

if.end.do.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

do.end21:                                         ; preds = %if.end.do.end21_crit_edge, %if.end.3.do.end21_crit_edge, %if.end.2.do.end21_crit_edge, %if.end.1.do.end21_crit_edge
  %and13.lcssa = phi i32 [ %and13, %if.end.do.end21_crit_edge ], [ %and13.1, %if.end.1.do.end21_crit_edge ], [ %and13.2, %if.end.2.do.end21_crit_edge ], [ %and13.3, %if.end.3.do.end21_crit_edge ]
  %and16.lcssa = phi i32 [ %and16, %if.end.do.end21_crit_edge ], [ %and16.1, %if.end.1.do.end21_crit_edge ], [ 0, %if.end.2.do.end21_crit_edge ], [ %and15, %if.end.3.do.end21_crit_edge ]
  %pdev = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 34
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %reg, i32 noundef %and13.lcssa, i32 noundef %and16.lcssa) #23
  %conv = sext i32 %reg to i64
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end.3.cleanup_crit_edge
  %cmp44 = phi i1 [ true, %do.end21 ], [ false, %if.end.3.cleanup_crit_edge ]
  ret i1 %cmp44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_test_intr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igb_adapter, ptr %data, i32 0, i32 37
  %call = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 192) #20
  %test_icr = getelementptr inbounds %struct.igb_adapter, ptr %data, i32 0, i32 40
  %0 = ptrtoint ptr %test_icr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %test_icr, align 32
  %or = or i32 %1, %call
  store i32 %or, ptr %test_icr, align 32
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_reset_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_setup_tctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_configure_tx_ring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_setup_rctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_configure_rx_ring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_alloc_rx_buffers(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_xmit_frame_ring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_sw_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_blink_led(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_led_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_cleanup_led(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_update_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !204
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @trace_hardirqs_off() #20
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #20
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #20
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #20
  tail call void @trace_hardirqs_on() #20
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #20
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #20
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #20
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #20, !srcloc !205
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !162

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @warn_bogus_irq_restore() #20
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #20, !srcloc !206
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !207
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !208
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !209
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_max_rss_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_set_flag_queue_pairs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_reinit_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_i2c(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igb_get_hw_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_eee_status_i354(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_emi_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_xmdio_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_set_eee_i354(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_set_eee_i350(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_set_spd_dplx(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #17 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2761, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @igb_add_filter._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @igb_add_filter._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2701, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @igb_rxnfc_write_etype_filter._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @igb_rxnfc_write_etype_filter._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2742, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @igb_rxnfc_write_vlan_prio_filter._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @igb_rxnfc_write_vlan_prio_filter._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @igb_ethtool_ops, !19, !"igb_ethtool_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 3458, i32 33}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2033, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @igb_diag_test._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @igb_diag_test._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2081, i32 3}
!28 = !{ptr @igb_diag_test._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @igb_diag_test._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1314, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @igb_reg_test._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @igb_reg_test._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @reg_test_i350, !36, !"reg_test_i350", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1059, i32 28}
!37 = !{ptr @reg_test_i210, !38, !"reg_test_i210", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1029, i32 28}
!39 = !{ptr @reg_test_82580, !40, !"reg_test_82580", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1102, i32 28}
!41 = !{ptr @reg_test_82576, !42, !"reg_test_82576", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1145, i32 28}
!43 = !{ptr @reg_test_82575, !44, !"reg_test_82575", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1188, i32 28}
!45 = distinct !{null, !46, !"_test", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1224, i32 19}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1230, i32 4}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @reg_pattern_test._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @reg_pattern_test._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1250, i32 3}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @reg_set_and_check._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @reg_set_and_check._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1435, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @igb_intr_test._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @igb_intr_test._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1954, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @igb_loopback_test._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @igb_loopback_test._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 1961, i32 3}
!71 = !{ptr @igb_loopback_test._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @igb_loopback_test._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2364, i32 24}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2365, i32 24}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2366, i32 24}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2369, i32 24}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2370, i32 24}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2371, i32 24}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2372, i32 24}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2373, i32 24}
!91 = !{ptr @igb_gstrings_test, !92, !"igb_gstrings_test", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 119, i32 19}
!93 = !{ptr @igb_gstrings_stats, !94, !"igb_gstrings_stats", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 32, i32 31}
!95 = !{ptr @igb_gstrings_net_stats, !96, !"igb_gstrings_net_stats", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 82, i32 31}
!97 = !{ptr @igb_priv_flags_strings, !98, !"igb_priv_flags_strings", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 128, i32 19}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2661, i32 4}
!101 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @igb_set_rss_hash_opt._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @igb_set_rss_hash_opt._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2916, i32 3}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @igb_add_ethtool_nfc_entry._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @igb_add_ethtool_nfc_entry._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2922, i32 3}
!111 = !{ptr @igb_add_ethtool_nfc_entry._entry.43, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @igb_add_ethtool_nfc_entry._entry_ptr.45, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 2970, i32 4}
!115 = !{ptr @igb_add_ethtool_nfc_entry._entry.46, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @igb_add_ethtool_nfc_entry._entry_ptr.48, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 3205, i32 3}
!119 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @igb_get_module_info.__UNIQUE_ID_ddebug431, !118, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 3127, i32 4}
!124 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @igb_set_eee._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @igb_set_eee._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 3134, i32 4}
!129 = !{ptr @igb_set_eee._entry.54, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @igb_set_eee._entry_ptr.56, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 3141, i32 4}
!133 = !{ptr @igb_set_eee._entry.57, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @igb_set_eee._entry_ptr.59, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 3149, i32 3}
!137 = !{ptr @igb_set_eee._entry.60, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @igb_set_eee._entry_ptr.62, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 3172, i32 3}
!141 = !{ptr @igb_set_eee._entry.63, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @igb_set_eee._entry_ptr.65, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 271, i32 3}
!145 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @igb_set_link_ksettings._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @igb_set_link_ksettings._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/intel/igb/igb_ethtool.c", i32 286, i32 4}
!150 = !{ptr @igb_set_link_ksettings._entry.68, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @igb_set_link_ksettings._entry_ptr.70, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i8 0, i8 2}
!162 = !{!"branch_weights", i32 1, i32 2000}
!163 = !{i64 2158323134}
!164 = !{i64 6637728}
!165 = !{i64 2158328762}
!166 = !{i64 2158337790}
!167 = !{i64 2158341438}
!168 = !{i64 2158374791}
!169 = !{i64 2158197938}
!170 = !{i64 2158203437}
!171 = !{i64 2158192305}
!172 = !{i64 2158204228}
!173 = !{i64 2158210102}
!174 = !{i64 2158213720}
!175 = !{i64 2158217204}
!176 = !{i64 2158220694}
!177 = !{i64 2158224243}
!178 = !{i64 2158227727}
!179 = !{i64 2158231217}
!180 = !{i64 2158234766}
!181 = !{i64 2158238252}
!182 = !{i64 2158241747}
!183 = !{i64 2158245299}
!184 = !{i64 2158248996}
!185 = !{i64 2158256376}
!186 = !{i64 2158259896}
!187 = !{i64 2158263427}
!188 = !{i64 2158266925}
!189 = !{i64 2158270510}
!190 = !{i64 2158274035}
!191 = !{i64 2158277558}
!192 = !{i64 2158281103}
!193 = !{i64 2158252738}
!194 = !{i64 2148585668, i64 2148585700, i64 2148585729, i64 2148585763, i64 2148585794, i64 2148585817}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{!"auto-init"}
!197 = !{i64 2158284672}
!198 = !{i64 2158288192}
!199 = !{i64 2158291736}
!200 = !{i64 2150459152}
!201 = !{i64 2158317300}
!202 = !{i64 2148408736, i64 2148408741, i64 2148408754, i64 2148408798, i64 2148408832, i64 2148408853}
!203 = !{i64 2158182673}
!204 = !{i64 988818, i64 988879}
!205 = !{i64 991550}
!206 = !{i64 991835}
!207 = !{i64 2151038689}
!208 = !{i64 2151038531}
!209 = !{i64 2151038859}
