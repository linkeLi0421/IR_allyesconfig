; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.123, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.130, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.132, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.123 = type { ptr }
%union.anon.130 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.132 = type { %struct.ixgbe_rx_queue_stats }
%struct.ixgbe_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ixgbe_hw_stats = type { i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64], [8 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%union.ixgbe_atr_input = type { %struct.anon.133 }
%struct.anon.133 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
%struct.ixgbe_fcoe_ddp = type { i32, i32, i32, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.vf_macvlans = type { %struct.list_head, i32, i8, i8, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.122, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.122 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }

@ixgbe_read_i2c_combined_generic_int.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ixgbe\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ixgbe_read_i2c_combined_generic_int\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"I2C byte read combined error - Retry.\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgbe_read_i2c_combined_generic_int.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I2C byte read combined error.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ixgbe_write_i2c_combined_generic_int\00", [59 x i8] zeroinitializer }, align 32
@ixgbe_write_i2c_combined_generic_int.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I2C byte write combined error.\0A\00", [32 x i8] zeroinitializer }, align 32
@ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ixgbe_check_reset_blocked\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MNG_VETO bit detected.\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ixgbe_reset_phy_generic.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_reset_phy_generic\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PHY reset polling failed to complete.\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgbe_read_phy_reg_mdi.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgbe_read_phy_reg_mdi\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PHY address command did not complete.\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgbe_read_phy_reg_mdi.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PHY read command didn't complete\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgbe_write_phy_reg_mdi.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_write_phy_reg_mdi\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PHY address cmd didn't complete\0A\00", [63 x i8] zeroinitializer }, align 32
@ixgbe_write_phy_reg_mdi.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PHY write cmd didn't complete\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-mdio-%s\00", [21 x i8] zeroinitializer }, align 32
@ixgbe_driver_name = external dso_local global [0 x i8], align 1
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ixgbe-mdio\00", [21 x i8] zeroinitializer }, align 32
@ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ixgbe_reset_phy_nl\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PHY reset did not complete.\0A\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 1, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DELAY: %d MS\0A\00", [18 x i8] zeroinitializer }, align 32
@ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.23, i8 1, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DATA:\0A\00", [25 x i8] zeroinitializer }, align 32
@ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.24, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wrote %4.4x to %4.4x\0A\00", [42 x i8] zeroinitializer }, align 32
@ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.25, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CONTROL:\0A\00", [22 x i8] zeroinitializer }, align 32
@ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.26, i8 1, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EOL\0A\00", [27 x i8] zeroinitializer }, align 32
@ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.27, i8 1, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SOL\0A\00", [27 x i8] zeroinitializer }, align 32
@ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.28, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad control value\0A\00", [45 x i8] zeroinitializer }, align 32
@ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.29, i8 1, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bad control type\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"eeprom read at offset %d failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [291 x i8], [93 x i8] } { [291 x i8] c"WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics.  Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter.  Intel Corporation is not responsible for any harm caused by using untested modules.\0A\00", [93 x i8] zeroinitializer }, align 32
@ixgbe_identify_sfp_module_generic.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgbe_identify_sfp_module_generic\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SFP+ module not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eeprom read at %d failed\0A\00", [38 x i8] zeroinitializer }, align 32
@ixgbe_get_sfp_init_sequence_offsets.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.33, i8 1, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ixgbe_get_sfp_init_sequence_offsets\00", [60 x i8] zeroinitializer }, align 32
@ixgbe_get_sfp_init_sequence_offsets.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No matching SFP+ module found\0A\00", [33 x i8] zeroinitializer }, align 32
@ixgbe_get_i2c_ack.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 2, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ixgbe_get_i2c_ack\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"I2C ack was not received.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [289 x i8], [95 x i8] } { [289 x i8] c"WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics. Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter. Intel Corporation is not responsible for any harm caused by using untested modules.\0A\00", [95 x i8] zeroinitializer }, align 32
@ixgbe_identify_qsfp_module_generic.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 1, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ixgbe_identify_qsfp_module_generic\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"QSFP module not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@ixgbe_read_i2c_byte_generic_int.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 2, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixgbe_read_i2c_byte_generic_int\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I2C byte read error - Retrying.\0A\00", [63 x i8] zeroinitializer }, align 32
@ixgbe_read_i2c_byte_generic_int.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 2, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I2C byte read error.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ixgbe_write_i2c_byte_generic_int\00", [63 x i8] zeroinitializer }, align 32
@ixgbe_write_i2c_byte_generic_int.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 2, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I2C byte write error.\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_set_i2c_data.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 2, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ixgbe_set_i2c_data\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error - I2C data was not set to %X.\0A\00", [59 x i8] zeroinitializer }, align 32
@ixgbe_clock_out_i2c_bit.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 2, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_clock_out_i2c_bit\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"I2C data was not set to %X\0A\00", [36 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_sfp_init_sequence_offsets = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 5, i16 6, i16 5, i16 6, i16 5, i16 6, i16 5, i16 6], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 4432896, i64 10589200, i64 22282752, i64 22282785, i64 22282787, i64 22282816, i64 22282832, i64 54693968, i64 56778000]
@__sancov_gen_cov_switch_values.52 = internal global [11 x i64] [i64 9, i64 16, i64 5570, i64 5571, i64 5572, i64 5574, i64 5575, i64 5576, i64 5582, i64 5604, i64 5605]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 15]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 4095]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 65534, i64 65535]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 1534464, i64 1777920, i64 4224512, i64 9463040]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 148, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 150, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 213, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 215, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 324, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 459, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 502, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 529, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 606, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 634, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 945, i32 37 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 948, i32 14 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1301, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1326, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1330, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1343, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1351, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1353, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1356, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1358, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1363, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1371, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1643, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1646, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1884, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1908, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1921, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 2381, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1822, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1825, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 2077, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 2079, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 2178, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 2180, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 2549, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 2453, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [49 x i8] c"switch.table.ixgbe_get_sfp_init_sequence_offsets\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @switch.table.ixgbe_get_sfp_init_sequence_offsets], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 291, i32 384, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 289, i32 384, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_sfp_init_sequence_offsets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_i2c_combined_generic_int(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val, i1 noundef zeroext %lock) local_unnamed_addr #0 align 64 {
entry:
  %csum_byte = alloca i8, align 1
  %high_bits = alloca i8, align 1
  %low_bits = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %csum_byte) #6
  %2 = ptrtoint ptr %csum_byte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %csum_byte, align 1, !annotation !127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %high_bits) #6
  %3 = ptrtoint ptr %high_bits to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %high_bits, align 1, !annotation !127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %low_bits) #6
  %4 = ptrtoint ptr %low_bits to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %low_bits, align 1, !annotation !127
  %5 = lshr i16 %reg, 7
  %6 = trunc i16 %5 to i8
  %conv1 = or i8 %6, 1
  %conv4 = trunc i16 %reg to i8
  %conv.i = zext i8 %conv1 to i32
  %conv4.mask = and i16 %reg, 255
  %conv1.i = zext i16 %conv4.mask to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  %7 = lshr i32 %add.i, 8
  %add5.i = add nuw nsw i32 %7, %add.i
  %conv9.i = trunc i32 %add5.i to i8
  %neg = xor i8 %conv9.i, -1
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %8 = or i8 %addr, 1
  %release_swfw_sync65 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.then76, %do.body70, %entry
  %retry.0 = phi i32 [ 0, %entry ], [ %inc, %if.then76 ], [ %inc, %do.body70 ]
  br i1 %lock, label %land.lhs.true, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %do.body
  %9 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acquire_swfw_sync, align 4
  %call8 = tail call i32 %10(ptr noundef %hw, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %do.body.if.end_crit_edge
  tail call fastcc void @ixgbe_i2c_start(ptr noundef %hw)
  %call.i = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbe_out_i2c_byte_ack.exit, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

ixgbe_out_i2c_byte_ack.exit:                      ; preds = %if.end
  %call1.i = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp eq i32 %call1.i, 0
  br i1 %tobool11.not, label %if.end13, label %ixgbe_out_i2c_byte_ack.exit.fail_crit_edge

ixgbe_out_i2c_byte_ack.exit.fail_crit_edge:       ; preds = %ixgbe_out_i2c_byte_ack.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end13:                                         ; preds = %ixgbe_out_i2c_byte_ack.exit
  %call.i152 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %conv1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %ixgbe_out_i2c_byte_ack.exit157, label %if.end13.fail_crit_edge

if.end13.fail_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

ixgbe_out_i2c_byte_ack.exit157:                   ; preds = %if.end13
  %call1.i154 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool15.not = icmp eq i32 %call1.i154, 0
  br i1 %tobool15.not, label %if.end17, label %ixgbe_out_i2c_byte_ack.exit157.fail_crit_edge

ixgbe_out_i2c_byte_ack.exit157.fail_crit_edge:    ; preds = %ixgbe_out_i2c_byte_ack.exit157
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end17:                                         ; preds = %ixgbe_out_i2c_byte_ack.exit157
  %call.i158 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %conv4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i159 = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i159, label %ixgbe_out_i2c_byte_ack.exit163, label %if.end17.fail_crit_edge

if.end17.fail_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

ixgbe_out_i2c_byte_ack.exit163:                   ; preds = %if.end17
  %call1.i160 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool22.not = icmp eq i32 %call1.i160, 0
  br i1 %tobool22.not, label %if.end24, label %ixgbe_out_i2c_byte_ack.exit163.fail_crit_edge

ixgbe_out_i2c_byte_ack.exit163.fail_crit_edge:    ; preds = %ixgbe_out_i2c_byte_ack.exit163
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end24:                                         ; preds = %ixgbe_out_i2c_byte_ack.exit163
  %call.i164 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %neg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool.not.i165 = icmp eq i32 %call.i164, 0
  br i1 %tobool.not.i165, label %ixgbe_out_i2c_byte_ack.exit169, label %if.end24.fail_crit_edge

if.end24.fail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

ixgbe_out_i2c_byte_ack.exit169:                   ; preds = %if.end24
  %call1.i166 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i166)
  %tobool26.not = icmp eq i32 %call1.i166, 0
  br i1 %tobool26.not, label %if.end28, label %ixgbe_out_i2c_byte_ack.exit169.fail_crit_edge

ixgbe_out_i2c_byte_ack.exit169.fail_crit_edge:    ; preds = %ixgbe_out_i2c_byte_ack.exit169
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end28:                                         ; preds = %ixgbe_out_i2c_byte_ack.exit169
  tail call fastcc void @ixgbe_i2c_start(ptr noundef %hw)
  %call.i170 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool.not.i171 = icmp eq i32 %call.i170, 0
  br i1 %tobool.not.i171, label %ixgbe_out_i2c_byte_ack.exit175, label %if.end28.fail_crit_edge

if.end28.fail_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

ixgbe_out_i2c_byte_ack.exit175:                   ; preds = %if.end28
  %call1.i172 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i172)
  %tobool33.not = icmp eq i32 %call1.i172, 0
  br i1 %tobool33.not, label %if.end35, label %ixgbe_out_i2c_byte_ack.exit175.fail_crit_edge

ixgbe_out_i2c_byte_ack.exit175.fail_crit_edge:    ; preds = %ixgbe_out_i2c_byte_ack.exit175
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end35:                                         ; preds = %ixgbe_out_i2c_byte_ack.exit175
  call fastcc void @ixgbe_clock_in_i2c_byte(ptr noundef %hw, ptr noundef nonnull %high_bits) #6
  %call1.i176 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i176)
  %tobool37.not = icmp eq i32 %call1.i176, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.fail_crit_edge

if.end35.fail_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end39:                                         ; preds = %if.end35
  call fastcc void @ixgbe_clock_in_i2c_byte(ptr noundef %hw, ptr noundef nonnull %low_bits) #6
  %call1.i177 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i177)
  %tobool41.not = icmp eq i32 %call1.i177, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.fail_crit_edge

if.end39.fail_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end43:                                         ; preds = %if.end39
  call fastcc void @ixgbe_clock_in_i2c_byte(ptr noundef %hw, ptr noundef nonnull %csum_byte)
  %call48 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end43.fail_crit_edge

if.end43.fail_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end51:                                         ; preds = %if.end43
  tail call fastcc void @ixgbe_i2c_stop(ptr noundef %hw)
  br i1 %lock, label %if.then53, label %if.end51.if.end56_crit_edge

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %release_swfw_sync65 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release_swfw_sync65, align 4
  tail call void %12(ptr noundef %hw, i32 noundef %1) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end51.if.end56_crit_edge
  %13 = ptrtoint ptr %high_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %high_bits, align 1
  %conv57 = zext i8 %14 to i16
  %shl = shl nuw i16 %conv57, 8
  %15 = ptrtoint ptr %low_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %low_bits, align 1
  %conv58 = zext i8 %16 to i16
  %or59 = or i16 %shl, %conv58
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or59, ptr %val, align 2
  br label %cleanup

fail:                                             ; preds = %if.end43.fail_crit_edge, %if.end39.fail_crit_edge, %if.end35.fail_crit_edge, %ixgbe_out_i2c_byte_ack.exit175.fail_crit_edge, %if.end28.fail_crit_edge, %ixgbe_out_i2c_byte_ack.exit169.fail_crit_edge, %if.end24.fail_crit_edge, %ixgbe_out_i2c_byte_ack.exit163.fail_crit_edge, %if.end17.fail_crit_edge, %ixgbe_out_i2c_byte_ack.exit157.fail_crit_edge, %if.end13.fail_crit_edge, %ixgbe_out_i2c_byte_ack.exit.fail_crit_edge, %if.end.fail_crit_edge
  tail call fastcc void @ixgbe_i2c_bus_clear(ptr noundef %hw)
  br i1 %lock, label %if.then62, label %fail.if.end66_crit_edge

fail.if.end66_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then62:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %release_swfw_sync65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %release_swfw_sync65, align 4
  tail call void %19(ptr noundef %hw, i32 noundef %1) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %fail.if.end66_crit_edge
  %inc = add i32 %retry.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp = icmp slt i32 %inc, 3
  br i1 %cmp, label %do.body70, label %do.body81

do.body70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_i2c_combined_generic_int.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_i2c_combined_generic_int, %if.then76)) #6
          to label %do.body [label %if.then76], !srcloc !128

if.then76:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_i2c_combined_generic_int.__UNIQUE_ID_ddebug357, ptr noundef %23, ptr noundef nonnull @.str.3) #6
  br label %do.body

do.body81:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_i2c_combined_generic_int.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_i2c_combined_generic_int, %if.then93)) #6
          to label %cleanup [label %if.then93], !srcloc !128

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %back, align 4
  %netdev95 = getelementptr inbounds %struct.ixgbe_adapter, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %netdev95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev95, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_i2c_combined_generic_int.__UNIQUE_ID_ddebug358, ptr noundef %27, ptr noundef nonnull @.str.4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %do.body81, %if.end56, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -18, %if.then93 ], [ -18, %do.body81 ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %low_bits) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %high_bits) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %csum_byte) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_i2c_start(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %i2cctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2cctl) #6
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 22
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #6
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %arrayidx2 = getelementptr i32, ptr %5, i32 20
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %or = or i32 %7, %call
  %8 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %i2cctl, align 4
  %call3 = call fastcc i32 @ixgbe_set_i2c_data(ptr noundef %hw, ptr noundef nonnull %i2cctl, i1 noundef zeroext true)
  call fastcc void @ixgbe_raise_i2c_clk(ptr noundef %hw, ptr noundef nonnull %i2cctl)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #6
  %10 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvals, align 4
  %arrayidx.i = getelementptr i32, ptr %11, i32 19
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %11, i32 18
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %16 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i2cctl, align 4
  %18 = or i32 %15, %13
  %19 = xor i32 %18, -1
  %and6.c.i = and i32 %17, %19
  %arrayidx8.c.i = getelementptr i32, ptr %11, i32 22
  %20 = ptrtoint ptr %arrayidx8.c.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8.c.i, align 4
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i68.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i68.i, label %entry.ixgbe_set_i2c_data.exit_crit_edge, label %do.body1.i70.i

entry.ixgbe_set_i2c_data.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_set_i2c_data.exit

do.body1.i70.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %and6.c.i) #6
  %add.ptr.i69.i = getelementptr i8, ptr %23, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %24) #6, !srcloc !130
  br label %ixgbe_set_i2c_data.exit

ixgbe_set_i2c_data.exit:                          ; preds = %do.body1.i70.i, %entry.ixgbe_set_i2c_data.exit_crit_edge
  %call.c.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 644244) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 858992) #6
  %27 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mvals, align 4
  %arrayidx.i12 = getelementptr i32, ptr %28, i32 16
  %29 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i12, align 4
  %arrayidx2.i13 = getelementptr i32, ptr %28, i32 21
  %31 = ptrtoint ptr %arrayidx2.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i13, align 4
  %arrayidx6.i = getelementptr i32, ptr %28, i32 22
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6.i, align 4
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %ixgbe_set_i2c_data.exit.ixgbe_lower_i2c_clk.exit_crit_edge, label %do.body1.i.i

ixgbe_set_i2c_data.exit.ixgbe_lower_i2c_clk.exit_crit_edge: ; preds = %ixgbe_set_i2c_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_lower_i2c_clk.exit

do.body1.i.i:                                     ; preds = %ixgbe_set_i2c_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  %37 = or i32 %30, %32
  %38 = xor i32 %37, -1
  %and4.i = and i32 %and6.c.i, %38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %39) #6, !srcloc !130
  br label %ixgbe_lower_i2c_clk.exit

ixgbe_lower_i2c_clk.exit:                         ; preds = %do.body1.i.i, %ixgbe_set_i2c_data.exit.ixgbe_lower_i2c_clk.exit_crit_edge
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 1073740) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2cctl) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_out_i2c_byte_ack(ptr noundef %hw, i8 noundef zeroext %byte) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %byte)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_clock_in_i2c_byte(ptr noundef %hw, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  %i2cctl.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  %mvals.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %ixgbe_clock_in_i2c_bit.exit.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 7, %entry ], [ %dec, %ixgbe_clock_in_i2c_bit.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2cctl.i) #6
  %1 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mvals.i, align 4
  %arrayidx.i = getelementptr i32, ptr %2, i32 22
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %4) #6
  %5 = ptrtoint ptr %i2cctl.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %i2cctl.i, align 4
  %6 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvals.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %7, i32 19
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  %arrayidx4.i = getelementptr i32, ptr %7, i32 18
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %or.i = or i32 %9, %call.i
  %or5.i = or i32 %or.i, %11
  %12 = ptrtoint ptr %i2cctl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or5.i, ptr %i2cctl.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %7, i32 22
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.i, align 4
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %if.then.i.ixgbe_write_reg.exit.i_crit_edge, label %do.body1.i.i

if.then.i.ixgbe_write_reg.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit.i

do.body1.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #6, !srcloc !130
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %if.then.i.ixgbe_write_reg.exit.i_crit_edge
  %call8.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  br label %if.end.i

if.end.i:                                         ; preds = %ixgbe_write_reg.exit.i, %for.body.if.end.i_crit_edge
  call fastcc void @ixgbe_raise_i2c_clk(ptr noundef %hw, ptr noundef nonnull %i2cctl.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 858992) #6
  %19 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mvals.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %20, i32 22
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.i, align 4
  %call11.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %22) #6
  %23 = ptrtoint ptr %i2cctl.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call11.i, ptr %i2cctl.i, align 4
  %24 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mvals.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %25, i32 19
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %if.end.i.ixgbe_get_i2c_data.exit.i_crit_edge, label %if.then.i.i

if.end.i.ixgbe_get_i2c_data.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_i2c_data.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.i.i = or i32 %27, %call11.i
  %28 = ptrtoint ptr %i2cctl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i.i, ptr %i2cctl.i, align 4
  %arrayidx2.i.i = getelementptr i32, ptr %25, i32 22
  %29 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.i.i, align 4
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.ixgbe_write_reg.exit.i.i_crit_edge, label %do.body1.i.i.i

if.then.i.i.ixgbe_write_reg.exit.i.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %33) #6, !srcloc !130
  br label %ixgbe_write_reg.exit.i.i

ixgbe_write_reg.exit.i.i:                         ; preds = %do.body1.i.i.i, %if.then.i.i.ixgbe_write_reg.exit.i.i_crit_edge
  %call.i.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #6
  br label %ixgbe_get_i2c_data.exit.i

ixgbe_get_i2c_data.exit.i:                        ; preds = %ixgbe_write_reg.exit.i.i, %if.end.i.ixgbe_get_i2c_data.exit.i_crit_edge
  %35 = ptrtoint ptr %i2cctl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i2cctl.i, align 4
  %37 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mvals.i, align 4
  %arrayidx4.i.i = getelementptr i32, ptr %38, i32 17
  %39 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.i.i, align 4
  %and.i.i = and i32 %40, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp ne i32 %and.i.i, 0
  %arrayidx.i2.i = getelementptr i32, ptr %38, i32 16
  %41 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i2.i, align 4
  %arrayidx2.i4.i = getelementptr i32, ptr %38, i32 21
  %43 = ptrtoint ptr %arrayidx2.i4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx2.i4.i, align 4
  %arrayidx6.i.i = getelementptr i32, ptr %38, i32 22
  %45 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx6.i.i, align 4
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i5.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i5.i, label %ixgbe_get_i2c_data.exit.i.ixgbe_clock_in_i2c_bit.exit_crit_edge, label %do.body1.i.i7.i

ixgbe_get_i2c_data.exit.i.ixgbe_clock_in_i2c_bit.exit_crit_edge: ; preds = %ixgbe_get_i2c_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_clock_in_i2c_bit.exit

do.body1.i.i7.i:                                  ; preds = %ixgbe_get_i2c_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = or i32 %44, %42
  %50 = xor i32 %49, -1
  %and4.i.i = and i32 %36, %50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %and4.i.i) #6
  %add.ptr.i.i6.i = getelementptr i8, ptr %48, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 %51) #6, !srcloc !130
  br label %ixgbe_clock_in_i2c_bit.exit

ixgbe_clock_in_i2c_bit.exit:                      ; preds = %do.body1.i.i7.i, %ixgbe_get_i2c_data.exit.i.ixgbe_clock_in_i2c_bit.exit_crit_edge
  %call.i8.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 1073740) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2cctl.i) #6
  %54 = zext i1 %tobool5.not.i.i to i32
  %shl = shl nuw i32 %54, %i.01
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %data, align 1
  %57 = trunc i32 %shl to i8
  %conv2 = or i8 %56, %57
  store i8 %conv2, ptr %data, align 1
  %dec = add nsw i32 %i.01, -1
  %cmp.not = icmp eq i32 %i.01, 0
  br i1 %cmp.not, label %for.end, label %ixgbe_clock_in_i2c_bit.exit.for.body_crit_edge

