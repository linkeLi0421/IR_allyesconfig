; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_stats = type { [32 x i8], i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.125, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.125 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.e1000_tx_desc = type { i64, %union.anon.130, %union.anon.132 }
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%struct.e1000_buffer = type { i32, ptr, %union.anon.122 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, i16, i16, i32, i32, i16 }
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
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%union.e1000_rx_desc_extended = type { %struct.anon.134 }
%struct.anon.134 = type { i64, i64 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [116 x i8], ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [44 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [122 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.126 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.126 = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@e1000_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @e1000_get_drvinfo, ptr @e1000_get_regs_len, ptr @e1000_get_regs, ptr @e1000_get_wol, ptr @e1000_set_wol, ptr @e1000_get_msglevel, ptr @e1000_set_msglevel, ptr @e1000_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @e1000_get_eeprom_len, ptr @e1000_get_eeprom, ptr @e1000_set_eeprom, ptr @e1000_get_coalesce, ptr @e1000_set_coalesce, ptr @e1000_get_ringparam, ptr @e1000_set_ringparam, ptr null, ptr @e1000_get_pauseparam, ptr @e1000_set_pauseparam, ptr @e1000_diag_test, ptr @e1000_get_strings, ptr @e1000_set_phys_id, ptr @e1000_get_ethtool_stats, ptr null, ptr null, ptr @e1000e_get_priv_flags, ptr @e1000e_set_priv_flags, ptr @e1000e_get_sset_count, ptr @e1000_get_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e1000e_get_ts_info, ptr null, ptr null, ptr @e1000e_get_eee, ptr @e1000e_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @e1000_get_link_ksettings, ptr @e1000_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@e1000e_driver_name = external dso_local global [0 x i8], align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d-%d\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Interface does not support directed (unicast) frame wake-up packets\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"offline testing starting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"online testing starting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"pattern test failed (reg 0x%05X): got 0x%08X expected 0x%08X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"set/check test failed (reg 0x%05X): got 0x%08X expected 0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"testing %s interrupt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shared\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unshared\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Cannot do PHY loopback test when SoL/IDER is active.\0A\00", [42 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot setup 1Gbps loopback.\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@e1000_gstrings_test = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Eeprom test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@e1000_gstrings_stats = internal constant { [53 x %struct.e1000_stats], [580 x i8] } { [53 x %struct.e1000_stats] [%struct.e1000_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10792 }, %struct.e1000_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10816 }, %struct.e1000_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10824 }, %struct.e1000_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10832 }, %struct.e1000_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10800 }, %struct.e1000_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10992 }, %struct.e1000_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10808 }, %struct.e1000_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10984 }, %struct.e1000_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 32 }, %struct.e1000_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 40 }, %struct.e1000_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 56 }, %struct.e1000_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10808 }, %struct.e1000_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10656 }, %struct.e1000_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 80 }, %struct.e1000_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 88 }, %struct.e1000_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10584 }, %struct.e1000_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 104 }, %struct.e1000_stats { [32 x i8] c"rx_no_buffer_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10840 }, %struct.e1000_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10616 }, %struct.e1000_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10632 }, %struct.e1000_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10672 }, %struct.e1000_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 144 }, %struct.e1000_stats { [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 152 }, %struct.e1000_stats { [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10648 }, %struct.e1000_stats { [32 x i8] c"tx_abort_late_coll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10648 }, %struct.e1000_stats { [32 x i8] c"tx_deferred_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10664 }, %struct.e1000_stats { [32 x i8] c"tx_single_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10624 }, %struct.e1000_stats { [32 x i8] c"tx_multi_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10640 }, %struct.e1000_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1208 }, %struct.e1000_stats { [32 x i8] c"tx_restart_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1136 }, %struct.e1000_stats { [32 x i8] c"rx_long_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10864 }, %struct.e1000_stats { [32 x i8] c"rx_short_length_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10848 }, %struct.e1000_stats { [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10592 }, %struct.e1000_stats { [32 x i8] c"tx_tcp_seg_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 11000 }, %struct.e1000_stats { [32 x i8] c"tx_tcp_seg_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 11008 }, %struct.e1000_stats { [32 x i8] c"rx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10704 }, %struct.e1000_stats { [32 x i8] c"rx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10720 }, %struct.e1000_stats { [32 x i8] c"tx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10712 }, %struct.e1000_stats { [32 x i8] c"tx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10728 }, %struct.e1000_stats { [32 x i8] c"rx_csum_offload_good\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1312 }, %struct.e1000_stats { [32 x i8] c"rx_csum_offload_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1304 }, %struct.e1000_stats { [32 x i8] c"rx_header_split\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1320 }, %struct.e1000_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1344 }, %struct.e1000_stats { [32 x i8] c"tx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10896 }, %struct.e1000_stats { [32 x i8] c"rx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10880 }, %struct.e1000_stats { [32 x i8] c"dropped_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10888 }, %struct.e1000_stats { [32 x i8] c"rx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1348 }, %struct.e1000_stats { [32 x i8] c"tx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1224 }, %struct.e1000_stats { [32 x i8] c"rx_hwtstamp_cleared\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1352 }, %struct.e1000_stats { [32 x i8] c"uncorr_ecc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1128 }, %struct.e1000_stats { [32 x i8] c"corr_ecc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1132 }, %struct.e1000_stats { [32 x i8] c"tx_hwtstamp_timeouts\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1228 }, %struct.e1000_stats { [32 x i8] c"tx_hwtstamp_skipped\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1232 }], [580 x i8] zeroinitializer }, align 32
@e1000e_priv_flags_strings = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"s0ix-enabled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"EEE advertisement supports only 100TX and/or 1000T full-duplex\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Cannot change link characteristics when SoL/IDER is active.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unsupported Speed/Duplex configuration\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.e1000_diag_test = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2147480575, i32 2147480575, i32 2147479603, i32 2147479603, i32 2147479603, i32 2147480575], [40 x i8] zeroinitializer }, align 32
@switch.table.e1000e_get_sset_count = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 5, i32 53, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 256]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.26 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 5, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 10, i64 11, i64 100, i64 101, i64 1001]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"e1000_ethtool_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2362, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 648, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1919, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1832, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1873, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 861, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 789, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 807, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1024, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1727, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 326, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1391, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"e1000_gstrings_test\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 102, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"e1000_gstrings_stats\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 44, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"e1000e_priv_flags_strings\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 26, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2266, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2271, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2276, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 276, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 293, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [47 x i8] c"../drivers/net/ethernet/intel/e1000e/ethtool.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 254, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [29 x i8] c"switch.table.e1000_diag_test\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [35 x i8] c"switch.table.e1000e_get_sset_count\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @e1000_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @e1000_gstrings_test, ptr @e1000_gstrings_stats, ptr @e1000e_priv_flags_strings, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @switch.table.e1000_diag_test, ptr @switch.table.e1000e_get_sset_count], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_gstrings_test to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_gstrings_stats to i32), i32 2332, i32 2912, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_priv_flags_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000_diag_test to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000e_get_sset_count to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @e1000e_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @e1000_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @e1000e_driver_name, i32 noundef 32) #15
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %eeprom_vers = getelementptr i8, ptr %netdev, i32 3066
  %0 = ptrtoint ptr %eeprom_vers to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eeprom_vers, align 2
  %conv = zext i16 %1 to i32
  %2 = lshr i32 %conv, 12
  %and5 = lshr i32 %conv, 4
  %3 = and i32 %and5, 255
  %and9 = and i32 %conv, 15
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %3, i32 noundef %and9)
  %pdev = getelementptr i8, ptr %netdev, i32 3680
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 32
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call13 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_regs_len(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr noundef %p) #3 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3684
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #15
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !57
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #15
  %3 = call ptr @memset(ptr %p, i32 0, i32 128)
  %pdev = getelementptr i8, ptr %netdev, i32 3680
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %conv4 = zext i16 %9 to i32
  %or = or i32 %shl, %conv4
  %or5 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %10 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or5, ptr %version, align 4
  %hw_addr.i = getelementptr i8, ptr %netdev, i32 3688
  %11 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_addr.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #15, !srcloc !58
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %15 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %p, align 4
  %16 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #15, !srcloc !58
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx8 = getelementptr i32, ptr %p, i32 1
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx8, align 4
  %21 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %22, i32 256
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #15, !srcloc !58
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx10 = getelementptr i32, ptr %p, i32 2
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx10, align 4
  %26 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %27, i32 10248
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #15, !srcloc !58
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx12 = getelementptr i32, ptr %p, i32 3
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx12, align 4
  %31 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %32, i32 10256
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #15, !srcloc !58
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx14 = getelementptr i32, ptr %p, i32 4
  %35 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx14, align 4
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %37, i32 10264
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #15, !srcloc !58
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx16 = getelementptr i32, ptr %p, i32 5
  %40 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx16, align 4
  %41 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %42, i32 10272
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #15, !srcloc !58
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx18 = getelementptr i32, ptr %p, i32 6
  %45 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx18, align 4
  %46 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %47, i32 1024
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #15, !srcloc !58
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx20 = getelementptr i32, ptr %p, i32 7
  %50 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx20, align 4
  %51 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %52, i32 14344
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #15, !srcloc !58
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx22 = getelementptr i32, ptr %p, i32 8
  %55 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx22, align 4
  %56 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %57, i32 14352
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #15, !srcloc !58
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx24 = getelementptr i32, ptr %p, i32 9
  %60 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx24, align 4
  %61 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %62, i32 14360
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #15, !srcloc !58
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx26 = getelementptr i32, ptr %p, i32 10
  %65 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx26, align 4
  %66 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %67, i32 14368
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #15, !srcloc !58
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %arrayidx28 = getelementptr i32, ptr %p, i32 11
  %70 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx28, align 4
  %type = getelementptr i8, ptr %netdev, i32 4484
  %71 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type, align 4
  %arrayidx30 = getelementptr i32, ptr %p, i32 12
  %73 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx30, align 4
  %74 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp = icmp eq i32 %74, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %read_reg.i = getelementptr i8, ptr %netdev, i32 4436
  %75 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read_reg.i, align 4
  %call.i133 = call i32 %76(ptr noundef %hw1, i32 noundef 17, ptr noundef nonnull %phy_data) #15
  %77 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %phy_data, align 2
  %conv35 = zext i16 %78 to i32
  %arrayidx36 = getelementptr i32, ptr %p, i32 13
  %79 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv35, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr i32, ptr %p, i32 14
  %80 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr i32, ptr %p, i32 15
  %81 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr i32, ptr %p, i32 16
  %82 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx39, align 4
  %83 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read_reg.i, align 4
  %call.i135 = call i32 %84(ptr noundef %hw1, i32 noundef 16, ptr noundef nonnull %phy_data) #15
  %85 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %phy_data, align 2
  %conv41 = zext i16 %86 to i32
  %arrayidx42 = getelementptr i32, ptr %p, i32 17
  %87 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv41, ptr %arrayidx42, align 4
  %88 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx36, align 4
  %arrayidx44 = getelementptr i32, ptr %p, i32 18
  %90 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr i32, ptr %p, i32 19
  %91 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr i32, ptr %p, i32 20
  %92 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv41, ptr %arrayidx47, align 4
  %receive_errors = getelementptr i8, ptr %netdev, i32 13552
  %93 = ptrtoint ptr %receive_errors to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %receive_errors, align 4
  %arrayidx48 = getelementptr i32, ptr %p, i32 22
  %95 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx48, align 4
  %arrayidx50 = getelementptr i32, ptr %p, i32 23
  %96 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %89, ptr %arrayidx50, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx51 = getelementptr i32, ptr %p, i32 21
  %97 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %arrayidx51, align 4
  %read_reg.i136 = getelementptr i8, ptr %netdev, i32 4436
  %98 = ptrtoint ptr %read_reg.i136 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read_reg.i136, align 4
  %call.i137 = call i32 %99(ptr noundef %hw1, i32 noundef 10, ptr noundef nonnull %phy_data) #15
  %100 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %phy_data, align 2
  %conv53 = zext i16 %101 to i32
  %arrayidx54 = getelementptr i32, ptr %p, i32 24
  %102 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv53, ptr %arrayidx54, align 4
  %arrayidx56 = getelementptr i32, ptr %p, i32 25
  %103 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv53, ptr %arrayidx56, align 4
  %104 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %parent, align 8
  %call.i138 = call i32 @__pm_runtime_idle(ptr noundef %105, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %flags = getelementptr i8, ptr %netdev, i32 13776
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 16
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pdev = getelementptr i8, ptr %netdev, i32 3680
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 32
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 47, ptr %supported, align 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 16
  %and4 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %10 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 45, ptr %supported, align 4
  %wol9 = getelementptr i8, ptr %netdev, i32 13760
  %11 = ptrtoint ptr %wol9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wol9, align 64
  %and10 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then6.if.end15_crit_edge, label %if.then12

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %netdev13 = getelementptr i8, ptr %netdev, i32 3676
  %13 = ptrtoint ptr %netdev13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev13, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.1) #18
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %wol16 = getelementptr i8, ptr %netdev, i32 13760
  %15 = ptrtoint ptr %wol16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol16, align 64
  %and17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end21_crit_edge, label %if.then19

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %or = or i32 %18, 2
  store i32 %or, ptr %wolopts, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %19 = ptrtoint ptr %wol16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wol16, align 64
  %and23 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end28_crit_edge, label %if.then25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wolopts, align 4
  %or27 = or i32 %22, 4
  store i32 %or27, ptr %wolopts, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end21.if.end28_crit_edge
  %23 = ptrtoint ptr %wol16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wol16, align 64
  %and30 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end35_crit_edge, label %if.then32

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wolopts, align 4
  %or34 = or i32 %26, 8
  store i32 %or34, ptr %wolopts, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end28.if.end35_crit_edge
  %27 = ptrtoint ptr %wol16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wol16, align 64
  %and37 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end42_crit_edge, label %if.then39

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wolopts, align 4
  %or41 = or i32 %30, 32
  store i32 %or41, ptr %wolopts, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end35.if.end42_crit_edge
  %31 = ptrtoint ptr %wol16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wol16, align 64
  %and44 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.cleanup_crit_edge, label %if.then46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wolopts, align 4
  %or48 = or i32 %34, 1
  store i32 %or48, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end42.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 13776
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 16
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pdev = getelementptr i8, ptr %netdev, i32 3680
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 32
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wolopts, align 4
  %and3 = and i32 %6, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %wol5 = getelementptr i8, ptr %netdev, i32 13760
  %7 = ptrtoint ptr %wol5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wol5, align 64
  %8 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wolopts, align 4
  %and7 = shl i32 %9, 1
  %10 = and i32 %and7, 4
  store i32 %10, ptr %wol5, align 64
  %11 = load i32, ptr %wolopts, align 4
  %and13 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.if.end18_crit_edge, label %if.then15

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %or17 = or i32 %10, 8
  %12 = ptrtoint ptr %wol5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or17, ptr %wol5, align 64
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.if.end18_crit_edge
  %13 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts, align 4
  %and20 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %wol5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol5, align 64
  %or24 = or i32 %16, 16
  store i32 %or24, ptr %wol5, align 64
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %and27 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %wol5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wol5, align 64
  %or31 = or i32 %20, 2
  store i32 %or31, ptr %wol5, align 64
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %21 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wolopts, align 4
  %and34 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end39_crit_edge, label %if.then36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %wol5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wol5, align 64
  %or38 = or i32 %24, 1
  store i32 %or38, ptr %wol5, align 64
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 32
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %wol5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wol5, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool43 = icmp ne i32 %28, 0
  %call44 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev41, i1 noundef zeroext %tobool43) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -95, %lor.lhs.false2.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_msglevel(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 13736
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @e1000_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 13736
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_nway_reset(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg = getelementptr i8, ptr %netdev, i32 4362
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #15
  tail call void @e1000e_reinit_locked(ptr noundef %add.ptr.i) #15
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call.i12 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -11, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_eeprom_len(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr i8, ptr %netdev, i32 4600
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 1
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3684
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr i8, ptr %netdev, i32 3680
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 32
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %conv = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv3 = zext i16 %7 to i32
  %shl = shl nuw i32 %conv3, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %shr = lshr i32 %10, 1
  %add = add i32 %1, -1
  %sub = add i32 %add, %10
  %shr6 = lshr i32 %sub, 1
  %sub7 = sub nsw i32 %shr6, %shr
  %add8 = add i32 %sub7, 1
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add8, i32 2) #15
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !61

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #19
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end11

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end7.i
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #15
  %type = getelementptr i8, ptr %netdev, i32 4584
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp13 = icmp eq i32 %17, 2
  br i1 %cmp13, label %if.end33, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub7)
  %cmp24115 = icmp ult i32 %sub7, 2147483647
  br i1 %cmp24115, label %for.body.lr.ph, label %for.cond.preheader.if.end33.thread122_crit_edge

for.cond.preheader.if.end33.thread122_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.thread122

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %18 = trunc i32 %shr to i16
  %read.i100 = getelementptr i8, ptr %netdev, i32 4556
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i16 %i.0116, 1
  %conv21 = zext i16 %inc to i32
  %cmp24 = icmp sgt i32 %add8, %conv21
  br i1 %cmp24, label %for.cond.for.body_crit_edge, label %for.cond.if.end33.thread122_crit_edge

for.cond.if.end33.thread122_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.thread122

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv21117 = phi i32 [ 0, %for.body.lr.ph ], [ %conv21, %for.cond.for.body_crit_edge ]
  %i.0116 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %conv28 = add i16 %i.0116, %18
  %arrayidx = getelementptr i16, ptr %call8.i, i32 %conv21117
  %19 = ptrtoint ptr %read.i100 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i100, align 4
  %call.i101 = tail call i32 %20(ptr noundef %hw1, i16 noundef zeroext %conv28, i16 noundef zeroext 1, ptr noundef %arrayidx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool30.not = icmp eq i32 %call.i101, 0
  br i1 %tobool30.not, label %for.cond, label %if.end33.thread

if.end33.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  %call.i102111 = tail call i32 @__pm_runtime_idle(ptr noundef %22, i32 noundef 4) #15
  br label %if.then38

if.end33.thread122:                               ; preds = %for.cond.if.end33.thread122_crit_edge, %for.cond.preheader.if.end33.thread122_crit_edge
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  %call.i102124 = tail call i32 @__pm_runtime_idle(ptr noundef %24, i32 noundef 4) #15
  br label %for.cond42.preheader

if.end33:                                         ; preds = %if.end11
  %conv16 = trunc i32 %shr to i16
  %conv19 = trunc i32 %add8 to i16
  %read.i = getelementptr i8, ptr %netdev, i32 4556
  %25 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i, align 4
  %call.i99 = tail call i32 %26(ptr noundef %hw1, i16 noundef zeroext %conv16, i16 noundef zeroext %conv19, ptr noundef nonnull %call8.i) #15
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  %call.i102 = tail call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool37.not = icmp eq i32 %call.i99, 0
  br i1 %tobool37.not, label %if.end33.for.cond42.preheader_crit_edge, label %if.end33.if.then38_crit_edge

if.end33.if.then38_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38

if.end33.for.cond42.preheader_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %if.end33.for.cond42.preheader_crit_edge, %if.end33.thread122
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub7)
  %cmp46118 = icmp ult i32 %sub7, 2147483647
  br i1 %cmp46118, label %for.cond42.preheader.for.body48_crit_edge, label %for.cond42.preheader.if.end54_crit_edge

for.cond42.preheader.if.end54_crit_edge:          ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

for.cond42.preheader.for.body48_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body48

if.then38:                                        ; preds = %if.end33.if.then38_crit_edge, %if.end33.thread
  %ret_val.1114 = phi i32 [ %call.i101, %if.end33.thread ], [ %call.i99, %if.end33.if.then38_crit_edge ]
  %mul = shl i32 %add8, 1
  %29 = call ptr @memset(ptr %call8.i, i32 255, i32 %mul)
  br label %if.end54

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.cond42.preheader.for.body48_crit_edge
  %conv43120 = phi i32 [ %conv43, %for.body48.for.body48_crit_edge ], [ 0, %for.cond42.preheader.for.body48_crit_edge ]
  %i.1119 = phi i16 [ %inc52, %for.body48.for.body48_crit_edge ], [ 0, %for.cond42.preheader.for.body48_crit_edge ]
  %arrayidx50 = getelementptr i16, ptr %call8.i, i32 %conv43120
  %30 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx50, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #15
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx50, align 2
  %inc52 = add i16 %i.1119, 1
  %conv43 = zext i16 %inc52 to i32
  %cmp46 = icmp sgt i32 %add8, %conv43
  br i1 %cmp46, label %for.body48.for.body48_crit_edge, label %for.body48.if.end54_crit_edge

for.body48.if.end54_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body48

if.end54:                                         ; preds = %for.body48.if.end54_crit_edge, %if.then38, %for.cond42.preheader.if.end54_crit_edge
  %ret_val.1113 = phi i32 [ %ret_val.1114, %if.then38 ], [ 0, %for.cond42.preheader.if.end54_crit_edge ], [ 0, %for.body48.if.end54_crit_edge ]
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset, align 4
  %and = and i32 %35, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %38 = call ptr @memcpy(ptr %bytes, ptr %add.ptr, i32 %37)
  tail call void @kfree(ptr noundef nonnull %call8.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.1113, %if.end54 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3684
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  %pdev = getelementptr i8, ptr %netdev, i32 3680
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 32
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor, align 8
  %conv = zext i16 %7 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %conv3 = zext i16 %9 to i32
  %shl = shl nuw i32 %conv3, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or)
  %cmp4.not = icmp eq i32 %3, %or
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr i8, ptr %netdev, i32 13776
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 16
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %shr = lshr i32 %13, 1
  %add = add i32 %1, -1
  %sub = add i32 %add, %13
  %shr13 = lshr i32 %sub, 1
  %word_size = getelementptr i8, ptr %netdev, i32 4600
  %14 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %word_size, align 4
  %conv10 = zext i16 %15 to i32
  %mul = shl nuw nsw i32 %conv10, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #19
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.end9.cleanup_crit_edge, label %if.end17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #15
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %and20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end17.if.end25_crit_edge, label %if.then22

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %conv23 = trunc i32 %shr to i16
  %read.i = getelementptr i8, ptr %netdev, i32 4556
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  %call.i143 = tail call i32 %21(ptr noundef %hw1, i16 noundef zeroext %conv23, i16 noundef zeroext 1, ptr noundef nonnull %call9.i) #15
  %incdec.ptr = getelementptr i8, ptr %call9.i, i32 1
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end17.if.end25_crit_edge
  %ptr.0 = phi ptr [ %incdec.ptr, %if.then22 ], [ %call9.i, %if.end17.if.end25_crit_edge ]
  %ret_val.0 = phi i32 [ %call.i143, %if.then22 ], [ 0, %if.end17.if.end25_crit_edge ]
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add28 = add i32 %25, %23
  %and29 = and i32 %add28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp ne i32 %and29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool31.not = icmp eq i32 %ret_val.0, 0
  %or.cond = select i1 %tobool30.not, i1 %tobool31.not, i1 false
  br i1 %or.cond, label %if.then32, label %if.end25.if.end37_crit_edge

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %conv33 = trunc i32 %shr13 to i16
  %sub34 = sub nsw i32 %shr13, %shr
  %arrayidx35 = getelementptr i16, ptr %call9.i, i32 %sub34
  %read.i144 = getelementptr i8, ptr %netdev, i32 4556
  %26 = ptrtoint ptr %read.i144 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i144, align 4
  %call.i145 = tail call i32 %27(ptr noundef %hw1, i16 noundef zeroext %conv33, i16 noundef zeroext 1, ptr noundef %arrayidx35) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end25.if.end37_crit_edge
  %ret_val.1 = phi i32 [ %call.i145, %if.then32 ], [ %ret_val.0, %if.end25.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.1)
  %tobool38.not = icmp eq i32 %ret_val.1, 0
  br i1 %tobool38.not, label %for.cond.preheader, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond.preheader:                               ; preds = %if.end37
  %sub42 = sub nsw i32 %shr13, %shr
  %add43 = add i32 %sub42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub42)
  %cmp44154 = icmp ult i32 %sub42, 2147483647
  br i1 %cmp44154, label %for.cond.preheader.for.body_crit_edge, label %for.end.thread

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %30 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %29)
  br label %for.end59

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv41156 = phi i32 [ %conv41, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0155 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx46 = getelementptr i16, ptr %call9.i, i32 %conv41156
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx46, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #15
  %34 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx46, align 2
  %inc = add i16 %i.0155, 1
  %conv41 = zext i16 %inc to i32
  %cmp44 = icmp sgt i32 %add43, %conv41
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %37 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %36)
  br i1 %cmp44154, label %for.end.for.body54_crit_edge, label %for.end.for.end59_crit_edge

