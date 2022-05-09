; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.144, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.151, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.153, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.144 = type { ptr }
%union.anon.151 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.153 = type { %struct.ixgbe_rx_queue_stats }
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
%union.ixgbe_atr_input = type { %struct.anon.154 }
%struct.anon.154 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.vf_data_storage = type { ptr, [6 x i8], [30 x i16], i16, i8, i8, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }

@ixgbe_enable_sriov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"Virtual Functions already enabled for this device - Please reload all VF drivers to avoid spoofed packet errors\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ixgbe_enable_sriov\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixgbe_enable_sriov._entry_ptr = internal global ptr @ixgbe_enable_sriov._entry, section ".printk_index", align 4
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable PCI sriov: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Unable to allocate memory for VF Data Storage - SRIOV disabled\0A\00", [32 x i8] zeroinitializer }, align 32
@ixgbe_disable_sriov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Unloading driver while VFs are assigned - VFs will not be deallocated\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ixgbe_disable_sriov\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_disable_sriov._entry_ptr = internal global ptr @ixgbe_disable_sriov._entry, section ".printk_index", align 4
@ixgbe_ndo_set_vf_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1372, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"setting MAC %pM on VF %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgbe_ndo_set_vf_mac\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_ndo_set_vf_mac._entry_ptr = internal global ptr @ixgbe_ndo_set_vf_mac._entry, section ".printk_index", align 4
@ixgbe_ndo_set_vf_mac._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 1373, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Reload the VF driver to make this change effective.\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_ndo_set_vf_mac._entry_ptr.14 = internal global ptr @ixgbe_ndo_set_vf_mac._entry.12, section ".printk_index", align 4
@ixgbe_ndo_set_vf_mac._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 1380, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"The VF MAC address has been set, but the PF device is not up.\0A\00", [33 x i8] zeroinitializer }, align 32
@ixgbe_ndo_set_vf_mac._entry_ptr.17 = internal global ptr @ixgbe_ndo_set_vf_mac._entry.15, section ".printk_index", align 4
@ixgbe_ndo_set_vf_mac._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 1381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Bring the PF device up before attempting to use the VF device.\0A\00", [32 x i8] zeroinitializer }, align 32
@ixgbe_ndo_set_vf_mac._entry_ptr.20 = internal global ptr @ixgbe_ndo_set_vf_mac._entry.18, section ".printk_index", align 4
@ixgbe_ndo_set_vf_mac._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.2, i32 1384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"The VF MAC address was NOT set due to invalid or duplicate MAC address.\0A\00", [55 x i8] zeroinitializer }, align 32
@ixgbe_ndo_set_vf_mac._entry_ptr.23 = internal global ptr @ixgbe_ndo_set_vf_mac._entry.21, section ".printk_index", align 4
@ixgbe_ndo_set_vf_mac._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.2, i32 1394, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"removing MAC on VF %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_ndo_set_vf_mac._entry_ptr.26 = internal global ptr @ixgbe_ndo_set_vf_mac._entry.24, section ".printk_index", align 4
@ixgbe_ndo_set_vf_mac._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.2, i32 1401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could NOT remove the VF MAC address.\0A\00", [58 x i8] zeroinitializer }, align 32
@ixgbe_ndo_set_vf_mac._entry_ptr.29 = internal global ptr @ixgbe_ndo_set_vf_mac._entry.27, section ".printk_index", align 4
@ixgbe_check_vf_rate_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1576, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Link speed has been changed. VF Transmit rate is disabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ixgbe_check_vf_rate_limit\00", [38 x i8] zeroinitializer }, align 32
@ixgbe_check_vf_rate_limit._entry_ptr = internal global ptr @ixgbe_check_vf_rate_limit._entry, section ".printk_index", align 4
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VF %u is %strusted\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SRIOV is not supported with XDP\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SR-IOV enabled with %d VFs\0A\00", [36 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@ixgbe_pci_sriov_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 302, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"Currently configured with %d TCs, and %d offloaded macvlans. Creating more than %d VFs is not allowed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgbe_pci_sriov_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_pci_sriov_enable._entry_ptr = internal global ptr @ixgbe_pci_sriov_enable._entry, section ".printk_index", align 4
@ixgbe_pci_sriov_enable._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.38, ptr @.str.2, i32 318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ixgbe_pci_sriov_enable._entry_ptr.41 = internal global ptr @ixgbe_pci_sriov_enable._entry.40, section ".printk_index", align 4
@ixgbe_rcv_msg_from_vf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ixgbe: Error receiving message from VF\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ixgbe_rcv_msg_from_vf\00", [42 x i8] zeroinitializer }, align 32
@ixgbe_rcv_msg_from_vf._entry_ptr = internal global ptr @ixgbe_rcv_msg_from_vf._entry, section ".printk_index", align 4
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unhandled Msg %8.8x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VF Reset msg received from vf %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VF %d attempted to set invalid mac\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"VF %d attempted to override administratively set MAC address\0AReload the VF driver to resume operations\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"VF %d attempted to override administratively set VLAN configuration\0AReload the VF driver to resume operations\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VF max_frame %d out of range\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VF requests change max MTU to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"VF %d requested MACVLAN filter but is administratively denied\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VF %d has requested a MACVLAN filter but there is no space for it\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VF %d requested invalid api version %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Enabling VF promisc requires PF in promisc\0A\00", [52 x i8] zeroinitializer }, align 32
@ixgbe_enable_port_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1434, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting VLAN %d, QOS 0x%x on VF %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgbe_enable_port_vlan\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_enable_port_vlan._entry_ptr = internal global ptr @ixgbe_enable_port_vlan._entry, section ".printk_index", align 4
@ixgbe_enable_port_vlan._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1437, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"The VF VLAN has been set, but the PF device is not up.\0A\00", [40 x i8] zeroinitializer }, align 32
@ixgbe_enable_port_vlan._entry_ptr.59 = internal global ptr @ixgbe_enable_port_vlan._entry.57, section ".printk_index", align 4
@ixgbe_enable_port_vlan._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.56, ptr @.str.2, i32 1439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@ixgbe_enable_port_vlan._entry_ptr.61 = internal global ptr @ixgbe_enable_port_vlan._entry.60, section ".printk_index", align 4
@switch.table.ixgbe_disable_sriov = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 16, i32 16, i32 16, i32 63, i32 63, i32 63], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 16, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 32, i64 128]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 32, i64 128]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 170, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 185, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 198, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 241, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1371, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1373, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1380, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1381, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1384, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1394, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1401, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1575, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1696, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 57, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 114, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 301, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 318, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1215, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1277, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 834, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 924, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 930, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 948, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 476, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 550, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 972, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 999, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1023, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1179, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1433, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1436, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private constant [50 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1438, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [33 x i8] c"switch.table.ixgbe_disable_sriov\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @ixgbe_check_vf_rate_limit._entry, ptr @ixgbe_check_vf_rate_limit._entry_ptr, ptr @ixgbe_disable_sriov._entry, ptr @ixgbe_disable_sriov._entry_ptr, ptr @ixgbe_enable_port_vlan._entry, ptr @ixgbe_enable_port_vlan._entry.57, ptr @ixgbe_enable_port_vlan._entry.60, ptr @ixgbe_enable_port_vlan._entry_ptr, ptr @ixgbe_enable_port_vlan._entry_ptr.59, ptr @ixgbe_enable_port_vlan._entry_ptr.61, ptr @ixgbe_enable_sriov._entry, ptr @ixgbe_enable_sriov._entry_ptr, ptr @ixgbe_ndo_set_vf_mac._entry, ptr @ixgbe_ndo_set_vf_mac._entry.12, ptr @ixgbe_ndo_set_vf_mac._entry.15, ptr @ixgbe_ndo_set_vf_mac._entry.18, ptr @ixgbe_ndo_set_vf_mac._entry.21, ptr @ixgbe_ndo_set_vf_mac._entry.24, ptr @ixgbe_ndo_set_vf_mac._entry.27, ptr @ixgbe_ndo_set_vf_mac._entry_ptr, ptr @ixgbe_ndo_set_vf_mac._entry_ptr.14, ptr @ixgbe_ndo_set_vf_mac._entry_ptr.17, ptr @ixgbe_ndo_set_vf_mac._entry_ptr.20, ptr @ixgbe_ndo_set_vf_mac._entry_ptr.23, ptr @ixgbe_ndo_set_vf_mac._entry_ptr.26, ptr @ixgbe_ndo_set_vf_mac._entry_ptr.29, ptr @ixgbe_pci_sriov_enable._entry, ptr @ixgbe_pci_sriov_enable._entry.40, ptr @ixgbe_pci_sriov_enable._entry_ptr, ptr @ixgbe_pci_sriov_enable._entry_ptr.41, ptr @ixgbe_rcv_msg_from_vf._entry, ptr @ixgbe_rcv_msg_from_vf._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @switch.table.ixgbe_disable_sriov], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_enable_sriov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_disable_sriov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ndo_set_vf_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ndo_set_vf_mac._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ndo_set_vf_mac._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ndo_set_vf_mac._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ndo_set_vf_mac._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ndo_set_vf_mac._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ndo_set_vf_mac._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_check_vf_rate_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_pci_sriov_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_pci_sriov_enable._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_rcv_msg_from_vf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_enable_port_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_enable_port_vlan._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_enable_port_vlan._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_disable_sriov to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_enable_sriov(ptr noundef %adapter, i32 noundef %max_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %1) #10
  %2 = or i32 %call, %max_vfs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #13
  br label %if.end16

if.else:                                          ; preds = %if.end
  %6 = tail call i32 @llvm.umin.i32(i32 %max_vfs, i32 63)
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %call6 = tail call i32 @pci_enable_sriov(ptr noundef %8, i32 noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else.if.end16_crit_edge, label %do.body9

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.body9:                                         ; preds = %if.else
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %msg_enable, align 4
  %11 = and i16 %10, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool10.not = icmp eq i16 %11, 0
  br i1 %tobool10.not, label %do.body9.cleanup32_crit_edge, label %if.then11

do.body9.cleanup32_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.then11:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.5, i32 noundef %call6) #13
  br label %cleanup32

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.then3
  %num_vfs.0 = phi i32 [ %call, %if.then3 ], [ %6, %if.else.if.end16_crit_edge ]
  %call17 = tail call fastcc i32 @__ixgbe_enable_sriov(ptr noundef %adapter, i32 noundef %num_vfs.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %do.body21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ixgbe_get_vfs(ptr noundef %adapter)
  br label %cleanup32

do.body21:                                        ; preds = %if.end16
  %msg_enable22 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %14 = ptrtoint ptr %msg_enable22 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %msg_enable22, align 4
  %16 = and i16 %15, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool25.not = icmp eq i16 %16, 0
  br i1 %tobool25.not, label %do.body21.do.end30_crit_edge, label %if.then26

do.body21.do.end30_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %netdev27 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %17 = ptrtoint ptr %netdev27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev27, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.6) #13
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body21.do.end30_crit_edge
  %call31 = tail call i32 @ixgbe_disable_sriov(ptr noundef %adapter)
  br label %cleanup32

cleanup32:                                        ; preds = %do.end30, %if.then19, %if.then11, %do.body9.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ixgbe_enable_sriov(ptr noundef %adapter, i32 noundef %num_vfs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %xdp_prog = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp_prog, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msg_enable, align 4
  %4 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 8404992
  store i32 %or, ptr %flags, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_vfs, i32 92) #10
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !117

kcalloc.exit.thread:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %vfinfo99 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %11 = ptrtoint ptr %vfinfo99 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %vfinfo99, align 16
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end4
  %12 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #14
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %13 = ptrtoint ptr %vfinfo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %vfinfo, align 16
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end8

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end7.i.i
  %num_vfs9 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 100
  %14 = ptrtoint ptr %num_vfs9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %num_vfs, ptr %num_vfs9, align 4
  %num_rar_entries.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 12
  %15 = ptrtoint ptr %num_rar_entries.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_rar_entries.i, align 4
  %add.i = add nuw nsw i32 %num_vfs, 16
  %sub.i = sub i32 %16, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i)
  %tobool.not.i = icmp eq i32 %16, %add.i
  br i1 %tobool.not.i, label %if.end8.ixgbe_alloc_vf_macvlans.exit_crit_edge, label %if.end.i

if.end8.ixgbe_alloc_vf_macvlans.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_alloc_vf_macvlans.exit

if.end.i:                                         ; preds = %if.end8
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.i, i32 20) #10
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end.i.ixgbe_alloc_vf_macvlans.exit_crit_edge, label %if.end7.i.i.i, !prof !117

if.end.i.ixgbe_alloc_vf_macvlans.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_alloc_vf_macvlans.exit

if.end7.i.i.i:                                    ; preds = %if.end.i
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #14
  %tobool2.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.i.ixgbe_alloc_vf_macvlans.exit_crit_edge, label %if.then3.i

if.end7.i.i.i.ixgbe_alloc_vf_macvlans.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_alloc_vf_macvlans.exit

if.then3.i:                                       ; preds = %if.end7.i.i.i
  %vf_mvs.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 103
  %20 = ptrtoint ptr %vf_mvs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %vf_mvs.i, ptr %vf_mvs.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 103, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vf_mvs.i, ptr %prev.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %if.then3.i
  %i.035.i = phi i32 [ %inc.i, %list_add.exit.i.for.body.i_crit_edge ], [ 0, %if.then3.i ]
  %arrayidx.i = getelementptr %struct.vf_macvlans, ptr %call8.i.i.i, i32 %i.035.i
  %vf.i = getelementptr %struct.vf_macvlans, ptr %call8.i.i.i, i32 %i.035.i, i32 1
  %22 = ptrtoint ptr %vf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %vf.i, align 4
  %free.i = getelementptr %struct.vf_macvlans, ptr %call8.i.i.i, i32 %i.035.i, i32 2
  %23 = ptrtoint ptr %free.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %free.i, align 4
  %24 = ptrtoint ptr %vf_mvs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vf_mvs.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %vf_mvs.i, ptr noundef %25) #10
  br i1 %call.i.i.i, label %if.end.i.i27.i, label %for.body.i.list_add.exit.i_crit_edge

for.body.i.list_add.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i27.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %arrayidx.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vf_mvs.i, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %vf_mvs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %arrayidx.i, ptr %vf_mvs.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i27.i, %for.body.i.list_add.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.end.i, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %mv_list9.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 104
  %30 = ptrtoint ptr %mv_list9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i.i, ptr %mv_list9.i, align 4
  br label %ixgbe_alloc_vf_macvlans.exit

ixgbe_alloc_vf_macvlans.exit:                     ; preds = %for.end.i, %if.end7.i.i.i.ixgbe_alloc_vf_macvlans.exit_crit_edge, %if.end.i.ixgbe_alloc_vf_macvlans.exit_crit_edge, %if.end8.ixgbe_alloc_vf_macvlans.exit_crit_edge
  %conv10 = trunc i32 %num_vfs to i16
  %offset = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv10, ptr %offset, align 2
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %ixgbe_alloc_vf_macvlans.exit.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

ixgbe_alloc_vf_macvlans.exit.ixgbe_write_reg.exit_crit_edge: ; preds = %ixgbe_alloc_vf_macvlans.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %ixgbe_alloc_vf_macvlans.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i = getelementptr i8, ptr %33, i32 33312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #10, !srcloc !119
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %ixgbe_alloc_vf_macvlans.exit.ixgbe_write_reg.exit_crit_edge
  %bridge_mode = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 77
  %34 = ptrtoint ptr %bridge_mode to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %bridge_mode, align 8
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp = icmp eq i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %num_vfs)
  %cmp13 = icmp ult i32 %num_vfs, 16
  %or.cond = and i1 %cmp13, %cmp
  br i1 %or.cond, label %if.then15, label %if.else

if.then15:                                        ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %num_tcs = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 39, i32 1
  %37 = ptrtoint ptr %num_tcs to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %num_tcs, align 4
  br label %if.end35

if.else:                                          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %num_vfs)
  %cmp18 = icmp ult i32 %num_vfs, 32
  %num_tcs22 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 39, i32 1
  br i1 %cmp18, label %if.then20, label %if.end35.thread

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %num_tcs22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 4, ptr %num_tcs22, align 4
  br label %if.end35

if.end35.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %num_tcs22 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %num_tcs22, align 4
  %pfc_tcs33 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 39, i32 1, i32 1
  %40 = ptrtoint ptr %pfc_tcs33 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %pfc_tcs33, align 1
  %flags2108 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %41 = ptrtoint ptr %flags2108 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags2108, align 8
  %and36109 = and i32 %42, -4
  store i32 %and36109, ptr %flags2108, align 8
  br label %for.body.preheader

if.end35:                                         ; preds = %if.then20, %if.then15
  %.sink = phi i8 [ 4, %if.then20 ], [ 8, %if.then15 ]
  %pfc_tcs26 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 39, i32 1, i32 1
  %43 = ptrtoint ptr %pfc_tcs26 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink, ptr %pfc_tcs26, align 1
  %flags2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %44 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags2, align 8
  %and36 = and i32 %45, -4
  store i32 %and36, ptr %flags2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp37106.not = icmp eq i32 %num_vfs, 0
  br i1 %cmp37106.not, label %if.end35.do.body47_crit_edge, label %if.end35.for.body.preheader_crit_edge

if.end35.for.body.preheader_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end35.do.body47_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47

for.body.preheader:                               ; preds = %if.end35.for.body.preheader_crit_edge, %if.end35.thread
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0107 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %46 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vfinfo, align 16
  %spoofchk_enabled = getelementptr %struct.vf_data_storage, ptr %47, i32 %i.0107, i32 9
  %48 = ptrtoint ptr %spoofchk_enabled to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %spoofchk_enabled, align 4
  %49 = load ptr, ptr %vfinfo, align 16
  %rss_query_enabled = getelementptr %struct.vf_data_storage, ptr %49, i32 %i.0107, i32 10
  %50 = ptrtoint ptr %rss_query_enabled to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %rss_query_enabled, align 1
  %51 = load ptr, ptr %vfinfo, align 16
  %trusted = getelementptr %struct.vf_data_storage, ptr %51, i32 %i.0107, i32 11
  %52 = ptrtoint ptr %trusted to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %trusted, align 2
  %53 = load ptr, ptr %vfinfo, align 16
  %xcast_mode = getelementptr %struct.vf_data_storage, ptr %53, i32 %i.0107, i32 12
  %54 = ptrtoint ptr %xcast_mode to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %xcast_mode, align 4
  %inc = add nuw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %num_vfs
  br i1 %exitcond.not, label %for.body.do.body47_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.do.body47_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47

do.body47:                                        ; preds = %for.body.do.body47_crit_edge, %if.end35.do.body47_crit_edge
  %msg_enable48 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %55 = ptrtoint ptr %msg_enable48 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %msg_enable48, align 4
  %57 = and i16 %56, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool51.not = icmp eq i16 %57, 0
  br i1 %tobool51.not, label %do.body47.cleanup_crit_edge, label %if.then52

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then52:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %netdev53 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %58 = ptrtoint ptr %netdev53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %netdev53, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %59, ptr noundef nonnull @.str.36, i32 noundef %num_vfs) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body47.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %do.body47.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_get_vfs(ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  %vf_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %vendor2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor2, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vf_id) #10
  %4 = ptrtoint ptr %vf_id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %vf_id, align 2, !annotation !120
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %call to i32
  %add = add nuw nsw i32 %conv, 26
  %call3 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %vf_id) #10
  %conv4 = zext i16 %3 to i32
  %5 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vf_id, align 2
  %conv5 = zext i16 %6 to i32
  %call6 = call ptr @pci_get_device(i32 noundef %conv4, i32 noundef %conv5, ptr noundef null) #10
  %tobool7.not42 = icmp eq ptr %call6, null
  br i1 %tobool7.not42, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %num_vfs = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 100
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vf.045 = phi i32 [ 0, %for.body.lr.ph ], [ %vf.1, %for.inc.for.body_crit_edge ]
  %vfdev.043 = phi ptr [ %call6, %for.body.lr.ph ], [ %call22, %for.inc.for.body_crit_edge ]
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %vfdev.043, i32 0, i32 49
  %7 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %7, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %8 = and i40 %bf.load, 65536
  %tobool8.not = icmp eq i40 %8, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %9 = getelementptr inbounds %struct.pci_dev, ptr %vfdev.043, i32 0, i32 66
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %cmp.not = icmp eq ptr %11, %1
  br i1 %cmp.not, label %if.end13, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %vf.045, i32 %13)
  %cmp14.not = icmp ult i32 %vf.045, %13
  br i1 %cmp14.not, label %if.end17, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = call ptr @pci_dev_get(ptr noundef nonnull %vfdev.043) #10
  %14 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vfinfo, align 16
  %arrayidx = getelementptr %struct.vf_data_storage, ptr %15, i32 %vf.045
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vfdev.043, ptr %arrayidx, align 4
  %inc = add nuw i32 %vf.045, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %if.end13.for.inc_crit_edge, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %vf.1 = phi i32 [ %vf.045, %if.end10.for.inc_crit_edge ], [ %vf.045, %if.end13.for.inc_crit_edge ], [ %inc, %if.end17 ], [ %vf.045, %for.body.for.inc_crit_edge ]
  %17 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vf_id, align 2
  %conv21 = zext i16 %18 to i32
  %call22 = call ptr @pci_get_device(i32 noundef %conv4, i32 noundef %conv21, ptr noundef nonnull %vfdev.043) #10
  %tobool7.not = icmp eq ptr %call22, null
  br i1 %tobool7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vf_id) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_disable_sriov(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vfs1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 100
  %0 = ptrtoint ptr %num_vfs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs1, align 4
  store i32 0, ptr %num_vfs1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp74.not = icmp eq i32 %1, 0
  br i1 %cmp74.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %vf.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfinfo, align 16
  %arrayidx = getelementptr %struct.vf_data_storage, ptr %3, i32 %vf.075
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  tail call void @pci_dev_put(ptr noundef nonnull %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %vf.075, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %vfinfo7 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %7 = ptrtoint ptr %vfinfo7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vfinfo7, align 16
  tail call void @kfree(ptr noundef %8) #10
  %9 = ptrtoint ptr %vfinfo7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vfinfo7, align 16
  %mv_list = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 104
  %10 = ptrtoint ptr %mv_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mv_list, align 4
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %mv_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %mv_list, align 4
  %flags = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %for.end.cleanup42_crit_edge, label %if.end12

for.end.cleanup42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

if.end12:                                         ; preds = %for.end
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_vfs_assigned(ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  br i1 %tobool13.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  br label %cleanup42

if.end16:                                         ; preds = %if.end12
  tail call void @pci_disable_sriov(ptr noundef %18) #10
  %num_rx_pools = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 26
  %19 = ptrtoint ptr %num_rx_pools to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_rx_pools, align 4
  %fwd_bitmask = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 112
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %fwd_bitmask, i32 noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp19 = icmp eq i32 %call4.i, 1
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and24 = and i32 %22, -8404993
  store i32 %and24, ptr %flags, align 4
  %type.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 8
  %switch.tableidx = add i32 %24, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %25 = icmp ult i32 %switch.tableidx, 6
  br i1 %25, label %switch.lookup, label %if.then20.ixgbe_max_rss_indices.exit_crit_edge

if.then20.ixgbe_max_rss_indices.exit_crit_edge:   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_max_rss_indices.exit

switch.lookup:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_disable_sriov, i32 0, i32 %switch.tableidx
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ixgbe_max_rss_indices.exit

ixgbe_max_rss_indices.exit:                       ; preds = %switch.lookup, %if.then20.ixgbe_max_rss_indices.exit_crit_edge
  %retval.0.i71 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then20.ixgbe_max_rss_indices.exit_crit_edge ]
  %call.i.i.i72 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %27 = load volatile i32, ptr @__num_online_cpus, align 4
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %retval.0.i71)
  br label %if.end37

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i73 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %29 = load volatile i32, ptr @__num_online_cpus, align 4
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 4)
  br label %if.end37