ixgbe_clock_in_i2c_bit.exit.for.body_crit_edge:   ; preds = %ixgbe_clock_in_i2c_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %ixgbe_clock_in_i2c_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %i2cctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2cctl) #6
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 22
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #6
  %4 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %i2cctl, align 4
  %call1 = call fastcc i32 @ixgbe_set_i2c_data(ptr noundef %hw, ptr noundef nonnull %i2cctl, i1 noundef zeroext %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %do.body2

if.then:                                          ; preds = %entry
  call fastcc void @ixgbe_raise_i2c_clk(ptr noundef %hw, ptr noundef nonnull %i2cctl)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 858992) #6
  %6 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvals, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 16
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2cctl, align 4
  %arrayidx2.i = getelementptr i32, ptr %7, i32 21
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %7, i32 22
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.then.ixgbe_lower_i2c_clk.exit_crit_edge, label %do.body1.i.i

if.then.ixgbe_lower_i2c_clk.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_lower_i2c_clk.exit

do.body1.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %18 = or i32 %9, %13
  %19 = xor i32 %18, -1
  %and4.i = and i32 %11, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #6, !srcloc !130
  br label %ixgbe_lower_i2c_clk.exit

ixgbe_lower_i2c_clk.exit:                         ; preds = %do.body1.i.i, %if.then.ixgbe_lower_i2c_clk.exit_crit_edge
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #6
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_clock_out_i2c_bit.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_clock_out_i2c_bit, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !128

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 128
  %conv = zext i1 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_clock_out_i2c_bit.__UNIQUE_ID_ddebug385, ptr noundef %26, ptr noundef nonnull @.str.51, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body2, %ixgbe_lower_i2c_clk.exit
  %retval.0 = phi i32 [ 0, %ixgbe_lower_i2c_clk.exit ], [ -18, %if.then8 ], [ -18, %do.body2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2cctl) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_i2c_stop(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %i2cctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2cctl) #6
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 22
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #6
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %arrayidx2 = getelementptr i32, ptr %5, i32 19
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 21
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr i32, ptr %5, i32 20
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx2.i = getelementptr i32, ptr %5, i32 18
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  %14 = or i32 %13, %7
  %15 = xor i32 %14, -1
  %and6.c.i = and i32 %call, %15
  %16 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and6.c.i, ptr %i2cctl, align 4
  %arrayidx8.c.i = getelementptr i32, ptr %5, i32 22
  %17 = ptrtoint ptr %arrayidx8.c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8.c.i, align 4
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i68.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i68.i, label %entry.ixgbe_set_i2c_data.exit_crit_edge, label %do.body1.i70.i

entry.ixgbe_set_i2c_data.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_set_i2c_data.exit

do.body1.i70.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %and6.c.i) #6
  %add.ptr.i69.i = getelementptr i8, ptr %20, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %21) #6, !srcloc !130
  br label %ixgbe_set_i2c_data.exit

ixgbe_set_i2c_data.exit:                          ; preds = %do.body1.i70.i, %entry.ixgbe_set_i2c_data.exit_crit_edge
  %call.c.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 644244) #6
  call fastcc void @ixgbe_raise_i2c_clk(ptr noundef %hw, ptr noundef nonnull %i2cctl)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 858992) #6
  %call8 = call fastcc i32 @ixgbe_set_i2c_data(ptr noundef %hw, ptr noundef nonnull %i2cctl, i1 noundef zeroext true)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool.not, i1 %tobool9.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  %or.cond29 = select i1 %or.cond, i1 %tobool11.not, i1 false
  br i1 %or.cond29, label %ixgbe_set_i2c_data.exit.if.end_crit_edge, label %if.then

ixgbe_set_i2c_data.exit.if.end_crit_edge:         ; preds = %ixgbe_set_i2c_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ixgbe_set_i2c_data.exit
  %25 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i2cctl, align 4
  %27 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mvals, align 4
  %arrayidx14 = getelementptr i32, ptr %28, i32 22
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx14, align 4
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.then.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %9, %7
  %neg = xor i32 %11, -1
  %and = and i32 %26, %neg
  %or12 = or i32 %or, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %or12) #6
  %add.ptr.i = getelementptr i8, ptr %32, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #6, !srcloc !130
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then.ixgbe_write_reg.exit_crit_edge
  %call15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  br label %if.end

if.end:                                           ; preds = %ixgbe_write_reg.exit, %ixgbe_set_i2c_data.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2cctl) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_i2c_bus_clear(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %i2cctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2cctl) #6
  tail call fastcc void @ixgbe_i2c_start(ptr noundef %hw)
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 22
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #6
  %4 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %i2cctl, align 4
  %call1 = call fastcc i32 @ixgbe_set_i2c_data(ptr noundef %hw, ptr noundef nonnull %i2cctl, i1 noundef zeroext true)
  br label %for.body

for.body:                                         ; preds = %ixgbe_lower_i2c_clk.exit.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %ixgbe_lower_i2c_clk.exit.for.body_crit_edge ]
  call fastcc void @ixgbe_raise_i2c_clk(ptr noundef %hw, ptr noundef nonnull %i2cctl)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 858992) #6
  %6 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvals, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 16
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2cctl, align 4
  %arrayidx2.i = getelementptr i32, ptr %7, i32 21
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  %14 = or i32 %9, %13
  %15 = xor i32 %14, -1
  %and4.i = and i32 %11, %15
  store i32 %and4.i, ptr %i2cctl, align 4
  %arrayidx6.i = getelementptr i32, ptr %7, i32 22
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %for.body.ixgbe_lower_i2c_clk.exit_crit_edge, label %do.body1.i.i

for.body.ixgbe_lower_i2c_clk.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_lower_i2c_clk.exit

do.body1.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #6, !srcloc !130
  br label %ixgbe_lower_i2c_clk.exit

ixgbe_lower_i2c_clk.exit:                         ; preds = %do.body1.i.i, %for.body.ixgbe_lower_i2c_clk.exit_crit_edge
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #6
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %ixgbe_lower_i2c_clk.exit.for.body_crit_edge

ixgbe_lower_i2c_clk.exit.for.body_crit_edge:      ; preds = %ixgbe_lower_i2c_clk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %ixgbe_lower_i2c_clk.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ixgbe_i2c_start(ptr noundef %hw)
  tail call fastcc void @ixgbe_i2c_stop(ptr noundef %hw)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2cctl) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_i2c_combined_generic_int(ptr noundef %hw, i8 noundef zeroext %addr, i16 noundef zeroext %reg, i16 noundef zeroext %val, i1 noundef zeroext %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  %2 = lshr i16 %reg, 7
  %3 = trunc i16 %2 to i8
  %conv1 = and i8 %3, -2
  %conv4 = trunc i16 %reg to i8
  %conv.i = zext i8 %conv1 to i32
  %conv4.mask = and i16 %reg, 255
  %conv1.i = zext i16 %conv4.mask to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  %4 = lshr i32 %add.i, 8
  %add5.i = add nuw nsw i32 %4, %add.i
  %5 = lshr i16 %val, 8
  %conv7 = trunc i16 %5 to i8
  %conv.i138 = and i32 %add5.i, 255
  %conv1.i139 = zext i16 %5 to i32
  %add.i140 = add nuw nsw i32 %conv.i138, %conv1.i139
  %6 = lshr i32 %add.i140, 8
  %add5.i141 = add nuw nsw i32 %6, %add.i140
  %conv11 = trunc i16 %val to i8
  %conv.i143 = and i32 %add5.i141, 255
  %conv11.mask = and i16 %val, 255
  %conv1.i144 = zext i16 %conv11.mask to i32
  %add.i145 = add nuw nsw i32 %conv.i143, %conv1.i144
  %7 = lshr i32 %add.i145, 8
  %add5.i146 = add nuw nsw i32 %7, %add.i145
  %conv9.i147 = trunc i32 %add5.i146 to i8
  %neg = xor i8 %conv9.i147, -1
  br i1 %lock, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %8 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acquire_swfw_sync, align 4
  %call16 = tail call i32 %9(ptr noundef %hw, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @ixgbe_i2c_start(ptr noundef %hw)
  %call.i = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbe_out_i2c_byte_ack.exit, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

ixgbe_out_i2c_byte_ack.exit:                      ; preds = %if.end
  %call1.i = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool19.not = icmp eq i32 %call1.i, 0
  br i1 %tobool19.not, label %if.end21, label %ixgbe_out_i2c_byte_ack.exit.fail_crit_edge

ixgbe_out_i2c_byte_ack.exit.fail_crit_edge:       ; preds = %ixgbe_out_i2c_byte_ack.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end21:                                         ; preds = %ixgbe_out_i2c_byte_ack.exit
  %call.i149 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %conv1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i150 = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i150, label %ixgbe_out_i2c_byte_ack.exit154, label %if.end21.fail_crit_edge

if.end21.fail_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

ixgbe_out_i2c_byte_ack.exit154:                   ; preds = %if.end21
  %call1.i151 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i151)
  %tobool23.not = icmp eq i32 %call1.i151, 0
  br i1 %tobool23.not, label %if.end25, label %ixgbe_out_i2c_byte_ack.exit154.fail_crit_edge

ixgbe_out_i2c_byte_ack.exit154.fail_crit_edge:    ; preds = %ixgbe_out_i2c_byte_ack.exit154
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end25:                                         ; preds = %ixgbe_out_i2c_byte_ack.exit154
  %call.i155 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %conv4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool.not.i156 = icmp eq i32 %call.i155, 0
  br i1 %tobool.not.i156, label %ixgbe_out_i2c_byte_ack.exit160, label %if.end25.fail_crit_edge

if.end25.fail_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

ixgbe_out_i2c_byte_ack.exit160:                   ; preds = %if.end25
  %call1.i157 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i157)
  %tobool30.not = icmp eq i32 %call1.i157, 0
  br i1 %tobool30.not, label %if.end32, label %ixgbe_out_i2c_byte_ack.exit160.fail_crit_edge

ixgbe_out_i2c_byte_ack.exit160.fail_crit_edge:    ; preds = %ixgbe_out_i2c_byte_ack.exit160
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end32:                                         ; preds = %ixgbe_out_i2c_byte_ack.exit160
  %call.i161 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %conv7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i162 = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i162, label %ixgbe_out_i2c_byte_ack.exit166, label %if.end32.fail_crit_edge

if.end32.fail_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

ixgbe_out_i2c_byte_ack.exit166:                   ; preds = %if.end32
  %call1.i163 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool37.not = icmp eq i32 %call1.i163, 0
  br i1 %tobool37.not, label %if.end39, label %ixgbe_out_i2c_byte_ack.exit166.fail_crit_edge

ixgbe_out_i2c_byte_ack.exit166.fail_crit_edge:    ; preds = %ixgbe_out_i2c_byte_ack.exit166
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end39:                                         ; preds = %ixgbe_out_i2c_byte_ack.exit166
  %call43 = tail call fastcc i32 @ixgbe_out_i2c_byte_ack(ptr noundef %hw, i8 noundef zeroext %conv11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end39.fail_crit_edge

if.end39.fail_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end46:                                         ; preds = %if.end39
  %call47 = tail call fastcc i32 @ixgbe_out_i2c_byte_ack(ptr noundef %hw, i8 noundef zeroext %neg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.fail_crit_edge

if.end46.fail_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end50:                                         ; preds = %if.end46
  tail call fastcc void @ixgbe_i2c_stop(ptr noundef %hw)
  br i1 %lock, label %if.then52, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %10 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %11(ptr noundef %hw, i32 noundef %1) #6
  br label %cleanup

fail:                                             ; preds = %if.end46.fail_crit_edge, %if.end39.fail_crit_edge, %ixgbe_out_i2c_byte_ack.exit166.fail_crit_edge, %if.end32.fail_crit_edge, %ixgbe_out_i2c_byte_ack.exit160.fail_crit_edge, %if.end25.fail_crit_edge, %ixgbe_out_i2c_byte_ack.exit154.fail_crit_edge, %if.end21.fail_crit_edge, %ixgbe_out_i2c_byte_ack.exit.fail_crit_edge, %if.end.fail_crit_edge
  tail call fastcc void @ixgbe_i2c_bus_clear(ptr noundef %hw)
  br i1 %lock, label %if.then57, label %fail.do.body76_crit_edge

fail.do.body76_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body76

if.then57:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %release_swfw_sync60 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %12 = ptrtoint ptr %release_swfw_sync60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_swfw_sync60, align 4
  tail call void %13(ptr noundef %hw, i32 noundef %1) #6
  br label %do.body76

do.body76:                                        ; preds = %if.then57, %fail.do.body76_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_i2c_combined_generic_int.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_i2c_combined_generic_int, %if.then88)) #6
          to label %cleanup [label %if.then88], !srcloc !128

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  %back89 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %back89 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %back89, align 4
  %netdev90 = getelementptr inbounds %struct.ixgbe_adapter, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %netdev90 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev90, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_i2c_combined_generic_int.__UNIQUE_ID_ddebug360, ptr noundef %17, ptr noundef nonnull @.str.7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %do.body76, %if.then52, %if.end50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %if.end50.cleanup_crit_edge ], [ -18, %if.then88 ], [ -18, %do.body76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_identify_phy_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %2 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %.45 = select i1 %tobool1.not, i32 2, i32 4
  %4 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.45, ptr %phy_semaphore_mask, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %nw_mng_if_sel = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 19
  %7 = ptrtoint ptr %nw_mng_if_sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nw_mng_if_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end10.for.body_crit_edge, label %if.then13

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = trunc i32 %8 to i16
  %10 = lshr i16 %9, 3
  %conv = and i16 %10, 31
  %call = tail call fastcc zeroext i1 @ixgbe_probe_phy(ptr noundef %hw, i16 noundef zeroext %conv)
  %. = select i1 %call, i32 0, i32 -17
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %phy_addr.044, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.then26, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end10.for.body_crit_edge
  %phy_addr.044 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %conv21 = trunc i32 %phy_addr.044 to i16
  %call22 = tail call fastcc zeroext i1 @ixgbe_probe_phy(ptr noundef %hw, i16 noundef zeroext %conv21)
  br i1 %call22, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %mdio = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %mdio, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %for.body.cleanup_crit_edge, %if.then13, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ %., %if.then13 ], [ -17, %if.then26 ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ixgbe_probe_phy(ptr noundef %hw, i16 noundef zeroext %phy_addr) unnamed_addr #0 align 64 {
entry:
  %phy_id_high.i = alloca i16, align 2
  %phy_id_low.i = alloca i16, align 2
  %ext_ability = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ext_ability) #6
  %0 = ptrtoint ptr %ext_ability to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ext_ability, align 2
  %conv = zext i16 %phy_addr to i32
  %mdio = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %mdio, align 4
  %call = tail call i32 @mdio45_probe(ptr noundef %mdio, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_id_high.i) #6
  %2 = ptrtoint ptr %phy_id_high.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %phy_id_high.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_id_low.i) #6
  %3 = ptrtoint ptr %phy_id_low.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %phy_id_low.i, align 2
  %read_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %5(ptr noundef %hw, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %phy_id_high.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ixgbe_get_phy_id.exit, label %ixgbe_get_phy_id.exit.thread

ixgbe_get_phy_id.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id_low.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id_high.i) #6
  br label %cleanup

ixgbe_get_phy_id.exit:                            ; preds = %if.end
  %6 = ptrtoint ptr %phy_id_high.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phy_id_high.i, align 2
  %conv.i = zext i16 %7 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl.i, ptr %id.i, align 4
  %9 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg.i, align 4
  %call5.i = call i32 %10(ptr noundef %hw, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %phy_id_low.i) #6
  %11 = ptrtoint ptr %phy_id_low.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %phy_id_low.i, align 2
  %13 = and i16 %12, -16
  %and.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %or.i = or i32 %15, %and.i
  store i32 %or.i, ptr %id.i, align 4
  %16 = and i16 %12, 15
  %and10.i = zext i16 %16 to i32
  %revision.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 6
  %17 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and10.i, ptr %revision.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id_low.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id_high.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.end7, label %ixgbe_get_phy_id.exit.cleanup_crit_edge

ixgbe_get_phy_id.exit.cleanup_crit_edge:          ; preds = %ixgbe_get_phy_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %ixgbe_get_phy_id.exit
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.then15 [
    i32 10589200, label %if.end7.ixgbe_get_phy_type_from_id.exit.thread_crit_edge
    i32 22282787, label %if.end7.sw.bb1.i_crit_edge
    i32 22282785, label %if.end7.sw.bb1.i_crit_edge42
    i32 22282752, label %if.end7.sw.bb1.i_crit_edge43
    i32 4432896, label %sw.bb2.i
    i32 54693968, label %sw.bb3.i
    i32 22282816, label %if.end7.sw.bb4.i_crit_edge
    i32 22282832, label %if.end7.sw.bb4.i_crit_edge44
    i32 56778000, label %sw.bb5.i
  ]

if.end7.sw.bb4.i_crit_edge44:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

if.end7.sw.bb4.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

if.end7.sw.bb1.i_crit_edge43:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end7.sw.bb1.i_crit_edge42:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end7.sw.bb1.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end7.ixgbe_get_phy_type_from_id.exit.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_phy_type_from_id.exit.thread

sw.bb1.i:                                         ; preds = %if.end7.sw.bb1.i_crit_edge, %if.end7.sw.bb1.i_crit_edge42, %if.end7.sw.bb1.i_crit_edge43
  br label %ixgbe_get_phy_type_from_id.exit.thread

sw.bb2.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_phy_type_from_id.exit.thread

sw.bb3.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_phy_type_from_id.exit.thread

sw.bb4.i:                                         ; preds = %if.end7.sw.bb4.i_crit_edge, %if.end7.sw.bb4.i_crit_edge44
  br label %ixgbe_get_phy_type_from_id.exit.thread

sw.bb5.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_phy_type_from_id.exit.thread

ixgbe_get_phy_type_from_id.exit.thread:           ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end7.ixgbe_get_phy_type_from_id.exit.thread_crit_edge
  %phy_type.0.i.ph = phi i32 [ 2, %if.end7.ixgbe_get_phy_type_from_id.exit.thread_crit_edge ], [ 3, %sw.bb1.i ], [ 10, %sw.bb2.i ], [ 12, %sw.bb3.i ], [ 7, %sw.bb4.i ], [ 8, %sw.bb5.i ]
  %type40 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %type40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %phy_type.0.i.ph, ptr %type40, align 4
  br label %cleanup

if.then15:                                        ; preds = %if.end7
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %type, align 4
  %23 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg.i, align 4
  %call17 = call i32 %24(ptr noundef %hw, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %ext_ability) #6
  %25 = ptrtoint ptr %ext_ability to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ext_ability, align 2
  %27 = and i16 %26, 36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool19.not = icmp eq i16 %27, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 9, ptr %type, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 28, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %ixgbe_get_phy_type_from_id.exit.thread, %ixgbe_get_phy_id.exit.cleanup_crit_edge, %ixgbe_get_phy_id.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %ixgbe_get_phy_id.exit.cleanup_crit_edge ], [ true, %if.then20 ], [ true, %if.else ], [ false, %ixgbe_get_phy_id.exit.thread ], [ true, %ixgbe_get_phy_type_from_id.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ext_ability) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgbe_check_reset_blocked(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17104) #6
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_check_reset_blocked, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !128

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, ptr noundef %5, ptr noundef nonnull @.str.9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.then7 ], [ false, %if.end.cleanup_crit_edge ], [ true, %do.body2 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_reset_phy_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl) #6
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ctrl, align 2
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.then:                                          ; preds = %entry
  %phy_semaphore_mask.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %phy_semaphore_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_semaphore_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end10.i_crit_edge

if.then.if.end10.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %lan_id.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %5 = ptrtoint ptr %lan_id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lan_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  %.45.i = select i1 %tobool1.not.i, i32 2, i32 4
  %7 = ptrtoint ptr %phy_semaphore_mask.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.45.i, ptr %phy_semaphore_mask.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %if.then.if.end10.i_crit_edge
  %nw_mng_if_sel.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 19
  %8 = ptrtoint ptr %nw_mng_if_sel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nw_mng_if_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not.i = icmp eq i32 %9, 0
  br i1 %tobool12.not.i, label %if.end10.i.for.body.i_crit_edge, label %if.then13.i

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  br label %for.body.i

if.then13.i:                                      ; preds = %if.end10.i
  %10 = trunc i32 %9 to i16
  %11 = lshr i16 %10, 3
  %conv.i = and i16 %11, 31
  %call.i = tail call fastcc zeroext i1 @ixgbe_probe_phy(ptr noundef %hw, i16 noundef zeroext %conv.i) #6
  br i1 %call.i, label %if.then13.i.lor.lhs.falsethread-pre-split_crit_edge, label %if.then13.i.cleanup_crit_edge

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13.i.lor.lhs.falsethread-pre-split_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.falsethread-pre-split

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %phy_addr.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.then26.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end10.i.for.body.i_crit_edge
  %phy_addr.044.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end10.i.for.body.i_crit_edge ]
  %conv21.i = trunc i32 %phy_addr.044.i to i16
  %call22.i = tail call fastcc zeroext i1 @ixgbe_probe_phy(ptr noundef %hw, i16 noundef zeroext %conv21.i) #6
  br i1 %call22.i, label %for.body.i.lor.lhs.falsethread-pre-split_crit_edge, label %for.cond.i

for.body.i.lor.lhs.falsethread-pre-split_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.falsethread-pre-split

if.then26.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %mdio.i, align 4
  br label %cleanup