for.end.for.end59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end59

for.end.for.body54_crit_edge:                     ; preds = %for.end
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.end.for.body54_crit_edge
  %conv49159 = phi i32 [ %conv49, %for.body54.for.body54_crit_edge ], [ 0, %for.end.for.body54_crit_edge ]
  %i.1158 = phi i16 [ %inc58, %for.body54.for.body54_crit_edge ], [ 0, %for.end.for.body54_crit_edge ]
  %arrayidx56 = getelementptr i16, ptr %call9.i, i32 %conv49159
  %38 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx56, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #15
  %41 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx56, align 2
  %inc58 = add i16 %i.1158, 1
  %conv49 = zext i16 %inc58 to i32
  %cmp52 = icmp sgt i32 %add43, %conv49
  br i1 %cmp52, label %for.body54.for.body54_crit_edge, label %for.body54.for.end59_crit_edge

for.body54.for.end59_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end59

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body54

for.end59:                                        ; preds = %for.body54.for.end59_crit_edge, %for.end.for.end59_crit_edge, %for.end.thread
  %conv60 = trunc i32 %shr to i16
  %conv63 = trunc i32 %add43 to i16
  %write.i = getelementptr i8, ptr %netdev, i32 4580
  %42 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i, align 4
  %call.i146 = tail call i32 %43(ptr noundef %hw1, i16 noundef zeroext %conv60, i16 noundef zeroext %conv63, ptr noundef nonnull %call9.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool65.not = icmp eq i32 %call.i146, 0
  br i1 %tobool65.not, label %if.end67, label %for.end59.out_crit_edge

for.end59.out_crit_edge:                          ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end67:                                         ; preds = %for.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %13)
  %cmp68 = icmp ult i32 %13, 128
  br i1 %cmp68, label %if.end67.if.then82_crit_edge, label %lor.lhs.false

if.end67.if.then82_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then82

lor.lhs.false:                                    ; preds = %if.end67
  %type = getelementptr i8, ptr %netdev, i32 3800
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type, align 4
  %.off = add i32 %45, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %lor.lhs.false.if.then82_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false.if.then82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then82

if.then82:                                        ; preds = %lor.lhs.false.if.then82_crit_edge, %if.end67.if.then82_crit_edge
  %update.i = getelementptr i8, ptr %netdev, i32 4568
  %46 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %update.i, align 4
  %call.i147 = tail call i32 %47(ptr noundef %hw1) #15
  br label %out

out:                                              ; preds = %if.then82, %lor.lhs.false.out_crit_edge, %for.end59.out_crit_edge, %if.end37.out_crit_edge
  %ret_val.2 = phi i32 [ %ret_val.1, %if.end37.out_crit_edge ], [ %call.i146, %for.end59.out_crit_edge ], [ %call.i147, %if.then82 ], [ 0, %lor.lhs.false.out_crit_edge ]
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent, align 8
  %call.i148 = tail call i32 @__pm_runtime_idle(ptr noundef %49, i32 noundef 4) #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.2, %out ], [ -95, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %itr_setting = getelementptr i8, ptr %netdev, i32 3076
  %0 = ptrtoint ptr %itr_setting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %itr_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %div = udiv i32 1000000, %1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %div.sink = phi i32 [ %div, %if.else ], [ %1, %entry.if.end_crit_edge ]
  %2 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div.sink, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %1)
  %cmp = icmp ugt i32 %1, 10000
  %2 = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %3 = icmp ult i32 %2, 5
  %or.cond = or i1 %cmp, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false5:                                   ; preds = %entry
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else [
    i32 2, label %lor.lhs.false5.cleanup_crit_edge
    i32 4, label %if.then10
  ]

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10:                                        ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #17
  %itr_setting = getelementptr i8, ptr %netdev, i32 3076
  %5 = ptrtoint ptr %itr_setting to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %itr_setting, align 4
  %itr = getelementptr i8, ptr %netdev, i32 3072
  %6 = ptrtoint ptr %itr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %itr, align 128
  br label %if.end24

if.else:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp13 = icmp ult i32 %1, 4
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %itr15 = getelementptr i8, ptr %netdev, i32 3072
  %7 = ptrtoint ptr %itr15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20000, ptr %itr15, align 128
  %8 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs, align 4
  %itr_setting17 = getelementptr i8, ptr %netdev, i32 3076
  %10 = ptrtoint ptr %itr_setting17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %itr_setting17, align 4
  br label %if.end24

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %div = udiv i32 1000000, %1
  %itr20 = getelementptr i8, ptr %netdev, i32 3072
  %11 = ptrtoint ptr %itr20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %itr20, align 128
  %and = and i32 %div, 1048572
  %itr_setting22 = getelementptr i8, ptr %netdev, i32 3076
  %12 = ptrtoint ptr %itr_setting22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %itr_setting22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then14, %if.then10
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #15
  %itr_setting26 = getelementptr i8, ptr %netdev, i32 3076
  %15 = ptrtoint ptr %itr_setting26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %itr_setting26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp27.not = icmp eq i32 %16, 0
  br i1 %cmp27.not, label %if.end24.if.end31_crit_edge, label %if.then28

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %itr29 = getelementptr i8, ptr %netdev, i32 3072
  %17 = ptrtoint ptr %itr29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %itr29, align 128
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end24.if.end31_crit_edge
  %.sink = phi i32 [ %18, %if.then28 ], [ 0, %if.end24.if.end31_crit_edge ]
  tail call void @e1000e_write_itr(ptr noundef %add.ptr.i, i32 noundef %.sink) #15
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %call.i56 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %lor.lhs.false5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @e1000_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 13922
  %2 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_ring_count, align 2
  %conv = zext i16 %3 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %rx_pending, align 4
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 13920
  %5 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_ring_count, align 32
  %conv1 = zext i16 %6 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 64)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 4096)
  %8 = trunc i32 %7 to i16
  %9 = add nuw nsw i16 %8, 7
  %conv9 = and i16 %9, 16376
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %10 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pending, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 64)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 4096)
  %14 = trunc i32 %13 to i16
  %15 = add nuw nsw i16 %14, 7
  %conv28 = and i16 %15, 16376
  %conv29 = zext i16 %conv28 to i32
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 13920
  %16 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_ring_count, align 32
  call void @__sanitizer_cov_trace_cmp2(i16 %conv28, i16 %17)
  %cmp31 = icmp eq i16 %conv28, %17
  br i1 %cmp31, label %land.lhs.true, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 13922
  %18 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rx_ring_count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv9, i16 %19)
  %cmp35 = icmp eq i16 %conv9, %19
  br i1 %cmp35, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 3068
  %call39200 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39200)
  %tobool40.not201 = icmp eq i32 %call39200, 0
  br i1 %tobool40.not201, label %if.end38.while.end_crit_edge, label %if.end38.while.body_crit_edge

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  br label %while.body

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end38.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #15
  %call39 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #15
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end38.while.end_crit_edge
  %netdev41 = getelementptr i8, ptr %netdev, i32 3676
  %20 = ptrtoint ptr %netdev41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev41, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then43, label %if.end49

if.then43:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %tx_ring = getelementptr i8, ptr %netdev, i32 3200
  %24 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring, align 128
  %count = getelementptr inbounds %struct.e1000_ring, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv29, ptr %count, align 4
  %conv45 = zext i16 %conv9 to i32
  %rx_ring = getelementptr i8, ptr %netdev, i32 3592
  %27 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_ring, align 8
  %count46 = getelementptr inbounds %struct.e1000_ring, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %count46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv45, ptr %count46, align 4
  %30 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv28, ptr %tx_ring_count, align 32
  %rx_ring_count48 = getelementptr i8, ptr %netdev, i32 13922
  %31 = ptrtoint ptr %rx_ring_count48 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv9, ptr %rx_ring_count48, align 2
  br label %clear_reset

if.end49:                                         ; preds = %while.end
  %32 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tx_ring_count, align 32
  call void @__sanitizer_cov_trace_cmp2(i16 %conv28, i16 %33)
  %cmp53.not = icmp eq i16 %conv28, %33
  %conv55 = zext i16 %conv9 to i32
  %rx_ring_count56 = getelementptr i8, ptr %netdev, i32 13922
  %34 = ptrtoint ptr %rx_ring_count56 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_ring_count56, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv9, i16 %35)
  %cmp58.not = icmp eq i16 %conv9, %35
  br i1 %cmp53.not, label %if.end49.if.end67_crit_edge, label %if.then62

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then62:                                        ; preds = %if.end49
  %call63 = tail call noalias ptr @vmalloc(i32 noundef 80) #19
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.then62.free_temp_crit_edge, label %if.then62.if.end67_crit_edge

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then62.free_temp_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_temp

if.end67:                                         ; preds = %if.then62.if.end67_crit_edge, %if.end49.if.end67_crit_edge
  %temp_tx.0 = phi ptr [ %call63, %if.then62.if.end67_crit_edge ], [ null, %if.end49.if.end67_crit_edge ]
  br i1 %cmp58.not, label %if.end67.if.end74_crit_edge, label %if.then69

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

if.then69:                                        ; preds = %if.end67
  %call70 = tail call noalias ptr @vmalloc(i32 noundef 80) #19
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.then69.free_temp_crit_edge, label %if.then69.if.end74_crit_edge

if.then69.if.end74_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

if.then69.free_temp_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_temp

if.end74:                                         ; preds = %if.then69.if.end74_crit_edge, %if.end67.if.end74_crit_edge
  %temp_rx.0 = phi ptr [ %call70, %if.then69.if.end74_crit_edge ], [ null, %if.end67.if.end74_crit_edge ]
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %37, i32 noundef 4) #15
  tail call void @e1000e_down(ptr noundef %add.ptr.i, i1 noundef zeroext true) #15
  br i1 %cmp53.not, label %if.end74.if.end85_crit_edge, label %if.then77

if.end74.if.end85_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then77:                                        ; preds = %if.end74
  %tx_ring78 = getelementptr i8, ptr %netdev, i32 3200
  %38 = ptrtoint ptr %tx_ring78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_ring78, align 128
  %40 = call ptr @memcpy(ptr %temp_tx.0, ptr %39, i32 80)
  %count80 = getelementptr inbounds %struct.e1000_ring, ptr %temp_tx.0, i32 0, i32 4
  %41 = ptrtoint ptr %count80 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv29, ptr %count80, align 4
  %call81 = tail call i32 @e1000e_setup_tx_resources(ptr noundef %temp_tx.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then77.if.end85_crit_edge, label %if.then77.err_setup_crit_edge

if.then77.err_setup_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_setup

if.then77.if.end85_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.end85:                                         ; preds = %if.then77.if.end85_crit_edge, %if.end74.if.end85_crit_edge
  br i1 %cmp58.not, label %if.end85.if.end95_crit_edge, label %if.then87

if.end85.if.end95_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

if.then87:                                        ; preds = %if.end85
  %rx_ring88 = getelementptr i8, ptr %netdev, i32 3592
  %42 = ptrtoint ptr %rx_ring88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_ring88, align 8
  %44 = call ptr @memcpy(ptr %temp_rx.0, ptr %43, i32 80)
  %count90 = getelementptr inbounds %struct.e1000_ring, ptr %temp_rx.0, i32 0, i32 4
  %45 = ptrtoint ptr %count90 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv55, ptr %count90, align 4
  %call91 = tail call i32 @e1000e_setup_rx_resources(ptr noundef %temp_rx.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then87.if.end95_crit_edge, label %err_setup_rx

if.then87.if.end95_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

if.end95:                                         ; preds = %if.then87.if.end95_crit_edge, %if.end85.if.end95_crit_edge
  br i1 %cmp53.not, label %if.end95.if.end101_crit_edge, label %if.then97

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  %tx_ring98 = getelementptr i8, ptr %netdev, i32 3200
  %46 = ptrtoint ptr %tx_ring98 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_ring98, align 128
  tail call void @e1000e_free_tx_resources(ptr noundef %47) #15
  %48 = ptrtoint ptr %tx_ring98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_ring98, align 128
  %50 = call ptr @memcpy(ptr %49, ptr %temp_tx.0, i32 80)
  %51 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv28, ptr %tx_ring_count, align 32
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.end95.if.end101_crit_edge
  br i1 %cmp58.not, label %if.end101.err_setup_crit_edge, label %if.then103

if.end101.err_setup_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_setup

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  %rx_ring104 = getelementptr i8, ptr %netdev, i32 3592
  %52 = ptrtoint ptr %rx_ring104 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_ring104, align 8
  tail call void @e1000e_free_rx_resources(ptr noundef %53) #15
  %54 = ptrtoint ptr %rx_ring104 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_ring104, align 8
  %56 = call ptr @memcpy(ptr %55, ptr %temp_rx.0, i32 80)
  %57 = ptrtoint ptr %rx_ring_count56 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv9, ptr %rx_ring_count56, align 2
  br label %err_setup

err_setup_rx:                                     ; preds = %if.then87
  br i1 %cmp53.not, label %err_setup_rx.err_setup_crit_edge, label %if.then112

err_setup_rx.err_setup_crit_edge:                 ; preds = %err_setup_rx
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_setup

if.then112:                                       ; preds = %err_setup_rx
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @e1000e_free_tx_resources(ptr noundef %temp_tx.0) #15
  br label %err_setup

err_setup:                                        ; preds = %if.then112, %err_setup_rx.err_setup_crit_edge, %if.then103, %if.end101.err_setup_crit_edge, %if.then77.err_setup_crit_edge
  %err.3 = phi i32 [ %call81, %if.then77.err_setup_crit_edge ], [ %call91, %if.then112 ], [ %call91, %err_setup_rx.err_setup_crit_edge ], [ 0, %if.then103 ], [ 0, %if.end101.err_setup_crit_edge ]
  tail call void @e1000e_up(ptr noundef %add.ptr.i) #15
  %58 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent, align 8
  %call.i196 = tail call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 4) #15
  br label %free_temp

free_temp:                                        ; preds = %err_setup, %if.then69.free_temp_crit_edge, %if.then62.free_temp_crit_edge
  %err.4 = phi i32 [ %err.3, %err_setup ], [ -12, %if.then62.free_temp_crit_edge ], [ -12, %if.then69.free_temp_crit_edge ]
  %temp_rx.1 = phi ptr [ %temp_rx.0, %err_setup ], [ null, %if.then62.free_temp_crit_edge ], [ null, %if.then69.free_temp_crit_edge ]
  %temp_tx.1 = phi ptr [ %temp_tx.0, %err_setup ], [ null, %if.then62.free_temp_crit_edge ], [ %temp_tx.0, %if.then69.free_temp_crit_edge ]
  tail call void @vfree(ptr noundef %temp_tx.1) #15
  tail call void @vfree(ptr noundef %temp_rx.1) #15
  br label %clear_reset

clear_reset:                                      ; preds = %free_temp, %if.then43
  %err.5 = phi i32 [ %err.4, %free_temp ], [ 0, %if.then43 ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #15
  br label %cleanup

cleanup:                                          ; preds = %clear_reset, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %clear_reset ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @e1000_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 13772
  %0 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fc_autoneg, align 4, !range !60
  %2 = zext i8 %1 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %autoneg, align 4
  %current_mode = getelementptr i8, ptr %netdev, i32 4388
  %4 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %5, label %entry.if.end14_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then5
    i32 3, label %if.then10
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  br label %if.end14.sink.split

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end14.sink.split

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
define internal i32 @e1000_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 3684
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 13772
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %fc_autoneg, align 4
  %state = getelementptr i8, ptr %netdev, i32 3068
  %call399 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call399)
  %tobool4.not100 = icmp eq i32 %call399, 0
  br i1 %tobool4.not100, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #15
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #15
  %5 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fc_autoneg, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.else12, label %if.then

if.then:                                          ; preds = %while.end
  %requested_mode = getelementptr i8, ptr %netdev, i32 4392
  %7 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %requested_mode, align 4
  %netdev9 = getelementptr i8, ptr %netdev, i32 3676
  %8 = ptrtoint ptr %netdev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev9, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @e1000e_down(ptr noundef %add.ptr.i, i1 noundef zeroext true) #15
  tail call void @e1000e_up(ptr noundef %add.ptr.i) #15
  br label %out

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  br label %out

if.else12:                                        ; preds = %while.end
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %12 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  %tx_pause31 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %14 = ptrtoint ptr %tx_pause31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pause31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool32.not = icmp eq i32 %15, 0
  br i1 %tobool13.not, label %land.lhs.true30, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else12
  br i1 %tobool32.not, label %land.lhs.true21, label %land.lhs.true.if.end48.sink.split_crit_edge

land.lhs.true.if.end48.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.sink.split

land.lhs.true21:                                  ; preds = %land.lhs.true
  %16 = ptrtoint ptr %tx_pause31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pause31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %tobool23.not, label %land.lhs.true21.if.end48.sink.split_crit_edge, label %land.lhs.true21.if.end48_crit_edge

land.lhs.true21.if.end48_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

land.lhs.true21.if.end48.sink.split_crit_edge:    ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.sink.split

land.lhs.true30:                                  ; preds = %if.else12
  br i1 %tobool32.not, label %land.lhs.true39, label %land.lhs.true30.if.end48.sink.split_crit_edge

land.lhs.true30.if.end48.sink.split_crit_edge:    ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.sink.split

land.lhs.true39:                                  ; preds = %land.lhs.true30
  %18 = ptrtoint ptr %tx_pause31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_pause31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool41.not = icmp eq i32 %19, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end48.sink.split_crit_edge, label %land.lhs.true39.if.end48_crit_edge

land.lhs.true39.if.end48_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

land.lhs.true39.if.end48.sink.split_crit_edge:    ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %land.lhs.true39.if.end48.sink.split_crit_edge, %land.lhs.true30.if.end48.sink.split_crit_edge, %land.lhs.true21.if.end48.sink.split_crit_edge, %land.lhs.true.if.end48.sink.split_crit_edge
  %.sink = phi i32 [ 3, %land.lhs.true.if.end48.sink.split_crit_edge ], [ 1, %land.lhs.true21.if.end48.sink.split_crit_edge ], [ 2, %land.lhs.true30.if.end48.sink.split_crit_edge ], [ 0, %land.lhs.true39.if.end48.sink.split_crit_edge ]
  %requested_mode26 = getelementptr i8, ptr %netdev, i32 4392
  %20 = ptrtoint ptr %requested_mode26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %requested_mode26, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %land.lhs.true39.if.end48_crit_edge, %land.lhs.true21.if.end48_crit_edge
  %requested_mode50 = getelementptr i8, ptr %netdev, i32 4392
  %21 = ptrtoint ptr %requested_mode50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %requested_mode50, align 4
  %current_mode = getelementptr i8, ptr %netdev, i32 4388
  %23 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %current_mode, align 4
  %media_type = getelementptr i8, ptr %netdev, i32 4528
  %24 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp52 = icmp eq i32 %25, 2
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %setup_link = getelementptr i8, ptr %netdev, i32 3756
  %26 = ptrtoint ptr %setup_link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %setup_link, align 4
  %call55 = tail call i32 %27(ptr noundef %hw1) #15
  br label %out

if.else56:                                        ; preds = %if.end48
  %call57 = tail call i32 @e1000e_force_mac_fc(ptr noundef %hw1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.else56.out_crit_edge

if.else56.out_crit_edge:                          ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end60:                                         ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #17
  %call61 = tail call i32 @e1000e_set_fc_watermarks(ptr noundef %hw1) #15
  br label %out

out:                                              ; preds = %if.end60, %if.else56.out_crit_edge, %if.then54, %if.else, %if.then11
  %retval2.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.else ], [ %call55, %if.then54 ], [ %call57, %if.else56.out_crit_edge ], [ 0, %if.end60 ]
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 8
  %call.i98 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 4) #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #15
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_diag_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr noundef %data) #3 align 64 {
entry:
  %phy_reg.i.i = alloca i16, align 2
  %phy_reg.i.i.i = alloca i16, align 2
  %temp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #15
  %state = getelementptr i8, ptr %netdev, i32 3068
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #15
  br i1 %tobool.i.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 13776
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 16
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @e1000e_get_hw_control(ptr noundef %add.ptr.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call void @e1000e_power_up_phy(ptr noundef %add.ptr.i) #15
  %autoneg_wait_to_complete = getelementptr i8, ptr %netdev, i32 4548
  %6 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %autoneg_wait_to_complete, align 4
  tail call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  %7 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %autoneg_wait_to_complete, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %flags9 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %8 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %autoneg_advertised13 = getelementptr i8, ptr %netdev, i32 4532
  %10 = ptrtoint ptr %autoneg_advertised13 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %autoneg_advertised13, align 4
  %forced_speed_duplex15 = getelementptr i8, ptr %netdev, i32 4358
  %12 = ptrtoint ptr %forced_speed_duplex15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %forced_speed_duplex15, align 2
  %autoneg18 = getelementptr i8, ptr %netdev, i32 4362
  %14 = ptrtoint ptr %autoneg18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %autoneg18, align 2, !range !60
  %netdev20 = getelementptr i8, ptr %netdev, i32 3676
  %16 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev20, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %17, ptr noundef nonnull @.str.2) #18
  br i1 %tobool.i.not, label %if.then10.if.end24_crit_edge, label %if.then22

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then22:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call i32 @e1000e_close(ptr noundef %netdev) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then10.if.end24_crit_edge
  %hw1.i = getelementptr i8, ptr %netdev, i32 3684
  %type.i = getelementptr i8, ptr %netdev, i32 3800
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %20 = icmp ult i32 %19, 6
  br i1 %20, label %switch.lookup, label %if.end24.sw.epilog.i_crit_edge

if.end24.sw.epilog.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.e1000_diag_test, i32 0, i32 %19
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end24.sw.epilog.i_crit_edge
  %toggle.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 2147479603, %if.end24.sw.epilog.i_crit_edge ]
  %hw_addr.i.i = getelementptr i8, ptr %netdev, i32 3688
  %22 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %25 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i329.i = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329.i) #15, !srcloc !58
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %and.i = and i32 %28, %toggle.0.i
  tail call void @__ew32(ptr noundef %hw1.i, i32 noundef 8, i32 noundef %toggle.0.i) #15
  %29 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i331.i = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i331.i) #15, !srcloc !58
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %and6.i = and i32 %32, %toggle.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and6.i)
  %cmp.not.i = icmp eq i32 %and.i, %and6.i
  br i1 %cmp.not.i, label %if.end.i, label %e1000_reg_test.exit

if.end.i:                                         ; preds = %sw.epilog.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  tail call void @__ew32(ptr noundef %hw1.i, i32 noundef 8, i32 noundef %33) #15
  %flags.i = getelementptr i8, ptr %netdev, i32 13776
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 16
  %and7.i = and i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i.do.body31.i_crit_edge

if.end.i.do.body31.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body31.i

do.body.i:                                        ; preds = %if.end.i
  %call9.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 40, i32 noundef 0, i32 noundef -1, i32 noundef -1) #15
  br i1 %call9.i, label %do.body.i.if.then27_crit_edge, label %do.body12.i

do.body.i.if.then27_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body12.i:                                      ; preds = %do.body.i
  %call13.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 44, i32 noundef 0, i32 noundef 65535, i32 noundef -1) #15
  br i1 %call13.i, label %do.body12.i.if.then27_crit_edge, label %do.body18.i

do.body12.i.if.then27_crit_edge:                  ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body18.i:                                      ; preds = %do.body12.i
  %call19.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 48, i32 noundef 0, i32 noundef 65535, i32 noundef -1) #15
  br i1 %call19.i, label %do.body18.i.if.then27_crit_edge, label %do.body24.i

do.body18.i.if.then27_crit_edge:                  ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body24.i:                                      ; preds = %do.body18.i
  %call25.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 56, i32 noundef 0, i32 noundef 65535, i32 noundef -1) #15
  br i1 %call25.i, label %do.body24.i.if.then27_crit_edge, label %do.body24.i.do.body31.i_crit_edge

do.body24.i.do.body31.i_crit_edge:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body31.i

do.body24.i.if.then27_crit_edge:                  ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body31.i:                                      ; preds = %do.body24.i.do.body31.i_crit_edge, %if.end.i.do.body31.i_crit_edge
  %call32.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 10272, i32 noundef 0, i32 noundef 65535, i32 noundef -1) #15
  br i1 %call32.i, label %do.body31.i.if.then27_crit_edge, label %do.body37.i

do.body31.i.if.then27_crit_edge:                  ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body37.i:                                      ; preds = %do.body31.i
  %call38.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 10244, i32 noundef 0, i32 noundef -1, i32 noundef -1) #15
  br i1 %call38.i, label %do.body37.i.if.then27_crit_edge, label %do.body43.i

do.body37.i.if.then27_crit_edge:                  ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body43.i:                                      ; preds = %do.body37.i
  %call44.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 10248, i32 noundef 0, i32 noundef 1048448, i32 noundef 1048575) #15
  br i1 %call44.i, label %do.body43.i.if.then27_crit_edge, label %do.body49.i