if.end37:                                         ; preds = %if.else, %ixgbe_max_rss_indices.exit
  %rss.0 = phi i32 [ %28, %ixgbe_max_rss_indices.exit ], [ %30, %if.else ]
  %offset = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %offset, align 2
  %conv39 = trunc i32 %rss.0 to i16
  %arrayidx41 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2
  %32 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv39, ptr %arrayidx41, align 128
  tail call void @msleep(i32 noundef 100) #10
  br label %cleanup42

cleanup42:                                        ; preds = %if.end37, %do.end, %for.end.cleanup42_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end37 ], [ 0, %for.end.cleanup42_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_pci_sriov_configure(ptr noundef %dev, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp = icmp eq i32 %num_vfs, 0
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %call1.i = tail call i32 @pci_num_vf(ptr noundef %dev) #10
  %call2.i = tail call i32 @ixgbe_disable_sriov(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i:                                  ; preds = %if.then
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp eq i32 %3, %5
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @pci_num_vf(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call1.i, %call4.i
  br i1 %cmp5.not.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  tail call void @ixgbe_sriov_reinit(ptr noundef %1) #10
  br label %return

if.else:                                          ; preds = %entry
  %call1.i5 = tail call i32 @pci_num_vf(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i5, i32 %num_vfs)
  %cmp.not.i7 = icmp eq i32 %call1.i5, %num_vfs
  %or.cond.i = or i1 %tobool.not.i6, %cmp.not.i7
  br i1 %or.cond.i, label %if.else.i, label %if.then.i9

if.then.i9:                                       ; preds = %if.else
  %call2.i8 = tail call i32 @ixgbe_disable_sriov(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i8)
  %phi.cmp.i = icmp eq i32 %call2.i8, 0
  br i1 %phi.cmp.i, label %if.then.i9.if.end10.i_crit_edge, label %if.then.i9.return_crit_edge

if.then.i9.return_crit_edge:                      ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i9.if.end10.i_crit_edge:                  ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.else.i:                                        ; preds = %if.else
  %tobool.not.not.i = xor i1 %tobool.not.i6, true
  %or.cond83.i = and i1 %cmp.not.i7, %tobool.not.not.i
  br i1 %or.cond83.i, label %if.else.i.return_crit_edge, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end10.i:                                       ; preds = %if.else.i.if.end10.i_crit_edge, %if.then.i9.if.end10.i_crit_edge
  %hw_tcs.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 41
  %6 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_tcs.i, align 4
  %num_rx_pools11.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %num_rx_pools11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_rx_pools11.i, align 4
  %fwd_bitmask.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 112
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %fwd_bitmask.i, i32 noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp13.i = icmp ugt i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp16.i = icmp ugt i8 %7, 1
  %cond.i = select i1 %cmp16.i, i32 32, i32 64
  %cond18.i = select i1 %cmp13.i, i32 16, i32 %cond.i
  %sub.i = sub i32 %cond18.i, %call4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %num_vfs)
  %cmp19.i = icmp slt i32 %sub.i, %num_vfs
  br i1 %cmp19.i, label %do.end.i, label %if.end26.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %7 to i32
  %pdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %sub24.i = add i32 %call4.i.i, -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.37, i32 noundef %conv.i, i32 noundef %sub24.i, i32 noundef %sub.i) #13
  br label %return

if.end26.i:                                       ; preds = %if.end10.i
  %call27.i = tail call fastcc i32 @__ixgbe_enable_sriov(ptr noundef %1, i32 noundef %num_vfs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %for.cond.preheader.i, label %if.end26.i.return_crit_edge

if.end26.i.return_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

for.cond.preheader.i:                             ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp3187.i = icmp sgt i32 %num_vfs, 0
  br i1 %cmp3187.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.088.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %and.i84.i = and i32 %i.088.i, 63
  %vfinfo.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %13, i32 0, i32 101
  %14 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vfinfo.i.i, align 16
  %vf_mac_addresses.i.i = getelementptr %struct.vf_data_storage, ptr %15, i32 %and.i84.i, i32 1
  %16 = call ptr @memset(ptr %vf_mac_addresses.i.i, i32 0, i32 6)
  %inc.i = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_vfs
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @ixgbe_sriov_reinit(ptr noundef %1) #10
  %call34.i = tail call i32 @pci_enable_sriov(ptr noundef %dev, i32 noundef %num_vfs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end42.i, label %do.end39.i

do.end39.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev40.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %pdev40.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev40.i, align 8
  %dev41.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev41.i, ptr noundef nonnull @.str.5, i32 noundef %call34.i) #13
  br label %return

if.end42.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ixgbe_get_vfs(ptr noundef %1) #10
  br label %return

return:                                           ; preds = %if.end42.i, %do.end39.i, %if.end26.i.return_crit_edge, %do.end.i, %if.else.i.return_crit_edge, %if.then.i9.return_crit_edge, %if.then.i, %lor.lhs.false.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.then.return_crit_edge ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.then.i ], [ -1, %do.end.i ], [ %call34.i, %do.end39.i ], [ %num_vfs, %if.end42.i ], [ %num_vfs, %if.else.i.return_crit_edge ], [ -1, %if.then.i9.return_crit_edge ], [ %call27.i, %if.end26.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_restore_vf_multicasts(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %num_vfs = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 100
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp55.not = icmp eq i32 %1, 0
  br i1 %cmp55.not, label %entry.for.end26_crit_edge, label %for.body.lr.ph

entry.for.end26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

for.body.lr.ph:                                   ; preds = %entry
  %vfinfo2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %mta_in_use = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 3, i32 2
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit51.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc25, %ixgbe_write_reg.exit51.for.body_crit_edge ]
  %mul = shl i32 %i.056, 2
  %add = add i32 %mul, 61440
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add) #10
  %2 = ptrtoint ptr %vfinfo2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfinfo2, align 16
  %num_vf_mc_hashes = getelementptr %struct.vf_data_storage, ptr %3, i32 %i.056, i32 3
  %4 = ptrtoint ptr %num_vf_mc_hashes to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_vf_mc_hashes, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp453.not = icmp eq i16 %5, 0
  br i1 %cmp453.not, label %for.body.for.end_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body6:                                        ; preds = %ixgbe_write_reg.exit.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %j.054 = phi i32 [ %inc18, %ixgbe_write_reg.exit.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %6 = ptrtoint ptr %mta_in_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mta_in_use, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %mta_in_use, align 4
  %arrayidx7 = getelementptr %struct.vf_data_storage, ptr %3, i32 %i.056, i32 2, i32 %j.054
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %9 to i32
  %10 = lshr i32 %conv8, 3
  %mul13 = and i32 %10, 508
  %add14 = or i32 %mul13, 20992
  %call15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add14) #10
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %for.body6.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body6.ixgbe_write_reg.exit_crit_edge:         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  %and12 = and i32 %conv8, 31
  %shl = shl nuw i32 1, %and12
  %or = or i32 %shl, %call15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #10, !srcloc !119
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body6.ixgbe_write_reg.exit_crit_edge
  %inc18 = add nuw nsw i32 %j.054, 1
  %14 = ptrtoint ptr %num_vf_mc_hashes to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_vf_mc_hashes, align 2
  %conv = zext i16 %15 to i32
  %cmp4 = icmp ult i32 %inc18, %conv
  br i1 %cmp4, label %ixgbe_write_reg.exit.for.body6_crit_edge, label %ixgbe_write_reg.exit.for.end_crit_edge

ixgbe_write_reg.exit.for.end_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

ixgbe_write_reg.exit.for.body6_crit_edge:         ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.end:                                          ; preds = %ixgbe_write_reg.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %.lcssa = phi i16 [ 0, %for.body.for.end_crit_edge ], [ %15, %ixgbe_write_reg.exit.for.end_crit_edge ]
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i48 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i48, label %for.end.ixgbe_write_reg.exit51_crit_edge, label %do.body1.i50

for.end.ixgbe_write_reg.exit51_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit51

do.body1.i50:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.lcssa)
  %tobool.not = icmp eq i16 %.lcssa, 0
  %and21 = and i32 %call, -33554433
  %masksel = select i1 %tobool.not, i32 0, i32 33554432
  %vmolr.0 = or i32 %masksel, %and21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %vmolr.0) #10
  %add.ptr.i49 = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %18) #10, !srcloc !119
  br label %ixgbe_write_reg.exit51

ixgbe_write_reg.exit51:                           ; preds = %do.body1.i50, %for.end.ixgbe_write_reg.exit51_crit_edge
  %inc25 = add nuw i32 %i.056, 1
  %19 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_vfs, align 4
  %cmp = icmp ult i32 %inc25, %20
  br i1 %cmp, label %ixgbe_write_reg.exit51.for.body_crit_edge, label %ixgbe_write_reg.exit51.for.end26_crit_edge

ixgbe_write_reg.exit51.for.end26_crit_edge:       ; preds = %ixgbe_write_reg.exit51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

ixgbe_write_reg.exit51.for.body_crit_edge:        ; preds = %ixgbe_write_reg.exit51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end26:                                        ; preds = %ixgbe_write_reg.exit51.for.end26_crit_edge, %entry.for.end26_crit_edge
  tail call void @ixgbe_full_sync_mac_table(ptr noundef %adapter) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_full_sync_mac_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ixgbe_vf_configuration(ptr nocapture noundef readonly %pdev, i32 noundef %event_mask) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %event_mask, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %and = and i32 %event_mask, 63
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 101
  %2 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfinfo, align 16
  %vf_mac_addresses = getelementptr %struct.vf_data_storage, ptr %3, i32 %and, i32 1
  %4 = call ptr @memset(ptr %vf_mac_addresses, i32 0, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_msg_task(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca i32, align 4
  %msgbuf.i.i = alloca [4 x i32], align 4
  %msgbuf.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %num_vfs = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 100
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp202.not = icmp eq i32 %1, 0
  br i1 %cmp202.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vfinfo.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %arrayidx.i = getelementptr inbounds i32, ptr %msgbuf.i, i32 1
  %type.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %msg_enable.i39 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %netdev.i40 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %rss_key4.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 116
  %rss_indir_tbl.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 115
  %hw_tcs.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 41
  %mask.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 2
  %arrayidx16.i = getelementptr inbounds i32, ptr %msgbuf.i, i32 2
  %default_up.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 111
  %arrayidx32.i = getelementptr inbounds i32, ptr %msgbuf.i, i32 3
  %arrayidx37.i = getelementptr inbounds i32, ptr %msgbuf.i, i32 4
  %set_mac_anti_spoofing.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 0, i32 50
  %set_vlan_anti_spoofing.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 0, i32 51
  %vf_mvs.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 103
  %set_vfta.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 0, i32 48
  %offset.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %flags2.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %arrayidx3.i.i = getelementptr inbounds [4 x i32], ptr %msgbuf.i.i, i32 0, i32 1
  %mc_filter_type.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 9
  %arrayidx81.i.i = getelementptr inbounds [4 x i32], ptr %msgbuf.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vf.0203 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = trunc i32 %vf.0203 to i16
  %call = call i32 @ixgbe_check_for_rst(ptr noundef %hw1, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ixgbe_vf_reset_event(ptr noundef %adapter, i32 noundef %vf.0203)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %call3 = call i32 @ixgbe_check_for_msg(ptr noundef %hw1, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msgbuf.i) #10
  %2 = call ptr @memset(ptr %msgbuf.i, i32 255, i32 64)
  %call.i = call i32 @ixgbe_read_mbx(ptr noundef %hw1, ptr noundef nonnull %msgbuf.i, i16 noundef zeroext 16, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %ixgbe_rcv_msg_from_vf.exit

if.end.i:                                         ; preds = %if.then5
  %3 = ptrtoint ptr %msgbuf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msgbuf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %4)
  %tobool5.not.i = icmp ult i32 %4, 1073741824
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.ixgbe_rcv_msg_from_vf.exit_crit_edge

if.end.i.ixgbe_rcv_msg_from_vf.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_rcv_msg_from_vf.exit

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #10
  %5 = ptrtoint ptr %msgbuf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msgbuf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  %7 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vfinfo.i.i, align 16
  br i1 %cmp.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end7.i
  %vf_mac_addresses.i.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msgbuf.i.i) #10
  %9 = call ptr @memset(ptr %msgbuf.i.i, i32 0, i32 16)
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mask.i, align 4
  %12 = sub i16 0, %11
  %13 = and i16 %11, %12
  %and.i.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %msg_enable.i39, align 4
  %16 = and i16 %15, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i.i, label %if.then11.i.do.end.i.i_crit_edge, label %if.then.i.i

if.then11.i.do.end.i.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.45, i32 noundef %vf.0203) #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.then11.i.do.end.i.i_crit_edge
  call fastcc void @ixgbe_vf_reset_event(ptr noundef %adapter, i32 noundef %vf.0203) #10
  %mul.i.i.i = shl i32 %vf.0203, 6
  %add.i.i.i = add i32 %mul.i.i.i, 77824
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %ixgbe_write_reg.exit.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i
  %word.06.i.i.i = phi i32 [ 0, %do.end.i.i ], [ %inc.i.i.i, %ixgbe_write_reg.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.i.i, label %for.body.i.i.i.ixgbe_write_reg.exit.i.i.i_crit_edge, label %do.body1.i.i.i.i

for.body.i.i.i.ixgbe_write_reg.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit.i.i.i

do.body1.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.i.i = shl nuw nsw i32 %word.06.i.i.i, 2
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %shl.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 %add2.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #10, !srcloc !119
  br label %ixgbe_write_reg.exit.i.i.i

ixgbe_write_reg.exit.i.i.i:                       ; preds = %do.body1.i.i.i.i, %for.body.i.i.i.ixgbe_write_reg.exit.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %word.06.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %ixgbe_vf_clear_mbx.exit.i.i, label %ixgbe_write_reg.exit.i.i.i.for.body.i.i.i_crit_edge

ixgbe_write_reg.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

ixgbe_vf_clear_mbx.exit.i.i:                      ; preds = %ixgbe_write_reg.exit.i.i.i
  %call.i.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #10
  %21 = ptrtoint ptr %vf_mac_addresses.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vf_mac_addresses.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %vf_mac_addresses.i.i, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %24 to i32
  %or.i.i.i = or i32 %22, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %ixgbe_vf_clear_mbx.exit.i.i.if.end12.i.i_crit_edge, label %if.then10.i.i

ixgbe_vf_clear_mbx.exit.i.i.if.end12.i.i_crit_edge: ; preds = %ixgbe_vf_clear_mbx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %ixgbe_vf_clear_mbx.exit.i.i
  %25 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vfinfo.i.i, align 16
  %vf_mac_addresses.i.i.i = getelementptr %struct.vf_data_storage, ptr %26, i32 %vf.0203, i32 1
  %call.i3.i.i = call i32 @ixgbe_del_mac_filter(ptr noundef %adapter, ptr noundef %vf_mac_addresses.i.i.i, i16 noundef zeroext %conv) #10
  %call3.i.i.i = call i32 @ixgbe_add_mac_filter(ptr noundef %adapter, ptr noundef %vf_mac_addresses.i.i, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i.i)
  %cmp.i4.i.i = icmp sgt i32 %call3.i.i.i, -1
  %27 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vfinfo.i.i, align 16
  %vf_mac_addresses7.i.i.i = getelementptr %struct.vf_data_storage, ptr %28, i32 %vf.0203, i32 1
  br i1 %cmp.i4.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = call ptr @memcpy(ptr %vf_mac_addresses7.i.i.i, ptr %vf_mac_addresses.i.i, i32 6)
  br label %if.end12.i.i

if.else.i.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = call ptr @memset(ptr %vf_mac_addresses7.i.i.i, i32 0, i32 6)
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i, %ixgbe_vf_clear_mbx.exit.i.i.if.end12.i.i_crit_edge
  %rem.i.i = and i32 %vf.0203, 31
  %31 = lshr i32 %vf.0203, 3
  %mul.i.i = and i32 %31, 536870908
  %add13.i.i = add nuw nsw i32 %mul.i.i, 33040
  %call14.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add13.i.i) #10
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i.i, label %if.end12.i.i.ixgbe_write_reg.exit.i.i_crit_edge, label %do.body1.i.i.i

if.end12.i.i.ixgbe_write_reg.exit.i.i_crit_edge:  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i = or i32 %call14.i.i, %shl.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %34 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %add.ptr.i5.i.i = getelementptr i8, ptr %33, i32 %add13.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %34) #10, !srcloc !119
  br label %ixgbe_write_reg.exit.i.i

ixgbe_write_reg.exit.i.i:                         ; preds = %do.body1.i.i.i, %if.end12.i.i.ixgbe_write_reg.exit.i.i_crit_edge
  %35 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vfinfo.i.i, align 16
  %pf_vlan.i.i = getelementptr %struct.vf_data_storage, ptr %36, i32 %vf.0203, i32 6
  %37 = ptrtoint ptr %pf_vlan.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pf_vlan.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool19.not.i.i = icmp eq i16 %38, 0
  %spec.select.i.i = select i1 %tobool19.not.i.i, i32 1, i32 3
  %39 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mask.i, align 4
  %41 = sub i16 0, %40
  %42 = and i16 %40, %41
  %and.i.i.i = zext i16 %42 to i32
  %mul.i7.i.i = mul i32 %vf.0203, %and.i.i.i
  %add6.i.i.i = add nuw i32 %vf.0203, 1
  %mul7.i.i.i = mul i32 %add6.i.i.i, %and.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i7.i.i, i32 %mul7.i.i.i)
  %cmp18.i.i.i = icmp ult i32 %mul.i7.i.i, %mul7.i.i.i
  br i1 %cmp18.i.i.i, label %ixgbe_write_reg.exit.i.i.for.body.i10.i.i_crit_edge, label %ixgbe_write_reg.exit.i.i.ixgbe_write_qde.exit.i.i_crit_edge

ixgbe_write_reg.exit.i.i.ixgbe_write_qde.exit.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_qde.exit.i.i

ixgbe_write_reg.exit.i.i.for.body.i10.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit.i.i
  br label %for.body.i10.i.i

for.body.i10.i.i:                                 ; preds = %ixgbe_write_reg.exit.i17.i.i.for.body.i10.i.i_crit_edge, %ixgbe_write_reg.exit.i.i.for.body.i10.i.i_crit_edge
  %i.019.i.i.i = phi i32 [ %inc.i15.i.i, %ixgbe_write_reg.exit.i17.i.i.for.body.i10.i.i_crit_edge ], [ %mul.i7.i.i, %ixgbe_write_reg.exit.i.i.for.body.i10.i.i_crit_edge ]
  %call.i8.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #10
  %43 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i9.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i9.i.i, label %for.body.i10.i.i.ixgbe_write_reg.exit.i17.i.i_crit_edge, label %do.body1.i.i14.i.i

for.body.i10.i.i.ixgbe_write_reg.exit.i17.i.i_crit_edge: ; preds = %for.body.i10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit.i17.i.i

do.body1.i.i14.i.i:                               ; preds = %for.body.i10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i11.i.i = shl i32 %i.019.i.i.i, 8
  %or.i12.i.i = or i32 %shl.i11.i.i, %spec.select.i.i
  %or9.i.i.i = or i32 %or.i12.i.i, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %45 = call i32 @llvm.bswap.i32(i32 %or9.i.i.i) #10
  %add.ptr.i.i13.i.i = getelementptr i8, ptr %44, i32 12036
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13.i.i, i32 %45) #10, !srcloc !119
  br label %ixgbe_write_reg.exit.i17.i.i

ixgbe_write_reg.exit.i17.i.i:                     ; preds = %do.body1.i.i14.i.i, %for.body.i10.i.i.ixgbe_write_reg.exit.i17.i.i_crit_edge
  %inc.i15.i.i = add i32 %i.019.i.i.i, 1
  %exitcond.not.i16.i.i = icmp eq i32 %inc.i15.i.i, %mul7.i.i.i
  br i1 %exitcond.not.i16.i.i, label %ixgbe_write_reg.exit.i17.i.i.ixgbe_write_qde.exit.i.i_crit_edge, label %ixgbe_write_reg.exit.i17.i.i.for.body.i10.i.i_crit_edge

ixgbe_write_reg.exit.i17.i.i.for.body.i10.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit.i17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i10.i.i

ixgbe_write_reg.exit.i17.i.i.ixgbe_write_qde.exit.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit.i17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_qde.exit.i.i

ixgbe_write_qde.exit.i.i:                         ; preds = %ixgbe_write_reg.exit.i17.i.i.ixgbe_write_qde.exit.i.i_crit_edge, %ixgbe_write_reg.exit.i.i.ixgbe_write_qde.exit.i.i_crit_edge
  %add24.i.i = add nuw nsw i32 %mul.i.i, 20960
  %call25.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add24.i.i) #10
  %or27.i.i = or i32 %call25.i.i, %shl.i.i
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i.i = icmp eq i32 %47, 2
  br i1 %cmp.i.i, label %if.then30.i.i, label %ixgbe_write_qde.exit.i.i.if.end46.i.i_crit_edge

ixgbe_write_qde.exit.i.i.if.end46.i.i_crit_edge:  ; preds = %ixgbe_write_qde.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i.i

if.then30.i.i:                                    ; preds = %ixgbe_write_qde.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netdev.i40, align 128
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mtu.i.i, align 4
  %add32.i.i = add i32 %51, 14
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 23
  %52 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features.i.i, align 16
  %and33.i.i = and i64 %53, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33.i.i)
  %tobool34.not.i.i = icmp eq i64 %and33.i.i, 0
  %54 = call i32 @llvm.smax.i32(i32 %add32.i.i, i32 3072) #10
  %pf_max_frame.0.i.i = select i1 %tobool34.not.i.i, i32 %add32.i.i, i32 %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %pf_max_frame.0.i.i)
  %cmp39.i.i = icmp sgt i32 %pf_max_frame.0.i.i, 1514
  %neg43.i.i = xor i32 %shl.i.i, -1
  %and44.i.i = and i32 %call25.i.i, %neg43.i.i
  %reg.1.i.i = select i1 %cmp39.i.i, i32 %and44.i.i, i32 %or27.i.i
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then30.i.i, %ixgbe_write_qde.exit.i.i.if.end46.i.i_crit_edge
  %reg.2.i.i = phi i32 [ %reg.1.i.i, %if.then30.i.i ], [ %or27.i.i, %ixgbe_write_qde.exit.i.i.if.end46.i.i_crit_edge ]
  %55 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i18.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i18.i.i, label %if.end46.i.i.ixgbe_write_reg.exit21.i.i_crit_edge, label %do.body1.i20.i.i

if.end46.i.i.ixgbe_write_reg.exit21.i.i_crit_edge: ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit21.i.i

do.body1.i20.i.i:                                 ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %57 = call i32 @llvm.bswap.i32(i32 %reg.2.i.i) #10
  %add.ptr.i19.i.i = getelementptr i8, ptr %56, i32 %add24.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %57) #10, !srcloc !119
  br label %ixgbe_write_reg.exit21.i.i

ixgbe_write_reg.exit21.i.i:                       ; preds = %do.body1.i20.i.i, %if.end46.i.i.ixgbe_write_reg.exit21.i.i_crit_edge
  %58 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vfinfo.i.i, align 16
  %clear_to_send.i.i = getelementptr %struct.vf_data_storage, ptr %59, i32 %vf.0203, i32 4
  %60 = ptrtoint ptr %clear_to_send.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %clear_to_send.i.i, align 4
  %add52.i.i = add nuw nsw i32 %mul.i.i, 34704
  %call53.i.i = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add52.i.i) #10
  %61 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i22.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i22.i.i, label %ixgbe_write_reg.exit21.i.i.ixgbe_write_reg.exit25.i.i_crit_edge, label %do.body1.i24.i.i