lor.lhs.falsethread-pre-split:                    ; preds = %for.body.i.lor.lhs.falsethread-pre-split_crit_edge, %if.then13.i.lor.lhs.falsethread-pre-split_crit_edge
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %type, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.falsethread-pre-split, %entry.lor.lhs.false_crit_edge
  %14 = phi i32 [ %.pr, %lor.lhs.falsethread-pre-split ], [ %2, %entry.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp4 = icmp eq i32 %14, 1
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %reset_if_overtemp = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 17
  %15 = ptrtoint ptr %reset_if_overtemp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reset_if_overtemp, align 2, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %check_overtemp = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %17 = ptrtoint ptr %check_overtemp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %check_overtemp, align 4
  %call9 = tail call i32 %18(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -26, i32 %call9)
  %cmp10 = icmp eq i32 %call9, -26
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %type.i83 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %type.i83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp eq i32 %20, 1
  br i1 %cmp.i, label %if.end12.if.end15_crit_edge, label %if.end.i

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end.i:                                         ; preds = %if.end12
  %call.i84 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17104) #6
  %and.i = and i32 %call.i84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i85 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i85, label %if.end.i.if.end15_crit_edge, label %do.body2.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_generic, %if.then7.i)) #6
          to label %cleanup [label %if.then7.i], !srcloc !128

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %21 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, ptr noundef %24, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end.i.if.end15_crit_edge, %if.end12.if.end15_crit_edge
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %25 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg, align 4
  %call18 = tail call i32 %26(ptr noundef %hw, i32 noundef 0, i32 noundef 4, i16 noundef zeroext -32768) #6
  %read_reg35 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15
  %i.092 = phi i32 [ 0, %if.end15 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @msleep(i32 noundef 100) #6
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %28)
  %cmp22 = icmp eq i32 %28, 7
  %29 = ptrtoint ptr %read_reg35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_reg35, align 4
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body
  %call26 = call i32 %30(ptr noundef %hw, i32 noundef 52226, i32 noundef 1, ptr noundef nonnull %ctrl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.then23
  %31 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ctrl, align 2
  %33 = and i16 %32, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool30.not = icmp eq i16 %33, 0
  br i1 %tobool30.not, label %if.end29.for.inc_crit_edge, label %if.end29.for.end.sink.split_crit_edge

if.end29.for.end.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call36 = call i32 %30(ptr noundef %hw, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %ctrl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.else
  %34 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ctrl, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %35)
  %tobool42.not = icmp sgt i16 %35, -1
  br i1 %tobool42.not, label %if.end39.for.end.sink.split_crit_edge, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end39.for.end.sink.split_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split

for.inc:                                          ; preds = %if.end39.for.inc_crit_edge, %if.end29.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end.sink.split:                               ; preds = %if.end39.for.end.sink.split_crit_edge, %if.end29.for.end.sink.split_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 429496) #6
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge
  %37 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ctrl, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %38)
  %tobool48.not = icmp sgt i16 %38, -1
  br i1 %tobool48.not, label %for.end.cleanup_crit_edge, label %do.body50

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_generic.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_generic, %if.then55)) #6
          to label %cleanup [label %if.then55], !srcloc !128

if.then55:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %39 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_generic.__UNIQUE_ID_ddebug362, ptr noundef %42, ptr noundef nonnull @.str.11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %do.body50, %for.end.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.then7.i, %do.body2.i, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then26.i, %if.then13.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -15, %if.then55 ], [ 0, %for.end.cleanup_crit_edge ], [ -17, %if.then13.i.cleanup_crit_edge ], [ -17, %if.then26.i ], [ 0, %do.body2.i ], [ 0, %if.then7.i ], [ -15, %do.body50 ], [ %call36, %if.else.cleanup_crit_edge ], [ %call26, %if.then23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_phy_reg_mdi(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, ptr nocapture noundef writeonly %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1 = shl i32 %device_type, 16
  %or = or i32 %shl1, %reg_addr
  %mdio = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio, align 4
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.for.body.preheader_crit_edge, label %do.body1.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl2 = shl i32 %1, 21
  %or3 = or i32 %or, %shl2
  %or4 = or i32 %or3, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4) #6
  %add.ptr.i = getelementptr i8, ptr %3, i32 16988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !130
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i, %entry.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body9, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.094 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #6
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16988) #6
  %and = and i32 %call, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.end17, label %for.cond

do.body9:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_phy_reg_mdi.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_phy_reg_mdi, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !128

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_phy_reg_mdi.__UNIQUE_ID_ddebug363, ptr noundef %9, ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %10 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio, align 4
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i88 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i88, label %if.end17.for.body29.preheader_crit_edge, label %do.body1.i90

if.end17.for.body29.preheader_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29.preheader

do.body1.i90:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %shl24 = shl i32 %11, 21
  %or25 = or i32 %or, %shl24
  %or26 = or i32 %or25, 1275068416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or26) #6
  %add.ptr.i89 = getelementptr i8, ptr %13, i32 16988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %14) #6, !srcloc !130
  br label %for.body29.preheader

for.body29.preheader:                             ; preds = %do.body1.i90, %if.end17.for.body29.preheader_crit_edge
  br label %for.body29

for.cond27:                                       ; preds = %for.body29
  %inc36 = add nuw nsw i32 %i.195, 1
  %exitcond96.not = icmp eq i32 %inc36, 100
  br i1 %exitcond96.not, label %do.body42, label %for.cond27.for.body29_crit_edge

for.cond27.for.body29_crit_edge:                  ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29

for.body29:                                       ; preds = %for.cond27.for.body29_crit_edge, %for.body29.preheader
  %i.195 = phi i32 [ %inc36, %for.cond27.for.body29_crit_edge ], [ 0, %for.body29.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #6
  %call30 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16988) #6
  %and31 = and i32 %call30, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %if.end62, label %for.cond27

do.body42:                                        ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_phy_reg_mdi.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_phy_reg_mdi, %if.then54)) #6
          to label %cleanup [label %if.then54], !srcloc !128

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %back55 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %back55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %back55, align 4
  %netdev56 = getelementptr inbounds %struct.ixgbe_adapter, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %netdev56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev56, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_phy_reg_mdi.__UNIQUE_ID_ddebug364, ptr noundef %19, ptr noundef nonnull @.str.14) #6
  br label %cleanup

if.end62:                                         ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16992) #6
  %shr = lshr i32 %call63, 16
  %conv = trunc i32 %shr to i16
  %20 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %phy_data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then54, %do.body42, %if.then13, %do.body9
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -3, %if.then13 ], [ -3, %if.then54 ], [ -3, %do.body9 ], [ -3, %do.body42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_phy_reg_generic(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, ptr nocapture noundef writeonly %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %2 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %3(ptr noundef %hw, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @ixgbe_read_phy_reg_mdi(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, ptr noundef %phy_data)
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %4 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %5(ptr noundef %hw, i32 noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_phy_reg_mdi(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, i16 noundef zeroext %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %phy_data to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %add.ptr.i = getelementptr i8, ptr %1, i32 16992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !130
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %shl1 = shl i32 %device_type, 16
  %or = or i32 %shl1, %reg_addr
  %mdio = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mdio, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i91 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i91, label %ixgbe_write_reg.exit.for.body.preheader_crit_edge, label %do.body1.i93

ixgbe_write_reg.exit.for.body.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

do.body1.i93:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shl2 = shl i32 %4, 21
  %or3 = or i32 %or, %shl2
  %or4 = or i32 %or3, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or4) #6
  %add.ptr.i92 = getelementptr i8, ptr %6, i32 16988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %7) #6, !srcloc !130
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i93, %ixgbe_write_reg.exit.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body12, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0101 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #6
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16988) #6
  %and = and i32 %call, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.end20, label %for.cond

do.body12:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_phy_reg_mdi.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_phy_reg_mdi, %if.then16)) #6
          to label %cleanup [label %if.then16], !srcloc !128

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_phy_reg_mdi.__UNIQUE_ID_ddebug365, ptr noundef %12, ptr noundef nonnull @.str.16) #6
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %13 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdio, align 4
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i95 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i95, label %if.end20.for.body33.preheader_crit_edge, label %do.body1.i97

if.end20.for.body33.preheader_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33.preheader

do.body1.i97:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %shl27 = shl i32 %14, 21
  %or28 = or i32 %or, %shl27
  %or29 = or i32 %or28, 1140850688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or29) #6
  %add.ptr.i96 = getelementptr i8, ptr %16, i32 16988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %17) #6, !srcloc !130
  br label %for.body33.preheader

for.body33.preheader:                             ; preds = %do.body1.i97, %if.end20.for.body33.preheader_crit_edge
  br label %for.body33

for.cond30:                                       ; preds = %for.body33
  %inc41 = add nuw nsw i32 %i.1102, 1
  %exitcond103.not = icmp eq i32 %inc41, 100
  br i1 %exitcond103.not, label %do.body48, label %for.cond30.for.body33_crit_edge

for.cond30.for.body33_crit_edge:                  ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33

for.body33:                                       ; preds = %for.cond30.for.body33_crit_edge, %for.body33.preheader
  %i.1102 = phi i32 [ %inc41, %for.cond30.for.body33_crit_edge ], [ 0, %for.body33.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #6
  %call34 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16988) #6
  %and35 = and i32 %call34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %for.body33.cleanup_crit_edge, label %for.cond30

for.body33.cleanup_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body48:                                        ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_phy_reg_mdi.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_phy_reg_mdi, %if.then60)) #6
          to label %cleanup [label %if.then60], !srcloc !128

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %back61 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %19 = ptrtoint ptr %back61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %back61, align 4
  %netdev62 = getelementptr inbounds %struct.ixgbe_adapter, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %netdev62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev62, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_phy_reg_mdi.__UNIQUE_ID_ddebug366, ptr noundef %22, ptr noundef nonnull @.str.17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body48, %for.body33.cleanup_crit_edge, %if.then16, %do.body12
  %retval.0 = phi i32 [ -3, %if.then16 ], [ -3, %if.then60 ], [ -3, %do.body12 ], [ -3, %do.body48 ], [ 0, %for.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_phy_reg_generic(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, i16 noundef zeroext %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %2 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %3(ptr noundef %hw, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @ixgbe_write_phy_reg_mdi(ptr noundef %hw, i32 noundef %reg_addr, i32 noundef %device_type, i16 noundef zeroext %phy_data)
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %4 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %5(ptr noundef %hw, i32 noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_mii_bus_init(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %pdev1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  %dev2 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 133
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %6 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %7, label %entry.sw.epilog_crit_edge [
    i16 5570, label %entry.sw.bb_crit_edge
    i16 5571, label %entry.sw.bb_crit_edge33
    i16 5572, label %entry.sw.bb_crit_edge34
    i16 5574, label %entry.sw.bb_crit_edge35
    i16 5575, label %entry.sw.bb_crit_edge36
    i16 5576, label %entry.sw.bb_crit_edge37
    i16 5582, label %entry.sw.bb_crit_edge38
    i16 5604, label %entry.sw.bb_crit_edge39
    i16 5605, label %entry.sw.bb_crit_edge40
  ]

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37, %entry.sw.bb_crit_edge38, %entry.sw.bb_crit_edge39, %entry.sw.bb_crit_edge40
  %call.i.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef 0, i32 noundef 0, i32 noundef 176) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.if.end.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %subordinate.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %subordinate.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %ixgbe_get_first_secondary_devfn.exit.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

ixgbe_get_first_secondary_devfn.exit.i:           ; preds = %land.lhs.true.i.i
  %number.i.i = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %number.i.i, align 4
  %conv.i.i = zext i8 %12 to i32
  %call3.i.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef 0, i32 noundef %conv.i.i, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %ixgbe_get_first_secondary_devfn.exit.i.if.end.i_crit_edge, label %ixgbe_get_first_secondary_devfn.exit.i.ixgbe_x550em_a_has_mii.exit_crit_edge

ixgbe_get_first_secondary_devfn.exit.i.ixgbe_x550em_a_has_mii.exit_crit_edge: ; preds = %ixgbe_get_first_secondary_devfn.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_x550em_a_has_mii.exit

ixgbe_get_first_secondary_devfn.exit.i.if.end.i_crit_edge: ; preds = %ixgbe_get_first_secondary_devfn.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %ixgbe_get_first_secondary_devfn.exit.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %call.i13.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef 0, i32 noundef 0, i32 noundef 184) #6
  %tobool.not.i14.i = icmp eq ptr %call.i13.i, null
  br i1 %tobool.not.i14.i, label %if.end.i.ixgbe_x550em_a_has_mii.exit_crit_edge, label %land.lhs.true.i17.i

if.end.i.ixgbe_x550em_a_has_mii.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_x550em_a_has_mii.exit

land.lhs.true.i17.i:                              ; preds = %if.end.i
  %subordinate.i15.i = getelementptr inbounds %struct.pci_dev, ptr %call.i13.i, i32 0, i32 2
  %13 = ptrtoint ptr %subordinate.i15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %subordinate.i15.i, align 4
  %tobool1.not.i16.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i16.i, label %land.lhs.true.i17.i.ixgbe_x550em_a_has_mii.exit_crit_edge, label %if.then.i21.i

land.lhs.true.i17.i.ixgbe_x550em_a_has_mii.exit_crit_edge: ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_x550em_a_has_mii.exit

if.then.i21.i:                                    ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  %number.i18.i = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %number.i18.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %number.i18.i, align 4
  %conv.i19.i = zext i8 %16 to i32
  %call3.i20.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef 0, i32 noundef %conv.i19.i, i32 noundef 0) #6
  br label %ixgbe_x550em_a_has_mii.exit

ixgbe_x550em_a_has_mii.exit:                      ; preds = %if.then.i21.i, %land.lhs.true.i17.i.ixgbe_x550em_a_has_mii.exit_crit_edge, %if.end.i.ixgbe_x550em_a_has_mii.exit_crit_edge, %ixgbe_get_first_secondary_devfn.exit.i.ixgbe_x550em_a_has_mii.exit_crit_edge
  %call3.i.pn.i = phi ptr [ %call3.i.i, %ixgbe_get_first_secondary_devfn.exit.i.ixgbe_x550em_a_has_mii.exit_crit_edge ], [ %call3.i20.i, %if.then.i21.i ], [ null, %land.lhs.true.i17.i.ixgbe_x550em_a_has_mii.exit_crit_edge ], [ null, %if.end.i.ixgbe_x550em_a_has_mii.exit_crit_edge ]
  %retval.0.i = icmp eq ptr %call3.i.pn.i, %3
  br i1 %retval.0.i, label %ixgbe_x550em_a_has_mii.exit.sw.epilog_crit_edge, label %ixgbe_x550em_a_has_mii.exit.cleanup_crit_edge

ixgbe_x550em_a_has_mii.exit.cleanup_crit_edge:    ; preds = %ixgbe_x550em_a_has_mii.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ixgbe_x550em_a_has_mii.exit.sw.epilog_crit_edge:  ; preds = %ixgbe_x550em_a_has_mii.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %ixgbe_x550em_a_has_mii.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %write.0 = phi ptr [ @ixgbe_x550em_a_mii_bus_write, %ixgbe_x550em_a_has_mii.exit.sw.epilog_crit_edge ], [ @ixgbe_mii_bus_write, %entry.sw.epilog_crit_edge ]
  %read.0 = phi ptr [ @ixgbe_x550em_a_mii_bus_read, %ixgbe_x550em_a_has_mii.exit.sw.epilog_crit_edge ], [ @ixgbe_mii_bus_read, %entry.sw.epilog_crit_edge ]
  %call.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %dev2, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end5

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %sw.epilog
  %read6 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %read6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %read.0, ptr %read6, align 4
  %write7 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %write7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %write.0, ptr %write7, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i32 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i32, label %if.end.i.i, label %if.end5.pci_name.exit_crit_edge

if.end5.pci_name.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end5.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %if.end5.pci_name.exit_crit_edge ]
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.18, ptr noundef nonnull @ixgbe_driver_name, ptr noundef %retval.0.i.i)
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.19, ptr %name, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev2, ptr %parent, align 4
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 13
  %26 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %phy_mask, align 8
  %mode_support = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 1, i32 2
  %27 = ptrtoint ptr %mode_support to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %mode_support, align 4
  %mii_bus = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %mii_bus, align 4
  %call10 = tail call i32 @__mdiobus_register(ptr noundef nonnull %call.i, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %sw.epilog.cleanup_crit_edge, %ixgbe_x550em_a_has_mii.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %pci_name.exit ], [ 0, %ixgbe_x550em_a_has_mii.exit.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_x550em_a_mii_bus_read(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54, i32 5, i32 8
  %2 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_semaphore_mask, align 4
  %or = or i32 %3, 1073741826
  %call = tail call fastcc i32 @ixgbe_mii_bus_read_generic(ptr noundef %hw1, i32 noundef %addr, i32 noundef %regnum, i32 noundef %or)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_x550em_a_mii_bus_write(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54, i32 5, i32 8
  %2 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_semaphore_mask, align 4
  %or = or i32 %3, 1073741826
  %call = tail call fastcc i32 @ixgbe_mii_bus_write_generic(ptr noundef %hw1, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val, i32 noundef %or)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_mii_bus_read(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54, i32 5, i32 8
  %2 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_semaphore_mask, align 4
  %call = tail call fastcc i32 @ixgbe_mii_bus_read_generic(ptr noundef %hw1, i32 noundef %addr, i32 noundef %regnum, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_mii_bus_write(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54, i32 5, i32 8
  %2 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_semaphore_mask, align 4
  %call = tail call fastcc i32 @ixgbe_mii_bus_write_generic(ptr noundef %hw1, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_setup_phy_link_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %speed_ability.i.i = alloca i16, align 2
  %autoneg_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %autoneg_reg) #6
  %0 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %autoneg_reg, align 2
  %speeds_supported.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 11
  %1 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speeds_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.ixgbe_get_copper_link_capabilities_generic.exit_crit_edge

entry.ixgbe_get_copper_link_capabilities_generic.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_copper_link_capabilities_generic.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed_ability.i.i) #6
  %3 = ptrtoint ptr %speed_ability.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %speed_ability.i.i, align 2, !annotation !127
  %read_reg.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %5(ptr noundef %hw, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %speed_ability.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge

if.then.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_copper_speeds_supported.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %6 = ptrtoint ptr %speed_ability.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %speed_ability.i.i, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speeds_supported.i, align 4
  %or.i.i = or i32 %10, 128
  store i32 %or.i.i, ptr %speeds_supported.i, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %11 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool7.not.i.i = icmp eq i16 %11, 0
  br i1 %tobool7.not.i.i, label %if.end4.i.i.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end4.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speeds_supported.i, align 4
  %or11.i.i = or i32 %13, 32
  store i32 %or11.i.i, ptr %speeds_supported.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.end4.i.i.if.end12.i.i_crit_edge
  %14 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool15.not.i.i = icmp eq i16 %14, 0
  br i1 %tobool15.not.i.i, label %if.end12.i.i.if.end20.i.i_crit_edge, label %if.then16.i.i

if.end12.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speeds_supported.i, align 4
  %or19.i.i = or i32 %16, 8
  store i32 %or19.i.i, ptr %speeds_supported.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then16.i.i, %if.end12.i.i.if.end20.i.i_crit_edge
  %type.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %18, label %if.end20.i.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge [
    i32 4, label %sw.bb.i.i
    i32 5, label %if.end20.i.i.sw.bb27.i.i_crit_edge
    i32 6, label %if.end20.i.i.sw.bb27.i.i_crit_edge141
  ]

if.end20.i.i.sw.bb27.i.i_crit_edge141:            ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb27.i.i

if.end20.i.i.sw.bb27.i.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb27.i.i

if.end20.i.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_copper_speeds_supported.exit.i

sw.bb.i.i:                                        ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speeds_supported.i, align 4
  %or26.i.i = or i32 %21, 3072
  br label %ixgbe_get_copper_speeds_supported.exit.sink.split.i

sw.bb27.i.i:                                      ; preds = %if.end20.i.i.sw.bb27.i.i_crit_edge, %if.end20.i.i.sw.bb27.i.i_crit_edge141
  %22 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speeds_supported.i, align 4
  %and30.i.i = and i32 %23, -9
  br label %ixgbe_get_copper_speeds_supported.exit.sink.split.i

ixgbe_get_copper_speeds_supported.exit.sink.split.i: ; preds = %sw.bb27.i.i, %sw.bb.i.i
  %or26.i.sink.i = phi i32 [ %or26.i.i, %sw.bb.i.i ], [ %and30.i.i, %sw.bb27.i.i ]
  %24 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or26.i.sink.i, ptr %speeds_supported.i, align 4
  br label %ixgbe_get_copper_speeds_supported.exit.i

ixgbe_get_copper_speeds_supported.exit.i:         ; preds = %ixgbe_get_copper_speeds_supported.exit.sink.split.i, %if.end20.i.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge, %if.then.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed_ability.i.i) #6
  br label %ixgbe_get_copper_link_capabilities_generic.exit

ixgbe_get_copper_link_capabilities_generic.exit:  ; preds = %ixgbe_get_copper_speeds_supported.exit.i, %entry.ixgbe_get_copper_link_capabilities_generic.exit_crit_edge
  %25 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speeds_supported.i, align 4
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %27 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_reg, align 4
  %call1 = call i32 %28(ptr noundef %hw, i32 noundef 32, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #6
  %29 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %autoneg_reg, align 2
  %31 = and i16 %30, -4097
  store i16 %31, ptr %autoneg_reg, align 2
  %autoneg_advertised = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %32 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %autoneg_advertised, align 4
  %and4 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %and5 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %ixgbe_get_copper_link_capabilities_generic.exit.if.end_crit_edge, label %if.then

ixgbe_get_copper_link_capabilities_generic.exit.if.end_crit_edge: ; preds = %ixgbe_get_copper_link_capabilities_generic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ixgbe_get_copper_link_capabilities_generic.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = or i16 %30, 4096
  %35 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %autoneg_reg, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %ixgbe_get_copper_link_capabilities_generic.exit.if.end_crit_edge
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %36 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg, align 4
  %38 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %autoneg_reg, align 2
  %call11 = call i32 %37(ptr noundef %hw, i32 noundef 32, i32 noundef 7, i16 noundef zeroext %39) #6
  %40 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_reg, align 4
  %call15 = call i32 %41(ptr noundef %hw, i32 noundef 50176, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #6
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp = icmp eq i32 %43, 4
  br i1 %cmp, label %if.then17, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then17:                                        ; preds = %if.end
  %44 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %autoneg_reg, align 2
  %46 = and i16 %45, -2049
  store i16 %46, ptr %autoneg_reg, align 2
  %47 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %autoneg_advertised, align 4
  %and23 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %and26 = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond137 = select i1 %tobool24.not, i1 true, i1 %tobool27.not
  br i1 %or.cond137, label %if.then17.if.end32_crit_edge, label %if.then28

if.then17.if.end32_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then28:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %49 = or i16 %45, 2048
  %50 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %autoneg_reg, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then17.if.end32_crit_edge
  %51 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %autoneg_reg, align 2
  %53 = and i16 %52, -1025
  store i16 %53, ptr %autoneg_reg, align 2
  %and38 = and i32 %48, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %and41 = and i32 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond138 = select i1 %tobool39.not, i1 true, i1 %tobool42.not
  br i1 %or.cond138, label %if.end32.if.end48_crit_edge, label %if.then43

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then43:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %54 = or i16 %52, 1024
  %55 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %autoneg_reg, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end32.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %56 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %autoneg_reg, align 2
  %58 = and i16 %57, 32767
  store i16 %58, ptr %autoneg_reg, align 2
  %59 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %autoneg_advertised, align 4
  %and54 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %and57 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %or.cond139 = select i1 %tobool55.not, i1 true, i1 %tobool58.not
  br i1 %or.cond139, label %if.end48.if.end63_crit_edge, label %if.then59

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then59:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %61 = or i16 %57, -32768
  %62 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %autoneg_reg, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end48.if.end63_crit_edge
  %63 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg, align 4
  %65 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %autoneg_reg, align 2
  %call67 = call i32 %64(ptr noundef %hw, i32 noundef 50176, i32 noundef 7, i16 noundef zeroext %66) #6
  %67 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_reg, align 4
  %call71 = call i32 %68(ptr noundef %hw, i32 noundef 16, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #6
  %69 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %autoneg_reg, align 2
  %71 = and i16 %70, -385
  store i16 %71, ptr %autoneg_reg, align 2
  %72 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %autoneg_advertised, align 4
  %and77 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %and80 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %or.cond140 = select i1 %tobool78.not, i1 true, i1 %tobool81.not
  br i1 %or.cond140, label %if.end63.if.end86_crit_edge, label %if.then82

if.end63.if.end86_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then82:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %74 = or i16 %71, 256
  %75 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %autoneg_reg, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end63.if.end86_crit_edge
  %76 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_reg, align 4
  %78 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %autoneg_reg, align 2
  %call90 = call i32 %77(ptr noundef %hw, i32 noundef 16, i32 noundef 7, i16 noundef zeroext %79) #6
  %80 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i = icmp eq i32 %81, 1
  br i1 %cmp.i, label %if.end86.if.end93_crit_edge, label %if.end.i

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.end.i:                                         ; preds = %if.end86
  %call.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17104) #6
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i131 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i131, label %if.end.i.if.end93_crit_edge, label %do.body2.i

if.end.i.if.end93_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

do.body2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_phy_link_generic, %if.then7.i)) #6
          to label %cleanup [label %if.then7.i], !srcloc !128

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %82 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, ptr noundef %85, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end93:                                         ; preds = %if.end.i.if.end93_crit_edge, %if.end86.if.end93_crit_edge
  %86 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read_reg, align 4
  %call97 = call i32 %87(ptr noundef %hw, i32 noundef 0, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #6
  %88 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %autoneg_reg, align 2
  %90 = or i16 %89, 512
  store i16 %90, ptr %autoneg_reg, align 2
  %91 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_reg, align 4
  %call104 = call i32 %92(ptr noundef %hw, i32 noundef 0, i32 noundef 7, i16 noundef zeroext %90) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then7.i, %do.body2.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %autoneg_reg) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_get_copper_link_capabilities_generic(ptr noundef %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %autoneg) local_unnamed_addr #0 align 64 {
entry:
  %speed_ability.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %autoneg, align 1
  %speeds_supported = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 11
  %1 = ptrtoint ptr %speeds_supported to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speeds_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed_ability.i) #6
  %3 = ptrtoint ptr %speed_ability.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %speed_ability.i, align 2, !annotation !127
  %read_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %5(ptr noundef %hw, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %speed_ability.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.ixgbe_get_copper_speeds_supported.exit_crit_edge

if.then.ixgbe_get_copper_speeds_supported.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_copper_speeds_supported.exit

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %speed_ability.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %speed_ability.i, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %speeds_supported to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speeds_supported, align 4
  %or.i = or i32 %10, 128
  store i32 %or.i, ptr %speeds_supported, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %11 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool7.not.i = icmp eq i16 %11, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end12.i_crit_edge, label %if.then8.i

if.end4.i.if.end12.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %speeds_supported to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speeds_supported, align 4
  %or11.i = or i32 %13, 32
  store i32 %or11.i, ptr %speeds_supported, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end4.i.if.end12.i_crit_edge
  %14 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool15.not.i = icmp eq i16 %14, 0
  br i1 %tobool15.not.i, label %if.end12.i.if.end20.i_crit_edge, label %if.then16.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %speeds_supported to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speeds_supported, align 4
  %or19.i = or i32 %16, 8
  store i32 %or19.i, ptr %speeds_supported, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end20.i_crit_edge
  %type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %18, label %if.end20.i.ixgbe_get_copper_speeds_supported.exit_crit_edge [
    i32 4, label %sw.bb.i
    i32 5, label %if.end20.i.sw.bb27.i_crit_edge
    i32 6, label %if.end20.i.sw.bb27.i_crit_edge5
  ]

if.end20.i.sw.bb27.i_crit_edge5:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb27.i

if.end20.i.sw.bb27.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb27.i

if.end20.i.ixgbe_get_copper_speeds_supported.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_copper_speeds_supported.exit

sw.bb.i:                                          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %speeds_supported to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speeds_supported, align 4
  %or26.i = or i32 %21, 3072
  br label %ixgbe_get_copper_speeds_supported.exit.sink.split

sw.bb27.i:                                        ; preds = %if.end20.i.sw.bb27.i_crit_edge, %if.end20.i.sw.bb27.i_crit_edge5
  %22 = ptrtoint ptr %speeds_supported to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speeds_supported, align 4
  %and30.i = and i32 %23, -9
  br label %ixgbe_get_copper_speeds_supported.exit.sink.split

ixgbe_get_copper_speeds_supported.exit.sink.split: ; preds = %sw.bb27.i, %sw.bb.i
  %or26.i.sink = phi i32 [ %or26.i, %sw.bb.i ], [ %and30.i, %sw.bb27.i ]
  %24 = ptrtoint ptr %speeds_supported to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or26.i.sink, ptr %speeds_supported, align 4
  br label %ixgbe_get_copper_speeds_supported.exit

ixgbe_get_copper_speeds_supported.exit:           ; preds = %ixgbe_get_copper_speeds_supported.exit.sink.split, %if.end20.i.ixgbe_get_copper_speeds_supported.exit_crit_edge, %if.then.ixgbe_get_copper_speeds_supported.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed_ability.i) #6
  br label %if.end

if.end:                                           ; preds = %ixgbe_get_copper_speeds_supported.exit, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call.i, %ixgbe_get_copper_speeds_supported.exit ]
  %25 = ptrtoint ptr %speeds_supported to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speeds_supported, align 4
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %speed, align 4
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_setup_phy_link_speed_generic(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg_advertised = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %0 = and i32 %speed, 2176
  %1 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %autoneg_advertised, align 4
  %and10 = and i32 %speed, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %entry.if.end16_crit_edge, label %if.then12

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg_advertised, align 4
  %or15 = or i32 %3, 1024
  store i32 %or15, ptr %autoneg_advertised, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %entry.if.end16_crit_edge
  %and17 = and i32 %speed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %if.then19

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg_advertised, align 4
  %or22 = or i32 %5, 32
  store i32 %or22, ptr %autoneg_advertised, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end16.if.end23_crit_edge
  %and24 = and i32 %speed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end30_crit_edge, label %if.then26

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %autoneg_advertised, align 4
  %or29 = or i32 %7, 8
  store i32 %or29, ptr %autoneg_advertised, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end23.if.end30_crit_edge
  %and31 = and i32 %speed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end37_crit_edge, label %if.then33

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %autoneg_advertised, align 4
  %or36 = or i32 %9, 2
  store i32 %or36, ptr %autoneg_advertised, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end30.if.end37_crit_edge
  %setup_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %10 = ptrtoint ptr %setup_link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %setup_link, align 4
  %tobool39.not = icmp eq ptr %11, null
  br i1 %tobool39.not, label %if.end37.if.end44_crit_edge, label %if.then40

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %11(ptr noundef %hw) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end37.if.end44_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_check_phy_link_tnx(ptr noundef %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %link_up) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #6
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %phy_data, align 2
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %link_up, align 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %speed, align 4
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %3(i32 noundef 2147480) #6
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %call = call i32 %5(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %6 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phy_data, align 2
  %and = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %cmp6.not = icmp eq i16 %and, 0
  br i1 %cmp6.not, label %for.cond, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 2147480) #6
  %9 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg, align 4
  %call.1 = call i32 %10(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %11 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %phy_data, align 2
  %and.1 = and i16 %12, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.1)
  %cmp6.not.1 = icmp eq i16 %and.1, 0
  br i1 %cmp6.not.1, label %for.cond.1, label %for.cond.if.then_crit_edge

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 2147480) #6
  %14 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg, align 4
  %call.2 = call i32 %15(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %16 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_data, align 2
  %and.2 = and i16 %17, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.2)
  %cmp6.not.2 = icmp eq i16 %and.2, 0
  br i1 %cmp6.not.2, label %for.cond.2, label %for.cond.1.if.then_crit_edge

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 2147480) #6
  %19 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg, align 4
  %call.3 = call i32 %20(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %21 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %phy_data, align 2
  %and.3 = and i16 %22, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.3)
  %cmp6.not.3 = icmp eq i16 %and.3, 0
  br i1 %cmp6.not.3, label %for.cond.3, label %for.cond.2.if.then_crit_edge

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 2147480) #6
  %24 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg, align 4
  %call.4 = call i32 %25(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %26 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %phy_data, align 2
  %and.4 = and i16 %27, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.4)
  %cmp6.not.4 = icmp eq i16 %and.4, 0
  br i1 %cmp6.not.4, label %for.cond.4, label %for.cond.3.if.then_crit_edge

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 2147480) #6
  %29 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_reg, align 4
  %call.5 = call i32 %30(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %31 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %phy_data, align 2
  %and.5 = and i16 %32, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.5)
  %cmp6.not.5 = icmp eq i16 %and.5, 0
  br i1 %cmp6.not.5, label %for.cond.5, label %for.cond.4.if.then_crit_edge