do.body43.i.if.then27_crit_edge:                  ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body49.i:                                      ; preds = %do.body43.i
  %call50.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 10256, i32 noundef 0, i32 noundef 65535, i32 noundef 65535) #15
  br i1 %call50.i, label %do.body49.i.if.then27_crit_edge, label %do.body55.i

do.body49.i.if.then27_crit_edge:                  ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body55.i:                                      ; preds = %do.body49.i
  %call56.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 10264, i32 noundef 0, i32 noundef 65535, i32 noundef 65535) #15
  br i1 %call56.i, label %do.body55.i.if.then27_crit_edge, label %do.body61.i

do.body55.i.if.then27_crit_edge:                  ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body61.i:                                      ; preds = %do.body55.i
  %call62.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 8552, i32 noundef 0, i32 noundef 65528, i32 noundef 65528) #15
  br i1 %call62.i, label %do.body61.i.if.then27_crit_edge, label %do.body67.i

do.body61.i.if.then27_crit_edge:                  ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body67.i:                                      ; preds = %do.body61.i
  %call68.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 368, i32 noundef 0, i32 noundef 65535, i32 noundef 65535) #15
  br i1 %call68.i, label %do.body67.i.if.then27_crit_edge, label %do.body73.i

do.body67.i.if.then27_crit_edge:                  ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body73.i:                                      ; preds = %do.body67.i
  %call74.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 1040, i32 noundef 0, i32 noundef 1073741823, i32 noundef 1073741823) #15
  br i1 %call74.i, label %do.body73.i.if.then27_crit_edge, label %do.body79.i

do.body73.i.if.then27_crit_edge:                  ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body79.i:                                      ; preds = %do.body73.i
  %call80.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 14340, i32 noundef 0, i32 noundef -1, i32 noundef -1) #15
  br i1 %call80.i, label %do.body79.i.if.then27_crit_edge, label %do.body85.i

do.body79.i.if.then27_crit_edge:                  ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body85.i:                                      ; preds = %do.body79.i
  %call86.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 14344, i32 noundef 0, i32 noundef 1048448, i32 noundef 1048575) #15
  br i1 %call86.i, label %do.body85.i.if.then27_crit_edge, label %do.body91.i

do.body85.i.if.then27_crit_edge:                  ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body91.i:                                      ; preds = %do.body85.i
  tail call void @__ew32(ptr noundef %hw1.i, i32 noundef 256, i32 noundef 0) #15
  %36 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i262 = getelementptr i8, ptr %37, i32 256
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i262) #15, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i263 = icmp eq i32 %38, 0
  br i1 %cmp.not.i263, label %do.end96.i, label %reg_set_and_check.exit266.thread

reg_set_and_check.exit266.thread:                 ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #15
  %40 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef 256, i32 noundef %39, i32 noundef 0) #18
  br label %if.then27.sink.split

do.end96.i:                                       ; preds = %do.body91.i
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 16
  %and98.i = and i32 %43, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  %cond.i = select i1 %tobool99.not.i, i32 115323902, i32 113488702
  %and.i252 = and i32 %cond.i, 2077690
  tail call void @__ew32(ptr noundef %hw1.i, i32 noundef 256, i32 noundef %and.i252) #15
  %44 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i254 = getelementptr i8, ptr %45, i32 256
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i254) #15, !srcloc !58
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %and3.i255 = and i32 %47, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i252, i32 %and3.i255)
  %cmp.not.i256 = icmp eq i32 %and.i252, %and3.i255
  br i1 %cmp.not.i256, label %do.body106.i, label %reg_set_and_check.exit259.thread

reg_set_and_check.exit259.thread:                 ; preds = %do.end96.i
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netdev20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.6, i32 noundef 256, i32 noundef %and3.i255, i32 noundef %and.i252) #18
  br label %if.then27.sink.split

do.body106.i:                                     ; preds = %do.end96.i
  tail call void @__ew32(ptr noundef %hw1.i, i32 noundef 1024, i32 noundef 0) #15
  %50 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i246 = getelementptr i8, ptr %51, i32 1024
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i246) #15, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.not.i247 = icmp eq i32 %52, 0
  br i1 %cmp.not.i247, label %do.body112.i, label %reg_set_and_check.exit250.thread

reg_set_and_check.exit250.thread:                 ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #17
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #15
  %54 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.6, i32 noundef 1024, i32 noundef %53, i32 noundef 0) #18
  br label %if.then27.sink.split

do.body112.i:                                     ; preds = %do.body106.i
  tail call void @__ew32(ptr noundef %hw1.i, i32 noundef 256, i32 noundef %cond.i) #15
  %56 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i240 = getelementptr i8, ptr %57, i32 256
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i240) #15, !srcloc !58
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %and3.i = and i32 %59, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %and3.i)
  %cmp.not.i241 = icmp eq i32 %cond.i, %and3.i
  br i1 %cmp.not.i241, label %do.body118.i, label %reg_set_and_check.exit.thread

reg_set_and_check.exit.thread:                    ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.6, i32 noundef 256, i32 noundef %and3.i, i32 noundef %cond.i) #18
  br label %if.then27.sink.split

do.body118.i:                                     ; preds = %do.body112.i
  %call119.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 10240, i32 noundef 0, i32 noundef -16, i32 noundef -1) #15
  br i1 %call119.i, label %do.body118.i.if.then27_crit_edge, label %do.end123.i

do.body118.i.if.then27_crit_edge:                 ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.end123.i:                                      ; preds = %do.body118.i
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 16
  %and125.i = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %do.body128.i, label %do.end123.i.do.body135.i_crit_edge

do.end123.i.do.body135.i_crit_edge:               ; preds = %do.end123.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body135.i

do.body128.i:                                     ; preds = %do.end123.i
  %call129.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 376, i32 noundef 0, i32 noundef -1073676289, i32 noundef 65535) #15
  br i1 %call129.i, label %do.body128.i.if.then27_crit_edge, label %do.body128.i.do.body135.i_crit_edge

do.body128.i.do.body135.i_crit_edge:              ; preds = %do.body128.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body135.i

do.body128.i.if.then27_crit_edge:                 ; preds = %do.body128.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body135.i:                                     ; preds = %do.body128.i.do.body135.i_crit_edge, %do.end123.i.do.body135.i_crit_edge
  %call136.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 14336, i32 noundef 0, i32 noundef -16, i32 noundef -1) #15
  br i1 %call136.i, label %do.body135.i.if.then27_crit_edge, label %do.body141.i

do.body135.i.if.then27_crit_edge:                 ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.body141.i:                                     ; preds = %do.body135.i
  %call142.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 14368, i32 noundef 0, i32 noundef 65535, i32 noundef 65535) #15
  br i1 %call142.i, label %do.body141.i.if.then27_crit_edge, label %do.end146.i

do.body141.i.if.then27_crit_edge:                 ; preds = %do.body141.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.end146.i:                                      ; preds = %do.body141.i
  %64 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %65, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 10
  %spec.select.i = select i1 %switch.i, i32 -2146959361, i32 -2147221505
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %65)
  %cmp152.i = icmp ugt i32 %65, 10
  br i1 %cmp152.i, label %if.then153.i, label %do.end146.i.if.end156.i_crit_edge

do.end146.i.if.end156.i_crit_edge:                ; preds = %do.end146.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156.i

if.then153.i:                                     ; preds = %do.end146.i
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i333.i = getelementptr i8, ptr %67, i32 23380
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i333.i) #15, !srcloc !58
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %and155.i = lshr i32 %69, 7
  %shr.i = and i32 %and155.i, 7
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.then153.i, %do.end146.i.if.end156.i_crit_edge
  %wlock_mac.0.i = phi i32 [ %shr.i, %if.then153.i ], [ 0, %do.end146.i.if.end156.i_crit_edge ]
  %rar_entry_count.i = getelementptr i8, ptr %netdev, i32 4356
  %70 = ptrtoint ptr %rar_entry_count.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %rar_entry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp157338.not.i = icmp eq i16 %71, 0
  br i1 %cmp157338.not.i, label %if.end156.i.for.cond211.preheader.i_crit_edge, label %if.end156.i.for.body.i_crit_edge

if.end156.i.for.body.i_crit_edge:                 ; preds = %if.end156.i
  br label %for.body.i

if.end156.i.for.cond211.preheader.i_crit_edge:    ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond211.preheader.i

for.cond211.preheader.i:                          ; preds = %for.inc.i.for.cond211.preheader.i_crit_edge, %if.end156.i.for.cond211.preheader.i_crit_edge
  %mta_reg_count.i = getelementptr i8, ptr %netdev, i32 3842
  %72 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mta_reg_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp213342.not.i = icmp eq i16 %73, 0
  br i1 %cmp213342.not.i, label %for.cond211.preheader.i.e1000_reg_test.exit.thread270_crit_edge, label %for.cond211.preheader.i.do.body216.i_crit_edge

for.cond211.preheader.i.do.body216.i_crit_edge:   ; preds = %for.cond211.preheader.i
  br label %do.body216.i

for.cond211.preheader.i.e1000_reg_test.exit.thread270_crit_edge: ; preds = %for.cond211.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_reg_test.exit.thread270

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end156.i.for.body.i_crit_edge
  %mask.1340.i = phi i32 [ %mask.6.i, %for.inc.i.for.body.i_crit_edge ], [ %spec.select.i, %if.end156.i.for.body.i_crit_edge ]
  %i.0339.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end156.i.for.body.i_crit_edge ]
  %74 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %75)
  %cmp160.i = icmp ugt i32 %75, 10
  br i1 %cmp160.i, label %if.then162.i, label %if.end176.i

if.then162.i:                                     ; preds = %for.body.i
  %76 = zext i32 %wlock_mac.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %wlock_mac.0.i, label %land.lhs.true.i [
    i32 1, label %if.then162.i.for.inc.i_crit_edge
    i32 0, label %if.then162.i.if.end169.i_crit_edge
  ]

if.then162.i.if.end169.i_crit_edge:               ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end169.i

if.then162.i.for.inc.i_crit_edge:                 ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0339.i, i32 %wlock_mac.0.i)
  %cmp166.i = icmp ugt i32 %i.0339.i, %wlock_mac.0.i
  br i1 %cmp166.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end169.i_crit_edge

land.lhs.true.i.if.end169.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end169.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end169.i:                                      ; preds = %land.lhs.true.i.if.end169.i_crit_edge, %if.then162.i.if.end169.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0339.i)
  %cmp170.i = icmp eq i32 %i.0339.i, 10
  br i1 %cmp170.i, label %if.then172.i, label %if.else.i

if.then172.i:                                     ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #17
  %or173.i = or i32 %mask.1340.i, 1073741824
  br label %do.body196.i

if.else.i:                                        ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #17
  %and174.i = and i32 %mask.1340.i, -1073741825
  br label %do.body196.i

if.end176.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %75)
  %cmp178.i = icmp eq i32 %75, 10
  br i1 %cmp178.i, label %if.then180.i, label %if.end176.i.do.body196.i_crit_edge

if.end176.i.do.body196.i_crit_edge:               ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body196.i

if.then180.i:                                     ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0339.i)
  %cmp181.i = icmp eq i32 %i.0339.i, 1
  %and184.i = and i32 %mask.1340.i, -720897
  %spec.select325.i = select i1 %cmp181.i, i32 %and184.i, i32 %mask.1340.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0339.i)
  %cmp186.i = icmp eq i32 %i.0339.i, 4
  %or189.i = or i32 %spec.select325.i, 1073741824
  %mask.4.i = select i1 %cmp186.i, i32 %or189.i, i32 %spec.select325.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0339.i)
  %cmp191.not.i = icmp eq i32 %i.0339.i, 0
  %add.i = add i32 %i.0339.i, 6
  %spec.select327.i = select i1 %cmp191.not.i, i32 0, i32 %add.i
  br label %do.body196.i

do.body196.i:                                     ; preds = %if.then180.i, %if.end176.i.do.body196.i_crit_edge, %if.else.i, %if.then172.i
  %i.1.i = phi i32 [ %i.0339.i, %if.end176.i.do.body196.i_crit_edge ], [ %spec.select327.i, %if.then180.i ], [ 10, %if.then172.i ], [ %i.0339.i, %if.else.i ]
  %mask.5.i = phi i32 [ %mask.1340.i, %if.end176.i.do.body196.i_crit_edge ], [ %mask.4.i, %if.then180.i ], [ %or173.i, %if.then172.i ], [ %and174.i, %if.else.i ]
  %shl.i = shl i32 %i.1.i, 1
  %add197.i = or i32 %shl.i, 1
  %call198.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 21504, i32 noundef %add197.i, i32 noundef %mask.5.i, i32 noundef -1) #15
  br i1 %call198.i, label %do.body196.i.if.then27_crit_edge, label %do.end202.i

do.body196.i.if.then27_crit_edge:                 ; preds = %do.body196.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

do.end202.i:                                      ; preds = %do.body196.i
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %78)
  %cmp204.i = icmp eq i32 %78, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1.i)
  %cmp207.i = icmp ugt i32 %i.1.i, 6
  %or.cond.i = select i1 %cmp204.i, i1 %cmp207.i, i1 false
  %sub.i = add i32 %i.1.i, -6
  %spec.select326.i = select i1 %or.cond.i, i32 %sub.i, i32 %i.1.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end202.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.then162.i.for.inc.i_crit_edge
  %i.2.i = phi i32 [ %i.0339.i, %if.then162.i.for.inc.i_crit_edge ], [ %i.0339.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %spec.select326.i, %do.end202.i ]
  %mask.6.i = phi i32 [ %mask.1340.i, %if.then162.i.for.inc.i_crit_edge ], [ %mask.1340.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %mask.5.i, %do.end202.i ]
  %inc.i = add i32 %i.2.i, 1
  %79 = ptrtoint ptr %rar_entry_count.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %rar_entry_count.i, align 4
  %conv.i = zext i16 %80 to i32
  %cmp157.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp157.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond211.preheader.i_crit_edge

for.inc.i.for.cond211.preheader.i_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond211.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond211.i:                                    ; preds = %do.body216.i
  %inc223.i = add nuw nsw i32 %i.3343.i, 1
  %81 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %mta_reg_count.i, align 2
  %conv212.i = zext i16 %82 to i32
  %cmp213.i = icmp ult i32 %inc223.i, %conv212.i
  br i1 %cmp213.i, label %for.cond211.i.do.body216.i_crit_edge, label %for.cond211.i.e1000_reg_test.exit.thread270_crit_edge

for.cond211.i.e1000_reg_test.exit.thread270_crit_edge: ; preds = %for.cond211.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_reg_test.exit.thread270

for.cond211.i.do.body216.i_crit_edge:             ; preds = %for.cond211.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body216.i

do.body216.i:                                     ; preds = %for.cond211.i.do.body216.i_crit_edge, %for.cond211.preheader.i.do.body216.i_crit_edge
  %i.3343.i = phi i32 [ %inc223.i, %for.cond211.i.do.body216.i_crit_edge ], [ 0, %for.cond211.preheader.i.do.body216.i_crit_edge ]
  %call217.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 20992, i32 noundef %i.3343.i, i32 noundef -1, i32 noundef -1) #15
  br i1 %call217.i, label %do.body216.i.if.then27_crit_edge, label %for.cond211.i

do.body216.i.if.then27_crit_edge:                 ; preds = %do.body216.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

e1000_reg_test.exit.thread270:                    ; preds = %for.cond211.i.e1000_reg_test.exit.thread270_crit_edge, %for.cond211.preheader.i.e1000_reg_test.exit.thread270_crit_edge
  %83 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %data, align 8
  br label %if.end29

e1000_reg_test.exit:                              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %84 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %85, ptr noundef nonnull @.str.4, i32 noundef %and6.i, i32 noundef %and.i) #18
  br label %if.then27.sink.split

if.then27.sink.split:                             ; preds = %e1000_reg_test.exit, %reg_set_and_check.exit.thread, %reg_set_and_check.exit250.thread, %reg_set_and_check.exit259.thread, %reg_set_and_check.exit266.thread
  %.sink = phi i64 [ 256, %reg_set_and_check.exit.thread ], [ 1024, %reg_set_and_check.exit250.thread ], [ 256, %reg_set_and_check.exit259.thread ], [ 256, %reg_set_and_check.exit266.thread ], [ 1, %e1000_reg_test.exit ]
  %86 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %.sink, ptr %data, align 8
  br label %if.then27

if.then27:                                        ; preds = %if.then27.sink.split, %do.body216.i.if.then27_crit_edge, %do.body196.i.if.then27_crit_edge, %do.body141.i.if.then27_crit_edge, %do.body135.i.if.then27_crit_edge, %do.body128.i.if.then27_crit_edge, %do.body118.i.if.then27_crit_edge, %do.body85.i.if.then27_crit_edge, %do.body79.i.if.then27_crit_edge, %do.body73.i.if.then27_crit_edge, %do.body67.i.if.then27_crit_edge, %do.body61.i.if.then27_crit_edge, %do.body55.i.if.then27_crit_edge, %do.body49.i.if.then27_crit_edge, %do.body43.i.if.then27_crit_edge, %do.body37.i.if.then27_crit_edge, %do.body31.i.if.then27_crit_edge, %do.body24.i.if.then27_crit_edge, %do.body18.i.if.then27_crit_edge, %do.body12.i.if.then27_crit_edge, %do.body.i.if.then27_crit_edge
  %87 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags9, align 4
  %or = or i32 %88, 2
  store i32 %or, ptr %flags9, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %e1000_reg_test.exit.thread270
  tail call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  %arrayidx30 = getelementptr i64, ptr %data, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i) #15
  %89 = ptrtoint ptr %temp.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %temp.i, align 2, !annotation !57
  %90 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %arrayidx30, align 8
  %read.i.i = getelementptr i8, ptr %netdev, i32 4556
  br label %for.body.i161

for.body.i161:                                    ; preds = %if.end.i165.for.body.i161_crit_edge, %if.end29
  %i.026.i = phi i16 [ 0, %if.end29 ], [ %inc.i164, %if.end.i165.for.body.i161_crit_edge ]
  %checksum.025.i = phi i32 [ 0, %if.end29 ], [ %phi.cast.i, %if.end.i165.for.body.i161_crit_edge ]
  %91 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read.i.i, align 4
  %call.i.i = call i32 %92(ptr noundef %hw1.i, i16 noundef zeroext %i.026.i, i16 noundef zeroext 1, ptr noundef nonnull %temp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %e1000_eeprom_test.exit.thread, label %if.end.i165

e1000_eeprom_test.exit.thread:                    ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 1, ptr %arrayidx30, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i) #15
  br label %if.then33

if.end.i165:                                      ; preds = %for.body.i161
  %94 = ptrtoint ptr %temp.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %temp.i, align 2
  %conv5.i = zext i16 %95 to i32
  %add.i163 = add nuw nsw i32 %checksum.025.i, %conv5.i
  %inc.i164 = add nuw nsw i16 %i.026.i, 1
  %phi.cast.i = and i32 %add.i163, 65535
  %cmp.i = icmp ult i16 %i.026.i, 63
  br i1 %cmp.i, label %if.end.i165.for.body.i161_crit_edge, label %for.end.i

if.end.i165.for.body.i161_crit_edge:              ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i161

for.end.i:                                        ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_const_cmp4(i32 47802, i32 %phi.cast.i)
  %cmp9.not.i = icmp eq i32 %phi.cast.i, 47802
  br i1 %cmp9.not.i, label %for.end.i.e1000_eeprom_test.exit_crit_edge, label %land.lhs.true.i167

for.end.i.e1000_eeprom_test.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_eeprom_test.exit

land.lhs.true.i167:                               ; preds = %for.end.i
  %96 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx30, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %tobool.not.i166 = icmp eq i64 %97, 0
  br i1 %tobool.not.i166, label %if.then11.i, label %land.lhs.true.i167.e1000_eeprom_test.exit_crit_edge

land.lhs.true.i167.e1000_eeprom_test.exit_crit_edge: ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_eeprom_test.exit

if.then11.i:                                      ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 2, ptr %arrayidx30, align 8
  br label %e1000_eeprom_test.exit

e1000_eeprom_test.exit:                           ; preds = %if.then11.i, %land.lhs.true.i167.e1000_eeprom_test.exit_crit_edge, %for.end.i.e1000_eeprom_test.exit_crit_edge
  %99 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx30, align 8
  %conv13.i = trunc i64 %100 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i)
  %tobool32.not = icmp eq i32 %conv13.i, 0
  br i1 %tobool32.not, label %e1000_eeprom_test.exit.if.end36_crit_edge, label %e1000_eeprom_test.exit.if.then33_crit_edge

e1000_eeprom_test.exit.if.then33_crit_edge:       ; preds = %e1000_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33

e1000_eeprom_test.exit.if.end36_crit_edge:        ; preds = %e1000_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then33:                                        ; preds = %e1000_eeprom_test.exit.if.then33_crit_edge, %e1000_eeprom_test.exit.thread
  %101 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags9, align 4
  %or35 = or i32 %102, 2
  store i32 %or35, ptr %flags9, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %e1000_eeprom_test.exit.if.end36_crit_edge
  call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  %arrayidx37 = getelementptr i64, ptr %data, i32 2
  %103 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev20, align 4
  %pdev.i = getelementptr i8, ptr %netdev, i32 3680
  %105 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev.i, align 32
  %irq3.i = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 46
  %107 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %irq3.i, align 4
  %109 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 0, ptr %arrayidx37, align 8
  %int_mode4.i = getelementptr i8, ptr %netdev, i32 13748
  %110 = ptrtoint ptr %int_mode4.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %int_mode4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp.i169 = icmp eq i32 %111, 2
  br i1 %cmp.i169, label %if.then.i170, label %if.end36.if.end.i173_crit_edge

if.end36.if.end.i173_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i173

if.then.i170:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  call void @e1000e_reset_interrupt_capability(ptr noundef %add.ptr.i) #15
  %112 = ptrtoint ptr %int_mode4.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %int_mode4.i, align 4
  call void @e1000e_set_interrupt_capability(ptr noundef %add.ptr.i) #15
  br label %if.end.i173

if.end.i173:                                      ; preds = %if.then.i170, %if.end36.if.end.i173_crit_edge
  %call.i.i171 = call i32 @request_threaded_irq(i32 noundef %108, ptr noundef nonnull @e1000_test_intr, ptr noundef null, i32 noundef 256, ptr noundef %104, ptr noundef %104) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i171)
  %tobool.not.i172 = icmp eq i32 %call.i.i171, 0
  br i1 %tobool.not.i172, label %if.end.i173.if.end14.i_crit_edge, label %if.else.i174

if.end.i173.if.end14.i_crit_edge:                 ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.else.i174:                                     ; preds = %if.end.i173
  %call.i121.i = call i32 @request_threaded_irq(i32 noundef %108, ptr noundef nonnull @e1000_test_intr, ptr noundef null, i32 noundef 128, ptr noundef %104, ptr noundef %104) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i)
  %tobool11.not.i = icmp eq i32 %call.i121.i, 0
  br i1 %tobool11.not.i, label %if.else.i174.if.end14.i_crit_edge, label %if.then12.i

if.else.i174.if.end14.i_crit_edge:                ; preds = %if.else.i174
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.else.i174
  call void @__sanitizer_cov_trace_pc() #17
  %113 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 1, ptr %arrayidx37, align 8
  br label %out.i

if.end14.i:                                       ; preds = %if.else.i174.if.end14.i_crit_edge, %if.end.i173.if.end14.i_crit_edge
  %cond.i175 = phi ptr [ @.str.8, %if.else.i174.if.end14.i_crit_edge ], [ @.str.9, %if.end.i173.if.end14.i_crit_edge ]
  %114 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %netdev20, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %115, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond.i175) #18
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 216, i32 noundef -1) #15
  %116 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i177 = getelementptr i8, ptr %117, i32 8
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i177) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #15
  %flags.i178 = getelementptr i8, ptr %netdev, i32 13776
  %test_icr.i = getelementptr i8, ptr %netdev, i32 13732
  br label %for.body.i182

for.body.i182:                                    ; preds = %for.inc.i185.for.body.i182_crit_edge, %if.end14.i
  %i.0130.i = phi i32 [ 0, %if.end14.i ], [ %inc.i184, %for.inc.i185.for.body.i182_crit_edge ]
  %shl.i180 = shl nuw nsw i32 1, %i.0130.i
  %119 = ptrtoint ptr %flags.i178 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags.i178, align 16
  %and.i181 = and i32 %120, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181)
  %tobool19.not.i = icmp eq i32 %and.i181, 0
  br i1 %tobool19.not.i, label %for.body.i182.if.end30.i_crit_edge, label %if.then20.i