ixgbe_write_reg.exit21.i.i.ixgbe_write_reg.exit25.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit25.i.i

do.body1.i24.i.i:                                 ; preds = %ixgbe_write_reg.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or55.i.i = or i32 %call53.i.i, %shl.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %63 = call i32 @llvm.bswap.i32(i32 %or55.i.i) #10
  %add.ptr.i23.i.i = getelementptr i8, ptr %62, i32 %add52.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 %63) #10, !srcloc !119
  br label %ixgbe_write_reg.exit25.i.i

ixgbe_write_reg.exit25.i.i:                       ; preds = %do.body1.i24.i.i, %ixgbe_write_reg.exit21.i.i.ixgbe_write_reg.exit25.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp5838.not.i.i = icmp eq i16 %13, 0
  br i1 %cmp5838.not.i.i, label %ixgbe_write_reg.exit25.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

ixgbe_write_reg.exit25.i.i.for.end.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %ixgbe_write_reg.exit25.i.i
  %mul60.i.i = mul i32 %vf.0203, %and.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %ixgbe_write_reg.exit33.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.039.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %ixgbe_write_reg.exit33.i.i.for.body.i.i_crit_edge ]
  %add61.i.i = add i32 %i.039.i.i, %mul60.i.i
  %mul62.i.i = shl i32 %add61.i.i, 6
  %64 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i26.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i26.i.i, label %for.body.i.i.ixgbe_write_reg.exit29.i.i_crit_edge, label %do.body1.i28.i.i

for.body.i.i.ixgbe_write_reg.exit29.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit29.i.i

do.body1.i28.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add63.i.i = add i32 %mul62.i.i, 24636
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %add.ptr.i27.i.i = getelementptr i8, ptr %65, i32 %add63.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #10, !srcloc !119
  br label %ixgbe_write_reg.exit29.i.i

ixgbe_write_reg.exit29.i.i:                       ; preds = %do.body1.i28.i.i, %for.body.i.i.ixgbe_write_reg.exit29.i.i_crit_edge
  %66 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i30.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i30.i.i, label %ixgbe_write_reg.exit29.i.i.ixgbe_write_reg.exit33.i.i_crit_edge, label %do.body1.i32.i.i

ixgbe_write_reg.exit29.i.i.ixgbe_write_reg.exit33.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit33.i.i

do.body1.i32.i.i:                                 ; preds = %ixgbe_write_reg.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add67.i.i = add i32 %mul62.i.i, 24632
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %add.ptr.i31.i.i = getelementptr i8, ptr %67, i32 %add67.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i.i, i32 0) #10, !srcloc !119
  br label %ixgbe_write_reg.exit33.i.i

ixgbe_write_reg.exit33.i.i:                       ; preds = %do.body1.i32.i.i, %ixgbe_write_reg.exit29.i.i.ixgbe_write_reg.exit33.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.039.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %and.i.i
  br i1 %exitcond.not.i.i, label %ixgbe_write_reg.exit33.i.i.for.end.i.i_crit_edge, label %ixgbe_write_reg.exit33.i.i.for.body.i.i_crit_edge

ixgbe_write_reg.exit33.i.i.for.body.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

ixgbe_write_reg.exit33.i.i.for.end.i.i_crit_edge: ; preds = %ixgbe_write_reg.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %ixgbe_write_reg.exit33.i.i.for.end.i.i_crit_edge, %ixgbe_write_reg.exit25.i.i.for.end.i.i_crit_edge
  %68 = ptrtoint ptr %vf_mac_addresses.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vf_mac_addresses.i.i, align 4
  %70 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i35.i.i = zext i16 %71 to i32
  %or.i36.i.i = or i32 %69, %conv.i35.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i36.i.i)
  %cmp.i37.i.i = icmp eq i32 %or.i36.i.i, 0
  br i1 %cmp.i37.i.i, label %for.end.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

for.end.i.i.if.else.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %for.end.i.i
  %72 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vfinfo.i.i, align 16
  %pf_set_mac.i.i = getelementptr %struct.vf_data_storage, ptr %73, i32 %vf.0203, i32 5
  %74 = ptrtoint ptr %pf_set_mac.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %pf_set_mac.i.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool72.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool72.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then74.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then74.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %msgbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -2147483647, ptr %msgbuf.i.i, align 4
  %77 = call ptr @memcpy(ptr %arrayidx3.i.i, ptr %vf_mac_addresses.i.i, i32 6)
  br label %ixgbe_vf_reset_msg.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %for.end.i.i.if.else.i.i_crit_edge
  %78 = ptrtoint ptr %msgbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1073741825, ptr %msgbuf.i.i, align 4
  br label %ixgbe_vf_reset_msg.exit.i

ixgbe_vf_reset_msg.exit.i:                        ; preds = %if.else.i.i, %if.then74.i.i
  %79 = ptrtoint ptr %mc_filter_type.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mc_filter_type.i.i, align 4
  %81 = ptrtoint ptr %arrayidx81.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx81.i.i, align 4
  %call84.i.i = call i32 @ixgbe_write_mbx(ptr noundef %hw1, ptr noundef nonnull %msgbuf.i.i, i16 noundef zeroext 4, i16 noundef zeroext %conv) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msgbuf.i.i) #10
  br label %ixgbe_rcv_msg_from_vf.exit

if.end13.i:                                       ; preds = %if.end7.i
  %clear_to_send.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 4
  %82 = ptrtoint ptr %clear_to_send.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %clear_to_send.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool15.not.i = icmp eq i8 %83, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end21.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %6, 1073741824
  %84 = ptrtoint ptr %msgbuf.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i, ptr %msgbuf.i, align 4
  %call20.i = call i32 @ixgbe_write_mbx(ptr noundef %hw1, ptr noundef nonnull %msgbuf.i, i16 noundef zeroext 1, i16 noundef zeroext %conv) #10
  br label %ixgbe_rcv_msg_from_vf.exit

if.end21.i:                                       ; preds = %if.end13.i
  %trunc.i = trunc i32 %6 to i16
  %85 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %do.body59.i [
    i16 2, label %sw.bb.i
    i16 3, label %sw.bb26.i
    i16 4, label %sw.bb29.i
    i16 5, label %sw.bb32.i
    i16 6, label %sw.bb35.i
    i16 8, label %sw.bb38.i
    i16 9, label %sw.bb41.i
    i16 10, label %sw.bb44.i
    i16 11, label %sw.bb47.i
    i16 12, label %sw.bb50.i
    i16 13, label %sw.bb53.i
    i16 14, label %sw.bb56.i
  ]

sw.bb.i:                                          ; preds = %if.end21.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 4
  %88 = and i32 %87, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.i.not.i.i163 = icmp eq i32 %88, 0
  br i1 %tobool.i.not.i.i163, label %is_valid_ether_addr.exit.i168, label %sw.bb.i.do.body.i171_crit_edge

sw.bb.i.do.body.i171_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i171

is_valid_ether_addr.exit.i168:                    ; preds = %sw.bb.i
  %89 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx16.i, align 4
  %conv.i.i.i165 = zext i16 %90 to i32
  %or.i.i.i166 = or i32 %87, %conv.i.i.i165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i166)
  %cmp.i.i.not.i167 = icmp eq i32 %or.i.i.i166, 0
  br i1 %cmp.i.i.not.i167, label %is_valid_ether_addr.exit.i168.do.body.i171_crit_edge, label %if.end2.i

is_valid_ether_addr.exit.i168.do.body.i171_crit_edge: ; preds = %is_valid_ether_addr.exit.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i171

do.body.i171:                                     ; preds = %is_valid_ether_addr.exit.i168.do.body.i171_crit_edge, %sw.bb.i.do.body.i171_crit_edge
  %91 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %msg_enable.i39, align 4
  %93 = and i16 %92, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool.not.i170 = icmp eq i16 %93, 0
  br i1 %tobool.not.i170, label %do.body.i171.if.then69.i_crit_edge, label %if.then1.i

do.body.i171.if.then69.i_crit_edge:               ; preds = %do.body.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then1.i:                                       ; preds = %do.body.i171
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %95, ptr noundef nonnull @.str.46, i32 noundef %vf.0203) #13
  br label %if.then69.i

if.end2.i:                                        ; preds = %is_valid_ether_addr.exit.i168
  %pf_set_mac.i174 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 5
  %96 = ptrtoint ptr %pf_set_mac.i174 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pf_set_mac.i174, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool4.not.i = icmp eq i8 %97, 0
  br i1 %tobool4.not.i, label %if.end2.i.if.end24.i188_crit_edge, label %land.lhs.true.i177

if.end2.i.if.end24.i188_crit_edge:                ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i188

land.lhs.true.i177:                               ; preds = %if.end2.i
  %trusted.i175 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 11
  %98 = ptrtoint ptr %trusted.i175 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %trusted.i175, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool8.not.i176 = icmp eq i8 %99, 0
  br i1 %tobool8.not.i176, label %land.lhs.true9.i, label %land.lhs.true.i177.if.end24.i188_crit_edge

land.lhs.true.i177.if.end24.i188_crit_edge:       ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i188

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i177
  %vf_mac_addresses.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 1
  %100 = ptrtoint ptr %vf_mac_addresses.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vf_mac_addresses.i, align 4
  %xor.i.i = xor i32 %101, %87
  %add.ptr.i.i178 = getelementptr i8, ptr %vf_mac_addresses.i, i32 4
  %102 = ptrtoint ptr %add.ptr.i.i178 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i.i178, align 2
  %xor37.i.i = xor i16 %103, %90
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i179 = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i179)
  %cmp.i.i180 = icmp eq i32 %or.i.i179, 0
  br i1 %cmp.i.i180, label %land.lhs.true9.i.if.end24.i188_crit_edge, label %do.body14.i183

land.lhs.true9.i.if.end24.i188_crit_edge:         ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i188

do.body14.i183:                                   ; preds = %land.lhs.true9.i
  %104 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %msg_enable.i39, align 4
  %106 = and i16 %105, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool18.not.i182 = icmp eq i16 %106, 0
  br i1 %tobool18.not.i182, label %do.body14.i183.if.then69.i_crit_edge, label %if.then19.i185

do.body14.i183.if.then69.i_crit_edge:             ; preds = %do.body14.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then19.i185:                                   ; preds = %do.body14.i183
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %108, ptr noundef nonnull @.str.47, i32 noundef %vf.0203) #13
  br label %if.then69.i

if.end24.i188:                                    ; preds = %land.lhs.true9.i.if.end24.i188_crit_edge, %land.lhs.true.i177.if.end24.i188_crit_edge, %if.end2.i.if.end24.i188_crit_edge
  %vf_mac_addresses.i.i186 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 1
  %call.i.i = call i32 @ixgbe_del_mac_filter(ptr noundef %adapter, ptr noundef %vf_mac_addresses.i.i186, i16 noundef zeroext %conv) #10
  %call3.i.i = call i32 @ixgbe_add_mac_filter(ptr noundef %adapter, ptr noundef %arrayidx.i, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i)
  %cmp.i41.i = icmp sgt i32 %call3.i.i, -1
  %109 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vfinfo.i.i, align 16
  %vf_mac_addresses7.i.i = getelementptr %struct.vf_data_storage, ptr %110, i32 %vf.0203, i32 1
  br i1 %cmp.i41.i, label %if.then.i.i189, label %if.else.i.i190

if.then.i.i189:                                   ; preds = %if.end24.i188
  call void @__sanitizer_cov_trace_pc() #12
  %111 = call ptr @memcpy(ptr %vf_mac_addresses7.i.i, ptr %arrayidx.i, i32 6)
  br label %ixgbe_set_vf_mac.exit.i

if.else.i.i190:                                   ; preds = %if.end24.i188
  call void @__sanitizer_cov_trace_pc() #12
  %112 = call ptr @memset(ptr %vf_mac_addresses7.i.i, i32 0, i32 6)
  br label %ixgbe_set_vf_mac.exit.i

ixgbe_set_vf_mac.exit.i:                          ; preds = %if.else.i.i190, %if.then.i.i189
  %call25.lobit.i = lshr i32 %call3.i.i, 31
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end21.i
  %and.i142 = lshr i32 %6, 16
  %shr.i143 = and i32 %and.i142, 255
  %mul.i145 = shl i32 %vf.0203, 2
  %add.i146 = add i32 %mul.i145, 61440
  %call.i147 = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add.i146) #10
  %113 = call i32 @llvm.umin.i32(i32 %shr.i143, i32 30) #10
  %conv.i148 = trunc i32 %113 to i16
  %num_vf_mc_hashes.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 3
  %114 = ptrtoint ptr %num_vf_mc_hashes.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i148, ptr %num_vf_mc_hashes.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp55.not.i = icmp eq i32 %113, 0
  br i1 %cmp55.not.i, label %sw.bb26.i.for.end31.i_crit_edge, label %sw.bb26.i.for.body.i152_crit_edge

sw.bb26.i.for.body.i152_crit_edge:                ; preds = %sw.bb26.i
  br label %for.body.i152

sw.bb26.i.for.end31.i_crit_edge:                  ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end31.i

for.cond9.preheader.i:                            ; preds = %for.body.i152
  %115 = ptrtoint ptr %num_vf_mc_hashes.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %.pr.i = load i16, ptr %num_vf_mc_hashes.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %cmp128.not.i = icmp eq i16 %.pr.i, 0
  br i1 %cmp128.not.i, label %for.cond9.preheader.i.for.end31.i_crit_edge, label %for.cond9.preheader.i.for.body14.i_crit_edge

for.cond9.preheader.i.for.body14.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body14.i

for.cond9.preheader.i.for.end31.i_crit_edge:      ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end31.i

for.body.i152:                                    ; preds = %for.body.i152.for.body.i152_crit_edge, %sw.bb26.i.for.body.i152_crit_edge
  %i.06.i = phi i32 [ %inc.i150, %for.body.i152.for.body.i152_crit_edge ], [ 0, %sw.bb26.i.for.body.i152_crit_edge ]
  %arrayidx7.i = getelementptr i16, ptr %arrayidx.i, i32 %i.06.i
  %116 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx7.i, align 2
  %arrayidx8.i149 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 2, i32 %i.06.i
  %118 = ptrtoint ptr %arrayidx8.i149 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %arrayidx8.i149, align 2
  %inc.i150 = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i151 = icmp eq i32 %inc.i150, %113
  br i1 %exitcond.not.i151, label %for.cond9.preheader.i, label %for.body.i152.for.body.i152_crit_edge

for.body.i152.for.body.i152_crit_edge:            ; preds = %for.body.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i152

for.body14.i:                                     ; preds = %ixgbe_write_reg.exit.i161.for.body14.i_crit_edge, %for.cond9.preheader.i.for.body14.i_crit_edge
  %i.19.i = phi i32 [ %inc30.i, %ixgbe_write_reg.exit.i161.for.body14.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body14.i_crit_edge ]
  %arrayidx16.i153 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 2, i32 %i.19.i
  %119 = ptrtoint ptr %arrayidx16.i153 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx16.i153, align 2
  %conv17.i154 = zext i16 %120 to i32
  %121 = lshr i32 %conv17.i154, 3
  %mul24.i = and i32 %121, 508
  %add25.i = or i32 %mul24.i, 20992
  %call26.i = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add25.i) #10
  %122 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i155 = icmp eq ptr %123, null
  br i1 %tobool.not.i.i.i155, label %for.body14.i.ixgbe_write_reg.exit.i161_crit_edge, label %do.body1.i.i159

for.body14.i.ixgbe_write_reg.exit.i161_crit_edge: ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit.i161

do.body1.i.i159:                                  ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %and23.i = and i32 %conv17.i154, 31
  %shl.i156 = shl nuw i32 1, %and23.i
  %or.i157 = or i32 %shl.i156, %call26.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %124 = call i32 @llvm.bswap.i32(i32 %or.i157) #10
  %add.ptr.i.i158 = getelementptr i8, ptr %123, i32 %add25.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i158, i32 %124) #10, !srcloc !119
  br label %ixgbe_write_reg.exit.i161

ixgbe_write_reg.exit.i161:                        ; preds = %do.body1.i.i159, %for.body14.i.ixgbe_write_reg.exit.i161_crit_edge
  %inc30.i = add nuw nsw i32 %i.19.i, 1
  %125 = ptrtoint ptr %num_vf_mc_hashes.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %num_vf_mc_hashes.i, align 2
  %conv11.i = zext i16 %126 to i32
  %cmp12.i160 = icmp ult i32 %inc30.i, %conv11.i
  br i1 %cmp12.i160, label %ixgbe_write_reg.exit.i161.for.body14.i_crit_edge, label %ixgbe_write_reg.exit.i161.for.end31.i_crit_edge

ixgbe_write_reg.exit.i161.for.end31.i_crit_edge:  ; preds = %ixgbe_write_reg.exit.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end31.i

ixgbe_write_reg.exit.i161.for.body14.i_crit_edge: ; preds = %ixgbe_write_reg.exit.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.end31.i:                                      ; preds = %ixgbe_write_reg.exit.i161.for.end31.i_crit_edge, %for.cond9.preheader.i.for.end31.i_crit_edge, %sw.bb26.i.for.end31.i_crit_edge
  %127 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i1.i = icmp eq ptr %128, null
  br i1 %tobool.not.i.i1.i, label %for.end31.i.if.else.i_crit_edge, label %do.body1.i3.i

for.end31.i.if.else.i_crit_edge:                  ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

do.body1.i3.i:                                    ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %or32.i = or i32 %call.i147, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %129 = call i32 @llvm.bswap.i32(i32 %or32.i) #10
  %add.ptr.i2.i = getelementptr i8, ptr %128, i32 %add.i146
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %129) #10, !srcloc !119
  br label %if.else.i

sw.bb29.i:                                        ; preds = %if.end21.i
  %and.i119 = lshr i32 %6, 16
  %shr.i120 = and i32 %and.i119, 255
  %130 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i, align 4
  %and2.i = and i32 %131, 4095
  %pf_vlan.i122 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 6
  %132 = ptrtoint ptr %pf_vlan.i122 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %pf_vlan.i122, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool.not.i123 = icmp eq i16 %133, 0
  br i1 %tobool.not.i123, label %lor.lhs.false.i126, label %sw.bb29.i.do.body.i129_crit_edge

sw.bb29.i.do.body.i129_crit_edge:                 ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i129

lor.lhs.false.i126:                               ; preds = %sw.bb29.i
  %134 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %hw_tcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool5.not.i125 = icmp eq i8 %135, 0
  br i1 %tobool5.not.i125, label %if.end10.i134, label %lor.lhs.false.i126.do.body.i129_crit_edge

lor.lhs.false.i126.do.body.i129_crit_edge:        ; preds = %lor.lhs.false.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i129

do.body.i129:                                     ; preds = %lor.lhs.false.i126.do.body.i129_crit_edge, %sw.bb29.i.do.body.i129_crit_edge
  %136 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %msg_enable.i39, align 4
  %138 = and i16 %137, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool8.not.i128 = icmp eq i16 %138, 0
  br i1 %tobool8.not.i128, label %do.body.i129.if.then69.i_crit_edge, label %if.then9.i131

do.body.i129.if.then69.i_crit_edge:               ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then9.i131:                                    ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %140, ptr noundef nonnull @.str.48, i32 noundef %vf.0203) #13
  br label %if.then69.i

if.end10.i134:                                    ; preds = %lor.lhs.false.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool11.not.i132 = icmp eq i32 %and2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i120)
  %tobool12.not.i = icmp eq i32 %shr.i120, 0
  %or.cond.i133 = select i1 %tobool11.not.i132, i1 %tobool12.not.i, i1 false
  br i1 %or.cond.i133, label %if.end10.i134.if.else.i_crit_edge, label %if.end14.i135

if.end10.i134.if.else.i_crit_edge:                ; preds = %if.end10.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.end14.i135:                                    ; preds = %if.end10.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i120)
  %tobool.i.i = icmp ne i32 %shr.i120, 0
  br i1 %tobool.i.i, label %land.lhs.true.i.i137, label %if.end14.i135.if.end7.i.i_crit_edge

if.end14.i135.if.end7.i.i_crit_edge:              ; preds = %if.end14.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

land.lhs.true.i.i137:                             ; preds = %if.end14.i135
  %div3.i.i.i = lshr i32 %and2.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %adapter, i32 %div3.i.i.i
  %141 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i136 = and i32 %131, 31
  %143 = shl nuw i32 1, %and.i.i.i136
  %144 = and i32 %142, %143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool2.not.i.i = icmp eq i32 %144, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i137.if.end7.i.i_crit_edge, label %if.then.i.i139

land.lhs.true.i.i137.if.end7.i.i_crit_edge:       ; preds = %land.lhs.true.i.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then.i.i139:                                   ; preds = %land.lhs.true.i.i137
  %145 = ptrtoint ptr %set_vfta.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %set_vfta.i.i, align 4
  %147 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %offset.i.i, align 2
  %conv.i.i138 = zext i16 %148 to i32
  %call4.i.i = call i32 %146(ptr noundef %hw1, i32 noundef %and2.i, i32 noundef %conv.i.i138, i1 noundef zeroext true, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i.i139.if.end7.i.i_crit_edge, label %if.then.i.i139.if.then69.i_crit_edge

if.then.i.i139.if.then69.i_crit_edge:             ; preds = %if.then.i.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then.i.i139.if.end7.i.i_crit_edge:             ; preds = %if.then.i.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then.i.i139.if.end7.i.i_crit_edge, %land.lhs.true.i.i137.if.end7.i.i_crit_edge, %if.end14.i135.if.end7.i.i_crit_edge
  %149 = ptrtoint ptr %set_vfta.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %set_vfta.i.i, align 4
  %call13.i.i = call i32 %150(ptr noundef %hw1, i32 noundef %and2.i, i32 noundef %vf.0203, i1 noundef zeroext %tobool.i.i, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool16.not.i.i = icmp eq i32 %call13.i.i, 0
  %or.cond.i.i = select i1 %tobool.i.i, i1 %tobool16.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end7.i.i.if.else.i_crit_edge, label %if.end18.i.i

if.end7.i.i.if.else.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.end18.i.i:                                     ; preds = %if.end7.i.i
  %div3.i45.i.i = lshr i32 %and2.i, 5
  %arrayidx.i46.i.i = getelementptr i32, ptr %adapter, i32 %div3.i45.i.i
  %151 = ptrtoint ptr %arrayidx.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %arrayidx.i46.i.i, align 4
  %and.i47.i.i = and i32 %131, 31
  %153 = shl nuw i32 1, %and.i47.i.i
  %154 = and i32 %152, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool22.not.i.i = icmp eq i32 %154, 0
  br i1 %tobool22.not.i.i, label %lor.lhs.false.i.i, label %if.end18.i.i.if.then24.i.i_crit_edge

if.end18.i.i.if.then24.i.i_crit_edge:             ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i.i

lor.lhs.false.i.i:                                ; preds = %if.end18.i.i
  %155 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags2.i.i, align 8
  %and.i.i140 = and i32 %156, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140)
  %tobool23.not.i.i = icmp eq i32 %and.i.i140, 0
  br i1 %tobool23.not.i.i, label %lor.lhs.false.i.i.sw.epilog.i_crit_edge, label %lor.lhs.false.i.i.if.then24.i.i_crit_edge

lor.lhs.false.i.i.if.then24.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i.i

lor.lhs.false.i.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then24.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then24.i.i_crit_edge, %if.end18.i.i.if.then24.i.i_crit_edge
  call void @ixgbe_update_pf_promisc_vlvf(ptr noundef %adapter, i32 noundef %and2.i) #10
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end21.i
  %157 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i, align 4
  %159 = add i32 %158, -9729
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9661, i32 %159)
  %160 = icmp ult i32 %159, -9661
  br i1 %160, label %do.body.i101, label %if.end4.i