for.cond.4.if.then_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.5:                                       ; preds = %for.cond.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 2147480) #6
  %34 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_reg, align 4
  %call.6 = call i32 %35(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %36 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %phy_data, align 2
  %and.6 = and i16 %37, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.6)
  %cmp6.not.6 = icmp eq i16 %and.6, 0
  br i1 %cmp6.not.6, label %for.cond.6, label %for.cond.5.if.then_crit_edge

for.cond.5.if.then_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.6:                                       ; preds = %for.cond.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 2147480) #6
  %39 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_reg, align 4
  %call.7 = call i32 %40(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %41 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %phy_data, align 2
  %and.7 = and i16 %42, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.7)
  %cmp6.not.7 = icmp eq i16 %and.7, 0
  br i1 %cmp6.not.7, label %for.cond.7, label %for.cond.6.if.then_crit_edge

for.cond.6.if.then_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.7:                                       ; preds = %for.cond.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 2147480) #6
  %44 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_reg, align 4
  %call.8 = call i32 %45(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %46 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %phy_data, align 2
  %and.8 = and i16 %47, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.8)
  %cmp6.not.8 = icmp eq i16 %and.8, 0
  br i1 %cmp6.not.8, label %for.cond.8, label %for.cond.7.if.then_crit_edge

for.cond.7.if.then_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.8:                                       ; preds = %for.cond.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 2147480) #6
  %49 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_reg, align 4
  %call.9 = call i32 %50(ptr noundef %hw, i32 noundef 1, i32 noundef 30, ptr noundef nonnull %phy_data) #6
  %51 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %phy_data, align 2
  %and.9 = and i16 %52, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.9)
  %cmp6.not.9 = icmp eq i16 %and.9, 0
  br i1 %cmp6.not.9, label %for.cond.8.for.end_crit_edge, label %for.cond.8.if.then_crit_edge

for.cond.8.if.then_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.8.for.end_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then:                                          ; preds = %for.cond.8.if.then_crit_edge, %for.cond.7.if.then_crit_edge, %for.cond.6.if.then_crit_edge, %for.cond.5.if.then_crit_edge, %for.cond.4.if.then_crit_edge, %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.if.then_crit_edge ], [ %call.1, %for.cond.if.then_crit_edge ], [ %call.2, %for.cond.1.if.then_crit_edge ], [ %call.3, %for.cond.2.if.then_crit_edge ], [ %call.4, %for.cond.3.if.then_crit_edge ], [ %call.5, %for.cond.4.if.then_crit_edge ], [ %call.6, %for.cond.5.if.then_crit_edge ], [ %call.7, %for.cond.6.if.then_crit_edge ], [ %call.8, %for.cond.7.if.then_crit_edge ], [ %call.9, %for.cond.8.if.then_crit_edge ]
  %.lcssa = phi i16 [ %7, %entry.if.then_crit_edge ], [ %12, %for.cond.if.then_crit_edge ], [ %17, %for.cond.1.if.then_crit_edge ], [ %22, %for.cond.2.if.then_crit_edge ], [ %27, %for.cond.3.if.then_crit_edge ], [ %32, %for.cond.4.if.then_crit_edge ], [ %37, %for.cond.5.if.then_crit_edge ], [ %42, %for.cond.6.if.then_crit_edge ], [ %47, %for.cond.7.if.then_crit_edge ], [ %52, %for.cond.8.if.then_crit_edge ]
  %53 = and i16 %.lcssa, 16
  %54 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %link_up, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp9.not = icmp eq i16 %53, 0
  br i1 %cmp9.not, label %if.then.for.end_crit_edge, label %if.then11

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 32, ptr %speed, align 4
  br label %for.end

for.end:                                          ; preds = %if.then11, %if.then.for.end_crit_edge, %for.cond.8.for.end_crit_edge
  %call21 = phi i32 [ %call.lcssa, %if.then.for.end_crit_edge ], [ %call.lcssa, %if.then11 ], [ %call.9, %for.cond.8.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #6
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_setup_phy_link_tnx(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %speed_ability.i.i = alloca i16, align 2
  %autoneg_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %autoneg_reg) #6
  %0 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %autoneg_reg, align 2
  %speeds_supported.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 11
  %1 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speeds_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.ixgbe_get_copper_link_capabilities_generic.exit_crit_edge

entry.ixgbe_get_copper_link_capabilities_generic.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_copper_link_capabilities_generic.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed_ability.i.i) #6
  %3 = ptrtoint ptr %speed_ability.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %speed_ability.i.i, align 2, !annotation !127
  %read_reg.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %5(ptr noundef %hw, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %speed_ability.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge

if.then.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_copper_speeds_supported.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %6 = ptrtoint ptr %speed_ability.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %speed_ability.i.i, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speeds_supported.i, align 4
  %or.i.i = or i32 %10, 128
  store i32 %or.i.i, ptr %speeds_supported.i, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %11 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool7.not.i.i = icmp eq i16 %11, 0
  br i1 %tobool7.not.i.i, label %if.end4.i.i.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end4.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speeds_supported.i, align 4
  %or11.i.i = or i32 %13, 32
  store i32 %or11.i.i, ptr %speeds_supported.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.end4.i.i.if.end12.i.i_crit_edge
  %14 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool15.not.i.i = icmp eq i16 %14, 0
  br i1 %tobool15.not.i.i, label %if.end12.i.i.if.end20.i.i_crit_edge, label %if.then16.i.i

if.end12.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speeds_supported.i, align 4
  %or19.i.i = or i32 %16, 8
  store i32 %or19.i.i, ptr %speeds_supported.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then16.i.i, %if.end12.i.i.if.end20.i.i_crit_edge
  %type.i.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %18, label %if.end20.i.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge [
    i32 4, label %sw.bb.i.i
    i32 5, label %if.end20.i.i.sw.bb27.i.i_crit_edge
    i32 6, label %if.end20.i.i.sw.bb27.i.i_crit_edge102
  ]

if.end20.i.i.sw.bb27.i.i_crit_edge102:            ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb27.i.i

if.end20.i.i.sw.bb27.i.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb27.i.i

if.end20.i.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_copper_speeds_supported.exit.i

sw.bb.i.i:                                        ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speeds_supported.i, align 4
  %or26.i.i = or i32 %21, 3072
  br label %ixgbe_get_copper_speeds_supported.exit.sink.split.i

sw.bb27.i.i:                                      ; preds = %if.end20.i.i.sw.bb27.i.i_crit_edge, %if.end20.i.i.sw.bb27.i.i_crit_edge102
  %22 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speeds_supported.i, align 4
  %and30.i.i = and i32 %23, -9
  br label %ixgbe_get_copper_speeds_supported.exit.sink.split.i

ixgbe_get_copper_speeds_supported.exit.sink.split.i: ; preds = %sw.bb27.i.i, %sw.bb.i.i
  %or26.i.sink.i = phi i32 [ %or26.i.i, %sw.bb.i.i ], [ %and30.i.i, %sw.bb27.i.i ]
  %24 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or26.i.sink.i, ptr %speeds_supported.i, align 4
  br label %ixgbe_get_copper_speeds_supported.exit.i

ixgbe_get_copper_speeds_supported.exit.i:         ; preds = %ixgbe_get_copper_speeds_supported.exit.sink.split.i, %if.end20.i.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge, %if.then.i.ixgbe_get_copper_speeds_supported.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed_ability.i.i) #6
  br label %ixgbe_get_copper_link_capabilities_generic.exit

ixgbe_get_copper_link_capabilities_generic.exit:  ; preds = %ixgbe_get_copper_speeds_supported.exit.i, %entry.ixgbe_get_copper_link_capabilities_generic.exit_crit_edge
  %25 = ptrtoint ptr %speeds_supported.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speeds_supported.i, align 4
  %and = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ixgbe_get_copper_link_capabilities_generic.exit.if.end13_crit_edge, label %if.then

ixgbe_get_copper_link_capabilities_generic.exit.if.end13_crit_edge: ; preds = %ixgbe_get_copper_link_capabilities_generic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %ixgbe_get_copper_link_capabilities_generic.exit
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %27 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_reg, align 4
  %call1 = call i32 %28(ptr noundef %hw, i32 noundef 32, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #6
  %29 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %autoneg_reg, align 2
  %31 = and i16 %30, -4097
  store i16 %31, ptr %autoneg_reg, align 2
  %autoneg_advertised = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %32 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %autoneg_advertised, align 4
  %and5 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %34 = or i16 %30, 4096
  %35 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %autoneg_reg, align 2
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %36 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg, align 4
  %38 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %autoneg_reg, align 2
  %call12 = call i32 %37(ptr noundef %hw, i32 noundef 32, i32 noundef 7, i16 noundef zeroext %39) #6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %ixgbe_get_copper_link_capabilities_generic.exit.if.end13_crit_edge
  %and14 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end37_crit_edge, label %if.then16

if.end13.if.end37_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then16:                                        ; preds = %if.end13
  %read_reg19 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %40 = ptrtoint ptr %read_reg19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_reg19, align 4
  %call20 = call i32 %41(ptr noundef %hw, i32 noundef 23, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #6
  %42 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %autoneg_reg, align 2
  %44 = and i16 %43, -16385
  store i16 %44, ptr %autoneg_reg, align 2
  %autoneg_advertised25 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %45 = ptrtoint ptr %autoneg_advertised25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %autoneg_advertised25, align 4
  %and26 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then16.if.end32_crit_edge, label %if.then28

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then28:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %47 = or i16 %43, 16384
  %48 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %autoneg_reg, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then16.if.end32_crit_edge
  %write_reg35 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %49 = ptrtoint ptr %write_reg35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_reg35, align 4
  %51 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %autoneg_reg, align 2
  %call36 = call i32 %50(ptr noundef %hw, i32 noundef 23, i32 noundef 7, i16 noundef zeroext %52) #6
  br label %if.end37

if.end37:                                         ; preds = %if.end32, %if.end13.if.end37_crit_edge
  %and38 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end61_crit_edge, label %if.then40

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then40:                                        ; preds = %if.end37
  %read_reg43 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %53 = ptrtoint ptr %read_reg43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_reg43, align 4
  %call44 = call i32 %54(ptr noundef %hw, i32 noundef 16, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #6
  %55 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %autoneg_reg, align 2
  %57 = and i16 %56, -385
  store i16 %57, ptr %autoneg_reg, align 2
  %autoneg_advertised49 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %58 = ptrtoint ptr %autoneg_advertised49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %autoneg_advertised49, align 4
  %and50 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then40.if.end56_crit_edge, label %if.then52

if.then40.if.end56_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then52:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %60 = or i16 %57, 256
  %61 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %autoneg_reg, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.then40.if.end56_crit_edge
  %write_reg59 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %62 = ptrtoint ptr %write_reg59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg59, align 4
  %64 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %autoneg_reg, align 2
  %call60 = call i32 %63(ptr noundef %hw, i32 noundef 16, i32 noundef 7, i16 noundef zeroext %65) #6
  br label %if.end61

if.end61:                                         ; preds = %if.end56, %if.end37.if.end61_crit_edge
  %type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i = icmp eq i32 %67, 1
  br i1 %cmp.i, label %if.end61.if.end64_crit_edge, label %if.end.i

if.end61.if.end64_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.end.i:                                         ; preds = %if.end61
  %call.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17104) #6
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i98 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i98, label %if.end.i.if.end64_crit_edge, label %do.body2.i

if.end.i.if.end64_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.body2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_phy_link_tnx, %if.then7.i)) #6
          to label %cleanup [label %if.then7.i], !srcloc !128

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %68 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %netdev.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, ptr noundef %71, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end64:                                         ; preds = %if.end.i.if.end64_crit_edge, %if.end61.if.end64_crit_edge
  %read_reg67 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %72 = ptrtoint ptr %read_reg67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_reg67, align 4
  %call68 = call i32 %73(ptr noundef %hw, i32 noundef 0, i32 noundef 7, ptr noundef nonnull %autoneg_reg) #6
  %74 = ptrtoint ptr %autoneg_reg to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %autoneg_reg, align 2
  %76 = or i16 %75, 512
  store i16 %76, ptr %autoneg_reg, align 2
  %write_reg74 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %77 = ptrtoint ptr %write_reg74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_reg74, align 4
  %call75 = call i32 %78(ptr noundef %hw, i32 noundef 0, i32 noundef 7, i16 noundef zeroext %76) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then7.i, %do.body2.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %autoneg_reg) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_reset_phy_nl(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_offset = alloca i16, align 2
  %eword = alloca i16, align 2
  %block_crc = alloca i16, align 2
  %list_offset = alloca i16, align 2
  %data_offset = alloca i16, align 2
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_offset) #6
  %0 = ptrtoint ptr %phy_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_offset, align 2, !annotation !127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eword) #6
  %1 = ptrtoint ptr %eword to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %eword, align 2, !annotation !127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %block_crc) #6
  %2 = ptrtoint ptr %block_crc to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %block_crc, align 2, !annotation !127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %list_offset) #6
  %3 = ptrtoint ptr %list_offset to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %list_offset, align 2, !annotation !127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #6
  %4 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %data_offset, align 2, !annotation !127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #6
  %5 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %phy_data, align 2
  %type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17104) #6
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %do.body2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %if.then7.i)) #6
          to label %cleanup [label %if.then7.i], !srcloc !128

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, ptr noundef %11, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 4
  %call1 = call i32 %13(ptr noundef %hw, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %phy_data) #6
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %14 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg, align 4
  %16 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_data, align 2
  %18 = or i16 %17, -32768
  %call5 = call i32 %15(ptr noundef %hw, i32 noundef 0, i32 noundef 4, i16 noundef zeroext %18) #6
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.end
  %i.0372 = phi i32 [ 0, %if.end ], [ %inc, %if.end15.for.body_crit_edge ]
  %19 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg, align 4
  %call10 = call i32 %20(ptr noundef %hw, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %phy_data) #6
  %21 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %phy_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp12 = icmp sgt i16 %22, -1
  br i1 %cmp12, label %for.body.if.end29_crit_edge, label %if.end15

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end15:                                         ; preds = %for.body
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %inc = add nuw nsw i32 %i.0372, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.end, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end15
  %23 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %23)
  %.pr = load i16, ptr %phy_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %.pr)
  %cmp18.not = icmp sgt i16 %.pr, -1
  br i1 %cmp18.not, label %for.end.if.end29_crit_edge, label %do.body21

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.body21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %if.then25)) #6
          to label %cleanup [label %if.then25], !srcloc !128

