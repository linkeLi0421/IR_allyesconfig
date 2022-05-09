; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.118, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.125, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.127, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.118 = type { ptr }
%union.anon.125 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.127 = type { %struct.ixgbe_rx_queue_stats }
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
%union.ixgbe_atr_input = type { %struct.anon.128 }
%struct.anon.128 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
%struct.atomic_t = type { i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.117 = type { ptr }
%struct.file = type { %union.anon.39, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.39 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ixgbe_dbg_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reg_ops\00", [24 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ixgbe_dbg_reg_ops_read, ptr @ixgbe_dbg_reg_ops_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"netdev_ops\00", [21 x i8] zeroinitializer }, align 32
@ixgbe_dbg_netdev_ops_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ixgbe_dbg_netdev_ops_read, ptr @ixgbe_dbg_netdev_ops_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ixgbe_driver_name = external dso_local global [0 x i8], align 1
@ixgbe_dbg_reg_ops_buf = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 92, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"write: 0x%08x = 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_dbg_reg_ops_write\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry_ptr = internal global ptr @ixgbe_dbg_reg_ops_write._entry, section ".printk_index", align 4
@ixgbe_dbg_reg_ops_write._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 94, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"write <reg> <value>\0A\00", [43 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry_ptr.12 = internal global ptr @ixgbe_dbg_reg_ops_write._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 102, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read 0x%08x = 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry_ptr.17 = internal global ptr @ixgbe_dbg_reg_ops_write._entry.15, section ".printk_index", align 4
@ixgbe_dbg_reg_ops_write._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 104, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read <reg>\0A\00", [20 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry_ptr.20 = internal global ptr @ixgbe_dbg_reg_ops_write._entry.18, section ".printk_index", align 4
@ixgbe_dbg_reg_ops_write._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.7, i32 107, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown command %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry_ptr.23 = internal global ptr @ixgbe_dbg_reg_ops_write._entry.21, section ".printk_index", align 4
@ixgbe_dbg_reg_ops_write._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 108, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Available commands:\0A\00", [43 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry_ptr.26 = internal global ptr @ixgbe_dbg_reg_ops_write._entry.24, section ".printk_index", align 4
@ixgbe_dbg_reg_ops_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.6, ptr @.str.7, i32 109, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"   read <reg>\0A\00", [17 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry_ptr.29 = internal global ptr @ixgbe_dbg_reg_ops_write._entry.27, section ".printk_index", align 4
@ixgbe_dbg_reg_ops_write._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.6, ptr @.str.7, i32 110, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"   write <reg> <value>\0A\00", [40 x i8] zeroinitializer }, align 32
@ixgbe_dbg_reg_ops_write._entry_ptr.32 = internal global ptr @ixgbe_dbg_reg_ops_write._entry.30, section ".printk_index", align 4
@ixgbe_dbg_netdev_ops_buf = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_timeout\00", [21 x i8] zeroinitializer }, align 32
@ixgbe_dbg_netdev_ops_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 172, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_timeout called\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgbe_dbg_netdev_ops_write\00", [37 x i8] zeroinitializer }, align 32
@ixgbe_dbg_netdev_ops_write._entry_ptr = internal global ptr @ixgbe_dbg_netdev_ops_write._entry, section ".printk_index", align 4
@ixgbe_dbg_netdev_ops_write._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.7, i32 174, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown command: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@ixgbe_dbg_netdev_ops_write._entry_ptr.38 = internal global ptr @ixgbe_dbg_netdev_ops_write._entry.36, section ".printk_index", align 4
@ixgbe_dbg_netdev_ops_write._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.35, ptr @.str.7, i32 175, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@ixgbe_dbg_netdev_ops_write._entry_ptr.40 = internal global ptr @ixgbe_dbg_netdev_ops_write._entry.39, section ".printk_index", align 4
@ixgbe_dbg_netdev_ops_write._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.7, i32 176, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"    tx_timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@ixgbe_dbg_netdev_ops_write._entry_ptr.43 = internal global ptr @ixgbe_dbg_netdev_ops_write._entry.41, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"ixgbe_dbg_root\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 9, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 197, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"ixgbe_dbg_reg_ops_fops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 115, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 199, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant [26 x i8] c"ixgbe_dbg_netdev_ops_fops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 181, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"ixgbe_dbg_reg_ops_buf\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 11, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 25, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 85, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 88, i32 43 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 92, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 94, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 96, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 99, i32 43 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 102, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 104, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 107, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 108, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 109, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 110, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [25 x i8] c"ixgbe_dbg_netdev_ops_buf\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 122, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 168, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 172, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 174, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 175, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [52 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 176, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @ixgbe_dbg_netdev_ops_write._entry, ptr @ixgbe_dbg_netdev_ops_write._entry.36, ptr @ixgbe_dbg_netdev_ops_write._entry.39, ptr @ixgbe_dbg_netdev_ops_write._entry.41, ptr @ixgbe_dbg_netdev_ops_write._entry_ptr, ptr @ixgbe_dbg_netdev_ops_write._entry_ptr.38, ptr @ixgbe_dbg_netdev_ops_write._entry_ptr.40, ptr @ixgbe_dbg_netdev_ops_write._entry_ptr.43, ptr @ixgbe_dbg_reg_ops_write._entry, ptr @ixgbe_dbg_reg_ops_write._entry.10, ptr @ixgbe_dbg_reg_ops_write._entry.15, ptr @ixgbe_dbg_reg_ops_write._entry.18, ptr @ixgbe_dbg_reg_ops_write._entry.21, ptr @ixgbe_dbg_reg_ops_write._entry.24, ptr @ixgbe_dbg_reg_ops_write._entry.27, ptr @ixgbe_dbg_reg_ops_write._entry.30, ptr @ixgbe_dbg_reg_ops_write._entry_ptr, ptr @ixgbe_dbg_reg_ops_write._entry_ptr.12, ptr @ixgbe_dbg_reg_ops_write._entry_ptr.17, ptr @ixgbe_dbg_reg_ops_write._entry_ptr.20, ptr @ixgbe_dbg_reg_ops_write._entry_ptr.23, ptr @ixgbe_dbg_reg_ops_write._entry_ptr.26, ptr @ixgbe_dbg_reg_ops_write._entry_ptr.29, ptr @ixgbe_dbg_reg_ops_write._entry_ptr.32, ptr @ixgbe_dbg_root, ptr @.str, ptr @ixgbe_dbg_reg_ops_fops, ptr @.str.1, ptr @ixgbe_dbg_netdev_ops_fops, ptr @ixgbe_dbg_reg_ops_buf, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @ixgbe_dbg_netdev_ops_buf, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.42], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_netdev_ops_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_buf to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_write._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_write._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_write._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_write._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_write._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_reg_ops_write._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_netdev_ops_buf to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_netdev_ops_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_netdev_ops_write._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_netdev_ops_write._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dbg_netdev_ops_write._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dbg_adapter_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %6 = load ptr, ptr @ixgbe_dbg_root, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef %6) #8
  %ixgbe_dbg_adapter = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 110
  %7 = ptrtoint ptr %ixgbe_dbg_adapter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %ixgbe_dbg_adapter, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %adapter, ptr noundef nonnull @ixgbe_dbg_reg_ops_fops) #8
  %8 = ptrtoint ptr %ixgbe_dbg_adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ixgbe_dbg_adapter, align 4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %9, ptr noundef %adapter, ptr noundef nonnull @ixgbe_dbg_netdev_ops_fops) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dbg_adapter_exit(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ixgbe_dbg_adapter = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 110
  %0 = ptrtoint ptr %ixgbe_dbg_adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ixgbe_dbg_adapter, align 4
  tail call void @debugfs_remove(ptr noundef %1) #8
  %2 = ptrtoint ptr %ixgbe_dbg_adapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ixgbe_dbg_adapter, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dbg_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @ixgbe_driver_name, ptr noundef null) #8
  store ptr %call, ptr @ixgbe_dbg_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_dbg_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ixgbe_dbg_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dbg_reg_ops_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ixgbe_dbg_common_ops_read.exit_crit_edge