do.body.i101:                                     ; preds = %sw.bb32.i
  %161 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %msg_enable.i39, align 4
  %163 = and i16 %162, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool.not.i100 = icmp eq i16 %163, 0
  br i1 %tobool.not.i100, label %do.body.i101.if.then69.i_crit_edge, label %if.then3.i

do.body.i101.if.then69.i_crit_edge:               ; preds = %do.body.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then3.i:                                       ; preds = %do.body.i101
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %165, ptr noundef nonnull @.str.49, i32 noundef %158) #13
  br label %if.then69.i

if.end4.i:                                        ; preds = %sw.bb32.i
  %166 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %167)
  %cmp6.i = icmp eq i32 %167, 2
  br i1 %cmp6.i, label %if.then8.i, label %if.end4.i.if.end53.i_crit_edge

if.end4.i.if.end53.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then8.i:                                       ; preds = %if.end4.i
  %168 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %netdev.i40, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 20
  %170 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mtu.i, align 4
  %add.i104 = add i32 %171, 14
  %features.i = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 23
  %172 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %features.i, align 16
  %and10.i = and i64 %173, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i105 = icmp eq i64 %and10.i, 0
  %174 = call i32 @llvm.smax.i32(i32 %add.i104, i32 3072) #10
  %pf_max_frame.0.i = select i1 %tobool11.not.i105, i32 %add.i104, i32 %174
  %vf_api.i107 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 13
  %175 = ptrtoint ptr %vf_api.i107 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %vf_api.i107, align 4
  %.off.i108 = add i32 %176, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i108)
  %switch.i109 = icmp ult i32 %.off.i108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %pf_max_frame.0.i)
  %cmp16.i = icmp sgt i32 %pf_max_frame.0.i, 1514
  %or.cond113.i = select i1 %switch.i109, i1 %cmp16.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %158)
  %cmp23.i = icmp ugt i32 %158, 1518
  %or.cond110.i = or i1 %cmp23.i, %cmp16.i
  %not.or.cond110.i = xor i1 %or.cond110.i, true
  %spec.select112.i = select i1 %or.cond110.i, i32 -22, i32 0
  %tobool28.not.i = select i1 %or.cond113.i, i1 true, i1 %not.or.cond110.i
  %err.0.i = select i1 %or.cond113.i, i32 0, i32 %spec.select112.i
  %rem.i = and i32 %vf.0203, 31
  %177 = lshr i32 %vf.0203, 3
  %mul.i110 = and i32 %177, 536870908
  %add27.i = add nuw nsw i32 %mul.i110, 20960
  %call.i111 = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add27.i) #10
  %178 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i114.i = icmp eq ptr %179, null
  br i1 %tobool28.not.i, label %if.else.i116, label %if.then29.i

if.then29.i:                                      ; preds = %if.then8.i
  br i1 %tobool.not.i.i114.i, label %if.then29.i.ixgbe_write_reg.exit.i115_crit_edge, label %do.body1.i.i114

if.then29.i.ixgbe_write_reg.exit.i115_crit_edge:  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit.i115

do.body1.i.i114:                                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i112 = shl nuw i32 1, %rem.i
  %neg.i = xor i32 %shl.i112, -1
  %and30.i = and i32 %call.i111, %neg.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %180 = call i32 @llvm.bswap.i32(i32 %and30.i) #10
  %add.ptr.i.i113 = getelementptr i8, ptr %179, i32 %add27.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i113, i32 %180) #10, !srcloc !119
  br label %ixgbe_write_reg.exit.i115

ixgbe_write_reg.exit.i115:                        ; preds = %do.body1.i.i114, %if.then29.i.ixgbe_write_reg.exit.i115_crit_edge
  %181 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %msg_enable.i39, align 4
  %183 = and i16 %182, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %183)
  %tobool41.not.i = icmp eq i16 %183, 0
  br i1 %tobool41.not.i, label %ixgbe_write_reg.exit.i115.sw.epilog.i_crit_edge, label %if.then42.i

ixgbe_write_reg.exit.i115.sw.epilog.i_crit_edge:  ; preds = %ixgbe_write_reg.exit.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.else.i116:                                     ; preds = %if.then8.i
  br i1 %tobool.not.i.i114.i, label %if.else.i116.if.end53.i_crit_edge, label %do.body1.i116.i

if.else.i116.if.end53.i_crit_edge:                ; preds = %if.else.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

do.body1.i116.i:                                  ; preds = %if.else.i116
  call void @__sanitizer_cov_trace_pc() #12
  %shl31.i = shl nuw i32 1, %rem.i
  %or.i117 = or i32 %call.i111, %shl31.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %184 = call i32 @llvm.bswap.i32(i32 %or.i117) #10
  %add.ptr.i115.i = getelementptr i8, ptr %179, i32 %add27.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %184) #10, !srcloc !119
  br label %if.end53.i

if.then42.i:                                      ; preds = %ixgbe_write_reg.exit.i115
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %186, ptr noundef nonnull @.str.49, i32 noundef %158) #13
  br label %sw.epilog.i

if.end53.i:                                       ; preds = %do.body1.i116.i, %if.else.i116.if.end53.i_crit_edge, %if.end4.i.if.end53.i_crit_edge
  %call54.i = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 17000) #10
  %shr.i118 = lshr i32 %call54.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i118, i32 %158)
  %cmp56.i = icmp ult i32 %shr.i118, %158
  br i1 %cmp56.i, label %if.then58.i, label %if.end53.i.do.body61.i_crit_edge

if.end53.i.do.body61.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61.i

if.then58.i:                                      ; preds = %if.end53.i
  %187 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i118.i = icmp eq ptr %188, null
  br i1 %tobool.not.i.i118.i, label %if.then58.i.do.body61.i_crit_edge, label %do.body1.i120.i

if.then58.i.do.body61.i_crit_edge:                ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61.i

do.body1.i120.i:                                  ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %189 = call i32 @llvm.bswap.i32(i32 %158) #10
  %190 = lshr i32 %189, 16
  %add.ptr.i119.i = getelementptr i8, ptr %188, i32 17000
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 %190) #10, !srcloc !119
  br label %do.body61.i

do.body61.i:                                      ; preds = %do.body1.i120.i, %if.then58.i.do.body61.i_crit_edge, %if.end53.i.do.body61.i_crit_edge
  %191 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %msg_enable.i39, align 4
  %193 = and i16 %192, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %193)
  %tobool65.not.i = icmp eq i16 %193, 0
  br i1 %tobool65.not.i, label %do.body61.i.if.else.i_crit_edge, label %if.then66.i

do.body61.i.if.else.i_crit_edge:                  ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then66.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %195, ptr noundef nonnull @.str.50, i32 noundef %158) #13
  br label %if.else.i

sw.bb35.i:                                        ; preds = %if.end21.i
  %and.i80 = lshr i32 %6, 16
  %shr.i = and i32 %and.i80, 255
  %pf_set_mac.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 5
  %196 = ptrtoint ptr %pf_set_mac.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %pf_set_mac.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i82 = icmp eq i8 %197, 0
  br i1 %tobool.not.i82, label %sw.bb35.i.if.end10.i_crit_edge, label %land.lhs.true.i85

sw.bb35.i.if.end10.i_crit_edge:                   ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true.i85:                                ; preds = %sw.bb35.i
  %trusted.i83 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 11
  %198 = ptrtoint ptr %trusted.i83 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %trusted.i83, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool5.not.i84 = icmp ne i8 %199, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp.not.i = icmp eq i32 %shr.i, 0
  %or.cond.i = select i1 %tobool5.not.i84, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true.i85.if.end10.i_crit_edge, label %do.body.i87

land.lhs.true.i85.if.end10.i_crit_edge:           ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

do.body.i87:                                      ; preds = %land.lhs.true.i85
  %200 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %msg_enable.i39, align 4
  %202 = and i16 %201, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %tobool8.not.i = icmp eq i16 %202, 0
  br i1 %tobool8.not.i, label %do.body.i87.if.then69.i_crit_edge, label %if.then9.i

do.body.i87.if.then69.i_crit_edge:                ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then9.i:                                       ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #12
  %203 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %204, ptr noundef nonnull @.str.51, i32 noundef %vf.0203) #13
  br label %if.then69.i

if.end10.i:                                       ; preds = %land.lhs.true.i85.if.end10.i_crit_edge, %sw.bb35.i.if.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool11.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.then.i.i93_crit_edge, label %if.then12.i

if.end10.i.if.then.i.i93_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i93

if.then12.i:                                      ; preds = %if.end10.i
  %205 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx.i, align 4
  %207 = and i32 %206, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.i.not.i.i = icmp eq i32 %207, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.then12.i.do.body14.i_crit_edge

if.then12.i.do.body14.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14.i

is_valid_ether_addr.exit.i:                       ; preds = %if.then12.i
  %208 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %arrayidx16.i, align 4
  %conv.i.i.i90 = zext i16 %209 to i32
  %or.i.i.i91 = or i32 %206, %conv.i.i.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i91)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i91, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.do.body14.i_crit_edge, label %if.end24.i

is_valid_ether_addr.exit.i.do.body14.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14.i

do.body14.i:                                      ; preds = %is_valid_ether_addr.exit.i.do.body14.i_crit_edge, %if.then12.i.do.body14.i_crit_edge
  %210 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %msg_enable.i39, align 4
  %212 = and i16 %211, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool18.not.i = icmp eq i16 %212, 0
  br i1 %tobool18.not.i, label %do.body14.i.if.then69.i_crit_edge, label %if.then19.i

do.body14.i.if.then69.i_crit_edge:                ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then19.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %213 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %214, ptr noundef nonnull @.str.46, i32 noundef %vf.0203) #13
  br label %if.then69.i

if.end24.i:                                       ; preds = %is_valid_ether_addr.exit.i
  %spoofchk_enabled.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 9
  %215 = ptrtoint ptr %spoofchk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %spoofchk_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool27.not.i = icmp eq i8 %216, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end33.i_crit_edge, label %if.then28.i

if.end24.i.if.end33.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %217 = ptrtoint ptr %set_mac_anti_spoofing.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %set_mac_anti_spoofing.i, align 4
  call void %218(ptr noundef %hw1, i1 noundef zeroext false, i32 noundef %vf.0203) #10
  %219 = ptrtoint ptr %set_vlan_anti_spoofing.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %set_vlan_anti_spoofing.i, align 4
  call void %220(ptr noundef %hw1, i1 noundef zeroext false, i32 noundef %vf.0203) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.end24.i.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp.i.i92 = icmp ult i32 %shr.i, 2
  br i1 %cmp.i.i92, label %if.end33.i.if.then.i.i93_crit_edge, label %if.end33.i.if.end14.i.i_crit_edge

if.end33.i.if.end14.i.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.end33.i.if.then.i.i93_crit_edge:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i93

if.then.i.i93:                                    ; preds = %if.end33.i.if.then.i.i93_crit_edge, %if.end10.i.if.then.i.i93_crit_edge
  %221 = ptrtoint ptr %vf_mvs.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %pos.083.i.i = load ptr, ptr %vf_mvs.i.i, align 4
  %cmp.i.not84.i.i = icmp eq ptr %pos.083.i.i, %vf_mvs.i.i
  br i1 %cmp.i.not84.i.i, label %if.then.i.i93.if.end11.i.i_crit_edge, label %if.then.i.i93.for.body.i.i96_crit_edge

if.then.i.i93.for.body.i.i96_crit_edge:           ; preds = %if.then.i.i93
  br label %for.body.i.i96

if.then.i.i93.if.end11.i.i_crit_edge:             ; preds = %if.then.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

for.body.i.i96:                                   ; preds = %for.inc.i.i.for.body.i.i96_crit_edge, %if.then.i.i93.for.body.i.i96_crit_edge
  %pos.085.i.i = phi ptr [ %pos.0.i.i, %for.inc.i.i.for.body.i.i96_crit_edge ], [ %pos.083.i.i, %if.then.i.i93.for.body.i.i96_crit_edge ]
  %vf5.i.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.085.i.i, i32 0, i32 1
  %222 = ptrtoint ptr %vf5.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %vf5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %vf.0203)
  %cmp6.i.i = icmp eq i32 %223, %vf.0203
  br i1 %cmp6.i.i, label %if.then7.i.i, label %for.body.i.i96.for.inc.i.i_crit_edge

for.body.i.i96.for.inc.i.i_crit_edge:             ; preds = %for.body.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  %224 = ptrtoint ptr %vf5.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %vf5.i.i, align 4
  %free.i.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.085.i.i, i32 0, i32 2
  %225 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 1, ptr %free.i.i, align 4
  %is_macvlan.i.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.085.i.i, i32 0, i32 3
  %226 = ptrtoint ptr %is_macvlan.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %is_macvlan.i.i, align 1
  %vf_macvlan.i.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.085.i.i, i32 0, i32 4
  %call9.i.i = call i32 @ixgbe_del_mac_filter(ptr noundef %adapter, ptr noundef %vf_macvlan.i.i, i16 noundef zeroext %conv) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %for.body.i.i96.for.inc.i.i_crit_edge
  %227 = ptrtoint ptr %pos.085.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %pos.0.i.i = load ptr, ptr %pos.085.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %pos.0.i.i, %vf_mvs.i.i
  br i1 %cmp.i.not.i.i, label %for.inc.i.i.if.end11.i.i_crit_edge, label %for.inc.i.i.for.body.i.i96_crit_edge

for.inc.i.i.for.body.i.i96_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i96

for.inc.i.i.if.end11.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %for.inc.i.i.if.end11.i.i_crit_edge, %if.then.i.i93.if.end11.i.i_crit_edge
  br i1 %tobool11.not.i, label %if.end11.i.i.if.end48.i_crit_edge, label %if.end11.i.i.if.end14.i.i_crit_edge

if.end11.i.i.if.end14.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.end11.i.i.if.end48.i_crit_edge:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.end14.i.i:                                     ; preds = %if.end11.i.i.if.end14.i.i_crit_edge, %if.end33.i.if.end14.i.i_crit_edge
  %228 = ptrtoint ptr %vf_mvs.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %pos.186.i.i = load ptr, ptr %vf_mvs.i.i, align 4
  %cmp.i80.not87.i.i = icmp eq ptr %pos.186.i.i, %vf_mvs.i.i
  br i1 %cmp.i80.not87.i.i, label %if.end14.i.i.do.body38.i_crit_edge, label %if.end14.i.i.for.body24.i.i_crit_edge

if.end14.i.i.for.body24.i.i_crit_edge:            ; preds = %if.end14.i.i
  br label %for.body24.i.i

if.end14.i.i.do.body38.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38.i

for.cond18.i.i:                                   ; preds = %for.body24.i.i
  %229 = ptrtoint ptr %pos.188.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %pos.1.i.i = load ptr, ptr %pos.188.i.i, align 4
  %cmp.i80.not.i.i = icmp eq ptr %pos.1.i.i, %vf_mvs.i.i
  br i1 %cmp.i80.not.i.i, label %for.cond18.i.i.do.body38.i_crit_edge, label %for.cond18.i.i.for.body24.i.i_crit_edge

for.cond18.i.i.for.body24.i.i_crit_edge:          ; preds = %for.cond18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24.i.i

for.cond18.i.i.do.body38.i_crit_edge:             ; preds = %for.cond18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38.i

for.body24.i.i:                                   ; preds = %for.cond18.i.i.for.body24.i.i_crit_edge, %if.end14.i.i.for.body24.i.i_crit_edge
  %pos.188.i.i = phi ptr [ %pos.1.i.i, %for.cond18.i.i.for.body24.i.i_crit_edge ], [ %pos.186.i.i, %if.end14.i.i.for.body24.i.i_crit_edge ]
  %free28.i.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.188.i.i, i32 0, i32 2
  %230 = ptrtoint ptr %free28.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %free28.i.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool29.not.i.i = icmp eq i8 %231, 0
  br i1 %tobool29.not.i.i, label %for.cond18.i.i, label %for.end34.i.thread.i

for.end34.i.thread.i:                             ; preds = %for.body24.i.i
  %free28.i.i.le = getelementptr inbounds %struct.vf_macvlans, ptr %pos.188.i.i, i32 0, i32 2
  %tobool35.not.i80.i = icmp eq ptr %pos.188.i.i, null
  br i1 %tobool35.not.i80.i, label %for.end34.i.thread.i.do.body38.i_crit_edge, label %if.end39.i.i

for.end34.i.thread.i.do.body38.i_crit_edge:       ; preds = %for.end34.i.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38.i

if.end39.i.i:                                     ; preds = %for.end34.i.thread.i
  %call41.i.i = call i32 @ixgbe_add_mac_filter(ptr noundef %adapter, ptr noundef %arrayidx.i, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %cmp42.i.i = icmp slt i32 %call41.i.i, 0
  br i1 %cmp42.i.i, label %ixgbe_set_vf_macvlan.exit.i, label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %232 = ptrtoint ptr %free28.i.i.le to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 0, ptr %free28.i.i.le, align 4
  %is_macvlan47.i.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.188.i.i, i32 0, i32 3
  %233 = ptrtoint ptr %is_macvlan47.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 1, ptr %is_macvlan47.i.i, align 1
  %vf48.i.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.188.i.i, i32 0, i32 1
  %234 = ptrtoint ptr %vf48.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %vf.0203, ptr %vf48.i.i, align 4
  %vf_macvlan49.i.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.188.i.i, i32 0, i32 4
  %235 = call ptr @memcpy(ptr %vf_macvlan49.i.i, ptr %arrayidx.i, i32 6)
  br label %if.end48.i

ixgbe_set_vf_macvlan.exit.i:                      ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call41.i.i)
  %cmp35.i = icmp eq i32 %call41.i.i, -28
  br i1 %cmp35.i, label %ixgbe_set_vf_macvlan.exit.i.do.body38.i_crit_edge, label %ixgbe_set_vf_macvlan.exit.i.if.end48.i_crit_edge

ixgbe_set_vf_macvlan.exit.i.if.end48.i_crit_edge: ; preds = %ixgbe_set_vf_macvlan.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

ixgbe_set_vf_macvlan.exit.i.do.body38.i_crit_edge: ; preds = %ixgbe_set_vf_macvlan.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38.i

do.body38.i:                                      ; preds = %ixgbe_set_vf_macvlan.exit.i.do.body38.i_crit_edge, %for.end34.i.thread.i.do.body38.i_crit_edge, %for.cond18.i.i.do.body38.i_crit_edge, %if.end14.i.i.do.body38.i_crit_edge
  %236 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %msg_enable.i39, align 4
  %238 = and i16 %237, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool42.not.i = icmp eq i16 %238, 0
  br i1 %tobool42.not.i, label %do.body38.i.if.end48.i_crit_edge, label %if.then43.i

do.body38.i.if.end48.i_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then43.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  %239 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %240, ptr noundef nonnull @.str.52, i32 noundef %vf.0203) #13
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %do.body38.i.if.end48.i_crit_edge, %ixgbe_set_vf_macvlan.exit.i.if.end48.i_crit_edge, %if.end45.i.i, %if.end11.i.i.if.end48.i_crit_edge
  %retval.0.i83.i = phi i32 [ -28, %do.body38.i.if.end48.i_crit_edge ], [ -28, %if.then43.i ], [ %call41.i.i, %ixgbe_set_vf_macvlan.exit.i.if.end48.i_crit_edge ], [ 0, %if.end45.i.i ], [ 0, %if.end11.i.i.if.end48.i_crit_edge ]
  %call34.lobit.i = lshr i32 %retval.0.i83.i, 31
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %if.end21.i
  %241 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx.i, align 4
  %243 = zext i32 %242 to i64
  call void @__sanitizer_cov_trace_switch(i64 %243, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %242, label %do.body.i75 [
    i32 0, label %sw.bb38.i.sw.bb.i72_crit_edge
    i32 2, label %sw.bb38.i.sw.bb.i72_crit_edge233
    i32 3, label %sw.bb38.i.sw.bb.i72_crit_edge234
    i32 4, label %sw.bb38.i.sw.bb.i72_crit_edge235
    i32 5, label %sw.bb38.i.sw.bb.i72_crit_edge236
  ]

sw.bb38.i.sw.bb.i72_crit_edge236:                 ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i72

sw.bb38.i.sw.bb.i72_crit_edge235:                 ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i72

sw.bb38.i.sw.bb.i72_crit_edge234:                 ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i72

sw.bb38.i.sw.bb.i72_crit_edge233:                 ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i72

sw.bb38.i.sw.bb.i72_crit_edge:                    ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i72

sw.bb.i72:                                        ; preds = %sw.bb38.i.sw.bb.i72_crit_edge, %sw.bb38.i.sw.bb.i72_crit_edge233, %sw.bb38.i.sw.bb.i72_crit_edge234, %sw.bb38.i.sw.bb.i72_crit_edge235, %sw.bb38.i.sw.bb.i72_crit_edge236
  %vf_api.i71 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 13
  %244 = ptrtoint ptr %vf_api.i71 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %242, ptr %vf_api.i71, align 4
  br label %if.else.i

do.body.i75:                                      ; preds = %sw.bb38.i
  %245 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %msg_enable.i39, align 4
  %247 = and i16 %246, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %247)
  %tobool.not.i74 = icmp eq i16 %247, 0
  br i1 %tobool.not.i74, label %do.body.i75.if.then69.i_crit_edge, label %if.then.i77

do.body.i75.if.then69.i_crit_edge:                ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then.i77:                                      ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #12
  %248 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %249, ptr noundef nonnull @.str.53, i32 noundef %vf.0203, i32 noundef %242) #13
  br label %if.then69.i

sw.bb41.i:                                        ; preds = %if.end21.i
  %250 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %netdev.i40, align 128
  %252 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %hw_tcs.i, align 4
  %vf_api.i56 = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 13
  %254 = ptrtoint ptr %vf_api.i56 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %vf_api.i56, align 4
  %.off.i57 = add i32 %255, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off.i57)
  %switch.i58 = icmp ult i32 %.off.i57, 5
  br i1 %switch.i58, label %sw.epilog.i61, label %sw.bb41.i.if.then69.i_crit_edge

sw.bb41.i.if.then69.i_crit_edge:                  ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

sw.epilog.i61:                                    ; preds = %sw.bb41.i
  %256 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %mask.i, align 4
  %258 = sub i16 0, %257
  %259 = and i16 %257, %258
  %and.i59 = zext i16 %259 to i32
  %260 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %and.i59, ptr %arrayidx.i, align 4
  %261 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %and.i59, ptr %arrayidx16.i, align 4
  %conv17.i = zext i8 %253 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %253)
  %cmp.i60 = icmp ugt i8 %253, 1
  br i1 %cmp.i60, label %if.end.thread.i, label %if.end.i65

if.end.thread.i:                                  ; preds = %sw.epilog.i61
  call void @__sanitizer_cov_trace_pc() #12
  %262 = ptrtoint ptr %default_up.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %default_up.i, align 8
  %264 = and i8 %263, 15
  %and.i.i62 = zext i8 %264 to i32
  %arrayidx.i.i63 = getelementptr %struct.net_device, ptr %251, i32 0, i32 142, i32 %and.i.i62
  %265 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx.i.i63, align 1
  %conv.i.i = zext i8 %266 to i32
  br label %if.end36.i

if.end.i65:                                       ; preds = %sw.epilog.i61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool.not.i64 = icmp eq i8 %253, 0
  br i1 %tobool.not.i64, label %if.else.i66, label %if.end.i65.if.end36.i_crit_edge