for.body.i182.if.end30.i_crit_edge:               ; preds = %for.body.i182
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

if.then20.i:                                      ; preds = %for.body.i182
  %121 = zext i32 %shl.i180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %shl.i180, label %if.then20.i.if.end30.i_crit_edge [
    i32 8, label %if.then20.i.for.inc.i185_crit_edge
    i32 256, label %sw.bb21.i
  ]

if.then20.i.for.inc.i185_crit_edge:               ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i185

if.then20.i.if.end30.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

sw.bb21.i:                                        ; preds = %if.then20.i
  %122 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %type.i, align 4
  %124 = and i32 %123, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %124)
  %switch.i183 = icmp eq i32 %124, 6
  br i1 %switch.i183, label %sw.bb21.i.for.inc.i185_crit_edge, label %sw.bb21.i.if.end30.i_crit_edge

sw.bb21.i.if.end30.i_crit_edge:                   ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

sw.bb21.i.for.inc.i185_crit_edge:                 ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i185

if.end30.i:                                       ; preds = %sw.bb21.i.if.end30.i_crit_edge, %if.then20.i.if.end30.i_crit_edge, %for.body.i182.if.end30.i_crit_edge
  br i1 %tobool.not.i172, label %if.then32.i, label %if.end30.i.if.end39.i_crit_edge

if.end30.i.if.end39.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39.i

if.then32.i:                                      ; preds = %if.end30.i
  %125 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %test_icr.i, align 4
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 216, i32 noundef %shl.i180) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 200, i32 noundef %shl.i180) #15
  %126 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %127, i32 8
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #15
  %129 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %test_icr.i, align 4
  %and35.i = and i32 %130, %shl.i180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.then32.i.if.end39.i_crit_edge, label %if.then32.i.for.end.sink.split.i_crit_edge

if.then32.i.for.end.sink.split.i_crit_edge:       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split.i

if.then32.i.if.end39.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then32.i.if.end39.i_crit_edge, %if.end30.i.if.end39.i_crit_edge
  %131 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %test_icr.i, align 4
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 208, i32 noundef %shl.i180) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 200, i32 noundef %shl.i180) #15
  %132 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %133, i32 8
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #15
  %135 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %test_icr.i, align 4
  %and43.i = and i32 %136, %shl.i180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end39.i.for.end.sink.split.i_crit_edge, label %if.end46.i

if.end39.i.for.end.sink.split.i_crit_edge:        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split.i

if.end46.i:                                       ; preds = %if.end39.i
  br i1 %tobool.not.i172, label %if.then48.i, label %if.end46.i.for.inc.i185_crit_edge

if.end46.i.for.inc.i185_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i185

if.then48.i:                                      ; preds = %if.end46.i
  %137 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %test_icr.i, align 4
  %neg.i = and i32 %shl.i180, 32767
  %and50.i = xor i32 %neg.i, 32767
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 216, i32 noundef %and50.i) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 200, i32 noundef %and50.i) #15
  %138 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %139, i32 8
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #15
  %141 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %test_icr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool55.not.i = icmp eq i32 %142, 0
  br i1 %tobool55.not.i, label %if.then48.i.for.inc.i185_crit_edge, label %if.then48.i.for.end.sink.split.i_crit_edge

if.then48.i.for.end.sink.split.i_crit_edge:       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split.i

if.then48.i.for.inc.i185_crit_edge:               ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i185

for.inc.i185:                                     ; preds = %if.then48.i.for.inc.i185_crit_edge, %if.end46.i.for.inc.i185_crit_edge, %sw.bb21.i.for.inc.i185_crit_edge, %if.then20.i.for.inc.i185_crit_edge
  %inc.i184 = add nuw nsw i32 %i.0130.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i184, 10
  br i1 %exitcond.not.i, label %for.inc.i185.for.end.i187_crit_edge, label %for.inc.i185.for.body.i182_crit_edge

for.inc.i185.for.body.i182_crit_edge:             ; preds = %for.inc.i185
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i182

for.inc.i185.for.end.i187_crit_edge:              ; preds = %for.inc.i185
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i187

for.end.sink.split.i:                             ; preds = %if.then48.i.for.end.sink.split.i_crit_edge, %if.end39.i.for.end.sink.split.i_crit_edge, %if.then32.i.for.end.sink.split.i_crit_edge
  %.sink.i186 = phi i64 [ 3, %if.then32.i.for.end.sink.split.i_crit_edge ], [ 4, %if.end39.i.for.end.sink.split.i_crit_edge ], [ 5, %if.then48.i.for.end.sink.split.i_crit_edge ]
  %143 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %.sink.i186, ptr %arrayidx37, align 8
  br label %for.end.i187

for.end.i187:                                     ; preds = %for.end.sink.split.i, %for.inc.i185.for.end.i187_crit_edge
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 216, i32 noundef -1) #15
  %144 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i129.i = getelementptr i8, ptr %145, i32 8
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #15
  %call60.i = call ptr @free_irq(i32 noundef %108, ptr noundef %104) #15
  br label %out.i

out.i:                                            ; preds = %for.end.i187, %if.then12.i
  %tobool39.not = phi i1 [ true, %for.end.i187 ], [ false, %if.then12.i ]
  br i1 %cmp.i169, label %if.then62.i, label %out.i.e1000_intr_test.exit_crit_edge

out.i.e1000_intr_test.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_intr_test.exit

if.then62.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @e1000e_reset_interrupt_capability(ptr noundef %add.ptr.i) #15
  %147 = ptrtoint ptr %int_mode4.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 2, ptr %int_mode4.i, align 4
  call void @e1000e_set_interrupt_capability(ptr noundef %add.ptr.i) #15
  br label %e1000_intr_test.exit

e1000_intr_test.exit:                             ; preds = %if.then62.i, %out.i.e1000_intr_test.exit_crit_edge
  br i1 %tobool39.not, label %e1000_intr_test.exit.if.end43_crit_edge, label %if.then40

e1000_intr_test.exit.if.end43_crit_edge:          ; preds = %e1000_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then40:                                        ; preds = %e1000_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  %148 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags9, align 4
  %or42 = or i32 %149, 2
  store i32 %or42, ptr %flags9, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %e1000_intr_test.exit.if.end43_crit_edge
  call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  %arrayidx44 = getelementptr i64, ptr %data, i32 3
  %check_reset_block.i = getelementptr i8, ptr %netdev, i32 4408
  %150 = ptrtoint ptr %check_reset_block.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %check_reset_block.i, align 4
  %tobool.not.i188 = icmp eq ptr %151, null
  br i1 %tobool.not.i188, label %if.end43.if.end.i194_crit_edge, label %land.lhs.true.i191

if.end43.if.end.i194_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i194

land.lhs.true.i191:                               ; preds = %if.end43
  %call.i190 = call i32 %151(ptr noundef %hw1.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool5.not.i = icmp eq i32 %call.i190, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i191.if.end.i194_crit_edge, label %if.then.i193

land.lhs.true.i191.if.end.i194_crit_edge:         ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i194

if.then.i193:                                     ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #17
  %152 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %netdev20, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %153, ptr noundef nonnull @.str.10) #18
  %154 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 0, ptr %arrayidx44, align 8
  br label %e1000_loopback_test.exit

if.end.i194:                                      ; preds = %land.lhs.true.i191.if.end.i194_crit_edge, %if.end43.if.end.i194_crit_edge
  %155 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pdev.i, align 32
  %count.i.i = getelementptr i8, ptr %netdev, i32 13588
  %157 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i.i = icmp eq i32 %158, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i194.if.end.i.i_crit_edge

if.end.i194.if.end.i.i_crit_edge:                 ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #17
  %159 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 256, ptr %count.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i194.if.end.i.i_crit_edge
  %160 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %count.i.i, align 4
  %162 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %161, i32 28) #15
  %163 = extractvalue { i32, i1 } %162, 1
  br i1 %163, label %if.end.i.i.err_nomem.sink.split.i.i_crit_edge, label %if.end7.i.i.i.i, !prof !61

if.end.i.i.err_nomem.sink.split.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_nomem.sink.split.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %164 = extractvalue { i32, i1 } %162, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %164, i32 noundef 3520) #19
  %buffer_info.i.i = getelementptr i8, ptr %netdev, i32 13604
  %165 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call8.i.i.i.i, ptr %buffer_info.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.end7.i.i.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end8.i.i

if.end7.i.i.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_setup_desc_rings.exit.i

if.end8.i.i:                                      ; preds = %if.end7.i.i.i.i
  %166 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %count.i.i, align 4
  %mul.i.i = shl i32 %167, 4
  %size.i.i = getelementptr i8, ptr %netdev, i32 13584
  %add.i.i = add i32 %mul.i.i, 4095
  %and.i.i = and i32 %add.i.i, -4096
  %168 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %and.i.i, ptr %size.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 44
  %dma.i.i = getelementptr i8, ptr %netdev, i32 13580
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %and.i.i, ptr noundef %dma.i.i, i32 noundef 3264, i32 noundef 0) #15
  %desc.i.i = getelementptr i8, ptr %netdev, i32 13576
  %169 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call.i.i.i, ptr %desc.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool15.not.i.i, label %if.end8.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end17.i.i

if.end8.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_setup_desc_rings.exit.i

if.end17.i.i:                                     ; preds = %if.end8.i.i
  %next_to_use.i.i = getelementptr i8, ptr %netdev, i32 13592
  %170 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %next_to_use.i.i, align 4
  %next_to_clean.i.i = getelementptr i8, ptr %netdev, i32 13594
  %171 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 0, ptr %next_to_clean.i.i, align 2
  %172 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dma.i.i, align 4
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 14336, i32 noundef %173) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 14340, i32 noundef 0) #15
  %174 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %count.i.i, align 4
  %mul25.i.i = shl i32 %175, 4
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 14344, i32 noundef %mul25.i.i) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 14352, i32 noundef 0) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 14360, i32 noundef 0) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 1024, i32 noundef 268693754) #15
  %176 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp343.not.i.i = icmp eq i32 %177, 0
  br i1 %cmp343.not.i.i, label %if.end17.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end17.i.i.for.end.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end17.i.i
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 44, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0344.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %178 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %desc.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.e1000_tx_desc, ptr %179, i32 %i.0344.i.i
  %call.i258.i.i = call ptr @__alloc_skb(i32 noundef 1024, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %tobool30.not.i.i = icmp eq ptr %call.i258.i.i, null
  br i1 %tobool30.not.i.i, label %for.body.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end32.i.i

for.body.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_setup_desc_rings.exit.i

if.end32.i.i:                                     ; preds = %for.body.i.i
  %call33.i.i = call ptr @skb_put(ptr noundef nonnull %call.i258.i.i, i32 noundef 1024) #15
  %180 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %buffer_info.i.i, align 4
  %skb36.i.i = getelementptr %struct.e1000_buffer, ptr %181, i32 %i.0344.i.i, i32 1
  %182 = ptrtoint ptr %skb36.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call.i258.i.i, ptr %skb36.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i258.i.i, i32 0, i32 6
  %183 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %len.i.i, align 4
  %conv37.i.i = trunc i32 %184 to i16
  %185 = load ptr, ptr %buffer_info.i.i, align 4
  %length.i.i = getelementptr %struct.e1000_buffer, ptr %185, i32 %i.0344.i.i, i32 2, i32 0, i32 1
  %186 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv37.i.i, ptr %length.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i258.i.i, i32 0, i32 19
  %187 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %data.i.i, align 4
  %189 = load i32, ptr %len.i.i, align 4
  %call.i259.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %188) #15
  br i1 %call.i259.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end32.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !62

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i) #15
  %190 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %191, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i260.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i.i

if.end.i.i260.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %192 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i260.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i261.i.i = phi ptr [ %193, %if.end.i.i260.i.i ], [ %191, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i261.i.i) #15
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %188, i32 noundef %189) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %194 = load ptr, ptr @mem_map, align 4
  %195 = ptrtoint ptr %188 to i32
  %sub.i.i.i = add i32 %195, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %194, i32 %shr.i.i.i
  %and.i.i.i = and i32 %195, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %189, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %196 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %buffer_info.i.i, align 4
  %arrayidx44.i.i = getelementptr %struct.e1000_buffer, ptr %197, i32 %i.0344.i.i
  %198 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %retval.0.i.i.i, ptr %arrayidx44.i.i, align 4
  %199 = load ptr, ptr %buffer_info.i.i, align 4
  %arrayidx48.i.i = getelementptr %struct.e1000_buffer, ptr %199, i32 %i.0344.i.i
  %200 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx48.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %201) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %201)
  %cmp.i.not.i.i = icmp eq i32 %201, -1
  br i1 %cmp.i.not.i.i, label %dma_map_single_attrs.exit.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %for.inc.i.i

dma_map_single_attrs.exit.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_setup_desc_rings.exit.i

for.inc.i.i:                                      ; preds = %dma_map_single_attrs.exit.i.i
  %202 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %buffer_info.i.i, align 4
  %arrayidx55.i.i = getelementptr %struct.e1000_buffer, ptr %203, i32 %i.0344.i.i
  %204 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx55.i.i, align 4
  %conv57.i.i = zext i32 %205 to i64
  %206 = call i64 @llvm.bswap.i64(i64 %conv57.i.i) #15
  %207 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %206, ptr %arrayidx.i.i, align 8
  %208 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %len.i.i, align 4
  %lower.i.i = getelementptr %struct.e1000_tx_desc, ptr %179, i32 %i.0344.i.i, i32 1
  %210 = or i32 %209, 184549376
  %211 = call i32 @llvm.bswap.i32(i32 %210) #15
  %212 = ptrtoint ptr %lower.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %lower.i.i, align 8
  %upper.i.i = getelementptr %struct.e1000_tx_desc, ptr %179, i32 %i.0344.i.i, i32 2
  %213 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %upper.i.i, align 4
  %inc.i.i = add nuw i32 %i.0344.i.i, 1
  %214 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %count.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %215
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end17.i.i.for.end.i.i_crit_edge
  %count62.i.i = getelementptr i8, ptr %netdev, i32 13668
  %216 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %count62.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool63.not.i.i = icmp eq i32 %217, 0
  br i1 %tobool63.not.i.i, label %if.then64.i.i, label %for.end.i.i.if.end66.i.i_crit_edge

for.end.i.i.if.end66.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66.i.i

if.then64.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %218 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 256, ptr %count62.i.i, align 4
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.then64.i.i, %for.end.i.i.if.end66.i.i_crit_edge
  %219 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %count62.i.i, align 4
  %221 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %220, i32 28) #15
  %222 = extractvalue { i32, i1 } %221, 1
  br i1 %222, label %if.end66.i.i.err_nomem.sink.split.i.i_crit_edge, label %if.end7.i.i292.i.i, !prof !61

if.end66.i.i.err_nomem.sink.split.i.i_crit_edge:  ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_nomem.sink.split.i.i

if.end7.i.i292.i.i:                               ; preds = %if.end66.i.i
  %223 = extractvalue { i32, i1 } %221, 0
  %call8.i.i291.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %223, i32 noundef 3520) #19
  %buffer_info69.i.i = getelementptr i8, ptr %netdev, i32 13684
  %224 = ptrtoint ptr %buffer_info69.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call8.i.i291.i.i, ptr %buffer_info69.i.i, align 4
  %tobool71.not.i.i = icmp eq ptr %call8.i.i291.i.i, null
  br i1 %tobool71.not.i.i, label %if.end7.i.i292.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end73.i.i

if.end7.i.i292.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %if.end7.i.i292.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_setup_desc_rings.exit.i

if.end73.i.i:                                     ; preds = %if.end7.i.i292.i.i
  %225 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %count62.i.i, align 4
  %mul75.i.i = shl i32 %226, 4
  %size76.i.i = getelementptr i8, ptr %netdev, i32 13664
  %227 = ptrtoint ptr %size76.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %mul75.i.i, ptr %size76.i.i, align 4
  %dma79.i.i = getelementptr i8, ptr %netdev, i32 13660
  %call.i295.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %mul75.i.i, ptr noundef %dma79.i.i, i32 noundef 3264, i32 noundef 0) #15
  %desc81.i.i = getelementptr i8, ptr %netdev, i32 13656
  %228 = ptrtoint ptr %desc81.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call.i295.i.i, ptr %desc81.i.i, align 4
  %tobool83.not.i.i = icmp eq ptr %call.i295.i.i, null
  br i1 %tobool83.not.i.i, label %if.end73.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end85.i.i

if.end73.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_setup_desc_rings.exit.i

if.end85.i.i:                                     ; preds = %if.end73.i.i
  %next_to_use86.i.i = getelementptr i8, ptr %netdev, i32 13672
  %229 = ptrtoint ptr %next_to_use86.i.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 0, ptr %next_to_use86.i.i, align 4
  %next_to_clean87.i.i = getelementptr i8, ptr %netdev, i32 13674
  %230 = ptrtoint ptr %next_to_clean87.i.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 0, ptr %next_to_clean87.i.i, align 2
  %231 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i296.i.i = getelementptr i8, ptr %232, i32 256
  %233 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i296.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %flags2.i.i = getelementptr i8, ptr %netdev, i32 13780
  %234 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %flags2.i.i, align 4
  %and89.i.i = and i32 %235, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i.i)
  %tobool90.not.i.i = icmp eq i32 %and89.i.i, 0
  br i1 %tobool90.not.i.i, label %if.then91.i.i, label %if.end85.i.i.if.end93.i.i_crit_edge

if.end85.i.i.if.end93.i.i_crit_edge:              ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93.i.i

if.then91.i.i:                                    ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %236 = and i32 %233, -33554433
  %237 = call i32 @llvm.bswap.i32(i32 %236) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 256, i32 noundef %237) #15
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %if.then91.i.i, %if.end85.i.i.if.end93.i.i_crit_edge
  %238 = ptrtoint ptr %dma79.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %dma79.i.i, align 4
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 10240, i32 noundef %239) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 10244, i32 noundef 0) #15
  %240 = ptrtoint ptr %size76.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %size76.i.i, align 4
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 10248, i32 noundef %241) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 10256, i32 noundef 0) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 10264, i32 noundef 0) #15
  %mc_filter_type.i.i = getelementptr i8, ptr %netdev, i32 3820
  %242 = ptrtoint ptr %mc_filter_type.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %mc_filter_type.i.i, align 4
  %shl.i.i = shl i32 %243, 12
  %or104.i.i = or i32 %shl.i.i, 67141694
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 256, i32 noundef %or104.i.i) #15
  %244 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %count62.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp107345.not.i.i = icmp eq i32 %245, 0
  br i1 %cmp107345.not.i.i, label %if.end93.i.i.if.end9.i_crit_edge, label %for.body109.lr.ph.i.i

if.end93.i.i.if.end9.i_crit_edge:                 ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

for.body109.lr.ph.i.i:                            ; preds = %if.end93.i.i
  %init_name.i.i303.i.i = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 44, i32 3
  br label %for.body109.i.i

for.body109.i.i:                                  ; preds = %for.inc145.i.i.for.body109.i.i_crit_edge, %for.body109.lr.ph.i.i
  %i.1346.i.i = phi i32 [ 0, %for.body109.lr.ph.i.i ], [ %inc146.i.i, %for.inc145.i.i.for.body109.i.i_crit_edge ]
  %call.i297.i.i = call ptr @__alloc_skb(i32 noundef 2050, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %tobool112.not.i.i = icmp eq ptr %call.i297.i.i, null
  br i1 %tobool112.not.i.i, label %for.body109.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end114.i.i

for.body109.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %for.body109.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_setup_desc_rings.exit.i

if.end114.i.i:                                    ; preds = %for.body109.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i297.i.i, i32 0, i32 19
  %246 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i298.i.i = getelementptr i8, ptr %247, i32 2
  store ptr %add.ptr.i298.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i297.i.i, i32 0, i32 16
  %248 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %249, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %250 = ptrtoint ptr %buffer_info69.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %buffer_info69.i.i, align 4
  %skb117.i.i = getelementptr %struct.e1000_buffer, ptr %251, i32 %i.1346.i.i, i32 1
  %252 = ptrtoint ptr %skb117.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call.i297.i.i, ptr %skb117.i.i, align 4
  %253 = load ptr, ptr %data.i.i.i, align 4
  %call.i299.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %253) #15
  br i1 %call.i299.i.i, label %land.rhs.i301.i.i, label %if.end39.i314.i.i

land.rhs.i301.i.i:                                ; preds = %if.end114.i.i
  %.b1.i300.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i300.i.i, label %land.rhs.i301.i.i.dma_map_single_attrs.exit316.i.i_crit_edge, label %if.then.i305.i.i, !prof !62

land.rhs.i301.i.i.dma_map_single_attrs.exit316.i.i_crit_edge: ; preds = %land.rhs.i301.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit316.i.i

if.then.i305.i.i:                                 ; preds = %land.rhs.i301.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i302.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i) #15
  %254 = ptrtoint ptr %init_name.i.i303.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %init_name.i.i303.i.i, align 8
  %tobool.not.i.i304.i.i = icmp eq ptr %255, null
  br i1 %tobool.not.i.i304.i.i, label %if.end.i.i306.i.i, label %if.then.i305.i.i.dev_name.exit.i308.i.i_crit_edge

if.then.i305.i.i.dev_name.exit.i308.i.i_crit_edge: ; preds = %if.then.i305.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i308.i.i

if.end.i.i306.i.i:                                ; preds = %if.then.i305.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %256 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i308.i.i

dev_name.exit.i308.i.i:                           ; preds = %if.end.i.i306.i.i, %if.then.i305.i.i.dev_name.exit.i308.i.i_crit_edge
  %retval.0.i.i307.i.i = phi ptr [ %257, %if.end.i.i306.i.i ], [ %255, %if.then.i305.i.i.dev_name.exit.i308.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i302.i.i, ptr noundef %retval.0.i.i307.i.i) #15
  br label %dma_map_single_attrs.exit316.i.i

if.end39.i314.i.i:                                ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %253, i32 noundef 2048) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %258 = load ptr, ptr @mem_map, align 4
  %259 = ptrtoint ptr %253 to i32
  %sub.i309.i.i = add i32 %259, 1073741824
  %shr.i310.i.i = lshr i32 %sub.i309.i.i, 12
  %add.ptr.i311.i.i = getelementptr %struct.page, ptr %258, i32 %shr.i310.i.i
  %and.i312.i.i = and i32 %259, 4095
  %call41.i313.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i311.i.i, i32 noundef %and.i312.i.i, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit316.i.i

dma_map_single_attrs.exit316.i.i:                 ; preds = %if.end39.i314.i.i, %dev_name.exit.i308.i.i, %land.rhs.i301.i.i.dma_map_single_attrs.exit316.i.i_crit_edge
  %retval.0.i315.i.i = phi i32 [ %call41.i313.i.i, %if.end39.i314.i.i ], [ -1, %dev_name.exit.i308.i.i ], [ -1, %land.rhs.i301.i.i.dma_map_single_attrs.exit316.i.i_crit_edge ]
  %260 = ptrtoint ptr %buffer_info69.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %buffer_info69.i.i, align 4
  %arrayidx122.i.i = getelementptr %struct.e1000_buffer, ptr %261, i32 %i.1346.i.i
  %262 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %retval.0.i315.i.i, ptr %arrayidx122.i.i, align 4
  %263 = load ptr, ptr %buffer_info69.i.i, align 4
  %arrayidx126.i.i = getelementptr %struct.e1000_buffer, ptr %263, i32 %i.1346.i.i
  %264 = ptrtoint ptr %arrayidx126.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx126.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %265) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %265)
  %cmp.i317.not.i.i = icmp eq i32 %265, -1
  br i1 %cmp.i317.not.i.i, label %dma_map_single_attrs.exit316.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %for.inc145.i.i

dma_map_single_attrs.exit316.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %dma_map_single_attrs.exit316.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_setup_desc_rings.exit.i

for.inc145.i.i:                                   ; preds = %dma_map_single_attrs.exit316.i.i
  %266 = ptrtoint ptr %desc81.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %desc81.i.i, align 4
  %arrayidx133.i.i = getelementptr %union.e1000_rx_desc_extended, ptr %267, i32 %i.1346.i.i
  %268 = ptrtoint ptr %buffer_info69.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %buffer_info69.i.i, align 4
  %arrayidx135.i.i = getelementptr %struct.e1000_buffer, ptr %269, i32 %i.1346.i.i
  %270 = ptrtoint ptr %arrayidx135.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx135.i.i, align 4
  %conv137.i.i = zext i32 %271 to i64
  %272 = call i64 @llvm.bswap.i64(i64 %conv137.i.i) #15
  %273 = ptrtoint ptr %arrayidx133.i.i to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %272, ptr %arrayidx133.i.i, align 8
  %274 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %data.i.i.i, align 4
  %len140.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i297.i.i, i32 0, i32 6
  %276 = ptrtoint ptr %len140.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %len140.i.i, align 4
  %278 = call ptr @memset(ptr %275, i32 0, i32 %277)
  %inc146.i.i = add nuw i32 %i.1346.i.i, 1
  %279 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %count62.i.i, align 4
  %cmp107.i.i = icmp ult i32 %inc146.i.i, %280
  br i1 %cmp107.i.i, label %for.inc145.i.i.for.body109.i.i_crit_edge, label %for.inc145.i.i.if.end9.i_crit_edge