entry.ixgbe_dbg_common_ops_read.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_dbg_common_ops_read.exit

if.end.i:                                         ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev.i, align 128
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %5, ptr noundef nonnull @ixgbe_dbg_reg_ops_buf) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.ixgbe_dbg_common_ops_read.exit_crit_edge, label %if.end2.i

if.end.i.ixgbe_dbg_common_ops_read.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_dbg_common_ops_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #8
  br label %ixgbe_dbg_common_ops_read.exit

ixgbe_dbg_common_ops_read.exit:                   ; preds = %cleanup.sink.split.i, %if.end.i.ixgbe_dbg_common_ops_read.exit_crit_edge, %entry.ixgbe_dbg_common_ops_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ixgbe_dbg_common_ops_read.exit_crit_edge ], [ -12, %if.end.i.ixgbe_dbg_common_ops_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dbg_reg_ops_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  %value = alloca i32, align 4
  %reg25 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp1 = icmp ugt i32 %count, 255
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @simple_write_to_buffer(ptr noundef nonnull @ixgbe_dbg_reg_ops_buf, i32 noundef 255, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %arrayidx = getelementptr [256 x i8], ptr @ixgbe_dbg_reg_ops_buf, i32 0, i32 %call
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @ixgbe_dbg_reg_ops_buf, ptr noundef nonnull dereferenceable(5) @.str.3, i32 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp8 = icmp eq i32 %bcmp, 0
  br i1 %cmp8, label %if.then9, label %if.else21

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !87
  %call10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef getelementptr inbounds ([256 x i8], ptr @ixgbe_dbg_reg_ops_buf, i32 0, i32 5), ptr noundef nonnull @.str.4, ptr noundef nonnull %reg, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 2
  br i1 %cmp11, label %if.then12, label %do.end17

if.then12:                                        ; preds = %if.then9
  %hw = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then12.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then12.ixgbe_write_reg.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  call void @arm_heavy_mb() #8
  %13 = call i32 @llvm.bswap.i32(i32 %10) #8
  %add.ptr.i = getelementptr i8, ptr %12, i32 %8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #8, !srcloc !89
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then12.ixgbe_write_reg.exit_crit_edge
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %call14 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %15) #8
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call14, ptr %value, align 4
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %20, i32 noundef %call14) #13
  br label %if.end20