if.end.i65.if.end36.i_crit_edge:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.else.i66:                                      ; preds = %if.end.i65
  %pf_vlan.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 6
  %267 = ptrtoint ptr %pf_vlan.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %pf_vlan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %268)
  %tobool26.not.i = icmp eq i16 %268, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i, label %if.else.i66.if.end36.i_crit_edge

if.else.i66.if.end36.i_crit_edge:                 ; preds = %if.else.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

lor.lhs.false.i:                                  ; preds = %if.else.i66
  call void @__sanitizer_cov_trace_pc() #12
  %pf_qos.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 7
  %269 = ptrtoint ptr %pf_qos.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %pf_qos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %270)
  %tobool30.not.i = icmp ne i16 %270, 0
  %spec.select.i67 = zext i1 %tobool30.not.i to i32
  br label %if.end36.i

if.end36.i:                                       ; preds = %lor.lhs.false.i, %if.else.i66.if.end36.i_crit_edge, %if.end.i65.if.end36.i_crit_edge, %if.end.thread.i
  %.sink.i = phi i32 [ %conv17.i, %if.end.thread.i ], [ %conv17.i, %if.end.i65.if.end36.i_crit_edge ], [ 1, %if.else.i66.if.end36.i_crit_edge ], [ %spec.select.i67, %lor.lhs.false.i ]
  %default_tc.061.i = phi i32 [ %conv.i.i, %if.end.thread.i ], [ 0, %if.end.i65.if.end36.i_crit_edge ], [ 0, %if.else.i66.if.end36.i_crit_edge ], [ 0, %lor.lhs.false.i ]
  %271 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %.sink.i, ptr %arrayidx32.i, align 4
  %272 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %default_tc.061.i, ptr %arrayidx37.i, align 4
  br label %if.else.i

sw.bb44.i:                                        ; preds = %if.end21.i
  %call.i44 = call i32 @ixgbe_rss_indir_tbl_entries(ptr noundef %adapter) #10
  %273 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %vfinfo.i.i, align 16
  %rss_query_enabled.i = getelementptr %struct.vf_data_storage, ptr %274, i32 %vf.0203, i32 10
  %275 = ptrtoint ptr %rss_query_enabled.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %rss_query_enabled.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool.not.i46 = icmp eq i8 %276, 0
  br i1 %tobool.not.i46, label %sw.bb44.i.if.then69.i_crit_edge, label %if.end.i48

sw.bb44.i.if.then69.i_crit_edge:                  ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.end.i48:                                       ; preds = %sw.bb44.i
  %vf_api.i47 = getelementptr %struct.vf_data_storage, ptr %274, i32 %vf.0203, i32 13
  %277 = ptrtoint ptr %vf_api.i47 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %vf_api.i47, align 4
  %.off.i = add i32 %278, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %for.cond.preheader.i, label %if.end.i48.if.then69.i_crit_edge

if.end.i48.if.then69.i_crit_edge:                 ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

for.cond.preheader.i:                             ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i44)
  %cmp32.not.i = icmp ult i32 %call.i44, 16
  br i1 %cmp32.not.i, label %for.cond.preheader.i.if.else.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.if.else.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %div30.i = lshr i32 %call.i44, 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.033.i = phi i32 [ %inc12.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx4.i = getelementptr i32, ptr %arrayidx.i, i32 %i.033.i
  %mul.i49 = shl i32 %i.033.i, 4
  %arrayidx8.i = getelementptr i8, ptr %rss_indir_tbl.i, i32 %mul.i49
  %279 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx8.i, align 1
  %281 = and i8 %280, 3
  %add.i50.1 = or i32 %mul.i49, 1
  %arrayidx8.i.1 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.1
  %282 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx8.i.1, align 1
  %284 = shl i8 %283, 2
  %285 = and i8 %284, 12
  %or.i52.1224 = or i8 %285, %281
  %add.i50.2 = or i32 %mul.i49, 2
  %arrayidx8.i.2 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.2
  %286 = ptrtoint ptr %arrayidx8.i.2 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx8.i.2, align 1
  %288 = shl i8 %287, 4
  %289 = and i8 %288, 48
  %or.i52.2225 = or i8 %289, %or.i52.1224
  %add.i50.3 = or i32 %mul.i49, 3
  %arrayidx8.i.3 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.3
  %290 = ptrtoint ptr %arrayidx8.i.3 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx8.i.3, align 1
  %292 = shl i8 %291, 6
  %or.i52.3226 = or i8 %292, %or.i52.2225
  %or.i52.3 = zext i8 %or.i52.3226 to i32
  %add.i50.4 = or i32 %mul.i49, 4
  %arrayidx8.i.4 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.4
  %293 = ptrtoint ptr %arrayidx8.i.4 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx8.i.4, align 1
  %295 = and i8 %294, 3
  %and.i51.4 = zext i8 %295 to i32
  %shl.i.4 = shl nuw nsw i32 %and.i51.4, 8
  %or.i52.4 = or i32 %shl.i.4, %or.i52.3
  %add.i50.5 = or i32 %mul.i49, 5
  %arrayidx8.i.5 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.5
  %296 = ptrtoint ptr %arrayidx8.i.5 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx8.i.5, align 1
  %298 = and i8 %297, 3
  %and.i51.5 = zext i8 %298 to i32
  %shl.i.5 = shl nuw nsw i32 %and.i51.5, 10
  %or.i52.5 = or i32 %shl.i.5, %or.i52.4
  %add.i50.6 = or i32 %mul.i49, 6
  %arrayidx8.i.6 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.6
  %299 = ptrtoint ptr %arrayidx8.i.6 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx8.i.6, align 1
  %301 = and i8 %300, 3
  %and.i51.6 = zext i8 %301 to i32
  %shl.i.6 = shl nuw nsw i32 %and.i51.6, 12
  %or.i52.6 = or i32 %shl.i.6, %or.i52.5
  %add.i50.7 = or i32 %mul.i49, 7
  %arrayidx8.i.7 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.7
  %302 = ptrtoint ptr %arrayidx8.i.7 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx8.i.7, align 1
  %304 = and i8 %303, 3
  %and.i51.7 = zext i8 %304 to i32
  %shl.i.7 = shl nuw nsw i32 %and.i51.7, 14
  %or.i52.7 = or i32 %shl.i.7, %or.i52.6
  %add.i50.8 = or i32 %mul.i49, 8
  %arrayidx8.i.8 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.8
  %305 = ptrtoint ptr %arrayidx8.i.8 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx8.i.8, align 1
  %307 = and i8 %306, 3
  %and.i51.8 = zext i8 %307 to i32
  %shl.i.8 = shl nuw nsw i32 %and.i51.8, 16
  %or.i52.8 = or i32 %shl.i.8, %or.i52.7
  %add.i50.9 = or i32 %mul.i49, 9
  %arrayidx8.i.9 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.9
  %308 = ptrtoint ptr %arrayidx8.i.9 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx8.i.9, align 1
  %310 = and i8 %309, 3
  %and.i51.9 = zext i8 %310 to i32
  %shl.i.9 = shl nuw nsw i32 %and.i51.9, 18
  %or.i52.9 = or i32 %shl.i.9, %or.i52.8
  %add.i50.10 = or i32 %mul.i49, 10
  %arrayidx8.i.10 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.10
  %311 = ptrtoint ptr %arrayidx8.i.10 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx8.i.10, align 1
  %313 = and i8 %312, 3
  %and.i51.10 = zext i8 %313 to i32
  %shl.i.10 = shl nuw nsw i32 %and.i51.10, 20
  %or.i52.10 = or i32 %shl.i.10, %or.i52.9
  %add.i50.11 = or i32 %mul.i49, 11
  %arrayidx8.i.11 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.11
  %314 = ptrtoint ptr %arrayidx8.i.11 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx8.i.11, align 1
  %316 = and i8 %315, 3
  %and.i51.11 = zext i8 %316 to i32
  %shl.i.11 = shl nuw nsw i32 %and.i51.11, 22
  %or.i52.11 = or i32 %shl.i.11, %or.i52.10
  %add.i50.12 = or i32 %mul.i49, 12
  %arrayidx8.i.12 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.12
  %317 = ptrtoint ptr %arrayidx8.i.12 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx8.i.12, align 1
  %319 = and i8 %318, 3
  %and.i51.12 = zext i8 %319 to i32
  %shl.i.12 = shl nuw nsw i32 %and.i51.12, 24
  %or.i52.12 = or i32 %shl.i.12, %or.i52.11
  %add.i50.13 = or i32 %mul.i49, 13
  %arrayidx8.i.13 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.13
  %320 = ptrtoint ptr %arrayidx8.i.13 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx8.i.13, align 1
  %322 = and i8 %321, 3
  %and.i51.13 = zext i8 %322 to i32
  %shl.i.13 = shl nuw nsw i32 %and.i51.13, 26
  %or.i52.13 = or i32 %shl.i.13, %or.i52.12
  %add.i50.14 = or i32 %mul.i49, 14
  %arrayidx8.i.14 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.14
  %323 = ptrtoint ptr %arrayidx8.i.14 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx8.i.14, align 1
  %325 = and i8 %324, 3
  %and.i51.14 = zext i8 %325 to i32
  %shl.i.14 = shl nuw nsw i32 %and.i51.14, 28
  %or.i52.14 = or i32 %shl.i.14, %or.i52.13
  %add.i50.15 = or i32 %mul.i49, 15
  %arrayidx8.i.15 = getelementptr i8, ptr %rss_indir_tbl.i, i32 %add.i50.15
  %326 = ptrtoint ptr %arrayidx8.i.15 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx8.i.15, align 1
  %328 = and i8 %327, 3
  %and.i51.15 = zext i8 %328 to i32
  %shl.i.15 = shl nuw i32 %and.i51.15, 30
  %or.i52.15 = or i32 %shl.i.15, %or.i52.14
  %329 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %or.i52.15, ptr %arrayidx4.i, align 4
  %inc12.i = add nuw nsw i32 %i.033.i, 1
  %exitcond34.not.i = icmp eq i32 %inc12.i, %div30.i
  br i1 %exitcond34.not.i, label %for.body.i.if.else.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

sw.bb47.i:                                        ; preds = %if.end21.i
  %rss_query_enabled.i.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 10
  %330 = ptrtoint ptr %rss_query_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %rss_query_enabled.i.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool.not.i2.i = icmp eq i8 %331, 0
  br i1 %tobool.not.i2.i, label %sw.bb47.i.if.then69.i_crit_edge, label %if.end.i.i

sw.bb47.i.if.then69.i_crit_edge:                  ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.end.i.i:                                       ; preds = %sw.bb47.i
  %vf_api.i.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 13
  %332 = ptrtoint ptr %vf_api.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %vf_api.i.i, align 4
  %.off.i.i = add i32 %333, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %sw.epilog.i.i, label %if.end.i.i.if.then69.i_crit_edge

if.end.i.i.if.then69.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

sw.epilog.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %334 = ptrtoint ptr %rss_key4.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %rss_key4.i.i, align 32
  %336 = call ptr @memcpy(ptr %arrayidx.i, ptr %335, i32 40)
  br label %if.else.i

sw.bb50.i:                                        ; preds = %if.end21.i
  %337 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %arrayidx.i, align 4
  %vf_api.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 13
  %339 = ptrtoint ptr %vf_api.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %vf_api.i, align 4
  %341 = zext i32 %340 to i64
  call void @__sanitizer_cov_trace_switch(i64 %341, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %340, label %sw.bb50.i.if.then69.i_crit_edge [
    i32 3, label %sw.bb.i34
    i32 4, label %sw.bb50.i.sw.epilog.i35_crit_edge
    i32 5, label %sw.bb50.i.sw.epilog.i35_crit_edge237
  ]

sw.bb50.i.sw.epilog.i35_crit_edge237:             ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i35

sw.bb50.i.sw.epilog.i35_crit_edge:                ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i35

sw.bb50.i.if.then69.i_crit_edge:                  ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

sw.bb.i34:                                        ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %338)
  %cmp.i33 = icmp eq i32 %338, 3
  br i1 %cmp.i33, label %sw.bb.i34.if.then69.i_crit_edge, label %sw.bb.i34.sw.epilog.i35_crit_edge

sw.bb.i34.sw.epilog.i35_crit_edge:                ; preds = %sw.bb.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i35

sw.bb.i34.if.then69.i_crit_edge:                  ; preds = %sw.bb.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

sw.epilog.i35:                                    ; preds = %sw.bb.i34.sw.epilog.i35_crit_edge, %sw.bb50.i.sw.epilog.i35_crit_edge, %sw.bb50.i.sw.epilog.i35_crit_edge237
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %338)
  %cmp4.i = icmp sgt i32 %338, 1
  br i1 %cmp4.i, label %land.lhs.true.i, label %sw.epilog.i35.if.end8.i_crit_edge

sw.epilog.i35.if.end8.i_crit_edge:                ; preds = %sw.epilog.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i35
  call void @__sanitizer_cov_trace_pc() #12
  %trusted.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 11
  %342 = ptrtoint ptr %trusted.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %trusted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %tobool.not.i36 = icmp eq i8 %343, 0
  %spec.select.i = select i1 %tobool.not.i36, i32 1, i32 %338
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.i, %sw.epilog.i35.if.end8.i_crit_edge
  %xcast_mode.0.i = phi i32 [ %338, %sw.epilog.i35.if.end8.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %xcast_mode11.i = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf.0203, i32 12
  %344 = ptrtoint ptr %xcast_mode11.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %xcast_mode11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %345, i32 %xcast_mode.0.i)
  %cmp12.i = icmp eq i32 %345, %xcast_mode.0.i
  br i1 %cmp12.i, label %if.end8.i.out.i_crit_edge, label %if.end14.i

if.end8.i.out.i_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end14.i:                                       ; preds = %if.end8.i
  %346 = zext i32 %xcast_mode.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %346, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %xcast_mode.0.i, label %if.end14.i.if.then69.i_crit_edge [
    i32 0, label %if.end14.i.sw.epilog30.i_crit_edge
    i32 1, label %sw.bb16.i
    i32 2, label %sw.bb17.i
    i32 3, label %sw.bb18.i
  ]

if.end14.i.sw.epilog30.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog30.i

if.end14.i.if.then69.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

sw.bb16.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog30.i

sw.bb17.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog30.i

sw.bb18.i:                                        ; preds = %if.end14.i
  %347 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %348)
  %cmp19.i = icmp ult i32 %348, 3
  br i1 %cmp19.i, label %sw.bb18.i.if.then69.i_crit_edge, label %if.end21.i38

sw.bb18.i.if.then69.i_crit_edge:                  ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.end21.i38:                                     ; preds = %sw.bb18.i
  %call.i37 = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20608) #10
  %and.i = and i32 %call.i37, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %do.body.i, label %if.end21.i38.sw.epilog30.i_crit_edge

if.end21.i38.sw.epilog30.i_crit_edge:             ; preds = %if.end21.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog30.i

do.body.i:                                        ; preds = %if.end21.i38
  %349 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %msg_enable.i39, align 4
  %351 = and i16 %350, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %351)
  %tobool25.not.i = icmp eq i16 %351, 0
  br i1 %tobool25.not.i, label %do.body.i.if.then69.i_crit_edge, label %if.then26.i

do.body.i.if.then69.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then26.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %352 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %353, ptr noundef nonnull @.str.54) #13
  br label %if.then69.i

sw.epilog30.i:                                    ; preds = %if.end21.i38.sw.epilog30.i_crit_edge, %sw.bb17.i, %sw.bb16.i, %if.end14.i.sw.epilog30.i_crit_edge
  %disable.0.i = phi i32 [ -12582913, %sw.bb17.i ], [ -281018369, %sw.bb16.i ], [ -448790529, %if.end14.i.sw.epilog30.i_crit_edge ], [ -1, %if.end21.i38.sw.epilog30.i_crit_edge ]
  %enable.0.i = phi i32 [ 436207616, %sw.bb17.i ], [ 167772160, %sw.bb16.i ], [ %xcast_mode.0.i, %if.end14.i.sw.epilog30.i_crit_edge ], [ 448790528, %if.end21.i38.sw.epilog30.i_crit_edge ]
  %mul.i = shl i32 %vf.0203, 2
  %add.i = add i32 %mul.i, 61440
  %call31.i41 = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add.i) #10
  %354 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i = icmp eq ptr %355, null
  br i1 %tobool.not.i.i.i, label %sw.epilog30.i.ixgbe_write_reg.exit.i_crit_edge, label %do.body1.i.i

sw.epilog30.i.ixgbe_write_reg.exit.i_crit_edge:   ; preds = %sw.epilog30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit.i

do.body1.i.i:                                     ; preds = %sw.epilog30.i
  call void @__sanitizer_cov_trace_pc() #12
  %and32.i = and i32 %call31.i41, %disable.0.i
  %or.i42 = or i32 %and32.i, %enable.0.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @arm_heavy_mb() #10
  %356 = call i32 @llvm.bswap.i32(i32 %or.i42) #10
  %add.ptr.i.i = getelementptr i8, ptr %355, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %356) #10, !srcloc !119
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %sw.epilog30.i.ixgbe_write_reg.exit.i_crit_edge
  %357 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %vfinfo.i.i, align 16
  %xcast_mode37.i = getelementptr %struct.vf_data_storage, ptr %358, i32 %vf.0203, i32 12
  %359 = ptrtoint ptr %xcast_mode37.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %xcast_mode.0.i, ptr %xcast_mode37.i, align 4
  br label %out.i

out.i:                                            ; preds = %ixgbe_write_reg.exit.i, %if.end8.i.out.i_crit_edge
  %360 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %xcast_mode.0.i, ptr %arrayidx.i, align 4
  br label %if.else.i

sw.bb53.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %call55.i = call i32 @ixgbe_ipsec_vf_add_sa(ptr noundef %adapter, ptr noundef nonnull %msgbuf.i, i32 noundef %vf.0203) #10
  br label %sw.epilog.i

sw.bb56.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %call58.i = call i32 @ixgbe_ipsec_vf_del_sa(ptr noundef %adapter, ptr noundef nonnull %msgbuf.i, i32 noundef %vf.0203) #10
  br label %sw.epilog.i

do.body59.i:                                      ; preds = %if.end21.i
  %361 = ptrtoint ptr %msg_enable.i39 to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %msg_enable.i39, align 4
  %363 = and i16 %362, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %363)
  %tobool62.not.i = icmp eq i16 %363, 0
  br i1 %tobool62.not.i, label %do.body59.i.if.then69.i_crit_edge, label %if.then63.i

do.body59.i.if.then69.i_crit_edge:                ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.then63.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #12
  %364 = ptrtoint ptr %netdev.i40 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %netdev.i40, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %365, ptr noundef nonnull @.str.44, i32 noundef %6) #13
  br label %if.then69.i

sw.epilog.i:                                      ; preds = %sw.bb56.i, %sw.bb53.i, %if.end48.i, %if.then42.i, %ixgbe_write_reg.exit.i115.sw.epilog.i_crit_edge, %if.then24.i.i, %lor.lhs.false.i.i.sw.epilog.i_crit_edge, %ixgbe_set_vf_mac.exit.i
  %retval2.0.i = phi i32 [ %call58.i, %sw.bb56.i ], [ %call55.i, %sw.bb53.i ], [ %call25.lobit.i, %ixgbe_set_vf_mac.exit.i ], [ %call13.i.i, %if.then24.i.i ], [ %call13.i.i, %lor.lhs.false.i.i.sw.epilog.i_crit_edge ], [ %err.0.i, %if.then42.i ], [ %err.0.i, %ixgbe_write_reg.exit.i115.sw.epilog.i_crit_edge ], [ %call34.lobit.i, %if.end48.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.0.i)
  %tobool68.not.i = icmp eq i32 %retval2.0.i, 0
  br i1 %tobool68.not.i, label %sw.epilog.i.if.else.i_crit_edge, label %sw.epilog.i.if.then69.i_crit_edge

sw.epilog.i.if.then69.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

sw.epilog.i.if.else.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then69.i:                                      ; preds = %sw.epilog.i.if.then69.i_crit_edge, %if.then63.i, %do.body59.i.if.then69.i_crit_edge, %if.then26.i, %do.body.i.if.then69.i_crit_edge, %sw.bb18.i.if.then69.i_crit_edge, %if.end14.i.if.then69.i_crit_edge, %sw.bb.i34.if.then69.i_crit_edge, %sw.bb50.i.if.then69.i_crit_edge, %if.end.i.i.if.then69.i_crit_edge, %sw.bb47.i.if.then69.i_crit_edge, %if.end.i48.if.then69.i_crit_edge, %sw.bb44.i.if.then69.i_crit_edge, %sw.bb41.i.if.then69.i_crit_edge, %if.then.i77, %do.body.i75.if.then69.i_crit_edge, %if.then19.i, %do.body14.i.if.then69.i_crit_edge, %if.then9.i, %do.body.i87.if.then69.i_crit_edge, %if.then3.i, %do.body.i101.if.then69.i_crit_edge, %if.then.i.i139.if.then69.i_crit_edge, %if.then9.i131, %do.body.i129.if.then69.i_crit_edge, %if.then19.i185, %do.body14.i183.if.then69.i_crit_edge, %if.then1.i, %do.body.i171.if.then69.i_crit_edge
  %366 = ptrtoint ptr %msgbuf.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %msgbuf.i, align 4
  %or71.i = or i32 %367, 1073741824
  br label %if.end74.i

if.else.i:                                        ; preds = %sw.epilog.i.if.else.i_crit_edge, %out.i, %sw.epilog.i.i, %for.body.i.if.else.i_crit_edge, %for.cond.preheader.i.if.else.i_crit_edge, %if.end36.i, %sw.bb.i72, %if.then66.i, %do.body61.i.if.else.i_crit_edge, %if.end7.i.i.if.else.i_crit_edge, %if.end10.i134.if.else.i_crit_edge, %do.body1.i3.i, %for.end31.i.if.else.i_crit_edge
  %368 = ptrtoint ptr %msgbuf.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %msgbuf.i, align 4
  %or73.i = or i32 %369, -2147483648
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else.i, %if.then69.i
  %storemerge.i = phi i32 [ %or73.i, %if.else.i ], [ %or71.i, %if.then69.i ]
  %or76.i = or i32 %storemerge.i, 536870912
  %370 = ptrtoint ptr %msgbuf.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %or76.i, ptr %msgbuf.i, align 4
  %call80.i = call i32 @ixgbe_write_mbx(ptr noundef %hw1, ptr noundef nonnull %msgbuf.i, i16 noundef zeroext 16, i16 noundef zeroext %conv) #10
  br label %ixgbe_rcv_msg_from_vf.exit

ixgbe_rcv_msg_from_vf.exit:                       ; preds = %if.end74.i, %if.then16.i, %ixgbe_vf_reset_msg.exit.i, %if.end.i.ixgbe_rcv_msg_from_vf.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msgbuf.i) #10
  br label %if.end7

if.end7:                                          ; preds = %ixgbe_rcv_msg_from_vf.exit, %if.end.if.end7_crit_edge
  %call9 = call i32 @ixgbe_check_for_ack(ptr noundef %hw1, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg.i) #10
  %371 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 1073741824, ptr %msg.i, align 4
  %372 = ptrtoint ptr %vfinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %vfinfo.i.i, align 16
  %clear_to_send.i26 = getelementptr %struct.vf_data_storage, ptr %373, i32 %vf.0203, i32 4
  %374 = ptrtoint ptr %clear_to_send.i26 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %clear_to_send.i26, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %tobool.not.i27 = icmp eq i8 %375, 0
  br i1 %tobool.not.i27, label %if.then.i, label %if.then11.ixgbe_rcv_ack_from_vf.exit_crit_edge

if.then11.ixgbe_rcv_ack_from_vf.exit_crit_edge:   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_rcv_ack_from_vf.exit

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %call.i29 = call i32 @ixgbe_write_mbx(ptr noundef %hw1, ptr noundef nonnull %msg.i, i16 noundef zeroext 1, i16 noundef zeroext %conv) #10
  br label %ixgbe_rcv_ack_from_vf.exit