for.inc145.i.i.if.end9.i_crit_edge:               ; preds = %for.inc145.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

for.inc145.i.i.for.body109.i.i_crit_edge:         ; preds = %for.inc145.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body109.i.i

err_nomem.sink.split.i.i:                         ; preds = %if.end66.i.i.err_nomem.sink.split.i.i_crit_edge, %if.end.i.i.err_nomem.sink.split.i.i_crit_edge
  %.sink288 = phi i32 [ 13604, %if.end.i.i.err_nomem.sink.split.i.i_crit_edge ], [ 13684, %if.end66.i.i.err_nomem.sink.split.i.i_crit_edge ]
  %ret_val.4.ph.i.i = phi i32 [ 1, %if.end.i.i.err_nomem.sink.split.i.i_crit_edge ], [ 5, %if.end66.i.i.err_nomem.sink.split.i.i_crit_edge ]
  %buffer_info69331.i.i = getelementptr i8, ptr %netdev, i32 %.sink288
  %281 = ptrtoint ptr %buffer_info69331.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr null, ptr %buffer_info69331.i.i, align 4
  br label %e1000_setup_desc_rings.exit.i

e1000_setup_desc_rings.exit.i:                    ; preds = %err_nomem.sink.split.i.i, %dma_map_single_attrs.exit316.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %for.body109.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %if.end73.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %if.end7.i.i292.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %dma_map_single_attrs.exit.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %for.body.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %if.end8.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %if.end7.i.i.i.i.e1000_setup_desc_rings.exit.i_crit_edge
  %ret_val.4.i.i = phi i32 [ 1, %if.end7.i.i.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 2, %if.end8.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 5, %if.end7.i.i292.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 6, %if.end73.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ %ret_val.4.ph.i.i, %err_nomem.sink.split.i.i ], [ 7, %for.body109.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 8, %dma_map_single_attrs.exit316.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 3, %for.body.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 4, %dma_map_single_attrs.exit.i.i.e1000_setup_desc_rings.exit.i_crit_edge ]
  call fastcc void @e1000_free_desc_rings(ptr noundef %add.ptr.i) #15
  %conv80.i = zext i32 %ret_val.4.i.i to i64
  %282 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %282)
  store i64 %conv80.i, ptr %arrayidx44, align 8
  br label %e1000_loopback_test.exit

if.end9.i:                                        ; preds = %for.inc145.i.i.if.end9.i_crit_edge, %if.end93.i.i.if.end9.i_crit_edge
  %283 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %283)
  store i64 0, ptr %arrayidx44, align 8
  %284 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %285)
  %cmp.i32.i = icmp ugt i32 %285, 11
  br i1 %cmp.i32.i, label %if.then.i35.i, label %if.end9.i.if.end.i36.i_crit_edge

if.end9.i.if.end.i36.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i36.i

if.then.i35.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %286 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %287, i32 23484
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %289 = or i32 %288, 2097152
  %290 = call i32 @llvm.bswap.i32(i32 %289) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 23484, i32 noundef %290) #15
  %291 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i44.i.i = getelementptr i8, ptr %292, i32 14400
  %293 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %294 = and i32 %293, -49
  %295 = or i32 %294, 32
  %296 = call i32 @llvm.bswap.i32(i32 %295) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 14400, i32 noundef %296) #15
  br label %if.end.i36.i

if.end.i36.i:                                     ; preds = %if.then.i35.i, %if.end9.i.if.end.i36.i_crit_edge
  %media_type.i.i = getelementptr i8, ptr %netdev, i32 4528
  %297 = ptrtoint ptr %media_type.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %media_type.i.i, align 4
  %299 = zext i32 %298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %299, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %298, label %e1000_setup_loopback_test.exit.thread71.i [
    i32 2, label %if.end.i36.i.if.then8.i.i_crit_edge
    i32 3, label %if.end.i36.i.if.then8.i.i_crit_edge297
    i32 1, label %if.then19.i.i
  ]

if.end.i36.i.if.then8.i.i_crit_edge297:           ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i.i

if.end.i36.i.if.then8.i.i_crit_edge:              ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then8.i.i

e1000_setup_loopback_test.exit.thread71.i:        ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #17
  %300 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 7, ptr %arrayidx44, align 8
  br label %err_loopback.i

if.then8.i.i:                                     ; preds = %if.end.i36.i.if.then8.i.i_crit_edge, %if.end.i36.i.if.then8.i.i_crit_edge297
  %301 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %type.i, align 4
  %303 = zext i32 %302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %303, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %302, label %sw.default.i.i [
    i32 5, label %sw.bb.i.i
    i32 0, label %if.then8.i.i.sw.bb12.i.i_crit_edge
    i32 1, label %if.then8.i.i.sw.bb12.i.i_crit_edge298
  ]

if.then8.i.i.sw.bb12.i.i_crit_edge298:            ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb12.i.i

if.then8.i.i.sw.bb12.i.i_crit_edge:               ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb12.i.i

sw.bb.i.i:                                        ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %304 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %305, i32 24
  %306 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #15, !srcloc !58
  %307 = call i32 @llvm.bswap.i32(i32 %306) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %308 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %hw_addr.i.i, align 4
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %tx_fifo_head.i.i.i = getelementptr i8, ptr %netdev, i32 3516
  %311 = ptrtoint ptr %tx_fifo_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %307, ptr %tx_fifo_head.i.i.i, align 4
  %and.i.i37.i = and i32 %307, -12582913
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 24, i32 noundef %and.i.i37.i) #15
  %312 = and i32 %310, -1092288513
  %313 = or i32 %312, 1092222976
  %314 = call i32 @llvm.bswap.i32(i32 %313) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 0, i32 noundef %314) #15
  %315 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %316, i32 256
  %317 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %318 = or i32 %317, 1073741824
  %319 = call i32 @llvm.bswap.i32(i32 %318) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 256, i32 noundef %319) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 52, i32 noundef 2033026) #15
  br label %if.end14.i195

sw.bb12.i.i:                                      ; preds = %if.then8.i.i.sw.bb12.i.i_crit_edge, %if.then8.i.i.sw.bb12.i.i_crit_edge298
  %320 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %hw_addr.i.i, align 4
  %322 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %321) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %323 = or i32 %322, 1073741824
  %324 = call i32 @llvm.bswap.i32(i32 %323) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 0, i32 noundef %324) #15
  %325 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i47.i.i = getelementptr i8, ptr %326, i32 376
  %327 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %328 = and i32 %327, -129
  %329 = call i32 @llvm.bswap.i32(i32 %328) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 376, i32 noundef %329) #15
  %330 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i3.i48.i.i = getelementptr i8, ptr %331, i32 8
  %332 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i48.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %333 = and i32 %332, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool.not.i.i.i = icmp eq i32 %333, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i38.i, label %sw.bb12.i.i.e1000_set_82571_fiber_loopback.exit.i.i_crit_edge

sw.bb12.i.i.e1000_set_82571_fiber_loopback.exit.i.i_crit_edge: ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_set_82571_fiber_loopback.exit.i.i

if.then.i.i38.i:                                  ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %334 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %hw_addr.i.i, align 4
  %336 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %335) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %337 = or i32 %336, -2147483648
  %338 = call i32 @llvm.bswap.i32(i32 %337) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 0, i32 noundef %338) #15
  br label %e1000_set_82571_fiber_loopback.exit.i.i

e1000_set_82571_fiber_loopback.exit.i.i:          ; preds = %if.then.i.i38.i, %sw.bb12.i.i.e1000_set_82571_fiber_loopback.exit.i.i_crit_edge
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 36, i32 noundef 1040) #15
  %339 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %340, i32 8
  %341 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #15
  br label %if.end14.i195

sw.default.i.i:                                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %342 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i50.i.i = getelementptr i8, ptr %343, i32 256
  %344 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %345 = or i32 %344, -1073741824
  %346 = call i32 @llvm.bswap.i32(i32 %345) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 256, i32 noundef %346) #15
  br label %if.end14.i195

if.then19.i.i:                                    ; preds = %if.end.i36.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg.i.i.i) #15
  %347 = ptrtoint ptr %phy_reg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 0, ptr %phy_reg.i.i.i, align 2
  %348 = ptrtoint ptr %autoneg18 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 0, ptr %autoneg18, align 2
  %type.i.i.i = getelementptr i8, ptr %netdev, i32 4484
  %349 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %type.i.i.i, align 4
  %351 = zext i32 %350 to i64
  call void @__sanitizer_cov_trace_switch(i64 %351, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %350, label %if.then19.i.i.sw.epilog.i.i.i_crit_edge [
    i32 7, label %if.then.i54.i.i
    i32 2, label %sw.bb.i.i.i
    i32 5, label %sw.bb9.i.i.i
    i32 8, label %sw.bb11.i.i.i
    i32 10, label %if.then19.i.i.sw.bb41.i.i.i_crit_edge
    i32 9, label %if.then19.i.i.sw.bb41.i.i.i_crit_edge299
    i32 11, label %sw.bb50.i.i.i
  ]

if.then19.i.i.sw.bb41.i.i.i_crit_edge299:         ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb41.i.i.i

if.then19.i.i.sw.bb41.i.i.i_crit_edge:            ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb41.i.i.i

if.then19.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i.i

if.then.i54.i.i:                                  ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %write_reg.i.i.i.i = getelementptr i8, ptr %netdev, i32 4464
  %352 = ptrtoint ptr %write_reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %write_reg.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %353(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext 24832) #15
  %354 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %hw_addr.i.i, align 4
  %356 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %355) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %357 = and i32 %356, -18546689
  %358 = or i32 %357, 18415616
  %359 = call i32 @llvm.bswap.i32(i32 %358) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 0, i32 noundef %359) #15
  %360 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i53.i.i = getelementptr i8, ptr %361, i32 8
  %362 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  br label %e1000_setup_loopback_test.exit.thread76.i

sw.bb.i.i.i:                                      ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %write_reg.i150.i.i.i = getelementptr i8, ptr %netdev, i32 4464
  %363 = ptrtoint ptr %write_reg.i150.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %write_reg.i150.i.i.i, align 4
  %call.i151.i.i.i = call i32 %364(ptr noundef %hw1.i, i32 noundef 16, i16 noundef zeroext 2056) #15
  %365 = ptrtoint ptr %write_reg.i150.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %write_reg.i150.i.i.i, align 4
  %call.i153.i.i.i = call i32 %366(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext -28352) #15
  %367 = ptrtoint ptr %write_reg.i150.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %write_reg.i150.i.i.i, align 4
  %call.i155.i.i.i = call i32 %368(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext -32448) #15
  br label %sw.epilog.i.i.i

sw.bb9.i.i.i:                                     ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %write_reg.i156.i.i.i = getelementptr i8, ptr %netdev, i32 4464
  %369 = ptrtoint ptr %write_reg.i156.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %write_reg.i156.i.i.i, align 4
  %call.i157.i.i.i = call i32 %370(ptr noundef %hw1.i, i32 noundef 6192, i16 noundef zeroext 460) #15
  br label %sw.epilog.i.i.i

sw.bb11.i.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %read_reg.i.i.i.i = getelementptr i8, ptr %netdev, i32 4436
  %371 = ptrtoint ptr %read_reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %read_reg.i.i.i.i, align 4
  %call.i158.i.i.i = call i32 %372(ptr noundef %hw1.i, i32 noundef 85, ptr noundef nonnull %phy_reg.i.i.i) #15
  %373 = ptrtoint ptr %phy_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %phy_reg.i.i.i, align 2
  %375 = and i16 %374, -8
  %376 = or i16 %375, 6
  store i16 %376, ptr %phy_reg.i.i.i, align 2
  %write_reg.i159.i.i.i = getelementptr i8, ptr %netdev, i32 4464
  %377 = ptrtoint ptr %write_reg.i159.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %write_reg.i159.i.i.i, align 4
  %call.i160.i.i.i = call i32 %378(ptr noundef %hw1.i, i32 noundef 85, i16 noundef zeroext %376) #15
  %commit.i.i.i = getelementptr i8, ptr %netdev, i32 4412
  %379 = ptrtoint ptr %commit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %commit.i.i.i, align 4
  %call20.i.i.i = call i32 %380(ptr noundef %hw1.i) #15
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #15
  %381 = ptrtoint ptr %read_reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %read_reg.i.i.i.i, align 4
  %call.i162.i.i.i = call i32 %382(ptr noundef %hw1.i, i32 noundef 24624, ptr noundef nonnull %phy_reg.i.i.i) #15
  %383 = ptrtoint ptr %phy_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %phy_reg.i.i.i, align 2
  %385 = or i16 %384, 12
  %386 = ptrtoint ptr %write_reg.i159.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %write_reg.i159.i.i.i, align 4
  %call.i164.i.i.i = call i32 %387(ptr noundef %hw1.i, i32 noundef 24624, i16 noundef zeroext %385) #15
  %388 = ptrtoint ptr %read_reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %read_reg.i.i.i.i, align 4
  %call.i166.i.i.i = call i32 %389(ptr noundef %hw1.i, i32 noundef 24848, ptr noundef nonnull %phy_reg.i.i.i) #15
  %390 = ptrtoint ptr %phy_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %390)
  %391 = load i16, ptr %phy_reg.i.i.i, align 2
  %392 = or i16 %391, 64
  %393 = ptrtoint ptr %write_reg.i159.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %write_reg.i159.i.i.i, align 4
  %call.i168.i.i.i = call i32 %394(ptr noundef %hw1.i, i32 noundef 24848, i16 noundef zeroext %392) #15
  %395 = ptrtoint ptr %read_reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %read_reg.i.i.i.i, align 4
  %call.i170.i.i.i = call i32 %396(ptr noundef %hw1.i, i32 noundef 24624, ptr noundef nonnull %phy_reg.i.i.i) #15
  %397 = ptrtoint ptr %phy_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %phy_reg.i.i.i, align 2
  %399 = or i16 %398, 64
  %400 = ptrtoint ptr %write_reg.i159.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %write_reg.i159.i.i.i, align 4
  %call.i172.i.i.i = call i32 %401(ptr noundef %hw1.i, i32 noundef 24624, i16 noundef zeroext %399) #15
  %402 = ptrtoint ptr %read_reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %read_reg.i.i.i.i, align 4
  %call.i174.i.i.i = call i32 %403(ptr noundef %hw1.i, i32 noundef 24628, ptr noundef nonnull %phy_reg.i.i.i) #15
  %404 = ptrtoint ptr %phy_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %phy_reg.i.i.i, align 2
  %406 = or i16 %405, 1024
  %407 = ptrtoint ptr %write_reg.i159.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %write_reg.i159.i.i.i, align 4
  %call.i176.i.i.i = call i32 %408(ptr noundef %hw1.i, i32 noundef 24628, i16 noundef zeroext %406) #15
  br label %sw.epilog.i.i.i

sw.bb41.i.i.i:                                    ; preds = %if.then19.i.i.sw.bb41.i.i.i_crit_edge, %if.then19.i.i.sw.bb41.i.i.i_crit_edge299
  %phy.i.i.i = getelementptr i8, ptr %netdev, i32 4396
  %409 = ptrtoint ptr %phy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %phy.i.i.i, align 4
  %call44.i.i.i = call i32 %410(ptr noundef %hw1.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i.i)
  %tobool.not.i55.i.i = icmp eq i32 %call44.i.i.i, 0
  br i1 %tobool.not.i55.i.i, label %if.end46.i.i.i, label %e1000_setup_loopback_test.exit.i

if.end46.i.i.i:                                   ; preds = %sw.bb41.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call47.i.i.i = call i32 @e1000_configure_k1_ich8lan(ptr noundef %hw1.i, i1 noundef zeroext false) #15
  %release.i.i.i = getelementptr i8, ptr %netdev, i32 4448
  %411 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %release.i.i.i, align 4
  call void %412(ptr noundef %hw1.i) #15
  br label %sw.epilog.i.i.i

sw.bb50.i.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %read_reg.i177.i.i.i = getelementptr i8, ptr %netdev, i32 4436
  %413 = ptrtoint ptr %read_reg.i177.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %read_reg.i177.i.i.i, align 4
  %call.i178.i.i.i = call i32 %414(ptr noundef %hw1.i, i32 noundef 21, ptr noundef nonnull %phy_reg.i.i.i) #15
  %415 = ptrtoint ptr %phy_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %phy_reg.i.i.i, align 2
  %417 = and i16 %416, -9
  %write_reg.i179.i.i.i = getelementptr i8, ptr %netdev, i32 4464
  %418 = ptrtoint ptr %write_reg.i179.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %write_reg.i179.i.i.i, align 4
  %call.i180.i.i.i = call i32 %419(ptr noundef %hw1.i, i32 noundef 21, i16 noundef zeroext %417) #15
  %420 = ptrtoint ptr %read_reg.i177.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %read_reg.i177.i.i.i, align 4
  %call.i182.i.i.i = call i32 %421(ptr noundef %hw1.i, i32 noundef 24850, ptr noundef nonnull %phy_reg.i.i.i) #15
  %422 = ptrtoint ptr %phy_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %phy_reg.i.i.i, align 2
  %424 = or i16 %423, 1
  %425 = ptrtoint ptr %write_reg.i179.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %write_reg.i179.i.i.i, align 4
  %call.i184.i.i.i = call i32 %426(ptr noundef %hw1.i, i32 noundef 24850, i16 noundef zeroext %424) #15
  %427 = ptrtoint ptr %write_reg.i179.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %write_reg.i179.i.i.i, align 4
  %call.i186.i.i.i = call i32 %428(ptr noundef %hw1.i, i32 noundef 19, i16 noundef zeroext -32767) #15
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb50.i.i.i, %if.end46.i.i.i, %sw.bb11.i.i.i, %sw.bb9.i.i.i, %sw.bb.i.i.i, %if.then19.i.i.sw.epilog.i.i.i_crit_edge
  %write_reg.i187.i.i.i = getelementptr i8, ptr %netdev, i32 4464
  %429 = ptrtoint ptr %write_reg.i187.i.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %write_reg.i187.i.i.i, align 4
  %call.i188.i.i.i = call i32 %430(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext 16704) #15
  call void @msleep(i32 noundef 250) #15
  %431 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %hw_addr.i.i, align 4
  %433 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %432) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %434 = and i32 %433, -18546689
  %435 = call i32 @llvm.bswap.i32(i32 %434) #15
  %flags.i.i.i = getelementptr i8, ptr %netdev, i32 13776
  %436 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %flags.i.i.i, align 16
  %and66.i.i.i = and i32 %437, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i.i.i)
  %tobool67.not.i.i.i = icmp eq i32 %and66.i.i.i, 0
  %spec.select.v.i.i.i = select i1 %tobool67.not.i.i.i, i32 6657, i32 6721
  %spec.select.i.i.i = or i32 %spec.select.v.i.i.i, %435
  %438 = ptrtoint ptr %media_type.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %media_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %439)
  %cmp72.i.i.i = icmp eq i32 %439, 1
  br i1 %cmp72.i.i.i, label %land.lhs.true.i.i.i, label %sw.epilog.i.i.i.if.else.i.i.i_crit_edge

sw.epilog.i.i.i.if.else.i.i.i_crit_edge:          ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.epilog.i.i.i
  %440 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %441)
  %cmp76.i.i.i = icmp eq i32 %441, 2
  br i1 %cmp76.i.i.i, label %if.then78.i.i.i, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i.i

if.then78.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %or79.i.i.i = or i32 %spec.select.i.i.i, 128
  br label %if.end87.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %sw.epilog.i.i.i.if.else.i.i.i_crit_edge
  %442 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i191.i.i.i = getelementptr i8, ptr %443, i32 8
  %444 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191.i.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %445 = and i32 %444, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %445)
  %cmp82.i.i.i = icmp eq i32 %445, 0
  %or85.i.i.i = or i32 %435, 6849
  %spec.select148.i.i.i = select i1 %cmp82.i.i.i, i32 %or85.i.i.i, i32 %spec.select.i.i.i
  br label %if.end87.i.i.i

if.end87.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then78.i.i.i
  %ctrl_reg.1.i.i.i = phi i32 [ %or79.i.i.i, %if.then78.i.i.i ], [ %spec.select148.i.i.i, %if.else.i.i.i ]
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 0, i32 noundef %ctrl_reg.1.i.i.i) #15
  %446 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %447)
  %cmp90.i.i.i = icmp eq i32 %447, 2
  br i1 %cmp90.i.i.i, label %if.then92.i.i.i, label %if.end87.i.i.i.e1000_setup_loopback_test.exit.thread76.i_crit_edge

if.end87.i.i.i.e1000_setup_loopback_test.exit.thread76.i_crit_edge: ; preds = %if.end87.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_setup_loopback_test.exit.thread76.i

if.then92.i.i.i:                                  ; preds = %if.end87.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %448 = ptrtoint ptr %write_reg.i187.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %write_reg.i187.i.i.i, align 4
  %call.i.i.i.i.i = call i32 %449(ptr noundef %hw1.i, i32 noundef 29, i16 noundef zeroext 31) #15
  %450 = ptrtoint ptr %write_reg.i187.i.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %write_reg.i187.i.i.i, align 4
  %call.i11.i.i.i.i = call i32 %451(ptr noundef %hw1.i, i32 noundef 30, i16 noundef zeroext -28676) #15
  %452 = ptrtoint ptr %write_reg.i187.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %write_reg.i187.i.i.i, align 4
  %call.i13.i.i.i.i = call i32 %453(ptr noundef %hw1.i, i32 noundef 29, i16 noundef zeroext 26) #15
  %454 = ptrtoint ptr %write_reg.i187.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %write_reg.i187.i.i.i, align 4
  %call.i15.i.i.i.i = call i32 %455(ptr noundef %hw1.i, i32 noundef 30, i16 noundef zeroext -28688) #15
  br label %e1000_setup_loopback_test.exit.thread76.i

e1000_setup_loopback_test.exit.thread76.i:        ; preds = %if.then92.i.i.i, %if.end87.i.i.i.e1000_setup_loopback_test.exit.thread76.i_crit_edge, %if.then.i54.i.i
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i.i.i) #15
  br label %if.end14.i195

e1000_setup_loopback_test.exit.i:                 ; preds = %sw.bb41.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %456 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %netdev20, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %457, ptr noundef nonnull @.str.13) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i.i.i) #15
  %conv11.i = sext i32 %call44.i.i.i to i64
  %458 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %458)
  store i64 %conv11.i, ptr %arrayidx44, align 8
  br label %err_loopback.i

if.end14.i195:                                    ; preds = %e1000_setup_loopback_test.exit.thread76.i, %sw.default.i.i, %e1000_set_82571_fiber_loopback.exit.i.i, %sw.bb.i.i
  %459 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %459)
  store i64 0, ptr %arrayidx44, align 8
  %460 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %pdev.i, align 32
  %462 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %count62.i.i, align 4
  %sub.i.i = add i32 %463, -1
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 10264, i32 noundef %sub.i.i) #15
  %464 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %count62.i.i, align 4
  %466 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %count.i.i, align 4
  %468 = call i32 @llvm.umax.i32(i32 %465, i32 %467) #15
  %lc.0.in.i.i = lshr i32 %468, 5
  %lc.0.i.i = or i32 %lc.0.in.i.i, 1
  %buffer_info14.i.i = getelementptr i8, ptr %netdev, i32 13604
  %dev.i44.i = getelementptr inbounds %struct.pci_dev, ptr %461, i32 0, i32 44
  %buffer_info21.i.i = getelementptr i8, ptr %netdev, i32 13684
  br label %for.cond11.preheader.i.i

for.cond.i.i:                                     ; preds = %if.end45.i.i
  %inc53.i.i = add nuw nsw i32 %j.0113.i.i, 1
  %exitcond117.i.i = icmp eq i32 %j.0113.i.i, %lc.0.i.i
  br i1 %exitcond117.i.i, label %for.cond.i.i.e1000_run_loopback_test.exit.i_crit_edge, label %for.cond.i.i.for.cond11.preheader.i.i_crit_edge

for.cond.i.i.for.cond11.preheader.i.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond11.preheader.i.i

for.cond.i.i.e1000_run_loopback_test.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_run_loopback_test.exit.i