do.end17:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %pdev18 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev18, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.11) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %ixgbe_write_reg.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  br label %cleanup

if.else21:                                        ; preds = %if.end6
  %bcmp84 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @ixgbe_dbg_reg_ops_buf, ptr noundef nonnull dereferenceable(4) @.str.13, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp84)
  %cmp23 = icmp eq i32 %bcmp84, 0
  br i1 %cmp23, label %if.then24, label %do.end48

if.then24:                                        ; preds = %if.else21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg25) #8
  %23 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %reg25, align 4, !annotation !87
  %call28 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef getelementptr inbounds ([256 x i8], ptr @ixgbe_dbg_reg_ops_buf, i32 0, i32 4), ptr noundef nonnull @.str.14, ptr noundef nonnull %reg25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 1
  br i1 %cmp29, label %if.then30, label %do.end41

if.then30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %hw31 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54
  %24 = ptrtoint ptr %reg25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg25, align 4
  %call32 = call i32 @ixgbe_read_reg(ptr noundef %hw31, i32 noundef %25) #8
  %pdev36 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev36, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %reg25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg25, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.16, i32 noundef %29, i32 noundef %call32) #13
  br label %if.end44

do.end41:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %pdev42 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev42, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43, ptr noundef nonnull @.str.19) #13
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg25) #8
  br label %cleanup

do.end48:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  %pdev49 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev49, align 8
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev50, ptr noundef nonnull @.str.22, ptr noundef nonnull @ixgbe_dbg_reg_ops_buf) #13
  %34 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev49, align 8
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55, ptr noundef nonnull @.str.25) #13
  %36 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev49, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev60, ptr noundef nonnull @.str.28) #13
  %38 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev49, align 8
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev65, ptr noundef nonnull @.str.31) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.end44, %if.end20, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ %count, %if.end44 ], [ %count, %do.end48 ], [ %count, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dbg_netdev_ops_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ixgbe_dbg_common_ops_read.exit_crit_edge

entry.ixgbe_dbg_common_ops_read.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_dbg_common_ops_read.exit

if.end.i:                                         ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev.i, align 128
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %5, ptr noundef nonnull @ixgbe_dbg_netdev_ops_buf) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.ixgbe_dbg_common_ops_read.exit_crit_edge, label %if.end2.i

if.end.i.ixgbe_dbg_common_ops_read.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_dbg_common_ops_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #8
  br label %ixgbe_dbg_common_ops_read.exit