if.then25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %24 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug367, ptr noundef %27, ptr noundef nonnull @.str.21) #6
  br label %cleanup

if.end29:                                         ; preds = %for.end.if.end29_crit_edge, %for.body.if.end29_crit_edge
  %call30 = call i32 @ixgbe_get_sfp_init_sequence_offsets(ptr noundef %hw, ptr noundef nonnull %list_offset, ptr noundef nonnull %data_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %28 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read, align 4
  %30 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data_offset, align 2
  %call35 = call i32 %29(ptr noundef %hw, i16 noundef zeroext %31, ptr noundef nonnull %block_crc) #6
  %32 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data_offset, align 2
  %inc36 = add i16 %33, 1
  store i16 %inc36, ptr %data_offset, align 2
  %back172 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %34 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read, align 4
  %call43381 = call i32 %35(ptr noundef %hw, i16 noundef zeroext %inc36, ptr noundef nonnull %eword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43381)
  %tobool44.not382 = icmp eq i32 %call43381, 0
  br i1 %tobool44.not382, label %if.end33.if.end46_crit_edge, label %if.end33.err_eeprom_crit_edge

if.end33.err_eeprom_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_eeprom

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  br label %if.end46

if.end46:                                         ; preds = %while.body.backedge.if.end46_crit_edge, %if.end33.if.end46_crit_edge
  %36 = ptrtoint ptr %eword to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %eword, align 2
  %38 = lshr i16 %37, 12
  %39 = and i16 %37, 4095
  %conv53 = zext i16 %38 to i32
  %40 = zext i32 %conv53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %conv53, label %do.body254 [
    i32 0, label %sw.bb
    i32 1, label %do.body82
    i32 15, label %sw.bb156
  ]

sw.bb:                                            ; preds = %if.end46
  %41 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %data_offset, align 2
  %inc54 = add i16 %42, 1
  store i16 %inc54, ptr %data_offset, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %if.then68)) #6
          to label %do.end76 [label %if.then68], !srcloc !128

if.then68:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %back172 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %back172, align 4
  %netdev70 = getelementptr inbounds %struct.ixgbe_adapter, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %netdev70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev70, align 128
  %conv71 = zext i16 %39 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug368, ptr noundef %46, ptr noundef nonnull @.str.22, i32 noundef %conv71) #6
  br label %do.end76

do.end76:                                         ; preds = %if.then68, %sw.bb
  %conv77 = zext i16 %39 to i32
  %mul = mul nuw nsw i32 %conv77, 1000
  %mul79 = mul nuw nsw i32 %conv77, 2000
  call void @usleep_range_state(i32 noundef %mul, i32 noundef %mul79, i32 noundef 2) #6
  br label %while.body.backedge

do.body82:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %if.then94)) #6
          to label %do.end101 [label %if.then94], !srcloc !128

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %back172 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %back172, align 4
  %netdev96 = getelementptr inbounds %struct.ixgbe_adapter, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %netdev96 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev96, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug369, ptr noundef %50, ptr noundef nonnull @.str.23) #6
  br label %do.end101

do.end101:                                        ; preds = %if.then94, %do.body82
  %51 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %data_offset, align 2
  %inc102 = add i16 %52, 1
  %53 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read, align 4
  %inc106 = add i16 %52, 2
  store i16 %inc106, ptr %data_offset, align 2
  %call107 = call i32 %54(ptr noundef %hw, i16 noundef zeroext %inc102, ptr noundef nonnull %phy_offset) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %for.cond111.preheader, label %do.end101.err_eeprom_crit_edge

do.end101.err_eeprom_crit_edge:                   ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_eeprom

for.cond111.preheader:                            ; preds = %do.end101
  %conv112 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp113373.not = icmp eq i16 %39, 0
  br i1 %cmp113373.not, label %for.cond111.preheader.while.body.backedge_crit_edge, label %for.cond111.preheader.for.body115_crit_edge

for.cond111.preheader.for.body115_crit_edge:      ; preds = %for.cond111.preheader
  br label %for.body115

for.cond111.preheader.while.body.backedge_crit_edge: ; preds = %for.cond111.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.backedge

for.body115:                                      ; preds = %do.end150.for.body115_crit_edge, %for.cond111.preheader.for.body115_crit_edge
  %i.1374 = phi i32 [ %inc154, %do.end150.for.body115_crit_edge ], [ 0, %for.cond111.preheader.for.body115_crit_edge ]
  %55 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read, align 4
  %57 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data_offset, align 2
  %call119 = call i32 %56(ptr noundef %hw, i16 noundef zeroext %58, ptr noundef nonnull %eword) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %for.body115.err_eeprom_crit_edge

for.body115.err_eeprom_crit_edge:                 ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_eeprom

if.end122:                                        ; preds = %for.body115
  %59 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_reg, align 4
  %61 = ptrtoint ptr %phy_offset to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %phy_offset, align 2
  %conv126 = zext i16 %62 to i32
  %63 = ptrtoint ptr %eword to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %eword, align 2
  %call127 = call i32 %60(ptr noundef %hw, i32 noundef %conv126, i32 noundef 1, i16 noundef zeroext %64) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %if.then141)) #6
          to label %do.end150 [label %if.then141], !srcloc !128

if.then141:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %back172 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %back172, align 4
  %netdev143 = getelementptr inbounds %struct.ixgbe_adapter, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %netdev143 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %netdev143, align 128
  %69 = ptrtoint ptr %eword to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %eword, align 2
  %conv144 = zext i16 %70 to i32
  %71 = ptrtoint ptr %phy_offset to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %phy_offset, align 2
  %conv145 = zext i16 %72 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug370, ptr noundef %68, ptr noundef nonnull @.str.24, i32 noundef %conv144, i32 noundef %conv145) #6
  br label %do.end150

do.end150:                                        ; preds = %if.then141, %if.end122
  %73 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %data_offset, align 2
  %inc151 = add i16 %74, 1
  store i16 %inc151, ptr %data_offset, align 2
  %75 = ptrtoint ptr %phy_offset to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %phy_offset, align 2
  %inc152 = add i16 %76, 1
  store i16 %inc152, ptr %phy_offset, align 2
  %inc154 = add nuw nsw i32 %i.1374, 1
  %exitcond377.not = icmp eq i32 %inc154, %conv112
  br i1 %exitcond377.not, label %do.end150.while.body.backedge_crit_edge, label %do.end150.for.body115_crit_edge

do.end150.for.body115_crit_edge:                  ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body115

do.end150.while.body.backedge_crit_edge:          ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.backedge

sw.bb156:                                         ; preds = %if.end46
  %77 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %data_offset, align 2
  %inc157 = add i16 %78, 1
  store i16 %inc157, ptr %data_offset, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %if.then171)) #6
          to label %do.end178 [label %if.then171], !srcloc !128

if.then171:                                       ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %back172 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %back172, align 4
  %netdev173 = getelementptr inbounds %struct.ixgbe_adapter, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %netdev173 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev173, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug371, ptr noundef %82, ptr noundef nonnull @.str.25) #6
  br label %do.end178

do.end178:                                        ; preds = %if.then171, %sw.bb156
  %trunc = trunc i16 %37 to i12
  %83 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.57)
  switch i12 %trunc, label %do.body231 [
    i12 -1, label %do.body184
    i12 0, label %do.body209
  ]

do.body184:                                       ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %sw.epilog.thread)) #6
          to label %cleanup [label %sw.epilog.thread], !srcloc !128

sw.epilog.thread:                                 ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %back172 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %back172, align 4
  %netdev198 = getelementptr inbounds %struct.ixgbe_adapter, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %netdev198 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev198, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug372, ptr noundef %87, ptr noundef nonnull @.str.26) #6
  br label %cleanup

do.body209:                                       ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %if.then221)) #6
          to label %while.body.backedge [label %if.then221], !srcloc !128

if.then221:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %back172 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %back172, align 4
  %netdev223 = getelementptr inbounds %struct.ixgbe_adapter, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %netdev223 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %netdev223, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug373, ptr noundef %91, ptr noundef nonnull @.str.27) #6
  br label %while.body.backedge

do.body231:                                       ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %if.then243)) #6
          to label %cleanup [label %if.then243], !srcloc !128

if.then243:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %back172 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %back172, align 4
  %netdev245 = getelementptr inbounds %struct.ixgbe_adapter, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %netdev245 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %netdev245, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug374, ptr noundef %95, ptr noundef nonnull @.str.28) #6
  br label %cleanup

do.body254:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_phy_nl, %if.then266)) #6
          to label %cleanup [label %if.then266], !srcloc !128

if.then266:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %back172 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %back172, align 4
  %netdev268 = getelementptr inbounds %struct.ixgbe_adapter, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %netdev268 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %netdev268, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug375, ptr noundef %99, ptr noundef nonnull @.str.29) #6
  br label %cleanup

while.body.backedge:                              ; preds = %if.then221, %do.body209, %do.end150.while.body.backedge_crit_edge, %for.cond111.preheader.while.body.backedge_crit_edge, %do.end76
  %100 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read, align 4
  %102 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %data_offset, align 2
  %call43 = call i32 %101(ptr noundef %hw, i16 noundef zeroext %103, ptr noundef nonnull %eword) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %while.body.backedge.if.end46_crit_edge, label %while.body.backedge.err_eeprom_crit_edge

while.body.backedge.err_eeprom_crit_edge:         ; preds = %while.body.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_eeprom

while.body.backedge.if.end46_crit_edge:           ; preds = %while.body.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

err_eeprom:                                       ; preds = %while.body.backedge.err_eeprom_crit_edge, %for.body115.err_eeprom_crit_edge, %do.end101.err_eeprom_crit_edge, %if.end33.err_eeprom_crit_edge
  %104 = ptrtoint ptr %back172 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %back172, align 4
  %netdev275 = getelementptr inbounds %struct.ixgbe_adapter, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %netdev275 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %netdev275, align 128
  %108 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %data_offset, align 2
  %conv276 = zext i16 %109 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %107, ptr noundef nonnull @.str.30, i32 noundef %conv276) #9
  br label %cleanup

cleanup:                                          ; preds = %err_eeprom, %if.then266, %do.body254, %if.then243, %do.body231, %sw.epilog.thread, %do.body184, %if.end29.cleanup_crit_edge, %if.then25, %do.body21, %if.then7.i, %do.body2.i
  %retval.0 = phi i32 [ -3, %err_eeprom ], [ -3, %if.then25 ], [ %call30, %if.end29.cleanup_crit_edge ], [ -3, %if.then243 ], [ -3, %if.then266 ], [ 0, %do.body2.i ], [ 0, %if.then7.i ], [ -3, %do.body21 ], [ -3, %do.body231 ], [ -3, %do.body254 ], [ 0, %sw.epilog.thread ], [ 0, %do.body184 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %list_offset) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %block_crc) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eword) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_offset) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(ptr noundef %hw, ptr noundef %list_offset, ptr noundef %data_offset) local_unnamed_addr #0 align 64 {
entry:
  %sfp_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sfp_id) #6
  %0 = ptrtoint ptr %sfp_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sfp_id, align 2, !annotation !127
  %sfp_type1 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %1 = ptrtoint ptr %sfp_type1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sfp_type1, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %2, label %if.end10 [
    i32 65535, label %entry.cleanup_crit_edge
    i32 65534, label %if.then9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4321, i16 %5)
  %cmp12 = icmp eq i16 %5, 4321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp16 = icmp eq i32 %2, 0
  %or.cond = select i1 %cmp12, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %trunc = trunc i32 %2 to i16
  %switch.tableidx = add i16 %trunc, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %switch.tableidx)
  %6 = icmp ult i16 %switch.tableidx, 8
  br i1 %6, label %switch.lookup, label %if.end19.if.end52_crit_edge

if.end19.if.end52_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

switch.lookup:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %7 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.ixgbe_get_sfp_init_sequence_offsets, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %8)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %if.end52

if.end52:                                         ; preds = %switch.lookup, %if.end19.if.end52_crit_edge
  %sfp_type.0 = phi i16 [ %switch.load, %switch.lookup ], [ %trunc, %if.end19.if.end52_crit_edge ]
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %9 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read, align 4
  %call = tail call i32 %10(ptr noundef %hw, i16 noundef zeroext 43, ptr noundef %list_offset) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.34, i32 noundef 43) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end52
  %15 = ptrtoint ptr %list_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %list_offset, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %16, label %if.end61 [
    i16 0, label %if.end54.cleanup_crit_edge
    i16 -1, label %if.end54.cleanup_crit_edge190
  ]

if.end54.cleanup_crit_edge190:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %inc = add nuw i16 %16, 1
  %18 = ptrtoint ptr %list_offset to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %inc, ptr %list_offset, align 2
  %19 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read, align 4
  %call65 = call i32 %20(ptr noundef %hw, i16 noundef zeroext %inc, ptr noundef nonnull %sfp_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end61.while.cond_crit_edge, label %if.end61.err_phy_crit_edge

if.end61.err_phy_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_phy

if.end61.while.cond_crit_edge:                    ; preds = %if.end61
  br label %while.cond

while.cond:                                       ; preds = %if.else103.while.cond_crit_edge, %if.end61.while.cond_crit_edge
  %21 = ptrtoint ptr %sfp_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sfp_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp70.not = icmp eq i16 %22, -1
  br i1 %cmp70.not, label %while.cond.do.body119_crit_edge, label %while.body

while.cond.do.body119_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %sfp_type.0)
  %cmp74 = icmp eq i16 %22, %sfp_type.0
  %23 = ptrtoint ptr %list_offset to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %list_offset, align 2
  br i1 %cmp74, label %if.then76, label %if.else103

if.then76:                                        ; preds = %while.body
  %inc77 = add i16 %24, 1
  %25 = ptrtoint ptr %list_offset to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %inc77, ptr %list_offset, align 2
  %26 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read, align 4
  %call81 = call i32 %27(ptr noundef %hw, i16 noundef zeroext %inc77, ptr noundef %data_offset) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then76.err_phy_crit_edge

if.then76.err_phy_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_phy

if.end84:                                         ; preds = %if.then76
  %28 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data_offset, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %29, label %while.end [
    i16 0, label %if.end84.do.body91_crit_edge
    i16 -1, label %if.end84.do.body91_crit_edge191
  ]

if.end84.do.body91_crit_edge191:                  ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body91

if.end84.do.body91_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body91

do.body91:                                        ; preds = %if.end84.do.body91_crit_edge, %if.end84.do.body91_crit_edge191
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_get_sfp_init_sequence_offsets.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_get_sfp_init_sequence_offsets, %if.then96)) #6
          to label %cleanup [label %if.then96], !srcloc !128

if.then96:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #8
  %back97 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %31 = ptrtoint ptr %back97 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %back97, align 4
  %netdev98 = getelementptr inbounds %struct.ixgbe_adapter, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %netdev98 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev98, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_get_sfp_init_sequence_offsets.__UNIQUE_ID_ddebug378, ptr noundef %34, ptr noundef nonnull @.str.33) #6
  br label %cleanup

if.else103:                                       ; preds = %while.body
  %add = add i16 %24, 2
  %35 = ptrtoint ptr %list_offset to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %add, ptr %list_offset, align 2
  %36 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read, align 4
  %call109 = call i32 %37(ptr noundef %hw, i16 noundef zeroext %add, ptr noundef nonnull %sfp_id) #6
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.else103.while.cond_crit_edge, label %if.else103.err_phy_crit_edge

if.else103.err_phy_crit_edge:                     ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_phy

if.else103.while.cond_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %if.end84
  %38 = ptrtoint ptr %sfp_id to i32
  call void @__asan_load2_noabort(i32 %38)
  %.pr = load i16, ptr %sfp_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %.pr)
  %cmp115 = icmp eq i16 %.pr, -1
  br i1 %cmp115, label %while.end.do.body119_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end.do.body119_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

do.body119:                                       ; preds = %while.end.do.body119_crit_edge, %while.cond.do.body119_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_get_sfp_init_sequence_offsets.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_get_sfp_init_sequence_offsets, %if.then131)) #6
          to label %cleanup [label %if.then131], !srcloc !128

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  %back132 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %39 = ptrtoint ptr %back132 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %back132, align 4
  %netdev133 = getelementptr inbounds %struct.ixgbe_adapter, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %netdev133 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev133, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_get_sfp_init_sequence_offsets.__UNIQUE_ID_ddebug379, ptr noundef %42, ptr noundef nonnull @.str.36) #6
  br label %cleanup

err_phy:                                          ; preds = %if.else103.err_phy_crit_edge, %if.then76.err_phy_crit_edge, %if.end61.err_phy_crit_edge
  %back140 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %43 = ptrtoint ptr %back140 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %back140, align 4
  %netdev141 = getelementptr inbounds %struct.ixgbe_adapter, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %netdev141 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev141, align 128
  %47 = ptrtoint ptr %list_offset to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %list_offset, align 2
  %conv142 = zext i16 %48 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.30, i32 noundef %conv142) #9
  br label %cleanup