for.cond11.preheader.i.i:                         ; preds = %for.cond.i.i.for.cond11.preheader.i.i_crit_edge, %if.end14.i195
  %l.0115.i.i = phi i32 [ 0, %if.end14.i195 ], [ %spec.store.select55.i.i, %for.cond.i.i.for.cond11.preheader.i.i_crit_edge ]
  %k.0114.i.i = phi i32 [ 0, %if.end14.i195 ], [ %spec.store.select.i.i, %for.cond.i.i.for.cond11.preheader.i.i_crit_edge ]
  %j.0113.i.i = phi i32 [ 0, %if.end14.i195 ], [ %inc53.i.i, %for.cond.i.i.for.cond11.preheader.i.i_crit_edge ]
  br label %for.body13.i.i

for.body13.i.i:                                   ; preds = %for.body13.i.i.for.body13.i.i_crit_edge, %for.cond11.preheader.i.i
  %k.1112.i.i = phi i32 [ %k.0114.i.i, %for.cond11.preheader.i.i ], [ %spec.store.select.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ]
  %i.0111.i.i = phi i32 [ 0, %for.cond11.preheader.i.i ], [ %inc20.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ]
  %469 = ptrtoint ptr %buffer_info14.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %buffer_info14.i.i, align 4
  %arrayidx.i46.i = getelementptr %struct.e1000_buffer, ptr %470, i32 %k.1112.i.i
  %skb.i.i = getelementptr %struct.e1000_buffer, ptr %470, i32 %k.1112.i.i, i32 1
  %471 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %skb.i.i, align 4
  %data.i.i47.i = getelementptr inbounds %struct.sk_buff, ptr %472, i32 0, i32 19
  %473 = ptrtoint ptr %data.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %data.i.i47.i, align 4
  %475 = call ptr @memset(ptr %474, i32 255, i32 1024)
  %476 = load ptr, ptr %data.i.i47.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %476, i32 512
  %477 = call ptr @memset(ptr %arrayidx.i.i.i, i32 170, i32 511)
  %478 = load ptr, ptr %data.i.i47.i, align 4
  %arrayidx5.i.i.i = getelementptr i8, ptr %478, i32 522
  %479 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 -66, ptr %arrayidx5.i.i.i, align 1
  %480 = load ptr, ptr %data.i.i47.i, align 4
  %arrayidx9.i.i.i = getelementptr i8, ptr %480, i32 524
  %481 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 -81, ptr %arrayidx9.i.i.i, align 1
  %482 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx.i46.i, align 4
  %length.i48.i = getelementptr %struct.e1000_buffer, ptr %470, i32 %k.1112.i.i, i32 2, i32 0, i32 1
  %484 = ptrtoint ptr %length.i48.i to i32
  call void @__asan_load2_noabort(i32 %484)
  %485 = load i16, ptr %length.i48.i, align 4
  %conv.i.i = zext i16 %485 to i32
  call void @dma_sync_single_for_device(ptr noundef %dev.i44.i, i32 noundef %483, i32 noundef %conv.i.i, i32 noundef 1) #15
  %inc.i49.i = add i32 %k.1112.i.i, 1
  %486 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i49.i, i32 %487)
  %cmp16.i.i = icmp eq i32 %inc.i49.i, %487
  %spec.store.select.i.i = select i1 %cmp16.i.i, i32 0, i32 %inc.i49.i
  %inc20.i.i = add nuw nsw i32 %i.0111.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc20.i.i, 64
  br i1 %exitcond.not.i.i, label %for.end.i51.i, label %for.body13.i.i.for.body13.i.i_crit_edge

for.body13.i.i.for.body13.i.i_crit_edge:          ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body13.i.i

for.end.i51.i:                                    ; preds = %for.body13.i.i
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 14360, i32 noundef %spec.store.select.i.i) #15
  %488 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i50.i = getelementptr i8, ptr %489, i32 8
  %490 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @msleep(i32 noundef 200) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %491 = load volatile i32, ptr @jiffies, align 128
  %add38.i.i = add i32 %491, 20
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %for.end.i51.i
  %l.1.i.i = phi i32 [ %l.0115.i.i, %for.end.i51.i ], [ %spec.store.select55102.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ]
  %good_cnt.0.i.i = phi i32 [ 0, %for.end.i51.i ], [ %511, %land.rhs.i.i.do.body.i.i_crit_edge ]
  %492 = ptrtoint ptr %buffer_info21.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %buffer_info21.i.i, align 4
  %arrayidx22.i.i = getelementptr %struct.e1000_buffer, ptr %493, i32 %l.1.i.i
  %494 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %arrayidx22.i.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %dev.i44.i, i32 noundef %495, i32 noundef 2048, i32 noundef 2) #15
  %skb25.i.i = getelementptr %struct.e1000_buffer, ptr %493, i32 %l.1.i.i, i32 1
  %496 = ptrtoint ptr %skb25.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %skb25.i.i, align 4
  %data.i87.i.i = getelementptr inbounds %struct.sk_buff, ptr %497, i32 0, i32 19
  %498 = ptrtoint ptr %data.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %data.i87.i.i, align 4
  %add.ptr.i88.i.i = getelementptr i8, ptr %499, i32 3
  %500 = ptrtoint ptr %add.ptr.i88.i.i to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %add.ptr.i88.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %501)
  %cmp.i.i.i = icmp eq i8 %501, -1
  br i1 %cmp.i.i.i, label %if.then.i.i52.i, label %do.body.i.i..thread.i.i_crit_edge

do.body.i.i..thread.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %.thread.i.i

if.then.i.i52.i:                                  ; preds = %do.body.i.i
  %add.ptr4.i.i.i = getelementptr i8, ptr %499, i32 522
  %502 = ptrtoint ptr %add.ptr4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %add.ptr4.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %503)
  %cmp6.i.i.i = icmp eq i8 %503, -66
  br i1 %cmp6.i.i.i, label %land.lhs.true.i.i53.i, label %if.then.i.i52.i..thread.i.i_crit_edge

if.then.i.i52.i..thread.i.i_crit_edge:            ; preds = %if.then.i.i52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %.thread.i.i

land.lhs.true.i.i53.i:                            ; preds = %if.then.i.i52.i
  %add.ptr11.i.i.i = getelementptr i8, ptr %499, i32 524
  %504 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %add.ptr11.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %505)
  %cmp13.i.i.i = icmp eq i8 %505, -81
  br i1 %cmp13.i.i.i, label %508, label %land.lhs.true.i.i53.i..thread.i.i_crit_edge

land.lhs.true.i.i53.i..thread.i.i_crit_edge:      ; preds = %land.lhs.true.i.i53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %land.lhs.true.i.i53.i..thread.i.i_crit_edge, %if.then.i.i52.i..thread.i.i_crit_edge, %do.body.i.i..thread.i.i_crit_edge
  %inc3096.i.i = add i32 %l.1.i.i, 1
  %506 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %count62.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc3096.i.i, i32 %507)
  %cmp3297.i.i = icmp eq i32 %inc3096.i.i, %507
  %spec.store.select5598.i.i = select i1 %cmp3297.i.i, i32 0, i32 %inc3096.i.i
  br label %land.rhs.i.i

508:                                              ; preds = %land.lhs.true.i.i53.i
  %inc2891.i.i = add nsw i32 %good_cnt.0.i.i, 1
  %inc30.i.i = add i32 %l.1.i.i, 1
  %509 = ptrtoint ptr %count62.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %count62.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc30.i.i, i32 %510)
  %cmp32.i.i = icmp eq i32 %inc30.i.i, %510
  %spec.store.select55.i.i = select i1 %cmp32.i.i, i32 0, i32 %inc30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %good_cnt.0.i.i)
  %cmp36.i.i = icmp slt i32 %good_cnt.0.i.i, 63
  br i1 %cmp36.i.i, label %.land.rhs.i.i_crit_edge, label %if.end45.i.i

.land.rhs.i.i_crit_edge:                          ; preds = %508
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %.land.rhs.i.i_crit_edge, %.thread.i.i
  %spec.store.select55102.i.i = phi i32 [ %spec.store.select5598.i.i, %.thread.i.i ], [ %spec.store.select55.i.i, %.land.rhs.i.i_crit_edge ]
  %511 = phi i32 [ %good_cnt.0.i.i, %.thread.i.i ], [ %inc2891.i.i, %.land.rhs.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %512 = load volatile i32, ptr @jiffies, align 128
  %sub39.i.i = sub i32 %add38.i.i, %512
  %cmp40.i.i = icmp sgt i32 %sub39.i.i, -1
  br i1 %cmp40.i.i, label %land.rhs.i.i.do.body.i.i_crit_edge, label %land.rhs.i.i.e1000_run_loopback_test.exit.i_crit_edge

land.rhs.i.i.e1000_run_loopback_test.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_run_loopback_test.exit.i

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

if.end45.i.i:                                     ; preds = %508
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %513 = load volatile i32, ptr @jiffies, align 128
  %sub47.i.i = sub i32 %add38.i.i, %513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub47.i.i)
  %cmp48.i.i = icmp slt i32 %sub47.i.i, 0
  br i1 %cmp48.i.i, label %if.end45.i.i.e1000_run_loopback_test.exit.i_crit_edge, label %for.cond.i.i

if.end45.i.i.e1000_run_loopback_test.exit.i_crit_edge: ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_run_loopback_test.exit.i

e1000_run_loopback_test.exit.i:                   ; preds = %if.end45.i.i.e1000_run_loopback_test.exit.i_crit_edge, %land.rhs.i.i.e1000_run_loopback_test.exit.i_crit_edge, %for.cond.i.i.e1000_run_loopback_test.exit.i_crit_edge
  %ret_val.1.i.i = phi i32 [ 13, %land.rhs.i.i.e1000_run_loopback_test.exit.i_crit_edge ], [ 14, %if.end45.i.i.e1000_run_loopback_test.exit.i_crit_edge ], [ 0, %for.cond.i.i.e1000_run_loopback_test.exit.i_crit_edge ]
  %514 = zext i32 %ret_val.1.i.i to i64
  %515 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %515)
  store i64 %514, ptr %arrayidx44, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg.i.i) #15
  %516 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_store2_noabort(i32 %516)
  store i16 -1, ptr %phy_reg.i.i, align 2, !annotation !57
  %517 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i56.i = getelementptr i8, ptr %518, i32 256
  %519 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %520 = and i32 %519, 1073741823
  %521 = call i32 @llvm.bswap.i32(i32 %520) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 256, i32 noundef %521) #15
  %522 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %type.i, align 4
  %524 = zext i32 %523 to i64
  call void @__sanitizer_cov_trace_switch(i64 %524, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %523, label %e1000_run_loopback_test.exit.i.sw.default.i62.i_crit_edge [
    i32 12, label %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge
    i32 13, label %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge300
    i32 14, label %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge301
    i32 15, label %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge302
    i32 16, label %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge303
    i32 17, label %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge304
    i32 5, label %e1000_run_loopback_test.exit.i.sw.bb6.i.i_crit_edge
    i32 0, label %e1000_run_loopback_test.exit.i.sw.bb11.i.i_crit_edge
    i32 1, label %e1000_run_loopback_test.exit.i.sw.bb11.i.i_crit_edge305
  ]

e1000_run_loopback_test.exit.i.sw.bb11.i.i_crit_edge305: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11.i.i

e1000_run_loopback_test.exit.i.sw.bb11.i.i_crit_edge: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11.i.i

e1000_run_loopback_test.exit.i.sw.bb6.i.i_crit_edge: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb6.i.i

e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge304: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i58.i

e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge303: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i58.i

e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge302: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i58.i

e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge301: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i58.i

e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge300: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i58.i

e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i58.i

e1000_run_loopback_test.exit.i.sw.default.i62.i_crit_edge: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i62.i

sw.bb.i58.i:                                      ; preds = %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge, %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge300, %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge301, %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge302, %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge303, %e1000_run_loopback_test.exit.i.sw.bb.i58.i_crit_edge304
  %525 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i76.i.i = getelementptr i8, ptr %526, i32 23484
  %527 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %528 = and i32 %527, -2097153
  %529 = call i32 @llvm.bswap.i32(i32 %528) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 23484, i32 noundef %529) #15
  %530 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i78.i.i = getelementptr i8, ptr %531, i32 14400
  %532 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %533 = and i32 %532, -49
  %534 = call i32 @llvm.bswap.i32(i32 %533) #15
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 14400, i32 noundef %534) #15
  br label %sw.bb6.i.i

sw.bb6.i.i:                                       ; preds = %sw.bb.i58.i, %e1000_run_loopback_test.exit.i.sw.bb6.i.i_crit_edge
  %535 = ptrtoint ptr %media_type.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %media_type.i.i, align 4
  %537 = and i32 %536, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %537)
  %switch.i.i = icmp eq i32 %537, 2
  br i1 %switch.i.i, label %if.then.i60.i, label %sw.bb6.i.i.sw.bb11.i.i_crit_edge

sw.bb6.i.i.sw.bb11.i.i_crit_edge:                 ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11.i.i

if.then.i60.i:                                    ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_fifo_head.i.i = getelementptr i8, ptr %netdev, i32 3516
  %538 = ptrtoint ptr %tx_fifo_head.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %tx_fifo_head.i.i, align 4
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 24, i32 noundef %539) #15
  %540 = ptrtoint ptr %tx_fifo_head.i.i to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 0, ptr %tx_fifo_head.i.i, align 4
  br label %sw.bb11.i.i

sw.bb11.i.i:                                      ; preds = %if.then.i60.i, %sw.bb6.i.i.sw.bb11.i.i_crit_edge, %e1000_run_loopback_test.exit.i.sw.bb11.i.i_crit_edge, %e1000_run_loopback_test.exit.i.sw.bb11.i.i_crit_edge305
  %541 = ptrtoint ptr %media_type.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %media_type.i.i, align 4
  %543 = and i32 %542, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %543)
  %switch74.i.i = icmp eq i32 %543, 2
  br i1 %switch74.i.i, label %if.then19.i61.i, label %sw.bb11.i.i.sw.default.i62.i_crit_edge

sw.bb11.i.i.sw.default.i62.i_crit_edge:           ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.default.i62.i

if.then19.i61.i:                                  ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__ew32(ptr noundef %hw1.i, i32 noundef 36, i32 noundef 1024) #15
  %544 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i80.i.i = getelementptr i8, ptr %545, i32 8
  %546 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i.i) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #15
  br label %e1000_loopback_cleanup.exit.i

sw.default.i62.i:                                 ; preds = %sw.bb11.i.i.sw.default.i62.i_crit_edge, %e1000_run_loopback_test.exit.i.sw.default.i62.i_crit_edge
  %547 = ptrtoint ptr %autoneg18 to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 1, ptr %autoneg18, align 2
  %type24.i.i = getelementptr i8, ptr %netdev, i32 4484
  %548 = ptrtoint ptr %type24.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %type24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %549)
  %cmp25.i.i = icmp eq i32 %549, 5
  br i1 %cmp25.i.i, label %if.then26.i.i, label %sw.default.i62.i.if.end28.i.i_crit_edge

sw.default.i62.i.if.end28.i.i_crit_edge:          ; preds = %sw.default.i62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i.i

if.then26.i.i:                                    ; preds = %sw.default.i62.i
  call void @__sanitizer_cov_trace_pc() #17
  %write_reg.i.i.i = getelementptr i8, ptr %netdev, i32 4464
  %550 = ptrtoint ptr %write_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %write_reg.i.i.i, align 4
  %call.i.i63.i = call i32 %551(ptr noundef %hw1.i, i32 noundef 6192, i16 noundef zeroext 384) #15
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then26.i.i, %sw.default.i62.i.if.end28.i.i_crit_edge
  %read_reg.i.i.i = getelementptr i8, ptr %netdev, i32 4436
  %552 = ptrtoint ptr %read_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %read_reg.i.i.i, align 4
  %call.i81.i.i = call i32 %553(ptr noundef %hw1.i, i32 noundef 0, ptr noundef nonnull %phy_reg.i.i) #15
  %554 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %554)
  %555 = load i16, ptr %phy_reg.i.i, align 2
  %556 = and i16 %555, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %556)
  %tobool.not.i64.i = icmp eq i16 %556, 0
  br i1 %tobool.not.i64.i, label %if.end28.i.i.e1000_loopback_cleanup.exit.i_crit_edge, label %if.then31.i.i

if.end28.i.i.e1000_loopback_cleanup.exit.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_loopback_cleanup.exit.i

if.then31.i.i:                                    ; preds = %if.end28.i.i
  %and33.i.i = and i16 %555, -16385
  %557 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_store2_noabort(i32 %557)
  store i16 %and33.i.i, ptr %phy_reg.i.i, align 2
  %write_reg.i82.i.i = getelementptr i8, ptr %netdev, i32 4464
  %558 = ptrtoint ptr %write_reg.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %write_reg.i82.i.i, align 4
  %call.i83.i.i = call i32 %559(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext %and33.i.i) #15
  %commit.i.i = getelementptr i8, ptr %netdev, i32 4412
  %560 = ptrtoint ptr %commit.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %commit.i.i, align 4
  %tobool37.not.i.i = icmp eq ptr %561, null
  br i1 %tobool37.not.i.i, label %if.then31.i.i.e1000_loopback_cleanup.exit.i_crit_edge, label %if.then38.i.i

if.then31.i.i.e1000_loopback_cleanup.exit.i_crit_edge: ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_loopback_cleanup.exit.i

if.then38.i.i:                                    ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call42.i.i = call i32 %561(ptr noundef %hw1.i) #15
  br label %e1000_loopback_cleanup.exit.i

e1000_loopback_cleanup.exit.i:                    ; preds = %if.then38.i.i, %if.then31.i.i.e1000_loopback_cleanup.exit.i_crit_edge, %if.end28.i.i.e1000_loopback_cleanup.exit.i_crit_edge, %if.then19.i61.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i.i) #15
  br label %err_loopback.i

err_loopback.i:                                   ; preds = %e1000_loopback_cleanup.exit.i, %e1000_setup_loopback_test.exit.i, %e1000_setup_loopback_test.exit.thread71.i
  call fastcc void @e1000_free_desc_rings(ptr noundef %add.ptr.i) #15
  br label %e1000_loopback_test.exit

e1000_loopback_test.exit:                         ; preds = %err_loopback.i, %e1000_setup_desc_rings.exit.i, %if.then.i193
  %562 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %562)
  %563 = load i64, ptr %arrayidx44, align 8
  %conv17.i = trunc i64 %563 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv17.i)
  %tobool46.not = icmp eq i32 %conv17.i, 0
  br i1 %tobool46.not, label %e1000_loopback_test.exit.if.end50_crit_edge, label %if.then47

e1000_loopback_test.exit.if.end50_crit_edge:      ; preds = %e1000_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then47:                                        ; preds = %e1000_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  %564 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %flags9, align 4
  %or49 = or i32 %565, 2
  store i32 %or49, ptr %flags9, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %e1000_loopback_test.exit.if.end50_crit_edge
  %autoneg_wait_to_complete53 = getelementptr i8, ptr %netdev, i32 4548
  %566 = ptrtoint ptr %autoneg_wait_to_complete53 to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 1, ptr %autoneg_wait_to_complete53, align 4
  call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  %567 = ptrtoint ptr %autoneg_wait_to_complete53 to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 0, ptr %autoneg_wait_to_complete53, align 4
  %arrayidx57 = getelementptr i64, ptr %data, i32 4
  %568 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %568)
  store i64 0, ptr %arrayidx57, align 8
  %media_type.i = getelementptr i8, ptr %netdev, i32 4528
  %569 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %570)
  %cmp.i198 = icmp eq i32 %570, 3
  br i1 %cmp.i198, label %if.then.i199, label %if.else.i206

if.then.i199:                                     ; preds = %if.end50
  %serdes_has_link.i = getelementptr i8, ptr %netdev, i32 4366
  %571 = ptrtoint ptr %serdes_has_link.i to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 0, ptr %serdes_has_link.i, align 2
  %check_for_link.i = getelementptr i8, ptr %netdev, i32 3708
  br label %do.body.i202

do.body.i202:                                     ; preds = %if.end.i205.do.body.i202_crit_edge, %if.then.i199
  %i.0.i = phi i32 [ 0, %if.then.i199 ], [ %inc.i203, %if.end.i205.do.body.i202_crit_edge ]
  %572 = ptrtoint ptr %check_for_link.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %check_for_link.i, align 4
  %call.i200 = call i32 %573(ptr noundef %hw1.i) #15
  %574 = ptrtoint ptr %serdes_has_link.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %serdes_has_link.i, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %575)
  %tobool.not.i201 = icmp eq i8 %575, 0
  br i1 %tobool.not.i201, label %if.end.i205, label %do.body.i202.e1000_link_test.exit_crit_edge

do.body.i202.e1000_link_test.exit_crit_edge:      ; preds = %do.body.i202
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_link_test.exit

if.end.i205:                                      ; preds = %do.body.i202
  call void @msleep(i32 noundef 20) #15
  %inc.i203 = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i204 = icmp eq i32 %inc.i203, 3751
  br i1 %exitcond.not.i204, label %if.end.i205.if.end21.sink.split.i_crit_edge, label %if.end.i205.do.body.i202_crit_edge

if.end.i205.do.body.i202_crit_edge:               ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i202

if.end.i205.if.end21.sink.split.i_crit_edge:      ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.sink.split.i

if.else.i206:                                     ; preds = %if.end50
  %check_for_link10.i = getelementptr i8, ptr %netdev, i32 3708
  %576 = ptrtoint ptr %check_for_link10.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %check_for_link10.i, align 4
  %call11.i = call i32 %577(ptr noundef %hw1.i) #15
  %578 = ptrtoint ptr %autoneg18 to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %autoneg18, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %579)
  %tobool13.not.i = icmp eq i8 %579, 0
  br i1 %tobool13.not.i, label %if.else.i206.if.end16.i_crit_edge, label %if.then14.i

if.else.i206.if.end16.i_crit_edge:                ; preds = %if.else.i206
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.else.i206
  call void @__sanitizer_cov_trace_pc() #17
  %call15.i = call i32 @msleep_interruptible(i32 noundef 5000) #15
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.else.i206.if.end16.i_crit_edge
  %580 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i208 = getelementptr i8, ptr %581, i32 8
  %582 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i208) #15, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %583 = and i32 %582, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %583)
  %tobool18.not.i = icmp eq i32 %583, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end21.sink.split.i_crit_edge, label %if.end16.i.e1000_link_test.exit_crit_edge

if.end16.i.e1000_link_test.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_link_test.exit

if.end16.i.if.end21.sink.split.i_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.end16.i.if.end21.sink.split.i_crit_edge, %if.end.i205.if.end21.sink.split.i_crit_edge
  %584 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %584)
  store i64 1, ptr %arrayidx57, align 8
  br label %e1000_link_test.exit

e1000_link_test.exit:                             ; preds = %if.end21.sink.split.i, %if.end16.i.e1000_link_test.exit_crit_edge, %do.body.i202.e1000_link_test.exit_crit_edge
  %585 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %585)
  %586 = load i64, ptr %arrayidx57, align 8
  %conv.i209 = trunc i64 %586 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i209)
  %tobool59.not = icmp eq i32 %conv.i209, 0
  br i1 %tobool59.not, label %e1000_link_test.exit.if.end63_crit_edge, label %if.then60

e1000_link_test.exit.if.end63_crit_edge:          ; preds = %e1000_link_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then60:                                        ; preds = %e1000_link_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  %587 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %flags9, align 4
  %or62 = or i32 %588, 2
  store i32 %or62, ptr %flags9, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %e1000_link_test.exit.if.end63_crit_edge
  %589 = ptrtoint ptr %autoneg_advertised13 to i32
  call void @__asan_store2_noabort(i32 %589)
  store i16 %11, ptr %autoneg_advertised13, align 4
  %590 = ptrtoint ptr %forced_speed_duplex15 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 %13, ptr %forced_speed_duplex15, align 2
  %591 = ptrtoint ptr %autoneg18 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %15, ptr %autoneg18, align 2
  call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #15
  br i1 %tobool.i.not, label %if.end63.if.then95_crit_edge, label %if.then77

if.end63.if.then95_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then95

if.then77:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %call78 = call i32 @e1000e_open(ptr noundef %netdev) #15
  br label %if.end101

if.else:                                          ; preds = %if.end8
  %netdev80 = getelementptr i8, ptr %netdev, i32 3676
  %592 = ptrtoint ptr %netdev80 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %netdev80, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %593, ptr noundef nonnull @.str.3) #18
  %arrayidx85 = getelementptr i64, ptr %data, i32 4
  %hw1.i210 = getelementptr i8, ptr %netdev, i32 3684
  %media_type.i211 = getelementptr i8, ptr %netdev, i32 4528
  %594 = call ptr @memset(ptr %data, i32 0, i32 40)
  %595 = ptrtoint ptr %media_type.i211 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %media_type.i211, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %596)
  %cmp.i212 = icmp eq i32 %596, 3
  br i1 %cmp.i212, label %if.then.i215, label %if.else.i227