ixgbe_dbg_common_ops_read.exit:                   ; preds = %cleanup.sink.split.i, %if.end.i.ixgbe_dbg_common_ops_read.exit_crit_edge, %entry.ixgbe_dbg_common_ops_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ixgbe_dbg_common_ops_read.exit_crit_edge ], [ -12, %if.end.i.ixgbe_dbg_common_ops_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dbg_netdev_ops_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp1 = icmp ugt i32 %count, 255
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @simple_write_to_buffer(ptr noundef nonnull @ixgbe_dbg_netdev_ops_buf, i32 noundef 255, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %arrayidx = getelementptr [256 x i8], ptr @ixgbe_dbg_netdev_ops_buf, i32 0, i32 %call
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @ixgbe_dbg_netdev_ops_buf, ptr noundef nonnull dereferenceable(10) @.str.33, i32 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp8 = icmp eq i32 %bcmp, 0
  br i1 %cmp8, label %if.then9, label %do.end13

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 128
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev_ops, align 8
  %ndo_tx_timeout = getelementptr inbounds %struct.net_device_ops, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %ndo_tx_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndo_tx_timeout, align 4
  tail call void %10(ptr noundef %6, i32 noundef -1) #8
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  br label %cleanup.sink.split

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %pdev14 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev14, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.37, ptr noundef nonnull @ixgbe_dbg_netdev_ops_buf) #13
  %13 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev14, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.25) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end13, %if.then9
  %pdev.sink = phi ptr [ %pdev, %if.then9 ], [ %pdev14, %do.end13 ]
  %.str.34.sink = phi ptr [ @.str.34, %if.then9 ], [ @.str.42, %do.end13 ]
  %15 = ptrtoint ptr %pdev.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.sink, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.34.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 197, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 199, i32 22}
!4 = !{ptr @ixgbe_dbg_root, !5, !"ixgbe_dbg_root", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 9, i32 23}
!6 = !{ptr @ixgbe_dbg_reg_ops_fops, !7, !"ixgbe_dbg_reg_ops_fops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 115, i32 37}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 25, i32 30}
!10 = !{ptr @ixgbe_dbg_reg_ops_buf, !11, !"ixgbe_dbg_reg_ops_buf", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 11, i32 13}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 85, i32 37}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 88, i32 43}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 92, i32 4}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ixgbe_dbg_reg_ops_write._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ixgbe_dbg_reg_ops_write._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 94, i32 4}
!26 = !{ptr @ixgbe_dbg_reg_ops_write._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ixgbe_dbg_reg_ops_write._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 96, i32 44}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 99, i32 43}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 102, i32 4}
!34 = !{ptr @ixgbe_dbg_reg_ops_write._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ixgbe_dbg_reg_ops_write._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 104, i32 4}
!38 = !{ptr @ixgbe_dbg_reg_ops_write._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ixgbe_dbg_reg_ops_write._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 107, i32 3}
!42 = !{ptr @ixgbe_dbg_reg_ops_write._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ixgbe_dbg_reg_ops_write._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 108, i32 3}
!46 = !{ptr @ixgbe_dbg_reg_ops_write._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ixgbe_dbg_reg_ops_write._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 109, i32 3}
!50 = !{ptr @ixgbe_dbg_reg_ops_write._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ixgbe_dbg_reg_ops_write._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 110, i32 3}
!54 = !{ptr @ixgbe_dbg_reg_ops_write._entry.30, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ixgbe_dbg_reg_ops_write._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @ixgbe_dbg_netdev_ops_fops, !57, !"ixgbe_dbg_netdev_ops_fops", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 181, i32 37}
!58 = !{ptr @ixgbe_dbg_netdev_ops_buf, !59, !"ixgbe_dbg_netdev_ops_buf", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 122, i32 13}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 168, i32 40}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 172, i32 3}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ixgbe_dbg_netdev_ops_write._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ixgbe_dbg_netdev_ops_write._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 174, i32 3}
!69 = !{ptr @ixgbe_dbg_netdev_ops_write._entry.36, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ixgbe_dbg_netdev_ops_write._entry_ptr.38, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @ixgbe_dbg_netdev_ops_write._entry.39, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 175, i32 3}
!73 = !{ptr @ixgbe_dbg_netdev_ops_write._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_debugfs.c", i32 176, i32 3}
!76 = !{ptr @ixgbe_dbg_netdev_ops_write._entry.41, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ixgbe_dbg_netdev_ops_write._entry_ptr.43, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{i64 2157267660}
!89 = !{i64 5780188}