ixgbe_rcv_ack_from_vf.exit:                       ; preds = %if.then.i, %if.then11.ixgbe_rcv_ack_from_vf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg.i) #10
  br label %for.inc

for.inc:                                          ; preds = %ixgbe_rcv_ack_from_vf.exit, %if.end7.for.inc_crit_edge
  %inc = add nuw i32 %vf.0203, 1
  %376 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %num_vfs, align 4
  %cmp = icmp ult i32 %inc, %377
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_check_for_rst(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_vf_reset_event(ptr noundef %adapter, i32 noundef %vf) unnamed_addr #5 align 64 {
entry:
  %bits.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %vfinfo2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %0 = ptrtoint ptr %vfinfo2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfinfo2, align 16
  %mask = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 2
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mask, align 4
  %4 = sub i16 0, %3
  %5 = and i16 %3, %4
  %hw_tcs = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 41
  %6 = ptrtoint ptr %hw_tcs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_tcs, align 4
  %offset.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %offset.i, align 2
  %10 = and i16 %9, 31
  %rem.i = zext i16 %10 to i32
  %shl.i = shl nuw i32 1, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %rem2.i = and i32 %vf, 31
  %shl3.i = shl nuw i32 1, %rem2.i
  %11 = getelementptr inbounds [2 x i32], ptr %bits.i, i32 0, i32 1
  %div106.i = lshr i32 %vf, 5
  %flags2.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %.lobit.i = and i32 %div106.i, 1
  %arrayidx9.i = getelementptr [2 x i32], ptr %bits.i, i32 0, i32 %.lobit.i
  %rem15.i = xor i32 %.lobit.i, 1
  %arrayidx16.i = getelementptr [2 x i32], ptr %bits.i, i32 0, i32 %rem15.i
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry
  %dec116.i = phi i32 [ 63, %entry ], [ %dec.i, %cleanup.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits.i) #10
  %12 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %bits.i, align 4, !annotation !120
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %11, align 4, !annotation !120
  %mul.i = shl i32 %dec116.i, 1
  %add4.i = add nuw nsw i32 %mul.i, %div106.i
  %mul5.i = shl i32 %add4.i, 2
  %add6.i = add nuw nsw i32 %mul5.i, 61952
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add6.i) #10
  %and.i = and i32 %call.i, %shl3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %xor.i = xor i32 %call.i, %shl3.i
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %xor.i, ptr %arrayidx9.i, align 4
  %mul11.i = xor i32 %mul5.i, 4
  %add12.i = add i32 %mul11.i, 61952
  %call13.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add12.i) #10
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call13.i, ptr %arrayidx16.i, align 4
  %16 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %offset.i, align 2
  %18 = lshr i16 %17, 5
  %div22.i = zext i16 %18 to i32
  %xor23.i = xor i32 %div22.i, 1
  %arrayidx24.i = getelementptr [2 x i32], ptr %bits.i, i32 0, i32 %xor23.i
  %19 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not.i = icmp eq i32 %20, 0
  br i1 %tobool25.not.i, label %lor.lhs.false.i, label %if.end.i.update_vlvfb.i_crit_edge

if.end.i.update_vlvfb.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_vlvfb.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx32.i = getelementptr [2 x i32], ptr %bits.i, i32 0, i32 %div22.i
  %21 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx32.i, align 4
  %and33.i = and i32 %22, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %lor.lhs.false.i.update_vlvfb.i_crit_edge

lor.lhs.false.i.update_vlvfb.i_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_vlvfb.i

if.end36.i:                                       ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool38.not.i = icmp eq i32 %24, 0
  br i1 %tobool38.not.i, label %lor.lhs.false39.i, label %if.end36.i.update_vlvf.i_crit_edge

if.end36.i.update_vlvf.i_crit_edge:               ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_vlvf.i

lor.lhs.false39.i:                                ; preds = %if.end36.i
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool41.not.i = icmp eq i32 %26, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %lor.lhs.false39.i.update_vlvf.i_crit_edge

lor.lhs.false39.i.update_vlvf.i_crit_edge:        ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_vlvf.i

if.end43.i:                                       ; preds = %lor.lhs.false39.i
  %mul44.i = shl i32 %dec116.i, 2
  %add45.i = add nuw nsw i32 %mul44.i, 61696
  %call46.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add45.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end43.i.update_vlvfb.i_crit_edge, label %if.end49.i

if.end43.i.update_vlvfb.i_crit_edge:              ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_vlvfb.i

if.end49.i:                                       ; preds = %if.end43.i
  %rem51.i = and i32 %call46.i, 31
  %shl52.i = shl nuw i32 1, %rem51.i
  %27 = lshr i32 %call46.i, 3
  %mul54.i = and i32 %27, 508
  %add55.i = or i32 %mul54.i, 40960
  %call56.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add55.i) #10
  %and57.i = and i32 %call56.i, %shl52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end49.i.update_vlvf.i_crit_edge, label %if.then59.i

if.end49.i.update_vlvf.i_crit_edge:               ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_vlvf.i

if.then59.i:                                      ; preds = %if.end49.i
  %28 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.then59.i.update_vlvf.i_crit_edge, label %do.body1.i.i

if.then59.i.update_vlvf.i_crit_edge:              ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_vlvf.i

do.body1.i.i:                                     ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  %xor63.i = xor i32 %call56.i, %shl52.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %xor63.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %add55.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #10, !srcloc !119
  br label %update_vlvf.i

update_vlvf.i:                                    ; preds = %do.body1.i.i, %if.then59.i.update_vlvf.i_crit_edge, %if.end49.i.update_vlvf.i_crit_edge, %lor.lhs.false39.i.update_vlvf.i_crit_edge, %if.end36.i.update_vlvf.i_crit_edge
  %31 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i108.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i108.i, label %update_vlvf.i.ixgbe_write_reg.exit111.i_crit_edge, label %do.body1.i110.i

update_vlvf.i.ixgbe_write_reg.exit111.i_crit_edge: ; preds = %update_vlvf.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit111.i

do.body1.i110.i:                                  ; preds = %update_vlvf.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul65.i = shl i32 %dec116.i, 2
  %add66.i = add nuw nsw i32 %mul65.i, 61696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i109.i = getelementptr i8, ptr %32, i32 %add66.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 0) #10, !srcloc !119
  br label %ixgbe_write_reg.exit111.i

ixgbe_write_reg.exit111.i:                        ; preds = %do.body1.i110.i, %update_vlvf.i.ixgbe_write_reg.exit111.i_crit_edge
  %33 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags2.i, align 8
  %and67.i = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  %spec.select.i = select i1 %tobool68.not.i, i32 0, i32 %xor.i
  br label %update_vlvfb.i

update_vlvfb.i:                                   ; preds = %ixgbe_write_reg.exit111.i, %if.end43.i.update_vlvfb.i_crit_edge, %lor.lhs.false.i.update_vlvfb.i_crit_edge, %if.end.i.update_vlvfb.i_crit_edge
  %vlvfb.0.i = phi i32 [ %xor.i, %if.end.i.update_vlvfb.i_crit_edge ], [ %xor.i, %lor.lhs.false.i.update_vlvfb.i_crit_edge ], [ %xor.i, %if.end43.i.update_vlvfb.i_crit_edge ], [ %spec.select.i, %ixgbe_write_reg.exit111.i ]
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i112.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i112.i, label %update_vlvfb.i.cleanup.i_crit_edge, label %do.body1.i114.i

update_vlvfb.i.cleanup.i_crit_edge:               ; preds = %update_vlvfb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

do.body1.i114.i:                                  ; preds = %update_vlvfb.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %37 = tail call i32 @llvm.bswap.i32(i32 %vlvfb.0.i) #10
  %add.ptr.i113.i = getelementptr i8, ptr %36, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %37) #10, !srcloc !119
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body1.i114.i, %update_vlvfb.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits.i) #10
  %dec.i = add nsw i32 %dec116.i, -1
  %tobool.not.i = icmp eq i32 %dec116.i, 0
  br i1 %tobool.not.i, label %ixgbe_clear_vf_vlans.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ixgbe_clear_vf_vlans.exit:                        ; preds = %cleanup.i
  %and = zext i16 %5 to i32
  %pf_vlan = getelementptr %struct.vf_data_storage, ptr %1, i32 %vf, i32 6
  %38 = ptrtoint ptr %pf_vlan to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pf_vlan, align 2
  %conv8 = zext i16 %39 to i32
  %div3.i.i = lshr i32 %conv8, 5
  %arrayidx.i.i = getelementptr i32, ptr %adapter, i32 %div3.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv8, 31
  %42 = shl nuw i32 1, %and.i.i
  %43 = and i32 %42, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool2.not.i = icmp eq i32 %43, 0
  br i1 %tobool2.not.i, label %ixgbe_clear_vf_vlans.exit.if.end7.i_crit_edge, label %if.then.i

ixgbe_clear_vf_vlans.exit.if.end7.i_crit_edge:    ; preds = %ixgbe_clear_vf_vlans.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i:                                        ; preds = %ixgbe_clear_vf_vlans.exit
  %set_vfta.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 0, i32 48
  %44 = ptrtoint ptr %set_vfta.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_vfta.i, align 4
  %46 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %offset.i, align 2
  %conv.i = zext i16 %47 to i32
  %call4.i = tail call i32 %45(ptr noundef %hw1, i32 noundef %conv8, i32 noundef %conv.i, i1 noundef zeroext true, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then.i.ixgbe_set_vf_vlan.exit_crit_edge

if.then.i.ixgbe_set_vf_vlan.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_vlan.exit

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %ixgbe_clear_vf_vlans.exit.if.end7.i_crit_edge
  %set_vfta10.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 0, i32 48
  %48 = ptrtoint ptr %set_vfta10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_vfta10.i, align 4
  %call13.i115 = tail call i32 %49(ptr noundef %hw1, i32 noundef %conv8, i32 noundef %vf, i1 noundef zeroext true, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i115)
  %tobool16.not.i = icmp eq i32 %call13.i115, 0
  br i1 %tobool16.not.i, label %if.end7.i.ixgbe_set_vf_vlan.exit_crit_edge, label %if.end18.i

if.end7.i.ixgbe_set_vf_vlan.exit_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_vlan.exit

if.end18.i:                                       ; preds = %if.end7.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.i.i, align 4
  %52 = and i32 %51, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool22.not.i = icmp eq i32 %52, 0
  br i1 %tobool22.not.i, label %lor.lhs.false.i118, label %if.end18.i.if.then24.i_crit_edge

if.end18.i.if.then24.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i

lor.lhs.false.i118:                               ; preds = %if.end18.i
  %53 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags2.i, align 8
  %and.i117 = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool23.not.i = icmp eq i32 %and.i117, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i118.ixgbe_set_vf_vlan.exit_crit_edge, label %lor.lhs.false.i118.if.then24.i_crit_edge

lor.lhs.false.i118.if.then24.i_crit_edge:         ; preds = %lor.lhs.false.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i

lor.lhs.false.i118.ixgbe_set_vf_vlan.exit_crit_edge: ; preds = %lor.lhs.false.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_vlan.exit

if.then24.i:                                      ; preds = %lor.lhs.false.i118.if.then24.i_crit_edge, %if.end18.i.if.then24.i_crit_edge
  tail call void @ixgbe_update_pf_promisc_vlvf(ptr noundef %adapter, i32 noundef %conv8) #10
  br label %ixgbe_set_vf_vlan.exit

ixgbe_set_vf_vlan.exit:                           ; preds = %if.then24.i, %lor.lhs.false.i118.ixgbe_set_vf_vlan.exit_crit_edge, %if.end7.i.ixgbe_set_vf_vlan.exit_crit_edge, %if.then.i.ixgbe_set_vf_vlan.exit_crit_edge
  %55 = ptrtoint ptr %pf_vlan to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pf_vlan, align 2
  %mul.i120 = shl i32 %vf, 2
  %add.i = add i32 %mul.i120, 61440
  %call.i121 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add.i) #10
  %57 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i122 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i122, label %ixgbe_set_vf_vlan.exit.ixgbe_set_vmolr.exit_crit_edge, label %do.body1.i.i125

ixgbe_set_vf_vlan.exit.ixgbe_set_vmolr.exit_crit_edge: ; preds = %ixgbe_set_vf_vlan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vmolr.exit

do.body1.i.i125:                                  ; preds = %ixgbe_set_vf_vlan.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.not = icmp eq i16 %56, 0
  %or1.i = or i32 %call.i121, 150994944
  %or.i = and i32 %call.i121, -150994945
  %and.i123 = or i32 %or.i, 134217728
  %vmolr.0.i = select i1 %tobool.not, i32 %or1.i, i32 %and.i123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %59 = tail call i32 @llvm.bswap.i32(i32 %vmolr.0.i) #10
  %add.ptr.i.i124 = getelementptr i8, ptr %58, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124, i32 %59) #10, !srcloc !119
  br label %ixgbe_set_vmolr.exit

ixgbe_set_vmolr.exit:                             ; preds = %do.body1.i.i125, %ixgbe_set_vf_vlan.exit.ixgbe_set_vmolr.exit_crit_edge
  %60 = ptrtoint ptr %pf_vlan to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pf_vlan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool11.not = icmp eq i16 %61, 0
  br i1 %tobool11.not, label %land.lhs.true, label %ixgbe_set_vmolr.exit.if.else_crit_edge

ixgbe_set_vmolr.exit.if.else_crit_edge:           ; preds = %ixgbe_set_vmolr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %ixgbe_set_vmolr.exit
  %pf_qos = getelementptr %struct.vf_data_storage, ptr %1, i32 %vf, i32 7
  %62 = ptrtoint ptr %pf_qos to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %pf_qos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool12.not = icmp eq i16 %63, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %64 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i127 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i127, label %if.then.if.end30_crit_edge, label %do.body1.i.i131

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.body1.i.i131:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.i129 = add i32 %mul.i120, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i130 = getelementptr i8, ptr %65, i32 %add.i129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i130, i32 0) #10, !srcloc !119
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %ixgbe_set_vmolr.exit.if.else_crit_edge
  %pf_qos15 = getelementptr %struct.vf_data_storage, ptr %1, i32 %vf, i32 7
  %66 = ptrtoint ptr %pf_qos15 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pf_qos15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool17.not = icmp ne i16 %67, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool18.not = icmp eq i8 %7, 0
  %or.cond112 = select i1 %tobool17.not, i1 true, i1 %tobool18.not
  br i1 %or.cond112, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else
  %68 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i133 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i133, label %if.then19.if.end_crit_edge, label %do.body1.i.i140

if.then19.if.end_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1.i.i140:                                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %add.i135 = add i32 %mul.i120, 32768
  %conv2.i = zext i16 %67 to i32
  %shl.i136 = shl nuw nsw i32 %conv2.i, 13
  %conv.i137 = zext i16 %61 to i32
  %or.i138 = or i32 %shl.i136, %conv.i137
  %or3.i = or i32 %or.i138, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %70 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #10
  %add.ptr.i.i139 = getelementptr i8, ptr %69, i32 %add.i135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i139, i32 %70) #10, !srcloc !119
  br label %if.end

if.else22:                                        ; preds = %if.else
  %default_up = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 111
  %71 = ptrtoint ptr %default_up to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %default_up, align 8
  %73 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i142 = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i142, label %if.else22.if.end_crit_edge, label %do.body1.i.i151

if.else22.if.end_crit_edge:                       ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body1.i.i151:                                  ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  %add.i144 = add i32 %mul.i120, 32768
  %conv2.i145 = zext i8 %72 to i32
  %shl.i146 = shl nuw nsw i32 %conv2.i145, 13
  %conv.i147 = zext i16 %61 to i32
  %or.i148 = or i32 %shl.i146, %conv.i147
  %or3.i149 = or i32 %or.i148, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %75 = tail call i32 @llvm.bswap.i32(i32 %or3.i149) #10
  %add.ptr.i.i150 = getelementptr i8, ptr %74, i32 %add.i144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150, i32 %75) #10, !srcloc !119
  br label %if.end

if.end:                                           ; preds = %do.body1.i.i151, %if.else22.if.end_crit_edge, %do.body1.i.i140, %if.then19.if.end_crit_edge
  %spoofchk_enabled = getelementptr %struct.vf_data_storage, ptr %1, i32 %vf, i32 9
  %76 = ptrtoint ptr %spoofchk_enabled to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %spoofchk_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool25.not = icmp eq i8 %77, 0
  br i1 %tobool25.not, label %if.end.if.end30_crit_edge, label %if.then26

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %set_vlan_anti_spoofing = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 0, i32 51
  %78 = ptrtoint ptr %set_vlan_anti_spoofing to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_vlan_anti_spoofing, align 4
  tail call void %79(ptr noundef %hw1, i1 noundef zeroext true, i32 noundef %vf) #10
  %set_mac_anti_spoofing = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 0, i32 50
  %80 = ptrtoint ptr %set_mac_anti_spoofing to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %set_mac_anti_spoofing, align 4
  tail call void %81(ptr noundef %hw1, i1 noundef zeroext true, i32 noundef %vf) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end.if.end30_crit_edge, %do.body1.i.i131, %if.then.if.end30_crit_edge
  %82 = ptrtoint ptr %vfinfo2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vfinfo2, align 16
  %num_vf_mc_hashes = getelementptr %struct.vf_data_storage, ptr %83, i32 %vf, i32 3
  %84 = ptrtoint ptr %num_vf_mc_hashes to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %num_vf_mc_hashes, align 2
  tail call void @ixgbe_ipsec_vf_clear(ptr noundef %adapter, i32 noundef %vf) #10
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %85 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %netdev, align 128
  tail call void @ixgbe_set_rx_mode(ptr noundef %86) #10
  %87 = ptrtoint ptr %vfinfo2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vfinfo2, align 16
  %vf_mac_addresses = getelementptr %struct.vf_data_storage, ptr %88, i32 %vf, i32 1
  %conv35 = trunc i32 %vf to i16
  %call36 = tail call i32 @ixgbe_del_mac_filter(ptr noundef %adapter, ptr noundef %vf_mac_addresses, i16 noundef zeroext %conv35) #10
  %vf_mvs.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 103
  %89 = ptrtoint ptr %vf_mvs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %pos.083.i = load ptr, ptr %vf_mvs.i, align 4
  %cmp.i.not84.i = icmp eq ptr %pos.083.i, %vf_mvs.i
  br i1 %cmp.i.not84.i, label %if.end30.ixgbe_set_vf_macvlan.exit_crit_edge, label %if.end30.for.body.i155_crit_edge

if.end30.for.body.i155_crit_edge:                 ; preds = %if.end30
  br label %for.body.i155

if.end30.ixgbe_set_vf_macvlan.exit_crit_edge:     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_macvlan.exit

for.body.i155:                                    ; preds = %for.inc.i.for.body.i155_crit_edge, %if.end30.for.body.i155_crit_edge
  %pos.085.i = phi ptr [ %pos.0.i, %for.inc.i.for.body.i155_crit_edge ], [ %pos.083.i, %if.end30.for.body.i155_crit_edge ]
  %vf5.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.085.i, i32 0, i32 1
  %90 = ptrtoint ptr %vf5.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vf5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %vf)
  %cmp6.i = icmp eq i32 %91, %vf
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i155.for.inc.i_crit_edge

for.body.i155.for.inc.i_crit_edge:                ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %vf5.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %vf5.i, align 4
  %free.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.085.i, i32 0, i32 2
  %93 = ptrtoint ptr %free.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %free.i, align 4
  %is_macvlan.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.085.i, i32 0, i32 3
  %94 = ptrtoint ptr %is_macvlan.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %is_macvlan.i, align 1
  %vf_macvlan.i = getelementptr inbounds %struct.vf_macvlans, ptr %pos.085.i, i32 0, i32 4
  %call9.i = tail call i32 @ixgbe_del_mac_filter(ptr noundef %adapter, ptr noundef %vf_macvlan.i, i16 noundef zeroext %conv35) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i155.for.inc.i_crit_edge
  %95 = ptrtoint ptr %pos.085.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %pos.0.i = load ptr, ptr %pos.085.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %vf_mvs.i
  br i1 %cmp.i.not.i, label %for.inc.i.ixgbe_set_vf_macvlan.exit_crit_edge, label %for.inc.i.for.body.i155_crit_edge

for.inc.i.for.body.i155_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i155

for.inc.i.ixgbe_set_vf_macvlan.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_macvlan.exit

ixgbe_set_vf_macvlan.exit:                        ; preds = %for.inc.i.ixgbe_set_vf_macvlan.exit_crit_edge, %if.end30.ixgbe_set_vf_macvlan.exit_crit_edge
  %96 = ptrtoint ptr %vfinfo2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %vfinfo2, align 16
  %vf_api = getelementptr %struct.vf_data_storage, ptr %97, i32 %vf, i32 13
  %98 = ptrtoint ptr %vf_api to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %vf_api, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp164.not = icmp eq i16 %5, 0
  br i1 %cmp164.not, label %ixgbe_set_vf_macvlan.exit.for.end_crit_edge, label %for.body.lr.ph

ixgbe_set_vf_macvlan.exit.for.end_crit_edge:      ; preds = %ixgbe_set_vf_macvlan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %ixgbe_set_vf_macvlan.exit
  %mul = mul i32 %and, %vf
  br label %for.body

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %for.body.lr.ph
  %queue.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end52.for.body_crit_edge ]
  %add41 = add i32 %queue.0165, %mul
  %mul42 = shl i32 %add41, 6
  %add43 = add i32 %mul42, 24616
  %call44 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %for.body.if.end52_crit_edge, label %if.then46

for.body.if.end52_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then46:                                        ; preds = %for.body
  %99 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i, label %if.then46.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then46.ixgbe_write_reg.exit_crit_edge:         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %call44, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %101 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %add.ptr.i = getelementptr i8, ptr %100, i32 %add43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %101) #10, !srcloc !119
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then46.ixgbe_write_reg.exit_crit_edge
  %102 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i159 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i159, label %ixgbe_write_reg.exit.if.end52_crit_edge, label %do.body1.i161

ixgbe_write_reg.exit.if.end52_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.body1.i161:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %and49 = and i32 %call44, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %104 = tail call i32 @llvm.bswap.i32(i32 %and49) #10
  %add.ptr.i160 = getelementptr i8, ptr %103, i32 %add43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %104) #10, !srcloc !119
  br label %if.end52