if.then.i215:                                     ; preds = %if.else
  %serdes_has_link.i213 = getelementptr i8, ptr %netdev, i32 4366
  %597 = ptrtoint ptr %serdes_has_link.i213 to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 0, ptr %serdes_has_link.i213, align 2
  %check_for_link.i214 = getelementptr i8, ptr %netdev, i32 3708
  br label %do.body.i219

do.body.i219:                                     ; preds = %if.end.i222.do.body.i219_crit_edge, %if.then.i215
  %i.0.i216 = phi i32 [ 0, %if.then.i215 ], [ %inc.i220, %if.end.i222.do.body.i219_crit_edge ]
  %598 = ptrtoint ptr %check_for_link.i214 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %check_for_link.i214, align 4
  %call.i217 = tail call i32 %599(ptr noundef %hw1.i210) #15
  %600 = ptrtoint ptr %serdes_has_link.i213 to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %serdes_has_link.i213, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %601)
  %tobool.not.i218 = icmp eq i8 %601, 0
  br i1 %tobool.not.i218, label %if.end.i222, label %do.body.i219.e1000_link_test.exit236_crit_edge

do.body.i219.e1000_link_test.exit236_crit_edge:   ; preds = %do.body.i219
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_link_test.exit236

if.end.i222:                                      ; preds = %do.body.i219
  tail call void @msleep(i32 noundef 20) #15
  %inc.i220 = add nuw nsw i32 %i.0.i216, 1
  %exitcond.not.i221 = icmp eq i32 %inc.i220, 3751
  br i1 %exitcond.not.i221, label %if.end.i222.if.end21.sink.split.i234_crit_edge, label %if.end.i222.do.body.i219_crit_edge

if.end.i222.do.body.i219_crit_edge:               ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i219

if.end.i222.if.end21.sink.split.i234_crit_edge:   ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.sink.split.i234

if.else.i227:                                     ; preds = %if.else
  %check_for_link10.i223 = getelementptr i8, ptr %netdev, i32 3708
  %602 = ptrtoint ptr %check_for_link10.i223 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %check_for_link10.i223, align 4
  %call11.i224 = tail call i32 %603(ptr noundef %hw1.i210) #15
  %autoneg.i225 = getelementptr i8, ptr %netdev, i32 4362
  %604 = ptrtoint ptr %autoneg.i225 to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %autoneg.i225, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %605)
  %tobool13.not.i226 = icmp eq i8 %605, 0
  br i1 %tobool13.not.i226, label %if.else.i227.if.end16.i233_crit_edge, label %if.then14.i229

if.else.i227.if.end16.i233_crit_edge:             ; preds = %if.else.i227
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i233

if.then14.i229:                                   ; preds = %if.else.i227
  call void @__sanitizer_cov_trace_pc() #17
  %call15.i228 = tail call i32 @msleep_interruptible(i32 noundef 5000) #15
  br label %if.end16.i233

if.end16.i233:                                    ; preds = %if.then14.i229, %if.else.i227.if.end16.i233_crit_edge
  %hw_addr.i.i230 = getelementptr i8, ptr %netdev, i32 3688
  %606 = ptrtoint ptr %hw_addr.i.i230 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %hw_addr.i.i230, align 4
  %add.ptr.i.i231 = getelementptr i8, ptr %607, i32 8
  %608 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i231) #15, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %609 = and i32 %608, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %609)
  %tobool18.not.i232 = icmp eq i32 %609, 0
  br i1 %tobool18.not.i232, label %if.end16.i233.if.end21.sink.split.i234_crit_edge, label %if.end16.i233.e1000_link_test.exit236_crit_edge

if.end16.i233.e1000_link_test.exit236_crit_edge:  ; preds = %if.end16.i233
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_link_test.exit236

if.end16.i233.if.end21.sink.split.i234_crit_edge: ; preds = %if.end16.i233
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.sink.split.i234

if.end21.sink.split.i234:                         ; preds = %if.end16.i233.if.end21.sink.split.i234_crit_edge, %if.end.i222.if.end21.sink.split.i234_crit_edge
  %610 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store8_noabort(i32 %610)
  store i64 1, ptr %arrayidx85, align 8
  br label %e1000_link_test.exit236

e1000_link_test.exit236:                          ; preds = %if.end21.sink.split.i234, %if.end16.i233.e1000_link_test.exit236_crit_edge, %do.body.i219.e1000_link_test.exit236_crit_edge
  %611 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load8_noabort(i32 %611)
  %612 = load i64, ptr %arrayidx85, align 8
  %conv.i235 = trunc i64 %612 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i235)
  %tobool87.not = icmp eq i32 %conv.i235, 0
  br i1 %tobool87.not, label %e1000_link_test.exit236.if.end91_crit_edge, label %if.then88

e1000_link_test.exit236.if.end91_crit_edge:       ; preds = %e1000_link_test.exit236
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end91

if.then88:                                        ; preds = %e1000_link_test.exit236
  call void @__sanitizer_cov_trace_pc() #17
  %613 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %flags9, align 4
  %or90 = or i32 %614, 2
  store i32 %or90, ptr %flags9, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %e1000_link_test.exit236.if.end91_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #15
  br i1 %tobool.i.not, label %if.end91.if.then95_crit_edge, label %if.end91.if.end101_crit_edge

if.end91.if.end101_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.end91.if.then95_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then95

if.then95:                                        ; preds = %if.end91.if.then95_crit_edge, %if.end63.if.then95_crit_edge
  call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  %flags96 = getelementptr i8, ptr %netdev, i32 13776
  %615 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %flags96, align 16
  %and97 = and i32 %616, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.then95.if.end101_crit_edge, label %if.then99

if.then95.if.end101_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.then99:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  call void @e1000e_release_hw_control(ptr noundef %add.ptr.i) #15
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.then95.if.end101_crit_edge, %if.end91.if.end101_crit_edge, %if.then77
  %call102 = call i32 @msleep_interruptible(i32 noundef 4000) #15
  %617 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %parent, align 8
  %call.i237 = call i32 @__pm_runtime_idle(ptr noundef %618, i32 noundef 4) #15
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.for.body_crit_edge
    i32 2, label %sw.bb2
  ]

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = call ptr @memcpy(ptr %data, ptr @e1000_gstrings_test, i32 160)
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.08 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [53 x %struct.e1000_stats], ptr @e1000_gstrings_stats, i32 0, i32 %i.09
  %2 = call ptr @memcpy(ptr %p.08, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %p.08, i32 32
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = call ptr @memcpy(ptr %data, ptr @e1000e_priv_flags_strings, i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %for.body.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_phys_id(ptr noundef %netdev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3684
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
    i32 2, label %sw.bb20
    i32 3, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #15
  %blink_led = getelementptr i8, ptr %netdev, i32 3700
  %3 = ptrtoint ptr %blink_led to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %blink_led, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 %4(ptr noundef %hw1) #15
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %type = getelementptr i8, ptr %netdev, i32 4484
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp = icmp eq i32 %6, 7
  br i1 %cmp, label %if.then8, label %sw.bb7.if.end10_crit_edge

sw.bb7.if.end10_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  %write_reg.i = getelementptr i8, ptr %netdev, i32 4464
  %7 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i, align 4
  %call.i44 = tail call i32 %8(ptr noundef %hw1, i32 noundef 27, i16 noundef zeroext 0) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb7.if.end10_crit_edge
  %led_off = getelementptr i8, ptr %netdev, i32 3740
  %9 = ptrtoint ptr %led_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %led_off, align 4
  %call13 = tail call i32 %10(ptr noundef %hw1) #15
  %cleanup_led = getelementptr i8, ptr %netdev, i32 3712
  %11 = ptrtoint ptr %cleanup_led to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cleanup_led, align 4
  %call16 = tail call i32 %12(ptr noundef %hw1) #15
  %parent18 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %13 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent18, align 8
  %call.i45 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #15
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %led_on = getelementptr i8, ptr %netdev, i32 3736
  %15 = ptrtoint ptr %led_on to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %led_on, align 4
  %call23 = tail call i32 %16(ptr noundef %hw1) #15
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %led_off27 = getelementptr i8, ptr %netdev, i32 3740
  %17 = ptrtoint ptr %led_off27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %led_off27, align 4
  %call28 = tail call i32 %18(ptr noundef %hw1) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %sw.bb20, %if.end10, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb24 ], [ 0, %sw.bb20 ], [ 0, %if.end10 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  %net_stats = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %net_stats) #15
  %0 = call ptr @memset(ptr %net_stats, i32 255, i32 192)
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #15
  %call2 = call ptr @dev_get_stats(ptr noundef %netdev, ptr noundef nonnull %net_stats) #15
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call.i27 = call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %type = getelementptr [53 x %struct.e1000_stats], ptr @e1000_gstrings_stats, i32 0, i32 %i.028, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %6, label %for.body.for.inc_crit_edge [
    i32 0, label %for.body.sw.epilog_crit_edge
    i32 1, label %sw.bb7
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %for.body.sw.epilog_crit_edge
  %add.ptr.i.sink = phi ptr [ %add.ptr.i, %sw.bb7 ], [ %net_stats, %for.body.sw.epilog_crit_edge ]
  %stat_offset9 = getelementptr [53 x %struct.e1000_stats], ptr @e1000_gstrings_stats, i32 0, i32 %i.028, i32 3
  %8 = ptrtoint ptr %stat_offset9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_offset9, align 4
  %add.ptr10 = getelementptr i8, ptr %add.ptr.i.sink, i32 %9
  %sizeof_stat = getelementptr [53 x %struct.e1000_stats], ptr @e1000_gstrings_stats, i32 0, i32 %i.028, i32 2
  %10 = ptrtoint ptr %sizeof_stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sizeof_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp13 = icmp eq i32 %11, 8
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr10, align 8
  br label %for.inc

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr10, align 4
  %conv = zext i32 %15 to i64
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true, %for.body.for.inc_crit_edge
  %cond.sink = phi i64 [ 0, %for.body.for.inc_crit_edge ], [ %13, %cond.true ], [ %conv, %cond.false ]
  %arrayidx14 = getelementptr i64, ptr %data, i32 %i.028
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %cond.sink, ptr %arrayidx14, align 8
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %net_stats) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000e_get_priv_flags(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr i8, ptr %netdev, i32 13780
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags2, align 4
  %and = lshr i32 %1, 15
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000e_set_priv_flags(ptr nocapture noundef %netdev, i32 noundef %priv_flags) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags21 = getelementptr i8, ptr %netdev, i32 13780
  %0 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags21, align 4
  %and = and i32 %1, -32769
  %and2 = and i32 %priv_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %type = getelementptr i8, ptr %netdev, i32 3800
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %cmp = icmp ult i32 %3, 13
  %or = or i32 %1, 32768
  br i1 %cmp, label %if.then.cleanup11_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then.cleanup11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup11

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %flags2.1 = phi i32 [ %or, %if.then.if.end5_crit_edge ], [ %and, %entry.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %flags2.1, i32 %1)
  %cmp7.not = icmp eq i32 %flags2.1, %1
  br i1 %cmp7.not, label %if.end5.cleanup11_crit_edge, label %if.then8

if.end5.cleanup11_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags2.1, ptr %flags21, align 4
  br label %cleanup11

cleanup11:                                        ; preds = %if.then8, %if.end5.cleanup11_crit_edge, %if.then.cleanup11_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup11_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end5.cleanup11_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000e_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sset)
  %0 = icmp ult i32 %sset, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.e1000e_get_sset_count, i32 0, i32 %sset
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_rxnfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %info, ptr nocapture noundef readnone %rule_locs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data, align 8
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %2)
  %cond = icmp eq i32 %2, 41
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #15
  %hw_addr.i = getelementptr i8, ptr %netdev, i32 3688
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %6, i32 22552
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #15, !srcloc !58
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call.i50 = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %8)
  %tobool.not = icmp ult i32 %8, 65536
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %sw.bb
  %flow_type = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flow_type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %12, label %if.end.return_crit_edge [
    i32 1, label %sw.bb7
    i32 2, label %if.end.sw.bb13_crit_edge
    i32 3, label %if.end.sw.bb13_crit_edge51
    i32 4, label %if.end.sw.bb13_crit_edge52
    i32 16, label %if.end.sw.bb13_crit_edge53
    i32 5, label %sw.bb20
    i32 6, label %if.end.sw.bb27_crit_edge
    i32 7, label %if.end.sw.bb27_crit_edge54
    i32 8, label %if.end.sw.bb27_crit_edge55
    i32 17, label %if.end.sw.bb27_crit_edge56
  ]

if.end.sw.bb27_crit_edge56:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

if.end.sw.bb27_crit_edge55:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

if.end.sw.bb27_crit_edge54:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

if.end.sw.bb27_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

if.end.sw.bb13_crit_edge53:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb13

if.end.sw.bb13_crit_edge52:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb13

if.end.sw.bb13_crit_edge51:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb13

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb13

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb7:                                           ; preds = %if.end
  %and8 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %sw.bb7.sw.bb13_crit_edge, label %if.then10

sw.bb7.sw.bb13_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb13

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %data, align 8
  %or = or i64 %15, 192
  store i64 %or, ptr %data, align 8
  br label %sw.bb13

sw.bb13:                                          ; preds = %if.then10, %sw.bb7.sw.bb13_crit_edge, %if.end.sw.bb13_crit_edge, %if.end.sw.bb13_crit_edge51, %if.end.sw.bb13_crit_edge52, %if.end.sw.bb13_crit_edge53
  %and14 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %sw.bb13.return_crit_edge, label %sw.bb13.return.sink.split_crit_edge

sw.bb13.return.sink.split_crit_edge:              ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

sw.bb13.return_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb20:                                          ; preds = %if.end
  %and21 = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %sw.bb20.sw.bb27_crit_edge, label %if.then23

sw.bb20.sw.bb27_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb27

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %data, align 8
  %or25 = or i64 %17, 192
  store i64 %or25, ptr %data, align 8
  br label %sw.bb27

sw.bb27:                                          ; preds = %if.then23, %sw.bb20.sw.bb27_crit_edge, %if.end.sw.bb27_crit_edge, %if.end.sw.bb27_crit_edge54, %if.end.sw.bb27_crit_edge55, %if.end.sw.bb27_crit_edge56
  %and28 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %sw.bb27.return_crit_edge, label %sw.bb27.return.sink.split_crit_edge

sw.bb27.return.sink.split_crit_edge:              ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #17
  br label %return.sink.split

sw.bb27.return_crit_edge:                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

return.sink.split:                                ; preds = %sw.bb27.return.sink.split_crit_edge, %sw.bb13.return.sink.split_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %data, align 8
  %or32 = or i64 %19, 48
  store i64 %or32, ptr %data, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb27.return_crit_edge, %sw.bb13.return_crit_edge, %if.end.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %sw.bb13.return_crit_edge ], [ 0, %sw.bb27.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ -95, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000e_get_ts_info(ptr noundef %netdev, ptr noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %netdev, ptr noundef %info) #15
  %flags = getelementptr i8, ptr %netdev, i32 13776
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 16
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %so_timestamping, align 4
  %or = or i32 %3, 69
  store i32 %or, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32179, ptr %rx_filters, align 4
  %ptp_clock = getelementptr i8, ptr %netdev, i32 14200
  %6 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptp_clock, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @ptp_clock_index(ptr noundef nonnull %7) #15
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call5, ptr %phc_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000e_get_eee(ptr noundef %netdev, ptr nocapture noundef writeonly %edata) #3 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3684
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #15
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !57
  %flags2 = getelementptr i8, ptr %netdev, i32 13780
  %1 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags2, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy = getelementptr i8, ptr %netdev, i32 4396
  %type = getelementptr i8, ptr %netdev, i32 4484
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 11, label %if.end.sw.epilog_crit_edge
    i32 12, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %cap_addr.0 = phi i16 [ -32768, %sw.bb2 ], [ 1040, %if.end.sw.epilog_crit_edge ]
  %lpa_addr.0 = phi i16 [ -32766, %sw.bb2 ], [ 1039, %if.end.sw.epilog_crit_edge ]
  %pcs_stat_addr.0 = phi i16 [ -27647, %sw.bb2 ], [ 6190, %if.end.sw.epilog_crit_edge ]
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #15
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %call5 = tail call i32 %9(ptr noundef %hw1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call.i80 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #15
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  %call12 = call i32 @e1000_read_emi_reg_locked(ptr noundef %hw1, i16 noundef zeroext %cap_addr.0, ptr noundef nonnull %phy_data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.release.thread_crit_edge

if.end11.release.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %release.thread

if.end15:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %phy_data, align 2
  %conv.i = zext i16 %13 to i32
  %and.i = shl nuw nsw i32 %conv.i, 2
  %14 = and i32 %and.i, 8
  %and2.i = shl nuw nsw i32 %conv.i, 3
  %15 = and i32 %and2.i, 32
  %16 = or i32 %15, %14
  %and8.i = shl nuw nsw i32 %conv.i, 9
  %17 = and i32 %and8.i, 4096
  %18 = or i32 %16, %17
  %and14.i = shl nuw nsw i32 %conv.i, 13
  %19 = and i32 %and14.i, 131072
  %20 = or i32 %18, %19
  %21 = and i32 %and14.i, 262144
  %22 = or i32 %20, %21
  %23 = and i32 %and14.i, 524288
  %24 = or i32 %22, %23
  %supported = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 1
  %25 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %supported, align 4
  %eee_advert = getelementptr i8, ptr %netdev, i32 14340
  %26 = ptrtoint ptr %eee_advert to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %eee_advert, align 4
  %conv.i81 = zext i16 %27 to i32
  %and.i82 = shl nuw nsw i32 %conv.i81, 2
  %28 = and i32 %and.i82, 8
  %and2.i83 = shl nuw nsw i32 %conv.i81, 3
  %29 = and i32 %and2.i83, 32
  %30 = or i32 %29, %28
  %and8.i84 = shl nuw nsw i32 %conv.i81, 9
  %31 = and i32 %and8.i84, 4096
  %32 = or i32 %30, %31
  %and14.i85 = shl nuw nsw i32 %conv.i81, 13
  %33 = and i32 %and14.i85, 131072
  %34 = or i32 %32, %33
  %35 = and i32 %and14.i85, 262144
  %36 = or i32 %34, %35
  %37 = and i32 %and14.i85, 524288
  %38 = or i32 %36, %37
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %39 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %advertised, align 4
  %call18 = call i32 @e1000_read_emi_reg_locked(ptr noundef %hw1, i16 noundef zeroext %lpa_addr.0, ptr noundef nonnull %phy_data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.release.thread_crit_edge

if.end15.release.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %release.thread

if.end21:                                         ; preds = %if.end15
  %40 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %phy_data, align 2
  %call22 = call fastcc i32 @mmd_eee_adv_to_ethtool_adv_t(i16 noundef zeroext %41)
  %lp_advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 3
  %42 = ptrtoint ptr %lp_advertised to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call22, ptr %lp_advertised, align 4
  %call23 = call i32 @e1000_read_emi_reg_locked(ptr noundef %hw1, i16 noundef zeroext %pcs_stat_addr.0, ptr noundef nonnull %phy_data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.release.thread_crit_edge

if.end21.release.thread_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %release.thread

if.end26:                                         ; preds = %if.end21
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %44)
  %cmp = icmp eq i32 %44, 11
  br i1 %cmp, label %if.then29, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %phy_data, align 2
  %shl = shl i16 %46, 8
  store i16 %shl, ptr %phy_data, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %47 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %phy_data, align 2
  %49 = and i16 %48, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool34.not = icmp eq i16 %49, 0
  br i1 %tobool34.not, label %if.end31._crit_edge, label %if.then35

if.end31._crit_edge:                              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %51

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %eee_active = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %50 = ptrtoint ptr %eee_active to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %eee_active, align 4
  br label %51

51:                                               ; preds = %if.then35, %if.end31._crit_edge
  %eee_disable = getelementptr i8, ptr %netdev, i32 12831
  %52 = ptrtoint ptr %eee_disable to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %eee_disable, align 1, !range !60
  %54 = xor i8 %53, 1
  %55 = zext i8 %54 to i32
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %56 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %eee_enabled, align 4
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %57 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %tx_lpi_enabled, align 4
  %hw_addr.i = getelementptr i8, ptr %netdev, i32 3688
  %58 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %59, i32 252
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #15, !srcloc !58
  %61 = and i32 %60, 255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %62 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tx_lpi_timer, align 4
  br label %release.thread

release.thread:                                   ; preds = %51, %if.end21.release.thread_crit_edge, %if.end15.release.thread_crit_edge, %if.end11.release.thread_crit_edge
  %63 = phi i32 [ 0, %51 ], [ -61, %if.end11.release.thread_crit_edge ], [ -61, %if.end15.release.thread_crit_edge ], [ -61, %if.end21.release.thread_crit_edge ]
  %release4189 = getelementptr i8, ptr %netdev, i32 4448
  %64 = ptrtoint ptr %release4189 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %release4189, align 4
  call void %65(ptr noundef %hw1) #15
  %66 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent, align 8
  %call.i87 = call i32 @__pm_runtime_idle(ptr noundef %67, i32 noundef 4) #15
  br label %cleanup

cleanup:                                          ; preds = %release.thread, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then7 ], [ %63, %release.thread ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000e_set_eee(ptr noundef %netdev, ptr nocapture noundef readonly %edata) #3 align 64 {
entry:
  %eee_curr = alloca %struct.ethtool_eee, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %eee_curr) #15
  %0 = call ptr @memset(ptr %eee_curr, i32 255, i32 40)
  %call2 = call i32 @e1000e_get_eee(ptr noundef %netdev, ptr noundef nonnull %eee_curr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee_curr, i32 0, i32 6
  %1 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_lpi_enabled, align 4
  %tx_lpi_enabled3 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %3 = ptrtoint ptr %tx_lpi_enabled3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_lpi_enabled3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp eq i32 %2, %4
  br i1 %cmp.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %netdev5 = getelementptr i8, ptr %netdev, i32 3676
  %5 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev5, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.14) #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %eee_curr, i32 0, i32 7
  %7 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_lpi_timer, align 4
  %tx_lpi_timer7 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %9 = ptrtoint ptr %tx_lpi_timer7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_lpi_timer7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp8.not = icmp eq i32 %8, %10
  br i1 %cmp8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %netdev10 = getelementptr i8, ptr %netdev, i32 3676
  %11 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.15) #18
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %13 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %advertised, align 4
  %and = and i32 %14, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %netdev14 = getelementptr i8, ptr %netdev, i32 3676
  %15 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev14, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.16) #18
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %17 = trunc i32 %14 to i16
  %18 = lshr i16 %17, 2
  %19 = and i16 %18, 2
  %20 = lshr i16 %17, 3
  %21 = and i16 %20, 4
  %22 = or i16 %21, %19
  %23 = lshr i16 %17, 9
  %24 = and i16 %23, 8
  %25 = or i16 %22, %24
  %and16.i = lshr i32 %14, 13
  %26 = trunc i32 %and16.i to i16
  %27 = and i16 %26, 16
  %28 = or i16 %25, %27
  %29 = and i16 %26, 32
  %30 = or i16 %28, %29
  %31 = and i16 %26, 64
  %32 = or i16 %30, %31
  %eee_advert = getelementptr i8, ptr %netdev, i32 14340
  %33 = ptrtoint ptr %eee_advert to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %eee_advert, align 4
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %34 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool18.not = icmp eq i32 %35, 0
  %eee_disable = getelementptr i8, ptr %netdev, i32 12831
  %frombool = zext i1 %tobool18.not to i8
  %36 = ptrtoint ptr %eee_disable to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool, ptr %eee_disable, align 1
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %38, i32 noundef 4) #15
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @e1000e_reinit_locked(ptr noundef %add.ptr.i) #15
  br label %if.end22

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent, align 8
  %call.i44 = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then13, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then9 ], [ -22, %if.then13 ], [ 0, %if.end22 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %eee_curr) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr i8, ptr %netdev, i32 4528
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %type = getelementptr i8, ptr %netdev, i32 4484
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp3 = icmp eq i32 %3, 7
  %spec.select = select i1 %cmp3, i32 207, i32 239
  %autoneg = getelementptr i8, ptr %netdev, i32 4362
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then.if.end11_crit_edge, label %if.then7

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 4532
  %6 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %autoneg_advertised, align 4
  %8 = or i16 %7, 192
  %or10 = zext i16 %8 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then.if.end11_crit_edge
  %advertising.0 = phi i32 [ %or10, %if.then7 ], [ 128, %if.then.if.end11_crit_edge ]
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %9 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %port, align 1
  %addr = getelementptr i8, ptr %netdev, i32 4512
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %conv13 = trunc i32 %11 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %12 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %phy_address, align 2
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %port16 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %13 = ptrtoint ptr %port16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %port16, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end11
  %supported.1 = phi i32 [ %spec.select, %if.end11 ], [ 1120, %if.else ]
  %advertising.1 = phi i32 [ %advertising.0, %if.end11 ], [ 1120, %if.else ]
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %duplex, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else29, label %if.then20