cleanup:                                          ; preds = %err_phy, %if.then131, %do.body119, %while.end.cleanup_crit_edge, %if.then96, %do.body91, %if.end54.cleanup_crit_edge, %if.end54.cleanup_crit_edge190, %if.then53, %if.end10.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -20, %if.then9 ], [ -21, %if.then53 ], [ -3, %err_phy ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ], [ -21, %if.end54.cleanup_crit_edge ], [ -21, %if.end54.cleanup_crit_edge190 ], [ -19, %if.then96 ], [ -19, %if.then131 ], [ 0, %while.end.cleanup_crit_edge ], [ -19, %do.body91 ], [ -19, %do.body119 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sfp_id) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_identify_module_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %0 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %1(ptr noundef %hw) #6
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @ixgbe_identify_sfp_module_generic(ptr noundef %hw)
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @ixgbe_identify_qsfp_module_generic(ptr noundef %hw)
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sfp_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %3 = ptrtoint ptr %sfp_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65534, ptr %sfp_type, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -20, %sw.default ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_identify_sfp_module_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %identifier = alloca i8, align 1
  %comp_codes_1g = alloca i8, align 1
  %comp_codes_10g = alloca i8, align 1
  %oui_bytes = alloca [3 x i8], align 1
  %cable_tech = alloca i8, align 1
  %cable_spec = alloca i8, align 1
  %enforce_sfp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %sfp_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sfp_type, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %identifier) #6
  %4 = ptrtoint ptr %identifier to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %identifier, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %comp_codes_1g) #6
  %5 = ptrtoint ptr %comp_codes_1g to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %comp_codes_1g, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %comp_codes_10g) #6
  %6 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %comp_codes_10g, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %oui_bytes) #6
  %7 = call ptr @memset(ptr %oui_bytes, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cable_tech) #6
  %8 = ptrtoint ptr %cable_tech to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %cable_tech, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cable_spec) #6
  %9 = ptrtoint ptr %cable_spec to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %cable_spec, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %enforce_sfp) #6
  %10 = ptrtoint ptr %enforce_sfp to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %enforce_sfp, align 2
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %11 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %12(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %sfp_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65534, ptr %sfp_type, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 11
  %14 = ptrtoint ptr %set_lan_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_lan_id, align 4
  tail call void %15(ptr noundef %hw) #6
  %read_i2c_eeprom = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 15
  %16 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_i2c_eeprom, align 4
  %call7 = call i32 %17(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef nonnull %identifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.err_read_i2c_eeprom_crit_edge

if.end.err_read_i2c_eeprom_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end9:                                          ; preds = %if.end
  %18 = ptrtoint ptr %identifier to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %identifier, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp10.not = icmp eq i8 %19, 3
  br i1 %cmp10.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 25, ptr %type, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_i2c_eeprom, align 4
  %call18 = call i32 %22(ptr noundef %hw, i8 noundef zeroext 6, ptr noundef nonnull %comp_codes_1g) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end14.err_read_i2c_eeprom_crit_edge

if.end14.err_read_i2c_eeprom_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end21:                                         ; preds = %if.end14
  %23 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_i2c_eeprom, align 4
  %call25 = call i32 %24(ptr noundef %hw, i8 noundef zeroext 3, ptr noundef nonnull %comp_codes_10g) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end21.err_read_i2c_eeprom_crit_edge

if.end21.err_read_i2c_eeprom_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end28:                                         ; preds = %if.end21
  %25 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_i2c_eeprom, align 4
  %call32 = call i32 %26(ptr noundef %hw, i8 noundef zeroext 8, ptr noundef nonnull %cable_tech) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end28.err_read_i2c_eeprom_crit_edge

if.end28.err_read_i2c_eeprom_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end35:                                         ; preds = %if.end28
  %type37 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %type37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp38 = icmp eq i32 %28, 1
  %29 = ptrtoint ptr %cable_tech to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cable_tech, align 1
  br i1 %cmp38, label %if.then40, label %if.else65

if.then40:                                        ; preds = %if.end35
  %31 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool42.not = icmp eq i8 %31, 0
  br i1 %tobool42.not, label %if.else, label %if.then40.if.end186_crit_edge

if.then40.if.end186_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.else:                                          ; preds = %if.then40
  %32 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %comp_codes_10g, align 1
  %conv46 = zext i8 %33 to i32
  %and47 = and i32 %conv46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else52, label %if.else.if.end186_crit_edge

if.else.if.end186_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.else52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and54 = and i32 %conv46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %. = select i1 %tobool55.not, i32 65535, i32 2
  br label %if.end186

if.else65:                                        ; preds = %if.end35
  %conv66 = zext i8 %30 to i32
  %and67 = and i32 %conv66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else80, label %if.then69

if.then69:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #8
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %34 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp71 = icmp eq i8 %35, 0
  %.533 = select i1 %cmp71, i32 3, i32 4
  br label %if.end186

if.else80:                                        ; preds = %if.else65
  %and82 = and i32 %conv66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.else109, label %if.then84

if.then84:                                        ; preds = %if.else80
  %36 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_i2c_eeprom, align 4
  %call88 = call i32 %37(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %cable_spec) #6
  %38 = ptrtoint ptr %cable_spec to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cable_spec, align 1
  %40 = and i8 %39, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool91.not = icmp eq i8 %40, 0
  br i1 %tobool91.not, label %if.then84.if.end186_crit_edge, label %if.then92

if.then84.if.end186_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then92:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %lan_id94 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %41 = ptrtoint ptr %lan_id94 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lan_id94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp96 = icmp eq i8 %42, 0
  %.534 = select i1 %cmp96, i32 7, i32 8
  br label %if.end186

if.else109:                                       ; preds = %if.else80
  %43 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %comp_codes_10g, align 1
  %45 = and i8 %44, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool112.not = icmp eq i8 %45, 0
  br i1 %tobool112.not, label %if.else126, label %if.then113

if.then113:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #8
  %lan_id115 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %46 = ptrtoint ptr %lan_id115 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %lan_id115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp117 = icmp eq i8 %47, 0
  %.535 = select i1 %cmp117, i32 5, i32 6
  br label %if.end186

if.else126:                                       ; preds = %if.else109
  %48 = ptrtoint ptr %comp_codes_1g to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %comp_codes_1g, align 1
  %conv127 = zext i8 %49 to i32
  %and128 = and i32 %conv127, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.else143, label %if.then130

if.then130:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #8
  %lan_id132 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %50 = ptrtoint ptr %lan_id132 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %lan_id132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp134 = icmp eq i8 %51, 0
  %.536 = select i1 %cmp134, i32 9, i32 10
  br label %if.end186

if.else143:                                       ; preds = %if.else126
  %and145 = and i32 %conv127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.else160, label %if.then147

if.then147:                                       ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #8
  %lan_id149 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %52 = ptrtoint ptr %lan_id149 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %lan_id149, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp151 = icmp eq i8 %53, 0
  %.537 = select i1 %cmp151, i32 11, i32 12
  br label %if.end186

if.else160:                                       ; preds = %if.else143
  %and162 = and i32 %conv127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.else160.if.end186_crit_edge, label %if.then164

if.else160.if.end186_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then164:                                       ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #8
  %lan_id166 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %54 = ptrtoint ptr %lan_id166 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %lan_id166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp168 = icmp eq i8 %55, 0
  %.538 = select i1 %cmp168, i32 13, i32 14
  br label %if.end186

if.end186:                                        ; preds = %if.then164, %if.else160.if.end186_crit_edge, %if.then147, %if.then130, %if.then113, %if.then92, %if.then84.if.end186_crit_edge, %if.then69, %if.else52, %if.else.if.end186_crit_edge, %if.then40.if.end186_crit_edge
  %.sink = phi i32 [ 0, %if.then40.if.end186_crit_edge ], [ 1, %if.else.if.end186_crit_edge ], [ %., %if.else52 ], [ %.533, %if.then69 ], [ %.534, %if.then92 ], [ 65535, %if.then84.if.end186_crit_edge ], [ %.535, %if.then113 ], [ %.536, %if.then130 ], [ %.537, %if.then147 ], [ %.538, %if.then164 ], [ 65535, %if.else160.if.end186_crit_edge ]
  %56 = ptrtoint ptr %sfp_type to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %sfp_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink, i32 %3)
  %cmp189.not = icmp eq i32 %.sink, %3
  br i1 %cmp189.not, label %if.end186.if.end193_crit_edge, label %if.then191

if.end186.if.end193_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193

if.then191:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  %sfp_setup_needed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 5
  %57 = ptrtoint ptr %sfp_setup_needed to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %sfp_setup_needed, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end186.if.end193_crit_edge
  %multispeed_fiber = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 16
  %58 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %multispeed_fiber, align 1
  %59 = ptrtoint ptr %comp_codes_1g to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %comp_codes_1g, align 1
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool197.not = icmp eq i8 %61, 0
  br i1 %tobool197.not, label %if.end193.lor.lhs.false_crit_edge, label %land.lhs.true

if.end193.lor.lhs.false_crit_edge:                ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end193
  %62 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %comp_codes_10g, align 1
  %64 = and i8 %63, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool200.not = icmp eq i8 %64, 0
  br i1 %tobool200.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then208_crit_edge

land.lhs.true.if.then208_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then208

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end193.lor.lhs.false_crit_edge
  %65 = and i8 %60, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool203.not = icmp eq i8 %65, 0
  br i1 %tobool203.not, label %lor.lhs.false.if.end211_crit_edge, label %land.lhs.true204

lor.lhs.false.if.end211_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

land.lhs.true204:                                 ; preds = %lor.lhs.false
  %66 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %comp_codes_10g, align 1
  %68 = and i8 %67, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool207.not = icmp eq i8 %68, 0
  br i1 %tobool207.not, label %land.lhs.true204.if.end211_crit_edge, label %land.lhs.true204.if.then208_crit_edge

land.lhs.true204.if.then208_crit_edge:            ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then208

land.lhs.true204.if.end211_crit_edge:             ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

if.then208:                                       ; preds = %land.lhs.true204.if.then208_crit_edge, %land.lhs.true.if.then208_crit_edge
  %69 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %multispeed_fiber, align 1
  br label %if.end211

if.end211:                                        ; preds = %if.then208, %land.lhs.true204.if.end211_crit_edge, %lor.lhs.false.if.end211_crit_edge
  %type213 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %70 = ptrtoint ptr %type213 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %71)
  %cmp214.not = icmp eq i32 %71, 12
  br i1 %cmp214.not, label %if.end211.if.end296_crit_edge, label %if.then216

if.end211.if.end296_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end296

if.then216:                                       ; preds = %if.end211
  %72 = ptrtoint ptr %identifier to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %identifier, align 1
  %conv217 = zext i8 %73 to i32
  %id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 3
  %74 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv217, ptr %id, align 4
  %75 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read_i2c_eeprom, align 4
  %call222 = call i32 %76(ptr noundef %hw, i8 noundef zeroext 37, ptr noundef nonnull %oui_bytes) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223.not = icmp eq i32 %call222, 0
  br i1 %cmp223.not, label %if.end226, label %if.then216.err_read_i2c_eeprom_crit_edge

if.then216.err_read_i2c_eeprom_crit_edge:         ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end226:                                        ; preds = %if.then216
  %77 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read_i2c_eeprom, align 4
  %arrayidx230 = getelementptr inbounds [3 x i8], ptr %oui_bytes, i32 0, i32 1
  %call231 = call i32 %78(ptr noundef %hw, i8 noundef zeroext 38, ptr noundef %arrayidx230) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232.not = icmp eq i32 %call231, 0
  br i1 %cmp232.not, label %if.end235, label %if.end226.err_read_i2c_eeprom_crit_edge

if.end226.err_read_i2c_eeprom_crit_edge:          ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end235:                                        ; preds = %if.end226
  %79 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read_i2c_eeprom, align 4
  %arrayidx239 = getelementptr inbounds [3 x i8], ptr %oui_bytes, i32 0, i32 2
  %call240 = call i32 %80(ptr noundef %hw, i8 noundef zeroext 39, ptr noundef %arrayidx239) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %cmp241.not = icmp eq i32 %call240, 0
  br i1 %cmp241.not, label %if.end244, label %if.end235.err_read_i2c_eeprom_crit_edge

if.end235.err_read_i2c_eeprom_crit_edge:          ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end244:                                        ; preds = %if.end235
  %81 = ptrtoint ptr %oui_bytes to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %oui_bytes, align 1
  %conv246 = zext i8 %82 to i32
  %shl = shl nuw i32 %conv246, 24
  %83 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx230, align 1
  %conv248 = zext i8 %84 to i32
  %shl249 = shl nuw nsw i32 %conv248, 16
  %or = or i32 %shl249, %shl
  %85 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx239, align 1
  %conv251 = zext i8 %86 to i32
  %shl252 = shl nuw nsw i32 %conv251, 8
  %or253 = or i32 %or, %shl252
  %87 = zext i32 %or253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %or253, label %sw.default [
    i32 4224512, label %sw.bb
    i32 9463040, label %sw.bb261
    i32 1534464, label %if.end244.if.end296.sink.split_crit_edge
    i32 1777920, label %sw.bb275
  ]

if.end244.if.end296.sink.split_crit_edge:         ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end296.sink.split

sw.bb:                                            ; preds = %if.end244
  %88 = ptrtoint ptr %cable_tech to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %cable_tech, align 1
  %90 = and i8 %89, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool256.not = icmp eq i8 %90, 0
  br i1 %tobool256.not, label %sw.bb.if.end296_crit_edge, label %sw.bb.if.end296.sink.split_crit_edge

sw.bb.if.end296.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end296.sink.split

sw.bb.if.end296_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end296

sw.bb261:                                         ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %cable_tech to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %cable_tech, align 1
  %93 = and i8 %92, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool264.not = icmp eq i8 %93, 0
  %.539 = select i1 %tobool264.not, i32 17, i32 18
  br label %if.end296.sink.split

sw.bb275:                                         ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end296.sink.split

sw.default:                                       ; preds = %if.end244
  %94 = ptrtoint ptr %cable_tech to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %cable_tech, align 1
  %conv278 = zext i8 %95 to i32
  %and279 = and i32 %conv278, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %if.else284, label %sw.default.if.end296.sink.split_crit_edge

sw.default.if.end296.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end296.sink.split

if.else284:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %and286 = and i32 %conv278, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp eq i32 %and286, 0
  %.540 = select i1 %tobool287.not, i32 19, i32 15
  br label %if.end296.sink.split

if.end296.sink.split:                             ; preds = %if.else284, %sw.default.if.end296.sink.split_crit_edge, %sw.bb275, %sw.bb261, %sw.bb.if.end296.sink.split_crit_edge, %if.end244.if.end296.sink.split_crit_edge
  %.sink532 = phi i32 [ 20, %sw.bb275 ], [ 13, %sw.bb.if.end296.sink.split_crit_edge ], [ %.539, %sw.bb261 ], [ 16, %if.end244.if.end296.sink.split_crit_edge ], [ 14, %sw.default.if.end296.sink.split_crit_edge ], [ %.540, %if.else284 ]
  %96 = ptrtoint ptr %type213 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %.sink532, ptr %type213, align 4
  br label %if.end296

if.end296:                                        ; preds = %if.end296.sink.split, %sw.bb.if.end296_crit_edge, %if.end211.if.end296_crit_edge
  %97 = ptrtoint ptr %cable_tech to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %cable_tech, align 1
  %99 = and i8 %98, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool299.not = icmp eq i8 %99, 0
  br i1 %tobool299.not, label %if.end301, label %if.end296.cleanup_crit_edge

if.end296.cleanup_crit_edge:                      ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end301:                                        ; preds = %if.end296
  %100 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %comp_codes_10g, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp303 = icmp eq i8 %101, 0
  br i1 %cmp303, label %land.lhs.true305, label %if.end301.if.end338_crit_edge

if.end301.if.end338_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338

land.lhs.true305:                                 ; preds = %if.end301
  %102 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sfp_type, align 4
  %.off = add i32 %103, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off)
  %switch = icmp ult i32 %.off, 6
  br i1 %switch, label %land.lhs.true305.if.end338_crit_edge, label %if.then335

land.lhs.true305.if.end338_crit_edge:             ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338

if.then335:                                       ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %type213 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 25, ptr %type213, align 4
  br label %cleanup

if.end338:                                        ; preds = %land.lhs.true305.if.end338_crit_edge, %if.end301.if.end338_crit_edge
  %105 = ptrtoint ptr %type37 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %type37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp341 = icmp eq i32 %106, 1
  br i1 %cmp341, label %if.end338.cleanup_crit_edge, label %if.end344

if.end338.cleanup_crit_edge:                      ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end344:                                        ; preds = %if.end338
  %get_device_caps = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 7
  %107 = ptrtoint ptr %get_device_caps to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %get_device_caps, align 4
  %call347 = call i32 %108(ptr noundef %hw, ptr noundef nonnull %enforce_sfp) #6
  %109 = ptrtoint ptr %enforce_sfp to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %enforce_sfp, align 2
  %111 = and i16 %110, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool350.not = icmp eq i16 %111, 0
  br i1 %tobool350.not, label %land.lhs.true351, label %if.end344.cleanup_crit_edge

if.end344.cleanup_crit_edge:                      ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true351:                                 ; preds = %if.end344
  %112 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sfp_type, align 4
  %.off529 = add i32 %113, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off529)
  %switch530 = icmp ult i32 %.off529, 6
  br i1 %switch530, label %land.lhs.true351.cleanup_crit_edge, label %if.then381

land.lhs.true351.cleanup_crit_edge:               ; preds = %land.lhs.true351
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then381:                                       ; preds = %land.lhs.true351
  %114 = ptrtoint ptr %type213 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %type213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %115)
  %cmp384 = icmp eq i32 %115, 20
  br i1 %cmp384, label %if.then381.cleanup_crit_edge, label %if.end387

if.then381.cleanup_crit_edge:                     ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end387:                                        ; preds = %if.then381
  %allow_unsupported_sfp = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 18
  %116 = ptrtoint ptr %allow_unsupported_sfp to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %allow_unsupported_sfp, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool388.not = icmp eq i8 %117, 0
  br i1 %tobool388.not, label %do.body397, label %do.body

do.body:                                          ; preds = %if.end387
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 55
  %118 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %msg_enable, align 4
  %120 = and i16 %119, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool392.not = icmp eq i16 %120, 0
  br i1 %tobool392.not, label %do.body.cleanup_crit_edge, label %if.then393

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then393:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 1
  %121 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %122, ptr noundef nonnull @.str.31) #9
  br label %cleanup

do.body397:                                       ; preds = %if.end387
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_identify_sfp_module_generic.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_identify_sfp_module_generic, %if.then402)) #6
          to label %do.end409 [label %if.then402], !srcloc !128

if.then402:                                       ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %back, align 4
  %netdev404 = getelementptr inbounds %struct.ixgbe_adapter, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %netdev404 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %netdev404, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_identify_sfp_module_generic.__UNIQUE_ID_ddebug376, ptr noundef %126, ptr noundef nonnull @.str.33) #6
  br label %do.end409

do.end409:                                        ; preds = %if.then402, %do.body397
  %127 = ptrtoint ptr %type213 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 25, ptr %type213, align 4
  br label %cleanup

err_read_i2c_eeprom:                              ; preds = %if.end235.err_read_i2c_eeprom_crit_edge, %if.end226.err_read_i2c_eeprom_crit_edge, %if.then216.err_read_i2c_eeprom_crit_edge, %if.end28.err_read_i2c_eeprom_crit_edge, %if.end21.err_read_i2c_eeprom_crit_edge, %if.end14.err_read_i2c_eeprom_crit_edge, %if.end.err_read_i2c_eeprom_crit_edge
  %128 = ptrtoint ptr %sfp_type to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 65534, ptr %sfp_type, align 4
  %type416 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %129 = ptrtoint ptr %type416 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %type416, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %130)
  %cmp417.not = icmp eq i32 %130, 12
  br i1 %cmp417.not, label %err_read_i2c_eeprom.cleanup_crit_edge, label %if.then419

err_read_i2c_eeprom.cleanup_crit_edge:            ; preds = %err_read_i2c_eeprom
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then419:                                       ; preds = %err_read_i2c_eeprom
  call void @__sanitizer_cov_trace_pc() #8
  %id421 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 3
  %131 = ptrtoint ptr %id421 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %id421, align 4
  %132 = ptrtoint ptr %type416 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %type416, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then419, %err_read_i2c_eeprom.cleanup_crit_edge, %do.end409, %if.then393, %do.body.cleanup_crit_edge, %if.then381.cleanup_crit_edge, %land.lhs.true351.cleanup_crit_edge, %if.end344.cleanup_crit_edge, %if.end338.cleanup_crit_edge, %if.then335, %if.end296.cleanup_crit_edge, %if.then12, %if.then
  %retval.0 = phi i32 [ -20, %if.then ], [ -19, %if.then12 ], [ -19, %do.end409 ], [ -19, %if.then335 ], [ 0, %if.end296.cleanup_crit_edge ], [ 0, %if.end338.cleanup_crit_edge ], [ 0, %if.then381.cleanup_crit_edge ], [ 0, %if.then393 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %land.lhs.true351.cleanup_crit_edge ], [ 0, %if.end344.cleanup_crit_edge ], [ -20, %if.then419 ], [ -20, %err_read_i2c_eeprom.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %enforce_sfp) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cable_spec) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cable_tech) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %oui_bytes) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %comp_codes_10g) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %comp_codes_1g) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %identifier) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_identify_qsfp_module_generic(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %identifier = alloca i8, align 1
  %comp_codes_1g = alloca i8, align 1
  %comp_codes_10g = alloca i8, align 1
  %oui_bytes = alloca [3 x i8], align 1
  %enforce_sfp = alloca i16, align 2
  %connector = alloca i8, align 1
  %cable_length = alloca i8, align 1
  %device_tech = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %sfp_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sfp_type, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %identifier) #6
  %4 = ptrtoint ptr %identifier to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %identifier, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %comp_codes_1g) #6
  %5 = ptrtoint ptr %comp_codes_1g to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %comp_codes_1g, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %comp_codes_10g) #6
  %6 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %comp_codes_10g, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %oui_bytes) #6
  %7 = call ptr @memset(ptr %oui_bytes, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %enforce_sfp) #6
  %8 = ptrtoint ptr %enforce_sfp to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %enforce_sfp, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %connector) #6
  %9 = ptrtoint ptr %connector to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %connector, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cable_length) #6
  %10 = ptrtoint ptr %cable_length to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cable_length, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %device_tech) #6
  %11 = ptrtoint ptr %device_tech to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %device_tech, align 1
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %13(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %sfp_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65534, ptr %sfp_type, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 11
  %15 = ptrtoint ptr %set_lan_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_lan_id, align 4
  tail call void %16(ptr noundef %hw) #6
  %read_i2c_eeprom = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 15
  %17 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_i2c_eeprom, align 4
  %call7 = call i32 %18(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef nonnull %identifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end10, label %if.end.err_read_i2c_eeprom_crit_edge

if.end.err_read_i2c_eeprom_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end10:                                         ; preds = %if.end
  %19 = ptrtoint ptr %identifier to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %identifier, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %20)
  %cmp11.not = icmp eq i8 %20, 13
  br i1 %cmp11.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 25, ptr %type, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 13, ptr %id, align 4
  %23 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_i2c_eeprom, align 4
  %call21 = call i32 %24(ptr noundef %hw, i8 noundef zeroext -125, ptr noundef nonnull %comp_codes_10g) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end25, label %if.end15.err_read_i2c_eeprom_crit_edge

if.end15.err_read_i2c_eeprom_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end25:                                         ; preds = %if.end15
  %25 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_i2c_eeprom, align 4
  %call29 = call i32 %26(ptr noundef %hw, i8 noundef zeroext -122, ptr noundef nonnull %comp_codes_1g) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end33, label %if.end25.err_read_i2c_eeprom_crit_edge

if.end25.err_read_i2c_eeprom_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end33:                                         ; preds = %if.end25
  %27 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %comp_codes_10g, align 1
  %conv34 = zext i8 %28 to i32
  %and = and i32 %conv34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else47, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %type37 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 21, ptr %type37, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %30 = ptrtoint ptr %lan_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lan_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp39 = icmp eq i8 %31, 0
  %. = select i1 %cmp39, i32 3, i32 4
  br label %if.end118

if.else47:                                        ; preds = %if.end33
  %and49 = and i32 %conv34, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else64, label %if.then51

if.then51:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  %lan_id53 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %32 = ptrtoint ptr %lan_id53 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lan_id53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp55 = icmp eq i8 %33, 0
  %.319 = select i1 %cmp55, i32 5, i32 6
  br label %if.end118

if.else64:                                        ; preds = %if.else47
  %and66 = and i32 %conv34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %34 = xor i1 %tobool67.not, true
  br i1 %tobool67.not, label %if.then71, label %if.else64.if.then98_crit_edge

if.else64.if.then98_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then98

if.then71:                                        ; preds = %if.else64
  %35 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_i2c_eeprom, align 4
  %call75 = call i32 %36(ptr noundef %hw, i8 noundef zeroext -126, ptr noundef nonnull %connector) #6
  %37 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_i2c_eeprom, align 4
  %call79 = call i32 %38(ptr noundef %hw, i8 noundef zeroext -110, ptr noundef nonnull %cable_length) #6
  %39 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_i2c_eeprom, align 4
  %call83 = call i32 %40(ptr noundef %hw, i8 noundef zeroext -109, ptr noundef nonnull %device_tech) #6
  %41 = ptrtoint ptr %connector to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %connector, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %42)
  %cmp85 = icmp eq i8 %42, 35
  br i1 %cmp85, label %land.lhs.true, label %if.then71.if.else113_crit_edge

if.then71.if.else113_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else113

land.lhs.true:                                    ; preds = %if.then71
  %43 = ptrtoint ptr %cable_length to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cable_length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp88.not = icmp eq i8 %44, 0
  br i1 %cmp88.not, label %land.lhs.true.if.else113_crit_edge, label %if.end96

land.lhs.true.if.else113_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else113

if.end96:                                         ; preds = %land.lhs.true
  %45 = ptrtoint ptr %device_tech to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %device_tech, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %46)
  %cmp92 = icmp ult i8 %46, 16
  %spec.select = select i1 %cmp92, i1 true, i1 %34
  br i1 %spec.select, label %if.end96.if.then98_crit_edge, label %if.end96.if.else113_crit_edge