if.end52:                                         ; preds = %do.body1.i161, %ixgbe_write_reg.exit.if.end52_crit_edge, %for.body.if.end52_crit_edge
  %inc = add nuw nsw i32 %queue.0165, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %if.end52.for.end_crit_edge, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end52.for.end_crit_edge, %ixgbe_set_vf_macvlan.exit.for.end_crit_edge
  %call53 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_check_for_msg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_check_for_ack(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_disable_tx_rx(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 33040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !119
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i5 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i5, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit8_crit_edge, label %do.body1.i7

ixgbe_write_reg.exit.ixgbe_write_reg.exit8_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit8

do.body1.i7:                                      ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i6 = getelementptr i8, ptr %3, i32 33044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #10, !srcloc !119
  br label %ixgbe_write_reg.exit8

ixgbe_write_reg.exit8:                            ; preds = %do.body1.i7, %ixgbe_write_reg.exit.ixgbe_write_reg.exit8_crit_edge
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i9 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i9, label %ixgbe_write_reg.exit8.ixgbe_write_reg.exit12_crit_edge, label %do.body1.i11

ixgbe_write_reg.exit8.ixgbe_write_reg.exit12_crit_edge: ; preds = %ixgbe_write_reg.exit8
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit12

do.body1.i11:                                     ; preds = %ixgbe_write_reg.exit8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 20960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #10, !srcloc !119
  br label %ixgbe_write_reg.exit12

ixgbe_write_reg.exit12:                           ; preds = %do.body1.i11, %ixgbe_write_reg.exit8.ixgbe_write_reg.exit12_crit_edge
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i13 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i13, label %ixgbe_write_reg.exit12.ixgbe_write_reg.exit16_crit_edge, label %do.body1.i15

ixgbe_write_reg.exit12.ixgbe_write_reg.exit16_crit_edge: ; preds = %ixgbe_write_reg.exit12
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit16

do.body1.i15:                                     ; preds = %ixgbe_write_reg.exit12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 20964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #10, !srcloc !119
  br label %ixgbe_write_reg.exit16

ixgbe_write_reg.exit16:                           ; preds = %do.body1.i15, %ixgbe_write_reg.exit12.ixgbe_write_reg.exit16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ping_all_vfs(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %ping = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ping) #10
  %num_vfs = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 100
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %ping to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %ping, align 4
  %3 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vfinfo, align 16
  %clear_to_send = getelementptr %struct.vf_data_storage, ptr %4, i32 %i.08, i32 4
  %5 = ptrtoint ptr %clear_to_send to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %clear_to_send, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %spec.store.select = select i1 %tobool.not, i32 256, i32 536871168
  %7 = ptrtoint ptr %ping to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.store.select, ptr %ping, align 4
  %conv = trunc i32 %i.08 to i16
  %call = call i32 @ixgbe_write_mbx(ptr noundef %hw1, ptr noundef nonnull %ping, i16 noundef zeroext 1, i16 noundef zeroext %conv) #10
  %inc = add nuw i32 %i.08, 1
  %8 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_vfs, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ping) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_mbx(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ndo_set_vf_mac(ptr noundef %netdev, i32 noundef %vf, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_vfs = getelementptr i8, ptr %netdev, i32 67628
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf)
  %cmp.not = icmp ugt i32 %1, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup61_crit_edge

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup61

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.if.else31_crit_edge

if.end.if.else31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else31

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else31_crit_edge, label %do.end

is_valid_ether_addr.exit.if.else31_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else31

do.end:                                           ; preds = %is_valid_ether_addr.exit
  %pdev = getelementptr i8, ptr %netdev, i32 2824
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %mac, i32 noundef %vf) #13
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.13) #13
  %vfinfo.i = getelementptr i8, ptr %netdev, i32 67632
  %11 = ptrtoint ptr %vfinfo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vfinfo.i, align 16
  %vf_mac_addresses.i = getelementptr %struct.vf_data_storage, ptr %12, i32 %vf, i32 1
  %conv.i = trunc i32 %vf to i16
  %call.i = tail call i32 @ixgbe_del_mac_filter(ptr noundef %add.ptr.i, ptr noundef %vf_mac_addresses.i, i16 noundef zeroext %conv.i) #10
  %call3.i = tail call i32 @ixgbe_add_mac_filter(ptr noundef %add.ptr.i, ptr noundef %mac, i16 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i = icmp sgt i32 %call3.i, -1
  %13 = ptrtoint ptr %vfinfo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vfinfo.i, align 16
  %vf_mac_addresses7.i = getelementptr %struct.vf_data_storage, ptr %14, i32 %vf, i32 1
  br i1 %cmp.i, label %if.then11, label %do.end27

if.then11:                                        ; preds = %do.end
  %15 = call ptr @memcpy(ptr %vf_mac_addresses7.i, ptr %mac, i32 6)
  %16 = ptrtoint ptr %vfinfo.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vfinfo.i, align 16
  %pf_set_mac = getelementptr %struct.vf_data_storage, ptr %17, i32 %vf, i32 5
  %18 = ptrtoint ptr %pf_set_mac to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pf_set_mac, align 1
  %state = getelementptr i8, ptr %netdev, i32 2832
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.then11.cleanup61_crit_edge, label %do.end16

if.then11.cleanup61_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup61

do.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.16) #13
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23, ptr noundef nonnull @.str.19) #13
  br label %cleanup61

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = call ptr @memset(ptr %vf_mac_addresses7.i, i32 0, i32 6)
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29, ptr noundef nonnull @.str.22) #13
  br label %cleanup61

if.else31:                                        ; preds = %is_valid_ether_addr.exit.if.else31_crit_edge, %if.end.if.else31_crit_edge
  %add.ptr.i91 = getelementptr i8, ptr %mac, i32 4
  %29 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i91, align 2
  %conv.i92 = zext i16 %30 to i32
  %or.i = or i32 %3, %conv.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i93 = icmp eq i32 %or.i, 0
  br i1 %cmp.i93, label %if.then33, label %if.else31.cleanup61_crit_edge

if.else31.cleanup61_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup61

if.then33:                                        ; preds = %if.else31
  %vfinfo34 = getelementptr i8, ptr %netdev, i32 67632
  %31 = ptrtoint ptr %vfinfo34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vfinfo34, align 16
  %vf_mac_addresses = getelementptr %struct.vf_data_storage, ptr %32, i32 %vf, i32 1
  %33 = ptrtoint ptr %vf_mac_addresses to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vf_mac_addresses, align 4
  %add.ptr.i94 = getelementptr i8, ptr %vf_mac_addresses, i32 4
  %35 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i94, align 2
  %conv.i95 = zext i16 %36 to i32
  %or.i96 = or i32 %34, %conv.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i96)
  %cmp.i97 = icmp eq i32 %or.i96, 0
  br i1 %cmp.i97, label %if.then33.cleanup61_crit_edge, label %do.end41

if.then33.cleanup61_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup61

do.end41:                                         ; preds = %if.then33
  %pdev42 = getelementptr i8, ptr %netdev, i32 2824
  %37 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev42, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43, ptr noundef nonnull @.str.25, i32 noundef %vf) #13
  %conv = trunc i32 %vf to i16
  %call44 = tail call i32 @ixgbe_del_mac_filter(ptr noundef %add.ptr.i, ptr noundef %vf_mac_addresses, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call44)
  %cmp45 = icmp sgt i32 %call44, -1
  br i1 %cmp45, label %if.then47, label %do.end54

if.then47:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %vfinfo34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vfinfo34, align 16
  %pf_set_mac50 = getelementptr %struct.vf_data_storage, ptr %40, i32 %vf, i32 5
  %41 = ptrtoint ptr %pf_set_mac50 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %pf_set_mac50, align 1
  %42 = call ptr @memcpy(ptr %vf_mac_addresses, ptr %mac, i32 6)
  br label %cleanup61

do.end54:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev42, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev56, ptr noundef nonnull @.str.28) #13
  br label %cleanup61

cleanup61:                                        ; preds = %do.end54, %if.then47, %if.then33.cleanup61_crit_edge, %if.else31.cleanup61_crit_edge, %do.end27, %do.end16, %if.then11.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup61_crit_edge ], [ 0, %if.then33.cleanup61_crit_edge ], [ %call3.i, %do.end16 ], [ %call3.i, %if.then11.cleanup61_crit_edge ], [ %call3.i, %do.end27 ], [ -22, %if.else31.cleanup61_crit_edge ], [ %call44, %if.then47 ], [ %call44, %do.end54 ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_del_mac_filter(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ndo_set_vf_vlan(ptr noundef %netdev, i32 noundef %vf, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_vfs = getelementptr i8, ptr %netdev, i32 67628
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf)
  %cmp.not = icmp ule i32 %1, %vf
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan)
  %cmp1 = icmp ugt i16 %vlan, 4095
  %or.cond = or i1 %cmp1, %cmp.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %qos)
  %cmp5 = icmp ugt i8 %qos, 7
  %or.cond41 = or i1 %cmp5, %or.cond
  br i1 %or.cond41, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %vlan_proto)
  %cmp8.not = icmp eq i16 %vlan_proto, -32512
  br i1 %cmp8.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan)
  %tobool.not = icmp eq i16 %vlan, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qos)
  %tobool15.not = icmp eq i8 %qos, 0
  %or.cond42 = and i1 %tobool.not, %tobool15.not
  br i1 %or.cond42, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end11
  %vfinfo = getelementptr i8, ptr %netdev, i32 67632
  %2 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfinfo, align 16
  %pf_vlan = getelementptr %struct.vf_data_storage, ptr %3, i32 %vf, i32 6
  %4 = ptrtoint ptr %pf_vlan to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pf_vlan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool17.not = icmp eq i16 %5, 0
  br i1 %tobool17.not, label %if.then16.if.end23_crit_edge, label %if.end20

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end20:                                         ; preds = %if.then16
  %call19 = tail call fastcc i32 @ixgbe_disable_port_vlan(ptr noundef %add.ptr.i, i32 noundef %vf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %if.end20.if.end23_crit_edge, %if.then16.if.end23_crit_edge
  %conv.i = zext i16 %vlan to i32
  %hw1.i.i = getelementptr i8, ptr %netdev, i32 6528
  %div3.i.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr.i, i32 %div3.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %conv.i, 31
  %8 = shl nuw i32 1, %and.i.i.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i.i, label %if.end23.if.end7.i.i_crit_edge, label %if.then.i.i

if.end23.if.end7.i.i_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.end23
  %set_vfta.i.i = getelementptr i8, ptr %netdev, i32 6728
  %10 = ptrtoint ptr %set_vfta.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_vfta.i.i, align 4
  %offset.i.i = getelementptr i8, ptr %netdev, i32 4870
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %call4.i.i = tail call i32 %11(ptr noundef %hw1.i.i, i32 noundef %conv.i, i32 noundef %conv.i.i, i1 noundef zeroext true, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i.i.if.end7.i.i_crit_edge, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.if.end7.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then.i.i.if.end7.i.i_crit_edge, %if.end23.if.end7.i.i_crit_edge
  %set_vfta10.i.i = getelementptr i8, ptr %netdev, i32 6728
  %14 = ptrtoint ptr %set_vfta10.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_vfta10.i.i, align 4
  %call13.i.i = tail call i32 %15(ptr noundef %hw1.i.i, i32 noundef %conv.i, i32 noundef %vf, i1 noundef zeroext true, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool16.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end.i, label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end7.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %18 = and i32 %17, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool22.not.i.i, label %lor.lhs.false.i.i, label %if.end18.i.i.if.then24.i.i_crit_edge

if.end18.i.i.if.then24.i.i_crit_edge:             ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i.i

lor.lhs.false.i.i:                                ; preds = %if.end18.i.i
  %flags2.i.i = getelementptr i8, ptr %netdev, i32 2840
  %19 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags2.i.i, align 8
  %and.i.i = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool23.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool23.not.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.then24.i.i_crit_edge

lor.lhs.false.i.i.if.then24.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then24.i.i_crit_edge, %if.end18.i.i.if.then24.i.i_crit_edge
  tail call void @ixgbe_update_pf_promisc_vlvf(ptr noundef %add.ptr.i, i32 noundef %conv.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end7.i.i
  %21 = ptrtoint ptr %set_vfta10.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_vfta10.i.i, align 4
  %call13.i52.i = tail call i32 %22(ptr noundef %hw1.i.i, i32 noundef 0, i32 noundef %vf, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %add.ptr.i, align 4
  %25 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool22.not.i55.i = icmp eq i32 %25, 0
  br i1 %tobool22.not.i55.i, label %lor.lhs.false.i60.i, label %if.end.i.if.then24.i61.i_crit_edge

if.end.i.if.then24.i61.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i61.i

lor.lhs.false.i60.i:                              ; preds = %if.end.i
  %flags2.i57.i = getelementptr i8, ptr %netdev, i32 2840
  %26 = ptrtoint ptr %flags2.i57.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags2.i57.i, align 8
  %and.i58.i = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58.i)
  %tobool23.not.i59.i = icmp eq i32 %and.i58.i, 0
  br i1 %tobool23.not.i59.i, label %lor.lhs.false.i60.i.ixgbe_set_vf_vlan.exit63.i_crit_edge, label %lor.lhs.false.i60.i.if.then24.i61.i_crit_edge

lor.lhs.false.i60.i.if.then24.i61.i_crit_edge:    ; preds = %lor.lhs.false.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i61.i

lor.lhs.false.i60.i.ixgbe_set_vf_vlan.exit63.i_crit_edge: ; preds = %lor.lhs.false.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_vlan.exit63.i

if.then24.i61.i:                                  ; preds = %lor.lhs.false.i60.i.if.then24.i61.i_crit_edge, %if.end.i.if.then24.i61.i_crit_edge
  tail call void @ixgbe_update_pf_promisc_vlvf(ptr noundef %add.ptr.i, i32 noundef 0) #10
  br label %ixgbe_set_vf_vlan.exit63.i

ixgbe_set_vf_vlan.exit63.i:                       ; preds = %if.then24.i61.i, %lor.lhs.false.i60.i.ixgbe_set_vf_vlan.exit63.i_crit_edge
  %conv3.i = zext i8 %qos to i16
  %28 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw1.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %29, null
  %.pre.i = shl i32 %vf, 2
  br i1 %tobool.not.i.i.i.i, label %ixgbe_set_vf_vlan.exit63.i.ixgbe_set_vmvir.exit.i_crit_edge, label %do.body1.i.i.i

ixgbe_set_vf_vlan.exit63.i.ixgbe_set_vmvir.exit.i_crit_edge: ; preds = %ixgbe_set_vf_vlan.exit63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vmvir.exit.i

do.body1.i.i.i:                                   ; preds = %ixgbe_set_vf_vlan.exit63.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i = add i32 %.pre.i, 32768
  %conv2.i.i = zext i8 %qos to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 13
  %or.i.i = or i32 %shl.i.i, %conv.i
  %or3.i.i = or i32 %or.i.i, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i) #10
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %30) #10, !srcloc !119
  br label %ixgbe_set_vmvir.exit.i

ixgbe_set_vmvir.exit.i:                           ; preds = %do.body1.i.i.i, %ixgbe_set_vf_vlan.exit63.i.ixgbe_set_vmvir.exit.i_crit_edge
  %add.i67.i = add i32 %.pre.i, 61440
  %call.i.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1.i.i, i32 noundef %add.i67.i) #10
  %31 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw1.i.i, align 4
  %tobool.not.i.i.i68.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i68.i, label %ixgbe_set_vmvir.exit.i.ixgbe_set_vmolr.exit.i_crit_edge, label %do.body1.i.i72.i

ixgbe_set_vmvir.exit.i.ixgbe_set_vmolr.exit.i_crit_edge: ; preds = %ixgbe_set_vmvir.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vmolr.exit.i

do.body1.i.i72.i:                                 ; preds = %ixgbe_set_vmvir.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i69.i = and i32 %call.i.i, -150994945
  %and.i70.i = or i32 %or.i69.i, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i70.i) #10
  %add.ptr.i.i71.i = getelementptr i8, ptr %32, i32 %add.i67.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i71.i, i32 %33) #10, !srcloc !119
  br label %ixgbe_set_vmolr.exit.i

ixgbe_set_vmolr.exit.i:                           ; preds = %do.body1.i.i72.i, %ixgbe_set_vmvir.exit.i.ixgbe_set_vmolr.exit.i_crit_edge
  %type.i = getelementptr i8, ptr %netdev, i32 6808
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.i = icmp ugt i32 %35, 3
  br i1 %cmp.i, label %if.then5.i, label %ixgbe_set_vmolr.exit.i.if.end6.i_crit_edge

ixgbe_set_vmolr.exit.i.if.end6.i_crit_edge:       ; preds = %ixgbe_set_vmolr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then5.i:                                       ; preds = %ixgbe_set_vmolr.exit.i
  %mask.i.i = getelementptr i8, ptr %netdev, i32 4868
  %36 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mask.i.i, align 4
  %38 = sub i16 0, %37
  %39 = and i16 %37, %38
  %and.i74.i = zext i16 %39 to i32
  %mul.i75.i = mul i32 %and.i74.i, %vf
  %add6.i.i = add nuw i32 %vf, 1
  %mul7.i.i = mul i32 %add6.i.i, %and.i74.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i75.i, i32 %mul7.i.i)
  %cmp18.i.i = icmp ult i32 %mul.i75.i, %mul7.i.i
  br i1 %cmp18.i.i, label %if.then5.i.for.body.i.i_crit_edge, label %if.then5.i.if.end6.i_crit_edge

if.then5.i.if.end6.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then5.i.for.body.i.i_crit_edge:                ; preds = %if.then5.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %ixgbe_write_reg.exit.i.i.for.body.i.i_crit_edge, %if.then5.i.for.body.i.i_crit_edge
  %i.019.i.i = phi i32 [ %inc.i.i, %ixgbe_write_reg.exit.i.i.for.body.i.i_crit_edge ], [ %mul.i75.i, %if.then5.i.for.body.i.i_crit_edge ]
  %call.i76.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1.i.i, i32 noundef 8) #10
  %40 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %hw1.i.i, align 4
  %tobool.not.i.i.i77.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i77.i, label %for.body.i.i.ixgbe_write_reg.exit.i.i_crit_edge, label %do.body1.i.i81.i

for.body.i.i.ixgbe_write_reg.exit.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit.i.i

do.body1.i.i81.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i78.i = shl i32 %i.019.i.i, 8
  %or9.i.i = or i32 %shl.i78.i, 65539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %42 = tail call i32 @llvm.bswap.i32(i32 %or9.i.i) #10
  %add.ptr.i.i80.i = getelementptr i8, ptr %41, i32 12036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80.i, i32 %42) #10, !srcloc !119
  br label %ixgbe_write_reg.exit.i.i

ixgbe_write_reg.exit.i.i:                         ; preds = %do.body1.i.i81.i, %for.body.i.i.ixgbe_write_reg.exit.i.i_crit_edge
  %inc.i.i = add i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %mul7.i.i
  br i1 %exitcond.not.i.i, label %ixgbe_write_reg.exit.i.i.if.end6.i_crit_edge, label %ixgbe_write_reg.exit.i.i.for.body.i.i_crit_edge

ixgbe_write_reg.exit.i.i.for.body.i.i_crit_edge:  ; preds = %ixgbe_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

ixgbe_write_reg.exit.i.i.if.end6.i_crit_edge:     ; preds = %ixgbe_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %ixgbe_write_reg.exit.i.i.if.end6.i_crit_edge, %if.then5.i.if.end6.i_crit_edge, %ixgbe_set_vmolr.exit.i.if.end6.i_crit_edge
  %43 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vfinfo, align 16
  %pf_vlan.i = getelementptr %struct.vf_data_storage, ptr %44, i32 %vf, i32 6
  %45 = ptrtoint ptr %pf_vlan.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %vlan, ptr %pf_vlan.i, align 2
  %46 = load ptr, ptr %vfinfo, align 16
  %pf_qos.i = getelementptr %struct.vf_data_storage, ptr %46, i32 %vf, i32 7
  %47 = ptrtoint ptr %pf_qos.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv3.i, ptr %pf_qos.i, align 4
  %pdev.i = getelementptr i8, ptr %netdev, i32 2824
  %48 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %conv11.i = zext i8 %qos to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef %conv.i, i32 noundef %conv11.i, i32 noundef %vf) #13
  %state.i = getelementptr i8, ptr %netdev, i32 2832
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state.i, align 4
  %52 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool13.not.i = icmp eq i32 %52, 0
  br i1 %tobool13.not.i, label %if.end6.i.cleanup_crit_edge, label %do.end17.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end17.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i, align 8
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19.i, ptr noundef nonnull @.str.58) #13
  %55 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i, align 8
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24.i, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call fastcc i32 @ixgbe_disable_port_vlan(ptr noundef %add.ptr.i, i32 noundef %vf)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end17.i, %if.end6.i.cleanup_crit_edge, %if.then24.i.i, %lor.lhs.false.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ %call19, %if.end20.cleanup_crit_edge ], [ %call25, %if.else ], [ 0, %if.end6.i.cleanup_crit_edge ], [ 0, %do.end17.i ], [ %call13.i.i, %lor.lhs.false.i.i.cleanup_crit_edge ], [ %call13.i.i, %if.then24.i.i ], [ %call4.i.i, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_disable_port_vlan(ptr noundef %adapter, i32 noundef %vf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %0 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfinfo, align 16
  %pf_vlan = getelementptr %struct.vf_data_storage, ptr %1, i32 %vf, i32 6
  %2 = ptrtoint ptr %pf_vlan to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pf_vlan, align 2
  %conv = zext i16 %3 to i32
  %set_vfta10.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 0, i32 48
  %4 = ptrtoint ptr %set_vfta10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_vfta10.i, align 4
  %call13.i = tail call i32 %5(ptr noundef %hw1, i32 noundef %conv, i32 noundef %vf, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %div3.i45.i = lshr i32 %conv, 5
  %arrayidx.i46.i = getelementptr i32, ptr %adapter, i32 %div3.i45.i
  %6 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i46.i, align 4
  %and.i47.i = and i32 %conv, 31
  %8 = shl nuw i32 1, %and.i47.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool22.not.i = icmp eq i32 %9, 0
  br i1 %tobool22.not.i, label %lor.lhs.false.i, label %entry.if.then24.i_crit_edge

entry.if.then24.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %entry
  %flags2.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %10 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags2.i, align 8
  %and.i = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.ixgbe_set_vf_vlan.exit_crit_edge, label %lor.lhs.false.i.if.then24.i_crit_edge

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i

lor.lhs.false.i.ixgbe_set_vf_vlan.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_vlan.exit

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %entry.if.then24.i_crit_edge
  tail call void @ixgbe_update_pf_promisc_vlvf(ptr noundef %adapter, i32 noundef %conv) #10
  br label %ixgbe_set_vf_vlan.exit

ixgbe_set_vf_vlan.exit:                           ; preds = %if.then24.i, %lor.lhs.false.i.ixgbe_set_vf_vlan.exit_crit_edge
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %adapter, align 4
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  br i1 %tobool2.not.i, label %ixgbe_set_vf_vlan.exit.if.end7.i_crit_edge, label %if.then.i

ixgbe_set_vf_vlan.exit.if.end7.i_crit_edge:       ; preds = %ixgbe_set_vf_vlan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i:                                        ; preds = %ixgbe_set_vf_vlan.exit
  %15 = ptrtoint ptr %set_vfta10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_vfta10.i, align 4
  %offset.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %offset.i, align 2
  %conv.i = zext i16 %18 to i32
  %call4.i = tail call i32 %16(ptr noundef %hw1, i32 noundef 0, i32 noundef %conv.i, i1 noundef zeroext true, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then.i.ixgbe_set_vf_vlan.exit34_crit_edge

if.then.i.ixgbe_set_vf_vlan.exit34_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_vlan.exit34

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %ixgbe_set_vf_vlan.exit.if.end7.i_crit_edge
  %19 = ptrtoint ptr %set_vfta10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_vfta10.i, align 4
  %call13.i26 = tail call i32 %20(ptr noundef %hw1, i32 noundef 0, i32 noundef %vf, i1 noundef zeroext true, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i26)
  %tobool16.not.i27 = icmp eq i32 %call13.i26, 0
  br i1 %tobool16.not.i27, label %if.end7.i.ixgbe_set_vf_vlan.exit34_crit_edge, label %if.end18.i

if.end7.i.ixgbe_set_vf_vlan.exit34_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_vlan.exit34

if.end18.i:                                       ; preds = %if.end7.i
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %adapter, align 4
  %23 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not.i28 = icmp eq i32 %23, 0
  br i1 %tobool22.not.i28, label %lor.lhs.false.i32, label %if.end18.i.if.then24.i33_crit_edge

if.end18.i.if.then24.i33_crit_edge:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i33

lor.lhs.false.i32:                                ; preds = %if.end18.i
  %flags2.i29 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %24 = ptrtoint ptr %flags2.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags2.i29, align 8
  %and.i30 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool23.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool23.not.i31, label %lor.lhs.false.i32.ixgbe_set_vf_vlan.exit34_crit_edge, label %lor.lhs.false.i32.if.then24.i33_crit_edge

lor.lhs.false.i32.if.then24.i33_crit_edge:        ; preds = %lor.lhs.false.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i33

lor.lhs.false.i32.ixgbe_set_vf_vlan.exit34_crit_edge: ; preds = %lor.lhs.false.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vf_vlan.exit34

if.then24.i33:                                    ; preds = %lor.lhs.false.i32.if.then24.i33_crit_edge, %if.end18.i.if.then24.i33_crit_edge
  tail call void @ixgbe_update_pf_promisc_vlvf(ptr noundef %adapter, i32 noundef 0) #10
  br label %ixgbe_set_vf_vlan.exit34

ixgbe_set_vf_vlan.exit34:                         ; preds = %if.then24.i33, %lor.lhs.false.i32.ixgbe_set_vf_vlan.exit34_crit_edge, %if.end7.i.ixgbe_set_vf_vlan.exit34_crit_edge, %if.then.i.ixgbe_set_vf_vlan.exit34_crit_edge
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  %.pre = shl i32 %vf, 2
  br i1 %tobool.not.i.i.i, label %ixgbe_set_vf_vlan.exit34.ixgbe_clear_vmvir.exit_crit_edge, label %do.body1.i.i

ixgbe_set_vf_vlan.exit34.ixgbe_clear_vmvir.exit_crit_edge: ; preds = %ixgbe_set_vf_vlan.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_clear_vmvir.exit

do.body1.i.i:                                     ; preds = %ixgbe_set_vf_vlan.exit34
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %.pre, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !119
  br label %ixgbe_clear_vmvir.exit

ixgbe_clear_vmvir.exit:                           ; preds = %do.body1.i.i, %ixgbe_set_vf_vlan.exit34.ixgbe_clear_vmvir.exit_crit_edge
  %add.i37 = add i32 %.pre, 61440
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef %add.i37) #10
  %28 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i38 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i38, label %ixgbe_clear_vmvir.exit.ixgbe_set_vmolr.exit_crit_edge, label %do.body1.i.i41

ixgbe_clear_vmvir.exit.ixgbe_set_vmolr.exit_crit_edge: ; preds = %ixgbe_clear_vmvir.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_set_vmolr.exit

do.body1.i.i41:                                   ; preds = %ixgbe_clear_vmvir.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or1.i = or i32 %call.i, 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #10
  %add.ptr.i.i40 = getelementptr i8, ptr %29, i32 %add.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 %30) #10, !srcloc !119
  br label %ixgbe_set_vmolr.exit

ixgbe_set_vmolr.exit:                             ; preds = %do.body1.i.i41, %ixgbe_clear_vmvir.exit.ixgbe_set_vmolr.exit_crit_edge
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp = icmp ugt i32 %32, 3
  br i1 %cmp, label %if.then, label %ixgbe_set_vmolr.exit.if.end_crit_edge

ixgbe_set_vmolr.exit.if.end_crit_edge:            ; preds = %ixgbe_set_vmolr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %ixgbe_set_vmolr.exit
  %mask.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 2
  %33 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mask.i, align 4
  %35 = sub i16 0, %34
  %36 = and i16 %34, %35
  %and.i43 = zext i16 %36 to i32
  %mul.i44 = mul i32 %and.i43, %vf
  %add6.i = add i32 %vf, 1
  %mul7.i = mul i32 %add6.i, %and.i43
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i44, i32 %mul7.i)
  %cmp18.i = icmp ult i32 %mul.i44, %mul7.i
  br i1 %cmp18.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %ixgbe_write_reg.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %ixgbe_write_reg.exit.i.for.body.i_crit_edge ], [ %mul.i44, %if.then.for.body.i_crit_edge ]
  %call.i45 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #10
  %37 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i.i46 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i46, label %for.body.i.ixgbe_write_reg.exit.i_crit_edge, label %do.body1.i.i49