if.then20:                                        ; preds = %if.end17
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then22, label %if.then20.if.end57_crit_edge

if.then20.if.end57_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %link_speed = getelementptr i8, ptr %netdev, i32 3062
  %20 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %link_speed, align 2
  %conv23 = zext i16 %21 to i32
  %link_duplex = getelementptr i8, ptr %netdev, i32 3064
  %22 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %link_duplex, align 8
  %conv24 = trunc i16 %23 to i8
  %sub = add i8 %conv24, -1
  br label %if.end57.sink.split

if.else29:                                        ; preds = %if.end17
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 18
  %26 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp eq i32 %27, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.else29.if.then31_crit_edge

if.else29.if.then31_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then31

pm_runtime_suspended.exit:                        ; preds = %if.else29
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 15
  %28 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i152 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i152, label %pm_runtime_suspended.exit.if.end57_crit_edge, label %pm_runtime_suspended.exit.if.then31_crit_edge

pm_runtime_suspended.exit.if.then31_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then31

pm_runtime_suspended.exit.if.end57_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then31:                                        ; preds = %pm_runtime_suspended.exit.if.then31_crit_edge, %if.else29.if.then31_crit_edge
  %hw_addr.i = getelementptr i8, ptr %netdev, i32 3688
  %29 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #15, !srcloc !58
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %and33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then31.if.end57_crit_edge, label %if.then35

if.then31.if.end57_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  %and36 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %and40 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %. = select i1 %tobool41.not, i32 10, i32 100
  %speed.0 = select i1 %tobool37.not, i32 %., i32 1000
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.then35, %if.then22
  %.sink156 = phi i8 [ %sub, %if.then22 ], [ %34, %if.then35 ]
  %speed.2.ph = phi i32 [ %conv23, %if.then22 ], [ %speed.0, %if.then35 ]
  %35 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink156, ptr %duplex, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.then31.if.end57_crit_edge, %pm_runtime_suspended.exit.if.end57_crit_edge, %if.then20.if.end57_crit_edge
  %speed.2 = phi i32 [ -1, %if.then20.if.end57_crit_edge ], [ -1, %pm_runtime_suspended.exit.if.end57_crit_edge ], [ -1, %if.then31.if.end57_crit_edge ], [ %speed.2.ph, %if.end57.sink.split ]
  %speed59 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %36 = ptrtoint ptr %speed59 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %speed.2, ptr %speed59, align 4
  %37 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp62 = icmp eq i32 %38, 2
  br i1 %cmp62, label %if.end57.lor.end_crit_edge, label %lor.rhs

if.end57.lor.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.rhs:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  %autoneg65 = getelementptr i8, ptr %netdev, i32 4362
  %39 = ptrtoint ptr %autoneg65 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %autoneg65, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool66 = icmp ne i8 %40, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end57.lor.end_crit_edge
  %41 = phi i1 [ true, %if.end57.lor.end_crit_edge ], [ %tobool66, %lor.rhs ]
  %conv68 = zext i1 %41 to i8
  %autoneg70 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %42 = ptrtoint ptr %autoneg70 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv68, ptr %autoneg70, align 1
  %43 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp73 = icmp eq i32 %44, 1
  br i1 %cmp73, label %land.lhs.true, label %lor.end.if.end87_crit_edge

lor.end.if.end87_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

land.lhs.true:                                    ; preds = %lor.end
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %state.i, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i155 = icmp eq i32 %47, 0
  br i1 %tobool.not.i155, label %if.then77, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %is_mdix = getelementptr i8, ptr %netdev, i32 4544
  %48 = ptrtoint ptr %is_mdix to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_mdix, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool79.not = icmp eq i8 %49, 0
  %conv82 = select i1 %tobool79.not, i8 1, i8 2
  br label %if.end87

if.end87:                                         ; preds = %if.then77, %land.lhs.true.if.end87_crit_edge, %lor.end.if.end87_crit_edge
  %.sink157 = phi i8 [ %conv82, %if.then77 ], [ 0, %land.lhs.true.if.end87_crit_edge ], [ 0, %lor.end.if.end87_crit_edge ]
  %eth_tp_mdix86 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 7
  %50 = ptrtoint ptr %eth_tp_mdix86 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink157, ptr %eth_tp_mdix86, align 1
  %mdix = getelementptr i8, ptr %netdev, i32 4542
  %51 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mdix, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp90 = icmp eq i8 %52, 0
  %.sink = select i1 %cmp90, i8 3, i8 %52
  %53 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.sink, ptr %53, align 2
  %55 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp102.not = icmp eq i32 %56, 1
  %spec.store.select = select i1 %cmp102.not, i8 %.sink, i8 0
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %spec.store.select, ptr %53, align 2
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %supported.1) #15
  %advertising110 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising110, i32 noundef %advertising.1) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #15
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !57
  %advertising2 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call3 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising2) #15
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #15
  %check_reset_block = getelementptr i8, ptr %netdev, i32 4408
  %3 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %check_reset_block, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hw1 = getelementptr i8, ptr %netdev, i32 3684
  %call8 = call i32 %4(ptr noundef %hw1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %netdev10 = getelementptr i8, ptr %netdev, i32 3676
  %5 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev10, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #18
  br label %out

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %eth_tp_mdix_ctrl = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %7 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.end.if.end28_crit_edge, label %if.then12

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then12:                                        ; preds = %if.end
  %media_type = getelementptr i8, ptr %netdev, i32 4528
  %9 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %if.end15, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp18.not = icmp eq i8 %8, 3
  br i1 %cmp18.not, label %if.end15.if.end28_crit_edge, label %land.lhs.true20

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

land.lhs.true20:                                  ; preds = %if.end15
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp23.not = icmp eq i8 %12, 1
  br i1 %cmp23.not, label %land.lhs.true20.if.end28_crit_edge, label %if.then25

land.lhs.true20.if.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  %netdev26 = getelementptr i8, ptr %netdev, i32 3676
  %13 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev26, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.18) #18
  br label %out

if.end28:                                         ; preds = %land.lhs.true20.if.end28_crit_edge, %if.end15.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 3068
  %call29134 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29134)
  %tobool30.not135 = icmp eq i32 %call29134, 0
  br i1 %tobool30.not135, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end28.while.body_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #15
  %call29 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #15
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end28.while.end_crit_edge
  %autoneg32 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %15 = ptrtoint ptr %autoneg32 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %autoneg32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp34 = icmp eq i8 %16, 1
  br i1 %cmp34, label %if.then36, label %if.else55

if.then36:                                        ; preds = %while.end
  %autoneg37 = getelementptr i8, ptr %netdev, i32 4362
  %17 = ptrtoint ptr %autoneg37 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %autoneg37, align 2
  %media_type39 = getelementptr i8, ptr %netdev, i32 4528
  %18 = ptrtoint ptr %media_type39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %media_type39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp40 = icmp eq i32 %19, 2
  br i1 %cmp40, label %if.then36.if.end48_crit_edge, label %if.else

if.then36.if.end48_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %advertising, align 4
  %22 = trunc i32 %21 to i16
  %conv45 = or i16 %22, 192
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then36.if.end48_crit_edge
  %conv45.sink = phi i16 [ %conv45, %if.else ], [ 1120, %if.then36.if.end48_crit_edge ]
  %23 = getelementptr i8, ptr %netdev, i32 4532
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv45.sink, ptr %23, align 4
  %conv51 = zext i16 %conv45.sink to i32
  %25 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv51, ptr %advertising, align 4
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 13772
  %26 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fc_autoneg, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool52.not = icmp eq i8 %27, 0
  br i1 %tobool52.not, label %if.end48.if.end63_crit_edge, label %if.then53

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %requested_mode = getelementptr i8, ptr %netdev, i32 4392
  %28 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 255, ptr %requested_mode, align 4
  br label %if.end63

if.else55:                                        ; preds = %while.end
  %speed57 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %29 = ptrtoint ptr %speed57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %speed57, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %31 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %duplex, align 4
  %autoneg.i = getelementptr i8, ptr %netdev, i32 4362
  %33 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %autoneg.i, align 2
  %and.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.else55.e1000_set_spd_dplx.exit_crit_edge

if.else55.e1000_set_spd_dplx.exit_crit_edge:      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_set_spd_dplx.exit

lor.lhs.false.i:                                  ; preds = %if.else55
  %conv.i = zext i8 %32 to i32
  %and2.i = and i32 %conv.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false.i.e1000_set_spd_dplx.exit_crit_edge

lor.lhs.false.i.e1000_set_spd_dplx.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_set_spd_dplx.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %media_type.i = getelementptr i8, ptr %netdev, i32 4528
  %34 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i = icmp ne i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %30)
  %cmp6.not.i = icmp eq i32 %30, 1000
  %or.cond.i = or i1 %cmp6.not.i, %cmp.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp10.not.i = icmp eq i8 %32, 1
  %or.cond51.i = or i1 %cmp10.not.i, %or.cond.i
  br i1 %or.cond51.i, label %if.end13.i, label %if.end.i.e1000_set_spd_dplx.exit_crit_edge

if.end.i.e1000_set_spd_dplx.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_set_spd_dplx.exit

if.end13.i:                                       ; preds = %if.end.i
  %add.i = add i32 %30, %conv.i
  %36 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %add.i, label %if.end13.i.e1000_set_spd_dplx.exit_crit_edge [
    i32 10, label %sw.bb.i
    i32 11, label %sw.bb15.i
    i32 100, label %sw.bb17.i
    i32 101, label %sw.bb19.i
    i32 1001, label %sw.bb21.i
  ]

if.end13.i.e1000_set_spd_dplx.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %e1000_set_spd_dplx.exit

sw.bb.i:                                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %forced_speed_duplex.i = getelementptr i8, ptr %netdev, i32 4358
  %37 = ptrtoint ptr %forced_speed_duplex.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %forced_speed_duplex.i, align 2
  br label %e1000_set_spd_dplx.exit.thread

sw.bb15.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %forced_speed_duplex16.i = getelementptr i8, ptr %netdev, i32 4358
  %38 = ptrtoint ptr %forced_speed_duplex16.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %forced_speed_duplex16.i, align 2
  br label %e1000_set_spd_dplx.exit.thread

sw.bb17.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %forced_speed_duplex18.i = getelementptr i8, ptr %netdev, i32 4358
  %39 = ptrtoint ptr %forced_speed_duplex18.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %forced_speed_duplex18.i, align 2
  br label %e1000_set_spd_dplx.exit.thread

sw.bb19.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %forced_speed_duplex20.i = getelementptr i8, ptr %netdev, i32 4358
  %40 = ptrtoint ptr %forced_speed_duplex20.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 8, ptr %forced_speed_duplex20.i, align 2
  br label %e1000_set_spd_dplx.exit.thread

sw.bb21.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp25.i = icmp eq i32 %35, 1
  br i1 %cmp25.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %autoneg.i, align 2
  %autoneg_advertised.i = getelementptr i8, ptr %netdev, i32 4532
  %42 = ptrtoint ptr %autoneg_advertised.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 32, ptr %autoneg_advertised.i, align 4
  br label %e1000_set_spd_dplx.exit.thread

if.else.i:                                        ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #17
  %forced_speed_duplex31.i = getelementptr i8, ptr %netdev, i32 4358
  %43 = ptrtoint ptr %forced_speed_duplex31.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 32, ptr %forced_speed_duplex31.i, align 2
  br label %e1000_set_spd_dplx.exit.thread

e1000_set_spd_dplx.exit.thread:                   ; preds = %if.else.i, %if.then27.i, %sw.bb19.i, %sw.bb17.i, %sw.bb15.i, %sw.bb.i
  %mdix.i = getelementptr i8, ptr %netdev, i32 4542
  %44 = ptrtoint ptr %mdix.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %mdix.i, align 2
  br label %if.end63

e1000_set_spd_dplx.exit:                          ; preds = %if.end13.i.e1000_set_spd_dplx.exit_crit_edge, %if.end.i.e1000_set_spd_dplx.exit_crit_edge, %lor.lhs.false.i.e1000_set_spd_dplx.exit_crit_edge, %if.else55.e1000_set_spd_dplx.exit_crit_edge
  %netdev.i = getelementptr i8, ptr %netdev, i32 3676
  %45 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.19) #18
  br label %out

if.end63:                                         ; preds = %e1000_set_spd_dplx.exit.thread, %if.then53, %if.end48.if.end63_crit_edge
  %47 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %48, label %if.else75 [
    i8 0, label %if.end63.if.end81_crit_edge
    i8 3, label %if.end63.if.end81.sink.split_crit_edge
  ]

if.end63.if.end81.sink.split_crit_edge:           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81.sink.split

if.end63.if.end81_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.else75:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81.sink.split

if.end81.sink.split:                              ; preds = %if.else75, %if.end63.if.end81.sink.split_crit_edge
  %.sink = phi i8 [ %48, %if.else75 ], [ 0, %if.end63.if.end81.sink.split_crit_edge ]
  %mdix = getelementptr i8, ptr %netdev, i32 4542
  %50 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink, ptr %mdix, align 2
  br label %if.end81

if.end81:                                         ; preds = %if.end81.sink.split, %if.end63.if.end81_crit_edge
  %netdev82 = getelementptr i8, ptr %netdev, i32 3676
  %51 = ptrtoint ptr %netdev82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %netdev82, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else85, label %if.then84

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  call void @e1000e_down(ptr noundef %add.ptr.i, i1 noundef zeroext true) #15
  call void @e1000e_up(ptr noundef %add.ptr.i) #15
  br label %out

if.else85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  call void @e1000e_reset(ptr noundef %add.ptr.i) #15
  br label %out

out:                                              ; preds = %if.else85, %if.then84, %e1000_set_spd_dplx.exit, %if.then25, %if.then12.out_crit_edge, %if.then
  %ret_val.2 = phi i32 [ -22, %if.then ], [ -22, %if.then25 ], [ 0, %if.then84 ], [ 0, %if.else85 ], [ -22, %e1000_set_spd_dplx.exit ], [ -95, %if.then12.out_crit_edge ]
  %55 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent, align 8
  %call.i130 = call i32 @__pm_runtime_idle(ptr noundef %56, i32 noundef 4) #15
  %state90 = getelementptr i8, ptr %netdev, i32 3068
  call void @_clear_bit(i32 noundef 1, ptr noundef %state90) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #15
  ret i32 %ret_val.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reinit_locked(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_write_itr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_tx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_rx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_free_tx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_free_rx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_force_mac_fc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_set_fc_watermarks(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_get_hw_control(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_power_up_phy(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_open(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_release_hw_control(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_pattern_test(ptr noundef %adapter, ptr nocapture noundef writeonly %data, i32 noundef %reg, i32 noundef %offset, i32 noundef %mask, i32 noundef %write) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66
  %shl = shl i32 %offset, 2
  %add = add i32 %shl, %reg
  %hw_addr = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %and = and i32 %write, 1515870810
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef %and) #15
  %0 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %shl
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #15, !srcloc !58
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !63
  %and7 = and i32 %and, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and7)
  %cmp8.not = icmp eq i32 %3, %and7
  br i1 %cmp8.not, label %for.cond, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond:                                         ; preds = %entry
  %and.1 = and i32 %write, -1515870811
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef %and.1) #15
  %4 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr, align 4
  %add.ptr.1 = getelementptr i8, ptr %5, i32 %reg
  %add.ptr3.1 = getelementptr i8, ptr %add.ptr.1, i32 %shl
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.1) #15, !srcloc !58
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !63
  %and7.1 = and i32 %and.1, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and7.1)
  %cmp8.not.1 = icmp eq i32 %7, %and7.1
  br i1 %cmp8.not.1, label %for.cond.1, label %for.cond.if.then_crit_edge

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef 0) #15
  %8 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr, align 4
  %add.ptr.2 = getelementptr i8, ptr %9, i32 %reg
  %add.ptr3.2 = getelementptr i8, ptr %add.ptr.2, i32 %shl
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.2) #15, !srcloc !58
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8.not.2 = icmp eq i32 %10, 0
  br i1 %cmp8.not.2, label %for.cond.2, label %for.cond.1.if.then_crit_edge

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @__ew32(ptr noundef %hw, i32 noundef %add, i32 noundef %write) #15
  %12 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr, align 4
  %add.ptr.3 = getelementptr i8, ptr %13, i32 %reg
  %add.ptr3.3 = getelementptr i8, ptr %add.ptr.3, i32 %shl
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.3) #15, !srcloc !58
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !63
  %and7.3 = and i32 %write, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and7.3)
  %cmp8.not.3 = icmp eq i32 %15, %and7.3
  br i1 %cmp8.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.2.if.then_crit_edge

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %.lcssa = phi i32 [ %3, %entry.if.then_crit_edge ], [ %7, %for.cond.if.then_crit_edge ], [ %11, %for.cond.1.if.then_crit_edge ], [ %15, %for.cond.2.if.then_crit_edge ]
  %and7.lcssa = phi i32 [ %and7, %entry.if.then_crit_edge ], [ %and7.1, %for.cond.if.then_crit_edge ], [ 0, %for.cond.1.if.then_crit_edge ], [ %and7.3, %for.cond.2.if.then_crit_edge ]
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 64
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %add, i32 noundef %.lcssa, i32 noundef %and7.lcssa) #18
  %18 = zext i32 %reg to i64
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.2.cleanup_crit_edge
  %cmp31 = phi i1 [ true, %if.then ], [ false, %for.cond.2.cleanup_crit_edge ]
  ret i1 %cmp31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reset_interrupt_capability(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_set_interrupt_capability(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_test_intr(i32 noundef %irq, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr i8, ptr %data, i32 3688
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 192
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #15, !srcloc !58
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !59
  %test_icr = getelementptr i8, ptr %data, i32 13732
  %4 = ptrtoint ptr %test_icr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %test_icr, align 4
  %or = or i32 %5, %3
  store i32 %or, ptr %test_icr, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e1000_free_desc_rings(ptr nocapture noundef %adapter) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 32
  %desc = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 72, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %buffer_info2 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 72, i32 9
  %4 = ptrtoint ptr %buffer_info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %for.cond.preheader

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.cond.preheader:                               ; preds = %land.lhs.true
  %count = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 72, i32 4
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp93.not = icmp eq i32 %7, 0
  br i1 %cmp93.not, label %for.cond.preheader.if.end8_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %buffer_info2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer_info2, align 4
  %arrayidx = getelementptr %struct.e1000_buffer, ptr %9, i32 %i.094
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %for.body.if.end_crit_edge, label %if.then6

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %length = getelementptr %struct.e1000_buffer, ptr %9, i32 %i.094, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length, align 4
  %conv = zext i16 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body.if.end_crit_edge
  %skb = getelementptr %struct.e1000_buffer, ptr %9, i32 %i.094, i32 1
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %15) #15
  %inc = add nuw i32 %i.094, 1
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %desc9 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 73, i32 1
  %18 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc9, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end8.if.end32_crit_edge, label %land.lhs.true11

if.end8.if.end32_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true11:                                  ; preds = %if.end8
  %buffer_info12 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 73, i32 9
  %20 = ptrtoint ptr %buffer_info12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer_info12, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %land.lhs.true11.if.end32_crit_edge, label %for.cond15.preheader

land.lhs.true11.if.end32_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

for.cond15.preheader:                             ; preds = %land.lhs.true11
  %count16 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 73, i32 4
  %22 = ptrtoint ptr %count16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1796.not = icmp eq i32 %23, 0
  br i1 %cmp1796.not, label %for.cond15.preheader.if.end32_crit_edge, label %for.body19.lr.ph

for.cond15.preheader.if.end32_crit_edge:          ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

for.body19.lr.ph:                                 ; preds = %for.cond15.preheader
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %for.body19

for.body19:                                       ; preds = %if.end27.for.body19_crit_edge, %for.body19.lr.ph
  %i.197 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc30, %if.end27.for.body19_crit_edge ]
  %24 = ptrtoint ptr %buffer_info12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer_info12, align 4
  %arrayidx21 = getelementptr %struct.e1000_buffer, ptr %25, i32 %i.197
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool23.not = icmp eq i32 %27, 0
  br i1 %tobool23.not, label %for.body19.if.end27_crit_edge, label %if.then24

for.body19.if.end27_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then24:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dma_unmap_page_attrs(ptr noundef %dev25, i32 noundef %27, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #15
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %for.body19.if.end27_crit_edge
  %skb28 = getelementptr %struct.e1000_buffer, ptr %25, i32 %i.197, i32 1
  %28 = ptrtoint ptr %skb28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb28, align 4
  tail call void @consume_skb(ptr noundef %29) #15
  %inc30 = add nuw i32 %i.197, 1
  %30 = ptrtoint ptr %count16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count16, align 4
  %cmp17 = icmp ult i32 %inc30, %31
  br i1 %cmp17, label %if.end27.for.body19_crit_edge, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.end27.for.body19_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body19

if.end32:                                         ; preds = %if.end27.if.end32_crit_edge, %for.cond15.preheader.if.end32_crit_edge, %land.lhs.true11.if.end32_crit_edge, %if.end8.if.end32_crit_edge
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc, align 4
  %tobool34.not = icmp eq ptr %33, null
  br i1 %tobool34.not, label %if.end32.if.end40_crit_edge, label %if.then35

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 72, i32 3
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %dma38 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 72, i32 2
  %36 = ptrtoint ptr %dma38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma38, align 4
  tail call void @dma_free_attrs(ptr noundef %dev36, i32 noundef %35, ptr noundef nonnull %33, i32 noundef %37, i32 noundef 0) #15
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %desc, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end32.if.end40_crit_edge
  %39 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc9, align 4
  %tobool42.not = icmp eq ptr %40, null
  br i1 %tobool42.not, label %if.end40.if.end49_crit_edge, label %if.then43

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size45 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 73, i32 3
  %41 = ptrtoint ptr %size45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size45, align 4
  %dma47 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 73, i32 2
  %43 = ptrtoint ptr %dma47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma47, align 4
  tail call void @dma_free_attrs(ptr noundef %dev44, i32 noundef %42, ptr noundef nonnull %40, i32 noundef %44, i32 noundef 0) #15
  %45 = ptrtoint ptr %desc9 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %desc9, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.end40.if.end49_crit_edge
  %buffer_info50 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 72, i32 9
  %46 = ptrtoint ptr %buffer_info50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer_info50, align 4
  tail call void @kfree(ptr noundef %47) #15
  %48 = ptrtoint ptr %buffer_info50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %buffer_info50, align 4
  %buffer_info52 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 73, i32 9
  %49 = ptrtoint ptr %buffer_info52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer_info52, align 4
  tail call void @kfree(ptr noundef %50) #15
  %51 = ptrtoint ptr %buffer_info52 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %buffer_info52, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_configure_k1_ich8lan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_emi_reg_locked(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mmd_eee_adv_to_ethtool_adv_t(i16 noundef zeroext %eee_adv) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i16 %eee_adv to i32
  %and = shl nuw nsw i32 %conv, 2
  %0 = and i32 %and, 8
  %and2 = shl nuw nsw i32 %conv, 3
  %1 = and i32 %and2, 32
  %2 = or i32 %1, %0
  %and8 = shl nuw nsw i32 %conv, 9
  %3 = and i32 %and8, 4096
  %4 = or i32 %2, %3
  %and14 = shl nuw nsw i32 %conv, 13
  %5 = and i32 %and14, 131072
  %6 = or i32 %4, %5
  %7 = and i32 %and14, 262144
  %8 = or i32 %6, %7
  %9 = and i32 %and14, 524288
  %10 = or i32 %8, %9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @e1000_ethtool_ops, !1, !"e1000_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 2362, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 648, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 1919, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 1832, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 1873, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 861, i32 3}
!12 = distinct !{null, !13, !"test", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 781, i32 19}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 789, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 807, i32 3}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 1024, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 1727, i32 3}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 1391, i32 4}
!30 = !{ptr @e1000_gstrings_test, !31, !"e1000_gstrings_test", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 102, i32 19}
!32 = !{ptr @e1000_gstrings_stats, !33, !"e1000_gstrings_stats", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 44, i32 33}
!34 = !{ptr @e1000e_priv_flags_strings, !35, !"e1000e_priv_flags_strings", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 26, i32 19}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 2266, i32 3}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 2271, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 2276, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 276, i32 3}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 293, i32 4}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/e1000e/ethtool.c", i32 254, i32 2}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i64 6591501}
!59 = !{i64 2156993844}
!60 = !{i8 0, i8 2}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2157044125}