if.end96.if.else113_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else113

if.end96.if.then98_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then98

if.then98:                                        ; preds = %if.end96.if.then98_crit_edge, %if.else64.if.then98_crit_edge
  %type100 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %47 = ptrtoint ptr %type100 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 22, ptr %type100, align 4
  %lan_id102 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %48 = ptrtoint ptr %lan_id102 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %lan_id102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp104 = icmp eq i8 %49, 0
  %.320 = select i1 %cmp104, i32 7, i32 8
  br label %if.end118

if.else113:                                       ; preds = %if.end96.if.else113_crit_edge, %land.lhs.true.if.else113_crit_edge, %if.then71.if.else113_crit_edge
  %type115 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %type115 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 25, ptr %type115, align 4
  br label %cleanup

if.end118:                                        ; preds = %if.then98, %if.then51, %if.then35
  %.sink317 = phi i32 [ %., %if.then35 ], [ %.319, %if.then51 ], [ %.320, %if.then98 ]
  %51 = ptrtoint ptr %sfp_type to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink317, ptr %sfp_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink317, i32 %3)
  %cmp121.not = icmp eq i32 %.sink317, %3
  br i1 %cmp121.not, label %if.end118.if.end125_crit_edge, label %if.then123

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %sfp_setup_needed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 5
  %52 = ptrtoint ptr %sfp_setup_needed to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %sfp_setup_needed, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end118.if.end125_crit_edge
  %multispeed_fiber = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 16
  %53 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %multispeed_fiber, align 1
  %54 = ptrtoint ptr %comp_codes_1g to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %comp_codes_1g, align 1
  %56 = and i8 %55, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool129.not = icmp eq i8 %56, 0
  br i1 %tobool129.not, label %if.end125.lor.lhs.false_crit_edge, label %land.lhs.true130

if.end125.lor.lhs.false_crit_edge:                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true130:                                 ; preds = %if.end125
  %57 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %comp_codes_10g, align 1
  %59 = and i8 %58, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool133.not = icmp eq i8 %59, 0
  br i1 %tobool133.not, label %land.lhs.true130.lor.lhs.false_crit_edge, label %land.lhs.true130.if.then141_crit_edge

land.lhs.true130.if.then141_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then141

land.lhs.true130.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true130.lor.lhs.false_crit_edge, %if.end125.lor.lhs.false_crit_edge
  %60 = and i8 %55, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool136.not = icmp eq i8 %60, 0
  br i1 %tobool136.not, label %lor.lhs.false.if.end144_crit_edge, label %land.lhs.true137

lor.lhs.false.if.end144_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

land.lhs.true137:                                 ; preds = %lor.lhs.false
  %61 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %comp_codes_10g, align 1
  %63 = and i8 %62, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool140.not = icmp eq i8 %63, 0
  br i1 %tobool140.not, label %land.lhs.true137.if.end144_crit_edge, label %land.lhs.true137.if.then141_crit_edge

land.lhs.true137.if.then141_crit_edge:            ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then141

land.lhs.true137.if.end144_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then141:                                       ; preds = %land.lhs.true137.if.then141_crit_edge, %land.lhs.true130.if.then141_crit_edge
  %64 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %multispeed_fiber, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %land.lhs.true137.if.end144_crit_edge, %lor.lhs.false.if.end144_crit_edge
  %65 = ptrtoint ptr %comp_codes_10g to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %comp_codes_10g, align 1
  %67 = and i8 %66, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool147.not = icmp eq i8 %67, 0
  br i1 %tobool147.not, label %if.end144.cleanup_crit_edge, label %if.then148

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then148:                                       ; preds = %if.end144
  %68 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_i2c_eeprom, align 4
  %call152 = call i32 %69(ptr noundef %hw, i8 noundef zeroext -91, ptr noundef nonnull %oui_bytes) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153.not = icmp eq i32 %call152, 0
  br i1 %cmp153.not, label %if.end156, label %if.then148.err_read_i2c_eeprom_crit_edge

if.then148.err_read_i2c_eeprom_crit_edge:         ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end156:                                        ; preds = %if.then148
  %70 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read_i2c_eeprom, align 4
  %arrayidx160 = getelementptr inbounds [3 x i8], ptr %oui_bytes, i32 0, i32 1
  %call161 = call i32 %71(ptr noundef %hw, i8 noundef zeroext -90, ptr noundef %arrayidx160) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162.not = icmp eq i32 %call161, 0
  br i1 %cmp162.not, label %if.end165, label %if.end156.err_read_i2c_eeprom_crit_edge

if.end156.err_read_i2c_eeprom_crit_edge:          ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end165:                                        ; preds = %if.end156
  %72 = ptrtoint ptr %read_i2c_eeprom to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_i2c_eeprom, align 4
  %arrayidx169 = getelementptr inbounds [3 x i8], ptr %oui_bytes, i32 0, i32 2
  %call170 = call i32 %73(ptr noundef %hw, i8 noundef zeroext -89, ptr noundef %arrayidx169) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171.not = icmp eq i32 %call170, 0
  br i1 %cmp171.not, label %if.end174, label %if.end165.err_read_i2c_eeprom_crit_edge

if.end165.err_read_i2c_eeprom_crit_edge:          ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_read_i2c_eeprom

if.end174:                                        ; preds = %if.end165
  %74 = ptrtoint ptr %oui_bytes to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %oui_bytes, align 1
  %conv176 = zext i8 %75 to i32
  %shl = shl nuw i32 %conv176, 24
  %76 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx160, align 1
  %conv178 = zext i8 %77 to i32
  %shl179 = shl nuw nsw i32 %conv178, 16
  %or = or i32 %shl179, %shl
  %78 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx169, align 1
  %conv181 = zext i8 %79 to i32
  %shl182 = shl nuw nsw i32 %conv181, 8
  %or183 = or i32 %or, %shl182
  call void @__sanitizer_cov_trace_const_cmp4(i32 1777920, i32 %or183)
  %cmp184 = icmp eq i32 %or183, 1777920
  %spec.select318 = select i1 %cmp184, i32 23, i32 24
  %80 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select318, ptr %80, align 4
  %get_device_caps = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 7
  %82 = ptrtoint ptr %get_device_caps to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %get_device_caps, align 4
  %call195 = call i32 %83(ptr noundef %hw, ptr noundef nonnull %enforce_sfp) #6
  %84 = ptrtoint ptr %enforce_sfp to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %enforce_sfp, align 2
  %86 = and i16 %85, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool198.not = icmp eq i16 %86, 0
  br i1 %tobool198.not, label %if.then199, label %if.end174.cleanup_crit_edge

if.end174.cleanup_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then199:                                       ; preds = %if.end174
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %88)
  %cmp202 = icmp eq i32 %88, 23
  br i1 %cmp202, label %if.then199.cleanup_crit_edge, label %if.end205

if.then199.cleanup_crit_edge:                     ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end205:                                        ; preds = %if.then199
  %allow_unsupported_sfp = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 18
  %89 = ptrtoint ptr %allow_unsupported_sfp to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %allow_unsupported_sfp, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool206.not = icmp eq i8 %90, 0
  br i1 %tobool206.not, label %do.body215, label %do.body

do.body:                                          ; preds = %if.end205
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 55
  %91 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %msg_enable, align 4
  %93 = and i16 %92, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool210.not = icmp eq i16 %93, 0
  br i1 %tobool210.not, label %do.body.cleanup_crit_edge, label %if.then211

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then211:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 1
  %94 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %95, ptr noundef nonnull @.str.39) #9
  br label %cleanup

do.body215:                                       ; preds = %if.end205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_identify_qsfp_module_generic.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_identify_qsfp_module_generic, %if.then220)) #6
          to label %do.end227 [label %if.then220], !srcloc !128

if.then220:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %back, align 4
  %netdev222 = getelementptr inbounds %struct.ixgbe_adapter, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %netdev222 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %netdev222, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_identify_qsfp_module_generic.__UNIQUE_ID_ddebug377, ptr noundef %99, ptr noundef nonnull @.str.41) #6
  br label %do.end227

do.end227:                                        ; preds = %if.then220, %do.body215
  %100 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 25, ptr %80, align 4
  br label %cleanup

err_read_i2c_eeprom:                              ; preds = %if.end165.err_read_i2c_eeprom_crit_edge, %if.end156.err_read_i2c_eeprom_crit_edge, %if.then148.err_read_i2c_eeprom_crit_edge, %if.end25.err_read_i2c_eeprom_crit_edge, %if.end15.err_read_i2c_eeprom_crit_edge, %if.end.err_read_i2c_eeprom_crit_edge
  %101 = ptrtoint ptr %sfp_type to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 65534, ptr %sfp_type, align 4
  %id235 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 3
  %102 = ptrtoint ptr %id235 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %id235, align 4
  %type237 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %103 = ptrtoint ptr %type237 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %type237, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_read_i2c_eeprom, %do.end227, %if.then211, %do.body.cleanup_crit_edge, %if.then199.cleanup_crit_edge, %if.end174.cleanup_crit_edge, %if.end144.cleanup_crit_edge, %if.else113, %if.then13, %if.then
  %retval.0 = phi i32 [ -20, %if.then ], [ -20, %err_read_i2c_eeprom ], [ -19, %if.then13 ], [ -19, %do.end227 ], [ -19, %if.else113 ], [ 0, %if.then199.cleanup_crit_edge ], [ 0, %if.then211 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end174.cleanup_crit_edge ], [ 0, %if.end144.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %device_tech) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cable_length) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %connector) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %enforce_sfp) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %oui_bytes) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %comp_codes_10g) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %comp_codes_1g) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %identifier) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_i2c_eeprom_generic(ptr noundef %hw, i8 noundef zeroext %byte_offset, ptr noundef %eeprom_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_i2c_byte = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 12
  %0 = ptrtoint ptr %read_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_i2c_byte, align 4
  %call = tail call i32 %1(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext -96, ptr noundef %eeprom_data) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_i2c_sff8472_generic(ptr noundef %hw, i8 noundef zeroext %byte_offset, ptr noundef %sff8472_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_i2c_byte = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 12
  %0 = ptrtoint ptr %read_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_i2c_byte, align 4
  %call = tail call i32 %1(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext -94, ptr noundef %sff8472_data) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_i2c_eeprom_generic(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %eeprom_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %write_i2c_byte = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %0 = ptrtoint ptr %write_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_i2c_byte, align 4
  %call = tail call i32 %1(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext -96, i8 noundef zeroext %eeprom_data) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_i2c_byte_generic(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_read_i2c_byte_generic_int(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, ptr noundef %data, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_read_i2c_byte_generic_int(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, ptr nocapture noundef %data, i1 noundef zeroext %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  %spec.select = select i1 %cmp, i32 3, i32 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %dev_addr)
  %cmp.i = icmp eq i8 %dev_addr, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %byte_offset)
  %cmp3.i = icmp eq i8 %byte_offset, 0
  %or.cond.i = and i1 %cmp3.i, %cmp.i
  br i1 %or.cond.i, label %land.lhs.true5.i, label %entry.ixgbe_is_sfp_probe.exit_crit_edge

entry.ixgbe_is_sfp_probe.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_is_sfp_probe.exit

land.lhs.true5.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sfp_type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %sfp_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sfp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %5)
  %cmp6.i = icmp eq i32 %5, 65534
  %spec.select151 = select i1 %cmp6.i, i32 2, i32 %spec.select
  br label %ixgbe_is_sfp_probe.exit

ixgbe_is_sfp_probe.exit:                          ; preds = %land.lhs.true5.i, %entry.ixgbe_is_sfp_probe.exit_crit_edge
  %6 = phi i32 [ %spec.select, %entry.ixgbe_is_sfp_probe.exit_crit_edge ], [ %spec.select151, %land.lhs.true5.i ]
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %data, align 1
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %8 = or i8 %dev_addr, 1
  %release_swfw_sync55 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.then67, %do.body61, %ixgbe_is_sfp_probe.exit
  %retry.0 = phi i32 [ 0, %ixgbe_is_sfp_probe.exit ], [ %inc, %if.then67 ], [ %inc, %do.body61 ]
  br i1 %lock, label %land.lhs.true, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %do.body
  %9 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acquire_swfw_sync, align 4
  %call4 = tail call i32 %10(ptr noundef %hw, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %do.body.if.end7_crit_edge
  tail call fastcc void @ixgbe_i2c_start(ptr noundef %hw)
  %call8 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %dev_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end11, label %if.end7.fail_crit_edge

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end11:                                         ; preds = %if.end7
  %call12 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.fail_crit_edge

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end15:                                         ; preds = %if.end11
  %call16 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %byte_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %if.end15.fail_crit_edge

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end19:                                         ; preds = %if.end15
  %call20 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end23, label %if.end19.fail_crit_edge

if.end19.fail_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end23:                                         ; preds = %if.end19
  tail call fastcc void @ixgbe_i2c_start(ptr noundef %hw)
  %call25 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end29, label %if.end23.fail_crit_edge

if.end23.fail_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end29:                                         ; preds = %if.end23
  %call30 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end34, label %if.end29.fail_crit_edge

if.end29.fail_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end34:                                         ; preds = %if.end29
  tail call fastcc void @ixgbe_clock_in_i2c_byte(ptr noundef %hw, ptr noundef %data)
  %call41 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.end45, label %if.end34.fail_crit_edge

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end45:                                         ; preds = %if.end34
  tail call fastcc void @ixgbe_i2c_stop(ptr noundef %hw)
  br i1 %lock, label %if.then47, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %release_swfw_sync55 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release_swfw_sync55, align 4
  tail call void %12(ptr noundef %hw, i32 noundef %1) #6
  br label %cleanup

fail:                                             ; preds = %if.end34.fail_crit_edge, %if.end29.fail_crit_edge, %if.end23.fail_crit_edge, %if.end19.fail_crit_edge, %if.end15.fail_crit_edge, %if.end11.fail_crit_edge, %if.end7.fail_crit_edge
  %status.0 = phi i32 [ %call8, %if.end7.fail_crit_edge ], [ %call12, %if.end11.fail_crit_edge ], [ %call16, %if.end15.fail_crit_edge ], [ %call20, %if.end19.fail_crit_edge ], [ %call25, %if.end23.fail_crit_edge ], [ %call30, %if.end29.fail_crit_edge ], [ %call41, %if.end34.fail_crit_edge ]
  tail call fastcc void @ixgbe_i2c_bus_clear(ptr noundef %hw)
  br i1 %lock, label %if.then52, label %fail.if.end56_crit_edge

fail.if.end56_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then52:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %release_swfw_sync55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %release_swfw_sync55, align 4
  tail call void %14(ptr noundef %hw, i32 noundef %1) #6
  tail call void @msleep(i32 noundef 100) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %fail.if.end56_crit_edge
  %inc = add i32 %retry.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %6)
  %cmp57 = icmp ult i32 %inc, %6
  br i1 %cmp57, label %do.body61, label %do.body72

do.body61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_i2c_byte_generic_int.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_i2c_byte_generic_int, %if.then67)) #6
          to label %do.body [label %if.then67], !srcloc !128

if.then67:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_i2c_byte_generic_int.__UNIQUE_ID_ddebug380, ptr noundef %18, ptr noundef nonnull @.str.43) #6
  br label %do.body

do.body72:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_i2c_byte_generic_int.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_i2c_byte_generic_int, %if.then84)) #6
          to label %cleanup [label %if.then84], !srcloc !128

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %back, align 4
  %netdev86 = getelementptr inbounds %struct.ixgbe_adapter, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %netdev86 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev86, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_i2c_byte_generic_int.__UNIQUE_ID_ddebug381, ptr noundef %22, ptr noundef nonnull @.str.44) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body72, %if.then47, %if.end45.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then47 ], [ 0, %if.end45.cleanup_crit_edge ], [ %status.0, %if.then84 ], [ %status.0, %do.body72 ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_read_i2c_byte_generic_int(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, ptr noundef %data, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_i2c_byte_generic(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_write_i2c_byte_generic_int(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, i8 noundef zeroext %data, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_write_i2c_byte_generic_int(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, i8 noundef zeroext %data, i1 noundef zeroext %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  br i1 %lock, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %2 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %3(ptr noundef %hw, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  tail call fastcc void @ixgbe_i2c_start(ptr noundef %hw)
  %call2 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %dev_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end4, label %do.body.fail_crit_edge

do.body.fail_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end4:                                          ; preds = %do.body
  %call5 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %if.end4.fail_crit_edge

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %byte_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end12, label %if.end8.fail_crit_edge

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end16, label %if.end12.fail_crit_edge

if.end12.fail_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end20, label %if.end16.fail_crit_edge

if.end16.fail_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end20:                                         ; preds = %if.end16
  %call21 = tail call fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end24, label %if.end20.fail_crit_edge

if.end20.fail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end24:                                         ; preds = %if.end20
  tail call fastcc void @ixgbe_i2c_stop(ptr noundef %hw)
  br i1 %lock, label %if.end24.cleanup.sink.split_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

fail:                                             ; preds = %if.end20.fail_crit_edge, %if.end16.fail_crit_edge, %if.end12.fail_crit_edge, %if.end8.fail_crit_edge, %if.end4.fail_crit_edge, %do.body.fail_crit_edge
  %status.0 = phi i32 [ %call2, %do.body.fail_crit_edge ], [ %call5, %if.end4.fail_crit_edge ], [ %call9, %if.end8.fail_crit_edge ], [ %call13, %if.end12.fail_crit_edge ], [ %call17, %if.end16.fail_crit_edge ], [ %call21, %if.end20.fail_crit_edge ]
  tail call fastcc void @ixgbe_i2c_bus_clear(ptr noundef %hw)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_i2c_byte_generic_int.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_i2c_byte_generic_int, %if.then56)) #6
          to label %do.end67 [label %if.then56], !srcloc !128

if.then56:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %back57 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %back57 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back57, align 4
  %netdev58 = getelementptr inbounds %struct.ixgbe_adapter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev58 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev58, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_i2c_byte_generic_int.__UNIQUE_ID_ddebug383, ptr noundef %7, ptr noundef nonnull @.str.47) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then56, %fail
  br i1 %lock, label %do.end67.cleanup.sink.split_crit_edge, label %do.end67.cleanup_crit_edge

do.end67.cleanup_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end67.cleanup.sink.split_crit_edge:            ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end67.cleanup.sink.split_crit_edge, %if.end24.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end24.cleanup.sink.split_crit_edge ], [ %status.0, %do.end67.cleanup.sink.split_crit_edge ]
  %release_swfw_sync72 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %8 = ptrtoint ptr %release_swfw_sync72 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release_swfw_sync72, align 4
  tail call void %9(ptr noundef %hw, i32 noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end67.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %status.0, %do.end67.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_i2c_byte_generic_unlocked(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_write_i2c_byte_generic_int(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, i8 noundef zeroext %data, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_tn_check_overtemp(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #6
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %phy_data, align 2
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %1 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5404, i16 %2)
  %cmp.not = icmp eq i16 %2, 5404
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call = call i32 %4(ptr noundef %hw, i32 noundef 36869, i32 noundef 1, ptr noundef nonnull %phy_data) #6
  %5 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_data, align 2
  %7 = and i16 %6, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %. = select i1 %tobool.not, i32 0, i32 -26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_set_copper_phy_power(ptr noundef %hw, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !127
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %1 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %2(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %on, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call zeroext i1 @ixgbe_mng_present(ptr noundef %hw) #6
  br i1 %call1, label %land.lhs.true.cleanup_crit_edge, label %if.end3.thread

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call5 = call i32 %4(ptr noundef %hw, i32 noundef 0, i32 noundef 30, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then10.critedge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.thread:                                   ; preds = %land.lhs.true
  %read_reg32 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %5 = ptrtoint ptr %read_reg32 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg32, align 4
  %call533 = call i32 %6(ptr noundef %hw, i32 noundef 0, i32 noundef 30, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call533)
  %tobool6.not34 = icmp eq i32 %call533, 0
  br i1 %tobool6.not34, label %if.else, label %if.end3.thread.cleanup_crit_edge

if.end3.thread.cleanup_crit_edge:                 ; preds = %if.end3.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.critedge:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg, align 2
  %9 = and i16 %8, -2049
  br label %if.end17

if.else:                                          ; preds = %if.end3.thread
  %type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.else.if.end14_crit_edge, label %if.end.i

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end.i:                                         ; preds = %if.else
  %call.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17104) #6
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end14_crit_edge, label %do.body2.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.body2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_copper_phy_power, %if.then7.i)) #6
          to label %cleanup [label %if.then7.i], !srcloc !128

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, ptr noundef %15, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.if.end14_crit_edge, %if.else.if.end14_crit_edge
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg, align 2
  %18 = or i16 %17, 2048
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.then10.critedge
  %storemerge = phi i16 [ %18, %if.end14 ], [ %9, %if.then10.critedge ]
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %storemerge, ptr %reg, align 2
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %20 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg, align 4
  %call20 = call i32 %21(ptr noundef %hw, i32 noundef 0, i32 noundef 30, i16 noundef zeroext %storemerge) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then7.i, %do.body2.i, %if.end3.thread.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end17 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call533, %if.end3.thread.cleanup_crit_edge ], [ 0, %do.body2.i ], [ 0, %if.then7.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgbe_mng_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_clock_out_i2c_byte(ptr noundef %hw, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %data to i32
  %0 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool = icmp ne i32 %0, 0
  %call = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %for.cond, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %entry
  %1 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.1 = icmp ne i32 %1, 0
  %call.1 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext %tobool.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp2.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %2 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.2 = icmp ne i32 %2, 0
  %call.2 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext %tobool.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp2.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp2.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %3 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.3 = icmp ne i32 %3, 0
  %call.3 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext %tobool.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp2.not.3 = icmp eq i32 %call.3, 0
  br i1 %cmp2.not.3, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %4 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.4 = icmp ne i32 %4, 0
  %call.4 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext %tobool.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp2.not.4 = icmp eq i32 %call.4, 0
  br i1 %cmp2.not.4, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  %5 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.5 = icmp ne i32 %5, 0
  %call.5 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext %tobool.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp2.not.5 = icmp eq i32 %call.5, 0
  br i1 %cmp2.not.5, label %for.cond.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  %6 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.6 = icmp ne i32 %6, 0
  %call.6 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext %tobool.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp2.not.6 = icmp eq i32 %call.6, 0
  br i1 %cmp2.not.6, label %for.cond.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  %7 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.7 = icmp ne i32 %7, 0
  %call.7 = tail call fastcc i32 @ixgbe_clock_out_i2c_bit(ptr noundef %hw, i1 noundef zeroext %tobool.7)
  br label %for.end

for.end:                                          ; preds = %for.cond.6, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %status.1 = phi i32 [ %call, %entry.for.end_crit_edge ], [ %call.1, %for.cond.for.end_crit_edge ], [ %call.2, %for.cond.1.for.end_crit_edge ], [ %call.3, %for.cond.2.for.end_crit_edge ], [ %call.4, %for.cond.3.for.end_crit_edge ], [ %call.5, %for.cond.4.for.end_crit_edge ], [ %call.6, %for.cond.5.for.end_crit_edge ], [ %call.7, %for.cond.6 ]
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %8 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 22
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %call4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %11) #6
  %12 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvals, align 4
  %arrayidx6 = getelementptr i32, ptr %13, i32 18
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr i32, ptr %13, i32 19
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %arrayidx11 = getelementptr i32, ptr %13, i32 22
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11, align 4
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %for.end.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.end.ixgbe_write_reg.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %15, %call4
  %or9 = or i32 %or, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or9) #6
  %add.ptr.i = getelementptr i8, ptr %21, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #6, !srcloc !130
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.end.ixgbe_write_reg.exit_crit_edge
  %call12 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_get_i2c_ack(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %i2cctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 19
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i2cctl) #6
  %arrayidx2 = getelementptr i32, ptr %1, i32 22
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %5) #6
  %6 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %i2cctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvals, align 4
  %arrayidx4 = getelementptr i32, ptr %8, i32 18
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %or = or i32 %call, %3
  %or5 = or i32 %or, %10
  %11 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or5, ptr %i2cctl, align 4
  %arrayidx7 = getelementptr i32, ptr %8, i32 22
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or5) #6
  %add.ptr.i = getelementptr i8, ptr %15, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !130
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then.ixgbe_write_reg.exit_crit_edge
  %call8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  br label %if.end

if.end:                                           ; preds = %ixgbe_write_reg.exit, %entry.if.end_crit_edge
  call fastcc void @ixgbe_raise_i2c_clk(ptr noundef %hw, ptr noundef nonnull %i2cctl)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 858992) #6
  br label %for.body

for.cond:                                         ; preds = %ixgbe_get_i2c_data.exit
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body23, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.063 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %18 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mvals, align 4
  %arrayidx10 = getelementptr i32, ptr %19, i32 22
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10, align 4
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %21) #6
  %22 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mvals, align 4
  %arrayidx.i = getelementptr i32, ptr %23, i32 19
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %for.body.ixgbe_get_i2c_data.exit_crit_edge, label %if.then.i