for.body.i.ixgbe_write_reg.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit.i

do.body1.i.i49:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl i32 %i.019.i, 8
  %or9.i = or i32 %shl.i, 65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %39 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #10
  %add.ptr.i.i48 = getelementptr i8, ptr %38, i32 12036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 %39) #10, !srcloc !119
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i49, %for.body.i.ixgbe_write_reg.exit.i_crit_edge
  %inc.i = add i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul7.i
  br i1 %exitcond.not.i, label %ixgbe_write_reg.exit.i.if.end_crit_edge, label %ixgbe_write_reg.exit.i.for.body.i_crit_edge

ixgbe_write_reg.exit.i.for.body.i_crit_edge:      ; preds = %ixgbe_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ixgbe_write_reg.exit.i.if.end_crit_edge:          ; preds = %ixgbe_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %ixgbe_write_reg.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %ixgbe_set_vmolr.exit.if.end_crit_edge
  %40 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vfinfo, align 16
  %pf_vlan6 = getelementptr %struct.vf_data_storage, ptr %41, i32 %vf, i32 6
  %42 = ptrtoint ptr %pf_vlan6 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %pf_vlan6, align 2
  %43 = load ptr, ptr %vfinfo, align 16
  %pf_qos = getelementptr %struct.vf_data_storage, ptr %43, i32 %vf, i32 7
  %44 = ptrtoint ptr %pf_qos to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %pf_qos, align 4
  ret i32 %call13.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ixgbe_link_mbps(ptr nocapture noundef readonly %adapter) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_speed = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 61
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %1, label %sw.default [
    i32 8, label %entry.return_crit_edge
    i32 32, label %sw.bb1
    i32 128, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ 10000, %sw.bb2 ], [ 1000, %sw.bb1 ], [ 100, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_check_vf_rate_limit(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_rate_link_speed = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 102
  %0 = ptrtoint ptr %vf_rate_link_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf_rate_link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_speed.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 61
  %2 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_speed.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %3, label %sw.default.i [
    i32 8, label %if.end.ixgbe_link_mbps.exit_crit_edge
    i32 32, label %sw.bb1.i
    i32 128, label %sw.bb2.i
  ]

if.end.ixgbe_link_mbps.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_link_mbps.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_link_mbps.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_link_mbps.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_link_mbps.exit

ixgbe_link_mbps.exit:                             ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end.ixgbe_link_mbps.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ 10000, %sw.bb2.i ], [ 1000, %sw.bb1.i ], [ 100, %if.end.ixgbe_link_mbps.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %1)
  %cmp.not = icmp eq i32 %retval.0.i, %1
  br i1 %cmp.not, label %ixgbe_link_mbps.exit.if.end4_crit_edge, label %if.then2

ixgbe_link_mbps.exit.if.end4_crit_edge:           ; preds = %ixgbe_link_mbps.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %ixgbe_link_mbps.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %vf_rate_link_speed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %vf_rate_link_speed, align 4
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %ixgbe_link_mbps.exit.if.end4_crit_edge
  %num_vfs = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 100
  %8 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp521.not = icmp eq i32 %9, 0
  br i1 %cmp521.not, label %if.end4.cleanup_crit_edge, label %for.body.lr.ph

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end4
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end9.for.body_crit_edge ]
  %10 = ptrtoint ptr %vf_rate_link_speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vf_rate_link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.then8, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vfinfo, align 16
  %tx_rate = getelementptr %struct.vf_data_storage, ptr %13, i32 %i.022, i32 8
  %14 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %tx_rate, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.body.if.end9_crit_edge
  tail call fastcc void @ixgbe_set_vf_rate_limit(ptr noundef %adapter, i32 noundef %i.022)
  %inc = add nuw i32 %i.022, 1
  %15 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_vfs, align 4
  %cmp5 = icmp ult i32 %inc, %16
  br i1 %cmp5, label %if.end9.for.body_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_set_vf_rate_limit(ptr noundef %adapter, i32 noundef %vf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %vfinfo = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 101
  %0 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfinfo, align 16
  %tx_rate3 = getelementptr %struct.vf_data_storage, ptr %1, i32 %vf, i32 8
  %2 = ptrtoint ptr %tx_rate3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tx_rate3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vf_rate_link_speed = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 102
  %4 = ptrtoint ptr %vf_rate_link_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf_rate_link_speed, align 4
  %shl = shl i32 %5, 14
  %conv = zext i16 %3 to i32
  %div = udiv i32 %shl, %conv
  %and = and i32 %div, 268435455
  %or = or i32 %and, -2147483648
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bcnrc_val.0 = phi i32 [ %or, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %7, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %sw.bb.sw.epilog_crit_edge, label %do.body1.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body1.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i = getelementptr i8, ptr %10, i32 18816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #10, !srcloc !119
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i35 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i35, label %sw.bb4.sw.epilog_crit_edge, label %do.body1.i37

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body1.i37:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i36 = getelementptr i8, ptr %12, i32 18816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 335544320) #10, !srcloc !119
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body1.i37, %sw.bb4.sw.epilog_crit_edge, %do.body1.i, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %mask = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 2
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mask, align 4
  %15 = sub i16 0, %14
  %16 = and i16 %14, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp47.not = icmp eq i16 %16, 0
  br i1 %cmp47.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %conv13 = zext i16 %16 to i32
  %mul = mul i32 %conv13, %vf
  %17 = tail call i32 @llvm.bswap.i32(i32 %bcnrc_val.0) #10
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit46.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %ixgbe_write_reg.exit46.for.body_crit_edge ]
  %18 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i39 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i39, label %for.body.ixgbe_write_reg.exit42_crit_edge, label %do.body1.i41

for.body.ixgbe_write_reg.exit42_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit42

do.body1.i41:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add17 = add i32 %mul, %indvars.iv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %add17) #10
  %add.ptr.i40 = getelementptr i8, ptr %19, i32 18692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %20) #10, !srcloc !119
  br label %ixgbe_write_reg.exit42

ixgbe_write_reg.exit42:                           ; preds = %do.body1.i41, %for.body.ixgbe_write_reg.exit42_crit_edge
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i43 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i43, label %ixgbe_write_reg.exit42.ixgbe_write_reg.exit46_crit_edge, label %do.body1.i45

ixgbe_write_reg.exit42.ixgbe_write_reg.exit46_crit_edge: ; preds = %ixgbe_write_reg.exit42
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit46

do.body1.i45:                                     ; preds = %ixgbe_write_reg.exit42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i44 = getelementptr i8, ptr %22, i32 18820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %17) #10, !srcloc !119
  br label %ixgbe_write_reg.exit46

ixgbe_write_reg.exit46:                           ; preds = %do.body1.i45, %ixgbe_write_reg.exit42.ixgbe_write_reg.exit46_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv13
  br i1 %exitcond.not, label %ixgbe_write_reg.exit46.for.end_crit_edge, label %ixgbe_write_reg.exit46.for.body_crit_edge

ixgbe_write_reg.exit46.for.body_crit_edge:        ; preds = %ixgbe_write_reg.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

ixgbe_write_reg.exit46.for.end_crit_edge:         ; preds = %ixgbe_write_reg.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %ixgbe_write_reg.exit46.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ndo_set_vf_bw(ptr noundef %netdev, i32 noundef %vf, i32 noundef %min_tx_rate, i32 noundef %max_tx_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_vfs = getelementptr i8, ptr %netdev, i32 67628
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf)
  %cmp.not = icmp ugt i32 %1, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_up = getelementptr i8, ptr %netdev, i32 9624
  %2 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_up, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %link_speed.i = getelementptr i8, ptr %netdev, i32 9620
  %4 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cond = icmp eq i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_tx_rate)
  %tobool7.not = icmp eq i32 %min_tx_rate, 0
  %or.cond33 = and i1 %tobool7.not, %cond
  br i1 %or.cond33, label %if.end9, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_tx_rate)
  %tobool10.not = icmp ne i32 %max_tx_rate, 0
  %6 = add i32 %max_tx_rate, -10001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9990, i32 %6)
  %7 = icmp ult i32 %6, -9990
  %or.cond = and i1 %tobool10.not, %7
  br i1 %or.cond, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %vf_rate_link_speed = getelementptr i8, ptr %netdev, i32 67636
  %8 = ptrtoint ptr %vf_rate_link_speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10000, ptr %vf_rate_link_speed, align 4
  %conv = trunc i32 %max_tx_rate to i16
  %vfinfo = getelementptr i8, ptr %netdev, i32 67632
  %9 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vfinfo, align 16
  %tx_rate = getelementptr %struct.vf_data_storage, ptr %10, i32 %vf, i32 8
  %11 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %tx_rate, align 2
  tail call fastcc void @ixgbe_set_vf_rate_limit(ptr noundef %add.ptr.i, i32 noundef %vf)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ndo_set_vf_spoofchk(ptr noundef %netdev, i32 noundef %vf, i1 noundef zeroext %setting) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 6528
  %num_vfs = getelementptr i8, ptr %netdev, i32 67628
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf)
  %cmp.not = icmp ugt i32 %1, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %setting to i8
  %vfinfo = getelementptr i8, ptr %netdev, i32 67632
  %2 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfinfo, align 16
  %spoofchk_enabled = getelementptr %struct.vf_data_storage, ptr %3, i32 %vf, i32 9
  %4 = ptrtoint ptr %spoofchk_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %spoofchk_enabled, align 4
  %set_mac_anti_spoofing = getelementptr i8, ptr %netdev, i32 6736
  %5 = ptrtoint ptr %set_mac_anti_spoofing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_mac_anti_spoofing, align 4
  tail call void %6(ptr noundef %hw1, i1 noundef zeroext %setting, i32 noundef %vf) #10
  %set_vlan_anti_spoofing = getelementptr i8, ptr %netdev, i32 6740
  %7 = ptrtoint ptr %set_vlan_anti_spoofing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_vlan_anti_spoofing, align 4
  tail call void %8(ptr noundef %hw1, i1 noundef zeroext %setting, i32 noundef %vf) #10
  %set_ethertype_anti_spoofing = getelementptr i8, ptr %netdev, i32 6784
  %9 = ptrtoint ptr %set_ethertype_anti_spoofing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_ethertype_anti_spoofing, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then9.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then9.ixgbe_write_reg.exit_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i33 = getelementptr i8, ptr %12, i32 20796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 -863502176) #10, !srcloc !119
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then9.ixgbe_write_reg.exit_crit_edge
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i34 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i34, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit37_crit_edge, label %do.body1.i36

ixgbe_write_reg.exit.ixgbe_write_reg.exit37_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgbe_write_reg.exit37

do.body1.i36:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %add.ptr.i35 = getelementptr i8, ptr %14, i32 20804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 143130784) #10, !srcloc !119
  br label %ixgbe_write_reg.exit37

ixgbe_write_reg.exit37:                           ; preds = %do.body1.i36, %ixgbe_write_reg.exit.ixgbe_write_reg.exit37_crit_edge
  %15 = ptrtoint ptr %set_ethertype_anti_spoofing to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_ethertype_anti_spoofing, align 4
  tail call void %16(ptr noundef %hw1, i1 noundef zeroext %setting, i32 noundef %vf) #10
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit37, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %ixgbe_write_reg.exit37 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ixgbe_ndo_set_vf_rss_query_en(ptr nocapture noundef readonly %netdev, i32 noundef %vf, i1 noundef zeroext %setting) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %setting to i8
  %type = getelementptr i8, ptr %netdev, i32 6808
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_vfs = getelementptr i8, ptr %netdev, i32 67628
  %3 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %vf)
  %cmp5.not = icmp ugt i32 %4, %vf
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %vfinfo = getelementptr i8, ptr %netdev, i32 67632
  %5 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vfinfo, align 16
  %rss_query_enabled = getelementptr %struct.vf_data_storage, ptr %6, i32 %vf, i32 10
  %7 = ptrtoint ptr %rss_query_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %rss_query_enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ndo_set_vf_trust(ptr noundef %netdev, i32 noundef %vf, i1 noundef zeroext %setting) local_unnamed_addr #0 align 64 {
entry:
  %ping.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %setting to i8
  %num_vfs = getelementptr i8, ptr %netdev, i32 67628
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf)
  %cmp.not = icmp ugt i32 %1, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vfinfo = getelementptr i8, ptr %netdev, i32 67632
  %2 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfinfo, align 16
  %trusted = getelementptr %struct.vf_data_storage, ptr %3, i32 %vf, i32 11
  %4 = ptrtoint ptr %trusted to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %trusted, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %frombool)
  %cmp2 = icmp eq i8 %5, %frombool
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %trusted to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %trusted, align 2
  %7 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vfinfo, align 16
  %clear_to_send = getelementptr %struct.vf_data_storage, ptr %8, i32 %vf, i32 4
  %9 = ptrtoint ptr %clear_to_send to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %clear_to_send, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ping.i) #10
  %10 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfinfo, align 16
  %clear_to_send.i = getelementptr %struct.vf_data_storage, ptr %11, i32 %vf, i32 4
  %12 = ptrtoint ptr %clear_to_send.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clear_to_send.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 256, i32 536871168
  %14 = ptrtoint ptr %ping.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.store.select.i, ptr %ping.i, align 4
  %hw1.i = getelementptr i8, ptr %netdev, i32 6528
  %conv.i = trunc i32 %vf to i16
  %call.i = call i32 @ixgbe_write_mbx(ptr noundef %hw1.i, ptr noundef nonnull %ping.i, i16 noundef zeroext 1, i16 noundef zeroext %conv.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ping.i) #10
  %msg_enable = getelementptr i8, ptr %netdev, i32 7828
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %msg_enable, align 4
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool14.not = icmp eq i16 %17, 0
  br i1 %tobool14.not, label %if.end5.cleanup_crit_edge, label %if.then15

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %netdev16 = getelementptr i8, ptr %netdev, i32 2816
  %18 = ptrtoint ptr %netdev16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev16, align 128
  %cond = select i1 %setting, ptr @.str.33, ptr @.str.34
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.32, i32 noundef %vf, ptr noundef nonnull %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ixgbe_ndo_get_vf_config(ptr nocapture noundef readonly %netdev, i32 noundef %vf, ptr nocapture noundef writeonly %ivi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vfs = getelementptr i8, ptr %netdev, i32 67628
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vf)
  %cmp.not = icmp ugt i32 %1, %vf
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %ivi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %vf, ptr %ivi, align 4
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %vfinfo = getelementptr i8, ptr %netdev, i32 67632
  %3 = ptrtoint ptr %vfinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vfinfo, align 16
  %vf_mac_addresses = getelementptr %struct.vf_data_storage, ptr %4, i32 %vf, i32 1
  %5 = call ptr @memcpy(ptr %mac, ptr %vf_mac_addresses, i32 6)
  %6 = load ptr, ptr %vfinfo, align 16
  %tx_rate = getelementptr %struct.vf_data_storage, ptr %6, i32 %vf, i32 8
  %7 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tx_rate, align 2
  %conv = zext i16 %8 to i32
  %max_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 7
  %9 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %max_tx_rate, align 4
  %min_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 6
  %10 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %min_tx_rate, align 4
  %11 = load ptr, ptr %vfinfo, align 16
  %pf_vlan = getelementptr %struct.vf_data_storage, ptr %11, i32 %vf, i32 6
  %12 = ptrtoint ptr %pf_vlan to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pf_vlan, align 2
  %conv6 = zext i16 %13 to i32
  %vlan = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %14 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv6, ptr %vlan, align 4
  %15 = load ptr, ptr %vfinfo, align 16
  %pf_qos = getelementptr %struct.vf_data_storage, ptr %15, i32 %vf, i32 7
  %16 = ptrtoint ptr %pf_qos to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pf_qos, align 4
  %conv9 = zext i16 %17 to i32
  %qos = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 3
  %18 = ptrtoint ptr %qos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv9, ptr %qos, align 4
  %19 = load ptr, ptr %vfinfo, align 16
  %spoofchk_enabled = getelementptr %struct.vf_data_storage, ptr %19, i32 %vf, i32 9
  %20 = ptrtoint ptr %spoofchk_enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %spoofchk_enabled, align 4
  %conv12 = zext i8 %21 to i32
  %spoofchk = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 4
  %22 = ptrtoint ptr %spoofchk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv12, ptr %spoofchk, align 4
  %23 = load ptr, ptr %vfinfo, align 16
  %rss_query_enabled = getelementptr %struct.vf_data_storage, ptr %23, i32 %vf, i32 10
  %24 = ptrtoint ptr %rss_query_enabled to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rss_query_enabled, align 1, !range !121
  %26 = zext i8 %25 to i32
  %rss_query_en = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 8
  %27 = ptrtoint ptr %rss_query_en to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rss_query_en, align 4
  %28 = load ptr, ptr %vfinfo, align 16
  %trusted = getelementptr %struct.vf_data_storage, ptr %28, i32 %vf, i32 11
  %29 = ptrtoint ptr %trusted to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %trusted, align 2
  %conv18 = zext i8 %30 to i32
  %trusted19 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 9
  %31 = ptrtoint ptr %trusted19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv18, ptr %trusted19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_sriov_reinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_ipsec_vf_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_rx_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_update_pf_promisc_vlvf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_add_mac_filter(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_mbx(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_ipsec_vf_add_sa(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_ipsec_vf_del_sa(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_rss_indir_tbl_entries(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 170, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ixgbe_enable_sriov._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ixgbe_enable_sriov._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 185, i32 4}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 198, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 241, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ixgbe_disable_sriov._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @ixgbe_disable_sriov._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1371, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ixgbe_ndo_set_vf_mac._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @ixgbe_ndo_set_vf_mac._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1373, i32 3}
!25 = !{ptr @ixgbe_ndo_set_vf_mac._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ixgbe_ndo_set_vf_mac._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1380, i32 5}
!29 = !{ptr @ixgbe_ndo_set_vf_mac._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ixgbe_ndo_set_vf_mac._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1381, i32 5}
!33 = !{ptr @ixgbe_ndo_set_vf_mac._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ixgbe_ndo_set_vf_mac._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1384, i32 4}
!37 = !{ptr @ixgbe_ndo_set_vf_mac._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ixgbe_ndo_set_vf_mac._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1394, i32 3}
!41 = !{ptr @ixgbe_ndo_set_vf_mac._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ixgbe_ndo_set_vf_mac._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1401, i32 4}
!45 = !{ptr @ixgbe_ndo_set_vf_mac._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ixgbe_ndo_set_vf_mac._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1575, i32 3}
!49 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ixgbe_check_vf_rate_limit._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ixgbe_check_vf_rate_limit._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1696, i32 2}
!54 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 57, i32 3}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 114, i32 2}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 301, i32 3}
!62 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ixgbe_pci_sriov_enable._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @ixgbe_pci_sriov_enable._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @ixgbe_pci_sriov_enable._entry.40, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 318, i32 3}
!68 = !{ptr @ixgbe_pci_sriov_enable._entry_ptr.41, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1215, i32 3}
!71 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ixgbe_rcv_msg_from_vf._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ixgbe_rcv_msg_from_vf._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1277, i32 3}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 834, i32 2}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 924, i32 3}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 930, i32 3}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 948, i32 3}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 476, i32 3}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 550, i32 2}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 972, i32 3}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 999, i32 3}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1023, i32 2}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1179, i32 4}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1433, i32 2}
!98 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ixgbe_enable_port_vlan._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ixgbe_enable_port_vlan._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1436, i32 3}
!103 = !{ptr @ixgbe_enable_port_vlan._entry.57, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ixgbe_enable_port_vlan._entry_ptr.59, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @ixgbe_enable_port_vlan._entry.60, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c", i32 1438, i32 3}
!107 = !{ptr @ixgbe_enable_port_vlan._entry_ptr.61, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"branch_weights", i32 1, i32 2000}
!118 = !{i64 2158378655}
!119 = !{i64 5023915}
!120 = !{!"auto-init"}
!121 = !{i8 0, i8 2}