for.body.ixgbe_get_i2c_data.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_i2c_data.exit

if.then.i:                                        ; preds = %for.body
  %or.i = or i32 %25, %call11
  %arrayidx2.i = getelementptr i32, ptr %23, i32 22
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i, align 4
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.then.i.ixgbe_write_reg.exit.i_crit_edge, label %do.body1.i.i

if.then.i.ixgbe_write_reg.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit.i

do.body1.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #6, !srcloc !130
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %if.then.i.ixgbe_write_reg.exit.i_crit_edge
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #6
  br label %ixgbe_get_i2c_data.exit

ixgbe_get_i2c_data.exit:                          ; preds = %ixgbe_write_reg.exit.i, %for.body.ixgbe_get_i2c_data.exit_crit_edge
  %32 = phi i32 [ %call11, %for.body.ixgbe_get_i2c_data.exit_crit_edge ], [ %or.i, %ixgbe_write_reg.exit.i ]
  %33 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mvals, align 4
  %arrayidx4.i = getelementptr i32, ptr %34, i32 17
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i, align 4
  %and.i = and i32 %36, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i.not = icmp eq i32 %and.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #6
  br i1 %tobool5.not.i.not, label %if.end33.loopexit, label %for.cond

do.body23:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %32, ptr %i2cctl, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_get_i2c_ack.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_get_i2c_ack, %if.then29)) #6
          to label %if.end33 [label %if.then29], !srcloc !128

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %39 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_get_i2c_ack.__UNIQUE_ID_ddebug384, ptr noundef %42, ptr noundef nonnull @.str.38) #6
  br label %if.end33

if.end33.loopexit:                                ; preds = %ixgbe_get_i2c_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %32, ptr %i2cctl, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33.loopexit, %if.then29, %do.body23
  %status.0 = phi i32 [ -18, %if.then29 ], [ -18, %do.body23 ], [ 0, %if.end33.loopexit ]
  %44 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mvals, align 4
  %arrayidx.i52 = getelementptr i32, ptr %45, i32 16
  %46 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i52, align 4
  %48 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i2cctl, align 4
  %arrayidx2.i54 = getelementptr i32, ptr %45, i32 21
  %50 = ptrtoint ptr %arrayidx2.i54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx2.i54, align 4
  %arrayidx6.i = getelementptr i32, ptr %45, i32 22
  %52 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx6.i, align 4
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i55 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i55, label %if.end33.ixgbe_lower_i2c_clk.exit_crit_edge, label %do.body1.i.i57

if.end33.ixgbe_lower_i2c_clk.exit_crit_edge:      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_lower_i2c_clk.exit

do.body1.i.i57:                                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %56 = or i32 %47, %51
  %57 = xor i32 %56, -1
  %and4.i = and i32 %49, %57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %58 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #6
  %add.ptr.i.i56 = getelementptr i8, ptr %55, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56, i32 %58) #6, !srcloc !130
  br label %ixgbe_lower_i2c_clk.exit

ixgbe_lower_i2c_clk.exit:                         ; preds = %do.body1.i.i57, %if.end33.ixgbe_lower_i2c_clk.exit_crit_edge
  %call.i58 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 1073740) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i2cctl) #6
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_raise_i2c_clk(ptr noundef %hw, ptr nocapture noundef %i2cctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 21
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2cctl, align 4
  %or = or i32 %5, %3
  store i32 %or, ptr %i2cctl, align 4
  %6 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvals, align 4
  %arrayidx2 = getelementptr i32, ptr %7, i32 22
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.for.body.preheader_crit_edge, label %do.body1.i

if.then.for.body.preheader_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #6, !srcloc !130
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i, %if.then.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit33.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i32 [ %inc, %ixgbe_write_reg.exit33.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %13 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mvals, align 4
  %arrayidx4 = getelementptr i32, ptr %14, i32 16
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  %17 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2cctl, align 4
  %or5 = or i32 %18, %16
  store i32 %or5, ptr %i2cctl, align 4
  %19 = load ptr, ptr %mvals, align 4
  %arrayidx7 = getelementptr i32, ptr %19, i32 22
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7, align 4
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i30 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i30, label %for.body.ixgbe_write_reg.exit33_crit_edge, label %do.body1.i32

for.body.ixgbe_write_reg.exit33_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit33

do.body1.i32:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or5) #6
  %add.ptr.i31 = getelementptr i8, ptr %23, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %24) #6, !srcloc !130
  br label %ixgbe_write_reg.exit33

ixgbe_write_reg.exit33:                           ; preds = %do.body1.i32, %for.body.ixgbe_write_reg.exit33_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #6
  %26 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mvals, align 4
  %arrayidx9 = getelementptr i32, ptr %27, i32 22
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx9, align 4
  %call10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %29) #6
  %30 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mvals, align 4
  %arrayidx12 = getelementptr i32, ptr %31, i32 15
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx12, align 4
  %and = and i32 %33, %call10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp ne i32 %and, 0
  %inc = add nuw nsw i32 %i.034, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 500
  %or.cond = select i1 %tobool13.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %ixgbe_write_reg.exit33.for.body_crit_edge

ixgbe_write_reg.exit33.for.body_crit_edge:        ; preds = %ixgbe_write_reg.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %ixgbe_write_reg.exit33
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio45_probe(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_mii_bus_read_generic(ptr noundef %hw, i32 noundef %addr, i32 noundef %regnum, i32 noundef %gssr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef %gssr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %addr, 21
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end12, label %if.end12.thread

if.end12:                                         ; preds = %if.end
  %and6 = shl i32 %regnum, 16
  %shl7 = and i32 %and6, 4128768
  %or8 = or i32 %shl, %shl7
  %or11 = or i32 %or8, 1476395008
  %call13 = tail call fastcc i32 @ixgbe_msca_cmd(ptr noundef %hw, i32 noundef %or11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.mii_bus_read_done_crit_edge, label %if.end12.do_mii_bus_read_crit_edge

if.end12.do_mii_bus_read_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_mii_bus_read

if.end12.mii_bus_read_done_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %mii_bus_read_done

if.end12.thread:                                  ; preds = %if.end
  %and3 = and i32 %regnum, 4194303
  %or = or i32 %and3, %shl
  %or5 = or i32 %or, 1073741824
  %call1352 = tail call fastcc i32 @ixgbe_msca_cmd(ptr noundef %hw, i32 noundef %or5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1352)
  %cmp53 = icmp slt i32 %call1352, 0
  br i1 %cmp53, label %if.end12.thread.mii_bus_read_done_crit_edge, label %if.end19

if.end12.thread.mii_bus_read_done_crit_edge:      ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %mii_bus_read_done

if.end19:                                         ; preds = %if.end12.thread
  %or21 = or i32 %or, 1275068416
  %call22 = tail call fastcc i32 @ixgbe_msca_cmd(ptr noundef %hw, i32 noundef %or21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end19.mii_bus_read_done_crit_edge, label %if.end19.do_mii_bus_read_crit_edge

if.end19.do_mii_bus_read_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_mii_bus_read

if.end19.mii_bus_read_done_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %mii_bus_read_done

do_mii_bus_read:                                  ; preds = %if.end19.do_mii_bus_read_crit_edge, %if.end12.do_mii_bus_read_crit_edge
  %call26 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16992) #6
  %shr = ashr i32 %call26, 16
  %and27 = and i32 %shr, 131071
  br label %mii_bus_read_done

mii_bus_read_done:                                ; preds = %do_mii_bus_read, %if.end19.mii_bus_read_done_crit_edge, %if.end12.thread.mii_bus_read_done_crit_edge, %if.end12.mii_bus_read_done_crit_edge
  %data.0 = phi i32 [ %call13, %if.end12.mii_bus_read_done_crit_edge ], [ %call22, %if.end19.mii_bus_read_done_crit_edge ], [ %and27, %do_mii_bus_read ], [ %call1352, %if.end12.thread.mii_bus_read_done_crit_edge ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %2 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %3(ptr noundef %hw, i32 noundef %gssr) #6
  br label %cleanup

cleanup:                                          ; preds = %mii_bus_read_done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %data.0, %mii_bus_read_done ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_msca_cmd(ptr noundef %hw, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %cmd) #6
  %add.ptr.i = getelementptr i8, ptr %1, i32 16988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !130
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 679) #6
  %call832 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16988) #6
  %and33 = and i32 %call832, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool.not34 = icmp eq i32 %and33, 0
  br i1 %tobool.not34, label %ixgbe_write_reg.exit.for.end.thread_crit_edge, label %ixgbe_write_reg.exit.land.lhs.true_crit_edge

ixgbe_write_reg.exit.land.lhs.true_crit_edge:     ; preds = %ixgbe_write_reg.exit
  br label %land.lhs.true

ixgbe_write_reg.exit.for.end.thread_crit_edge:    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then19.land.lhs.true_crit_edge, %ixgbe_write_reg.exit.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %call8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16988) #6
  %and = and i32 %call8, 1073741824
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then19.for.end.thread_crit_edge, label %if.then19.land.lhs.true_crit_edge

if.then19.land.lhs.true_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then19.for.end.thread_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %call16 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16988) #6
  %.pre = and i32 %call16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool22.not = icmp eq i32 %.pre, 0
  br i1 %tobool22.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %3

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then19.for.end.thread_crit_edge, %ixgbe_write_reg.exit.for.end.thread_crit_edge
  br label %3

3:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %4 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_mii_bus_write_generic(ptr noundef %hw, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val, i32 noundef %gssr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef %gssr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end.ixgbe_write_reg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %add.ptr.i = getelementptr i8, ptr %3, i32 16992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !130
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end.ixgbe_write_reg.exit_crit_edge
  %shl = shl i32 %addr, 21
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = and i32 %regnum, 4194303
  %or = or i32 %and3, %shl
  %or5 = or i32 %or, 1073741824
  br label %if.end12

if.else:                                          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and6 = shl i32 %regnum, 16
  %shl7 = and i32 %and6, 4128768
  %or8 = or i32 %shl7, %shl
  %or11 = or i32 %or8, 1409286144
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2
  %hwaddr.0 = phi i32 [ %or, %if.then2 ], [ %or8, %if.else ]
  %cmd.0 = phi i32 [ %or5, %if.then2 ], [ %or11, %if.else ]
  %call13 = tail call fastcc i32 @ixgbe_msca_cmd(ptr noundef %hw, i32 noundef %cmd.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  %brmerge = or i1 %tobool1.not, %cmp
  %5 = tail call i32 @llvm.smin.i32(i32 %call13, i32 0)
  br i1 %brmerge, label %if.end12.mii_bus_write_done_crit_edge, label %if.end18

if.end12.mii_bus_write_done_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %mii_bus_write_done

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %or20 = or i32 %hwaddr.0, 1140850688
  %call21 = tail call fastcc i32 @ixgbe_msca_cmd(ptr noundef %hw, i32 noundef %or20)
  br label %mii_bus_write_done

mii_bus_write_done:                               ; preds = %if.end18, %if.end12.mii_bus_write_done_crit_edge
  %err.0 = phi i32 [ %5, %if.end12.mii_bus_write_done_crit_edge ], [ %call21, %if.end18 ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %6 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %7(ptr noundef %hw, i32 noundef %gssr) #6
  br label %cleanup

cleanup:                                          ; preds = %mii_bus_write_done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %mii_bus_write_done ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_set_i2c_data(ptr noundef %hw, ptr nocapture noundef %i2cctl, i1 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 19
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %1, i32 18
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2cctl, align 4
  br i1 %data, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %or = or i32 %7, %5
  %neg5.c64 = xor i32 %3, -1
  %and6.c65 = and i32 %or, %neg5.c64
  %8 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and6.c65, ptr %i2cctl, align 4
  %9 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mvals, align 4
  %arrayidx8.c66 = getelementptr i32, ptr %10, i32 22
  %11 = ptrtoint ptr %arrayidx8.c66 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8.c66, align 4
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.then.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %and6.c65) #6
  %add.ptr.i = getelementptr i8, ptr %14, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #6, !srcloc !130
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then.ixgbe_write_reg.exit_crit_edge
  %call.c67 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 644244) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %ixgbe_write_reg.exit.if.end18_crit_edge, label %if.then13

ixgbe_write_reg.exit.if.end18_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else:                                          ; preds = %entry
  %17 = or i32 %5, %3
  %18 = xor i32 %17, -1
  %and6.c = and i32 %7, %18
  %19 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and6.c, ptr %i2cctl, align 4
  %20 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvals, align 4
  %arrayidx8.c = getelementptr i32, ptr %21, i32 22
  %22 = ptrtoint ptr %arrayidx8.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8.c, align 4
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i68 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i68, label %if.else.ixgbe_write_reg.exit71_crit_edge, label %do.body1.i70

if.else.ixgbe_write_reg.exit71_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit71

do.body1.i70:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %and6.c) #6
  %add.ptr.i69 = getelementptr i8, ptr %25, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %26) #6, !srcloc !130
  br label %ixgbe_write_reg.exit71

ixgbe_write_reg.exit71:                           ; preds = %do.body1.i70, %if.else.ixgbe_write_reg.exit71_crit_edge
  %call.c = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 644244) #6
  br label %cleanup

if.then13:                                        ; preds = %ixgbe_write_reg.exit
  %28 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i2cctl, align 4
  %or14 = or i32 %29, %3
  store i32 %or14, ptr %i2cctl, align 4
  %30 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mvals, align 4
  %arrayidx16 = getelementptr i32, ptr %31, i32 22
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx16, align 4
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i72 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i72, label %if.then13.ixgbe_write_reg.exit75_crit_edge, label %do.body1.i74

if.then13.ixgbe_write_reg.exit75_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit75

do.body1.i74:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %or14) #6
  %add.ptr.i73 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %36) #6, !srcloc !130
  br label %ixgbe_write_reg.exit75

ixgbe_write_reg.exit75:                           ; preds = %do.body1.i74, %if.then13.ixgbe_write_reg.exit75_crit_edge
  %call17 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  br label %if.end18

if.end18:                                         ; preds = %ixgbe_write_reg.exit75, %ixgbe_write_reg.exit.if.end18_crit_edge
  %37 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mvals, align 4
  %arrayidx20 = getelementptr i32, ptr %38, i32 22
  %39 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx20, align 4
  %call21 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %40) #6
  %41 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call21, ptr %i2cctl, align 4
  %42 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mvals, align 4
  %arrayidx.i = getelementptr i32, ptr %43, i32 19
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %if.end18.ixgbe_get_i2c_data.exit_crit_edge, label %if.then.i

if.end18.ixgbe_get_i2c_data.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_i2c_data.exit

if.then.i:                                        ; preds = %if.end18
  %or.i = or i32 %45, %call21
  %46 = ptrtoint ptr %i2cctl to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i, ptr %i2cctl, align 4
  %47 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mvals, align 4
  %arrayidx2.i = getelementptr i32, ptr %48, i32 22
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i, align 4
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.then.i.ixgbe_write_reg.exit.i_crit_edge, label %do.body1.i.i

if.then.i.ixgbe_write_reg.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_write_reg.exit.i

do.body1.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %53) #6, !srcloc !130
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %if.then.i.ixgbe_write_reg.exit.i_crit_edge
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #6
  br label %ixgbe_get_i2c_data.exit

ixgbe_get_i2c_data.exit:                          ; preds = %ixgbe_write_reg.exit.i, %if.end18.ixgbe_get_i2c_data.exit_crit_edge
  %55 = ptrtoint ptr %i2cctl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i2cctl, align 4
  %57 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mvals, align 4
  %arrayidx4.i = getelementptr i32, ptr %58, i32 17
  %59 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx4.i, align 4
  %and.i = and i32 %60, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i.not, label %do.body27, label %ixgbe_get_i2c_data.exit.cleanup_crit_edge

ixgbe_get_i2c_data.exit.cleanup_crit_edge:        ; preds = %ixgbe_get_i2c_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body27:                                        ; preds = %ixgbe_get_i2c_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_i2c_data.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_i2c_data, %if.then33)) #6
          to label %cleanup [label %if.then33], !srcloc !128

if.then33:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %61 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_i2c_data.__UNIQUE_ID_ddebug386, ptr noundef %64, ptr noundef nonnull @.str.49, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body27, %ixgbe_get_i2c_data.exit.cleanup_crit_edge, %ixgbe_write_reg.exit71
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit71 ], [ -18, %if.then33 ], [ 0, %ixgbe_get_i2c_data.exit.cleanup_crit_edge ], [ -18, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !74, !76, !77, !78, !80, !82, !83, !85, !86, !88, !89, !90, !92, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 148, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ixgbe_read_i2c_combined_generic_int.__UNIQUE_ID_ddebug357, !1, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 150, i32 4}
!8 = !{ptr @ixgbe_read_i2c_combined_generic_int.__UNIQUE_ID_ddebug358, !7, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 213, i32 4}
!11 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !10, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 215, i32 4}
!15 = !{ptr @ixgbe_write_i2c_combined_generic_int.__UNIQUE_ID_ddebug360, !14, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 324, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ixgbe_check_reset_blocked.__UNIQUE_ID_ddebug361, !17, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 459, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ixgbe_reset_phy_generic.__UNIQUE_ID_ddebug362, !21, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 502, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ixgbe_read_phy_reg_mdi.__UNIQUE_ID_ddebug363, !25, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 529, i32 3}
!30 = !{ptr @ixgbe_read_phy_reg_mdi.__UNIQUE_ID_ddebug364, !29, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 606, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ixgbe_write_phy_reg_mdi.__UNIQUE_ID_ddebug365, !32, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 634, i32 3}
!37 = !{ptr @ixgbe_write_phy_reg_mdi.__UNIQUE_ID_ddebug366, !36, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 945, i32 37}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 948, i32 14}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1301, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug367, !43, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1326, i32 4}
!48 = !{ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug368, !47, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1330, i32 4}
!51 = !{ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug369, !50, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1343, i32 5}
!54 = !{ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug370, !53, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1351, i32 4}
!57 = !{ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug371, !56, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1353, i32 5}
!60 = !{ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug372, !59, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1356, i32 5}
!63 = !{ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug373, !62, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1358, i32 5}
!66 = !{ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug374, !65, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1363, i32 4}
!69 = !{ptr @ixgbe_reset_phy_nl.__UNIQUE_ID_ddebug375, !68, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1371, i32 2}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1643, i32 4}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1646, i32 3}
!76 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ixgbe_identify_sfp_module_generic.__UNIQUE_ID_ddebug376, !75, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1884, i32 3}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1908, i32 5}
!82 = !{ptr @ixgbe_get_sfp_init_sequence_offsets.__UNIQUE_ID_ddebug378, !81, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1921, i32 3}
!85 = !{ptr @ixgbe_get_sfp_init_sequence_offsets.__UNIQUE_ID_ddebug379, !84, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 2381, i32 3}
!88 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ixgbe_get_i2c_ack.__UNIQUE_ID_ddebug384, !87, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1822, i32 5}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 1825, i32 4}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ixgbe_identify_qsfp_module_generic.__UNIQUE_ID_ddebug377, !93, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 2077, i32 4}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ixgbe_read_i2c_byte_generic_int.__UNIQUE_ID_ddebug380, !97, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 2079, i32 4}
!102 = !{ptr @ixgbe_read_i2c_byte_generic_int.__UNIQUE_ID_ddebug381, !101, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 2178, i32 4}
!105 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !104, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 2180, i32 4}
!109 = !{ptr @ixgbe_write_i2c_byte_generic_int.__UNIQUE_ID_ddebug383, !108, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 2549, i32 3}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ixgbe_set_i2c_data.__UNIQUE_ID_ddebug386, !111, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c", i32 2453, i32 3}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ixgbe_clock_out_i2c_bit.__UNIQUE_ID_ddebug385, !115, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
!128 = !{i64 2148555233, i64 2148555238, i64 2148555251, i64 2148555295, i64 2148555329, i64 2148555350}
!129 = !{i64 2157325957}
!130 = !{i64 5049830}
!131 = !{i8 0, i8 2}
