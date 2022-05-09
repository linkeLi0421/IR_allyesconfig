; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c"
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ixgbe_hic_drv_info = type { %struct.ixgbe_hic_hdr, i8, i8, i8, i8, i8, i8, i16 }
%struct.ixgbe_hic_hdr = type { i8, i8, %union.anon.137, i8 }
%union.anon.137 = type { i8 }
%struct.ixgbe_nvm_version = type { i32, i8, i16, i8, i8, i8, i8, i16, i8, i8, i16, i8 }

@ixgbe_mvals_8259X = dso_local constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 65552, i32 65564, i32 66048, i32 65872, i32 65856, i32 65888, i32 65864, i32 1, i32 2, i32 4, i32 16777216, i32 33554432, i32 67108864, i32 69768, i32 69772, i32 1, i32 2, i32 4, i32 8, i32 0, i32 0, i32 0, i32 40], [36 x i8] zeroinitializer }, align 32
@ixgbe_device_supports_autoneg_fc.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ixgbe\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ixgbe_device_supports_autoneg_fc\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_common.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Device %x does not support flow control autoneg\0A\00", [47 x i8] zeroinitializer }, align 32
@ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgbe_setup_fc_generic\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ixgbe_fc_rx_pause not valid in strict IEEE mode\0A\00", [47 x i8] zeroinitializer }, align 32
@ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set up FC; PCS1GLCTL = 0x%08X\0A\00", [33 x i8] zeroinitializer }, align 32
@ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set up FC; IXGBE_AUTOC = 0x%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ixgbe_read_pba_string_generic\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PBA string buffer was null\0A\00", [36 x i8] zeroinitializer }, align 32
@ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NVM PBA number is not stored as string\0A\00", [56 x i8] zeroinitializer }, align 32
@ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PBA string buffer too small\0A\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NVM PBA number section invalid length\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_init_eeprom_params_generic.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ixgbe_init_eeprom_params_generic\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Eeprom params: type = %d, size = %d, address bits: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_read_eerd_buffer_generic.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ixgbe_read_eerd_buffer_generic\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Eeprom read timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixgbe_write_eewr_buffer_generic\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Eeprom write EEWR timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ixgbe_calc_eeprom_checksum_generic\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EEPROM read failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_validate_eeprom_checksum_generic.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.22, i8 1, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ixgbe_validate_eeprom_checksum_generic\00", [57 x i8] zeroinitializer }, align 32
@ixgbe_validate_eeprom_checksum_generic.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.22, i8 1, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_update_eeprom_checksum_generic.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.22, i8 1, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ixgbe_update_eeprom_checksum_generic\00", [59 x i8] zeroinitializer }, align 32
@ixgbe_set_rar_generic.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 1, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ixgbe_set_rar_generic\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RAR index %d is out of range.\0A\00", [33 x i8] zeroinitializer }, align 32
@ixgbe_clear_rar_generic.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.26, i8 1, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_clear_rar_generic\00", [40 x i8] zeroinitializer }, align 32
@ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ixgbe_init_rx_addrs_generic\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" Keeping Current RAR0 Addr =%pM\0A\00", [63 x i8] zeroinitializer }, align 32
@ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 1, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Overriding MAC Address in RAR[0]\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 1, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" New MAC Addr =%pM\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.32, i8 1, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Clearing RAR[1-%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 1, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" Clearing MTA\0A\00", [17 x i8] zeroinitializer }, align 32
@ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.33, i8 2, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgbe_update_mc_addr_list_generic\00", [62 x i8] zeroinitializer }, align 32
@ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 2, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" Adding the multicast addresses:\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 2, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ixgbe_update_mc_addr_list_generic Complete\0A\00", [52 x i8] zeroinitializer }, align 32
@ixgbe_fc_enable_generic.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 2, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_fc_enable_generic\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid water mark configuration\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgbe_fc_enable_generic.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.6, i8 2, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_negotiate_fc.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 2, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ixgbe_negotiate_fc\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control = FULL.\0A\00", [42 x i8] zeroinitializer }, align 32
@ixgbe_negotiate_fc.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 2, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Flow Control=RX PAUSE frames only\0A\00", [61 x i8] zeroinitializer }, align 32
@ixgbe_negotiate_fc.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 2, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = TX PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@ixgbe_negotiate_fc.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 2, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = RX PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@ixgbe_negotiate_fc.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.44, i8 2, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control = NONE.\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ixgbe_disable_rx_buff_generic.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 2, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ixgbe_disable_rx_buff_generic\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Rx unit being enabled before security path fully disabled. Continuing with init.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"eeprom read at offset %d failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ixgbe_clear_vmdq_generic.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.26, i8 2, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ixgbe_clear_vmdq_generic\00", [39 x i8] zeroinitializer }, align 32
@ixgbe_set_vmdq_generic.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.26, i8 2, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgbe_set_vmdq_generic\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_check_mac_link_generic.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 3, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ixgbe_check_mac_link_generic\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LINKS changed from %08X to %08X\0A\00", [63 x i8] zeroinitializer }, align 32
@ixgbe_hic_unlocked.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 3, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ixgbe_hic_unlocked\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer length failure buffersize-%d.\0A\00", [58 x i8] zeroinitializer }, align 32
@ixgbe_hic_unlocked.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.54, i8 3, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IXGBE_HOST_EN bit disabled.\0A\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_hic_unlocked.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.55, i8 3, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Buffer length failure, not aligned to dword\00", [52 x i8] zeroinitializer }, align 32
@ixgbe_host_interface_command.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.53, i8 3, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ixgbe_host_interface_command\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_host_interface_command.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 3, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Buffer not large enough for reply message.\0A\00", [52 x i8] zeroinitializer }, align 32
@ixgbe_emc_temp_data = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01#*", [28 x i8] zeroinitializer }, align 32
@ixgbe_emc_therm_limit = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" \19\1A0", [28 x i8] zeroinitializer }, align 32
@ixgbe_setup_mac_link_multispeed_fiber.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 4, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ixgbe_setup_mac_link_multispeed_fiber\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unexpected media type\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_setup_mac_link_multispeed_fiber.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 4, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 4, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ixgbe_set_soft_rate_select_speed\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid fixed module speed\0A\00", [36 x i8] zeroinitializer }, align 32
@ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 4, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read Rx Rate Select RS0\0A\00", [61 x i8] zeroinitializer }, align 32
@ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.63, i8 4, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to write Rx Rate Select RS0\0A\00", [60 x i8] zeroinitializer }, align 32
@ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.64, i8 4, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read Rx Rate Select RS1\0A\00", [61 x i8] zeroinitializer }, align 32
@ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.65, i8 4, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to write Rx Rate Select RS1\0A\00", [60 x i8] zeroinitializer }, align 32
@ixgbe_acquire_eeprom.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 1, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgbe_acquire_eeprom\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not acquire EEPROM grant\0A\00", [32 x i8] zeroinitializer }, align 32
@ixgbe_ready_eeprom.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 1, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ixgbe_ready_eeprom\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SPI EEPROM Status error\0A\00", [39 x i8] zeroinitializer }, align 32
@ixgbe_detect_eeprom_page_size_generic.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ixgbe_detect_eeprom_page_size_generic\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Detected EEPROM page size = %d words.\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgbe_set_mta.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 1, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ixgbe_set_mta\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" bit-vector = 0x%03X\0A\00", [42 x i8] zeroinitializer }, align 32
@ixgbe_mta_vector.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 1, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ixgbe_mta_vector\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MC filter type param set incorrectly\0A\00", [58 x i8] zeroinitializer }, align 32
@ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 2, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ixgbe_disable_pcie_master\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"GIO disable did not set - requesting resets\0A\00", [51 x i8] zeroinitializer }, align 32
@ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.78, i8 2, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"GIO Master Disable bit didn't clear - requesting resets\0A\00", [39 x i8] zeroinitializer }, align 32
@ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.79, i8 2, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PCIe transaction pending bit also did not clear.\0A\00", [46 x i8] zeroinitializer }, align 32
@ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 1, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgbe_get_eeprom_semaphore\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Driver can't access the Eeprom - SMBI Semaphore not granted.\0A\00", [34 x i8] zeroinitializer }, align 32
@ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.82, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Software semaphore SMBI between device drivers not granted.\0A\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.83, i8 1, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"SWESMBI Software EEPROM semaphore not granted.\0A\00", [48 x i8] zeroinitializer }, align 32
@ixgbe_find_vlvf_slot.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 3, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgbe_find_vlvf_slot\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No space in VLVF.\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_convert_bus_width = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_convert_bus_speed = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2500, i32 5000, i32 8000], [20 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_bus_info_generic = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_bus_info_generic.86 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2500, i32 5000, i32 8000], [20 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_disable_pcie_master = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1430, i32 880, i32 880, i32 5720, i32 22000, i32 880, i32 880, i32 88000, i32 37400], [60 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_pcie_msix_count_generic = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 19, i16 64, i16 64, i16 64, i16 64, i16 64], [20 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_get_pcie_msix_count_generic.87 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 98, i32 114, i32 114, i32 114, i32 114, i32 114], [40 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_clear_tx_pending = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1430, i32 880, i32 880, i32 5720, i32 22000, i32 880, i32 880, i32 88000, i32 37400], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 5572, i64 5582]
@__sancov_gen_cov_switch_values.89 = internal global [11 x i64] [i64 9, i64 16, i64 5404, i64 5416, i64 5472, i64 5475, i64 5549, i64 5576, i64 5585, i64 5604, i64 5605]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"ixgbe_mvals_8259X\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 36, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 102, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 126, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 217, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 234, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 257, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 502, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 508, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 524, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 528, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 565, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 883, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1185, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1278, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1708, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1769, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1814, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1847, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1899, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1947, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1950, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1951, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1964, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1974, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2079, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2084, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2097, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2157, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2284, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2287, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2292, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2296, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2299, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2704, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2889, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2965, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3016, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3333, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3611, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3622, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3628, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3688, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3718, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c"ixgbe_emc_temp_data\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3854, i32 17 }
@___asan_gen_.295 = private unnamed_addr constant [22 x i8] c"ixgbe_emc_therm_limit\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3860, i32 17 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 4228, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 4353, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 4362, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 4372, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 4381, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 4391, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1366, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1505, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1229, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2039, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2014, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2532, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2556, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 2577, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1406, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1421, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1448, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.380 = private constant [51 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 3116, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant [37 x i8] c"switch.table.ixgbe_convert_bus_width\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [37 x i8] c"switch.table.ixgbe_convert_bus_speed\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [40 x i8] c"switch.table.ixgbe_get_bus_info_generic\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [43 x i8] c"switch.table.ixgbe_get_bus_info_generic.86\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [39 x i8] c"switch.table.ixgbe_disable_pcie_master\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [47 x i8] c"switch.table.ixgbe_get_pcie_msix_count_generic\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [50 x i8] c"switch.table.ixgbe_get_pcie_msix_count_generic.87\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [36 x i8] c"switch.table.ixgbe_clear_tx_pending\00", align 1
@llvm.compiler.used = appending global [97 x ptr] [ptr @ixgbe_mvals_8259X, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @ixgbe_emc_temp_data, ptr @ixgbe_emc_therm_limit, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @switch.table.ixgbe_convert_bus_width, ptr @switch.table.ixgbe_convert_bus_speed, ptr @switch.table.ixgbe_get_bus_info_generic, ptr @switch.table.ixgbe_get_bus_info_generic.86, ptr @switch.table.ixgbe_disable_pcie_master, ptr @switch.table.ixgbe_get_pcie_msix_count_generic, ptr @switch.table.ixgbe_get_pcie_msix_count_generic.87, ptr @switch.table.ixgbe_clear_tx_pending], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_mvals_8259X to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_emc_temp_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_emc_therm_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_convert_bus_width to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_convert_bus_speed to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_bus_info_generic to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_bus_info_generic.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_disable_pcie_master to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_pcie_msix_count_generic to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_get_pcie_msix_count_generic.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_clear_tx_pending to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgbe_device_supports_autoneg_fc(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #7
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 4, !annotation !242
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link_up, align 1, !annotation !242
  %media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 7
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %media_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.do.body21_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.epilog18
    i32 4, label %sw.bb11
  ]

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

sw.bb:                                            ; preds = %entry
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %5 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device_id, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %6, label %sw.default [
    i16 5582, label %sw.bb.do.body21_crit_edge
    i16 5572, label %sw.bb.do.body21_crit_edge50
  ]

sw.bb.do.body21_crit_edge50:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

sw.bb.do.body21_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

sw.default:                                       ; preds = %sw.bb
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %8 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %check_link, align 4
  %call = call i32 %9(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_up, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %sw.default.if.end33_crit_edge, label %if.then

sw.default.if.end33_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then:                                          ; preds = %sw.default
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp = icmp eq i32 %13, 32
  br i1 %cmp, label %if.then.if.end33_crit_edge, label %if.then.do.body21_crit_edge

if.then.do.body21_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11:                                          ; preds = %entry
  %device_id12 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %14 = ptrtoint ptr %device_id12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device_id12, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %15, label %sw.bb11.do.body21_crit_edge [
    i16 5404, label %sw.bb11.if.end33_crit_edge
    i16 5416, label %sw.bb11.if.end33_crit_edge51
    i16 5472, label %sw.bb11.if.end33_crit_edge52
    i16 5475, label %sw.bb11.if.end33_crit_edge53
    i16 5585, label %sw.bb11.if.end33_crit_edge54
    i16 5549, label %sw.bb11.if.end33_crit_edge55
    i16 5576, label %sw.bb11.if.end33_crit_edge56
    i16 5604, label %sw.bb11.if.end33_crit_edge57
    i16 5605, label %sw.bb11.if.end33_crit_edge58
  ]

sw.bb11.if.end33_crit_edge58:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11.if.end33_crit_edge57:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11.if.end33_crit_edge56:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11.if.end33_crit_edge55:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11.if.end33_crit_edge54:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11.if.end33_crit_edge53:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11.if.end33_crit_edge52:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11.if.end33_crit_edge51:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11.if.end33_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.bb11.do.body21_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

sw.epilog18:                                      ; preds = %entry
  %device_id4 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %17 = ptrtoint ptr %device_id4 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device_id4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5552, i16 %18)
  %cmp6.not = icmp eq i16 %18, 5552
  br i1 %cmp6.not, label %sw.epilog18.do.body21_crit_edge, label %sw.epilog18.if.end33_crit_edge

sw.epilog18.if.end33_crit_edge:                   ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

sw.epilog18.do.body21_crit_edge:                  ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

do.body21:                                        ; preds = %sw.epilog18.do.body21_crit_edge, %sw.bb11.do.body21_crit_edge, %if.then.do.body21_crit_edge, %sw.bb.do.body21_crit_edge, %sw.bb.do.body21_crit_edge50, %entry.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_device_supports_autoneg_fc.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_device_supports_autoneg_fc, %if.then27)) #7
          to label %if.end33 [label %if.then27], !srcloc !244

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %19 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev, align 128
  %device_id28 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %23 = ptrtoint ptr %device_id28 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device_id28, align 4
  %conv29 = zext i16 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_device_supports_autoneg_fc.__UNIQUE_ID_ddebug357, ptr noundef %22, ptr noundef nonnull @.str.3, i32 noundef %conv29) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %do.body21, %sw.epilog18.if.end33_crit_edge, %sw.bb11.if.end33_crit_edge, %sw.bb11.if.end33_crit_edge51, %sw.bb11.if.end33_crit_edge52, %sw.bb11.if.end33_crit_edge53, %sw.bb11.if.end33_crit_edge54, %sw.bb11.if.end33_crit_edge55, %sw.bb11.if.end33_crit_edge56, %sw.bb11.if.end33_crit_edge57, %sw.bb11.if.end33_crit_edge58, %if.then.if.end33_crit_edge, %sw.default.if.end33_crit_edge
  %supported.0.off045 = phi i1 [ false, %if.then27 ], [ true, %sw.epilog18.if.end33_crit_edge ], [ true, %if.then.if.end33_crit_edge ], [ false, %do.body21 ], [ true, %sw.default.if.end33_crit_edge ], [ true, %sw.bb11.if.end33_crit_edge ], [ true, %sw.bb11.if.end33_crit_edge51 ], [ true, %sw.bb11.if.end33_crit_edge52 ], [ true, %sw.bb11.if.end33_crit_edge53 ], [ true, %sw.bb11.if.end33_crit_edge54 ], [ true, %sw.bb11.if.end33_crit_edge55 ], [ true, %sw.bb11.if.end33_crit_edge56 ], [ true, %sw.bb11.if.end33_crit_edge57 ], [ true, %sw.bb11.if.end33_crit_edge58 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #7
  ret i1 %supported.0.off045
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_setup_fc_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %reg_bp = alloca i32, align 4
  %reg_cu = alloca i16, align 2
  %locked = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_bp) #7
  %0 = ptrtoint ptr %reg_bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg_bp, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_cu) #7
  %1 = ptrtoint ptr %reg_cu to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %reg_cu, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %locked) #7
  %2 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %locked, align 1
  %strict_ieee = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 4
  %3 = ptrtoint ptr %strict_ieee to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %strict_ieee, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %do.body2, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_fc_generic, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !244

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug358, ptr noundef %10, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %requested_mode11 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %requested_mode11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %requested_mode11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp12 = icmp eq i32 %12, 4
  br i1 %cmp12, label %if.then13, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %requested_mode11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %requested_mode11, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 7
  %14 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %media_type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %15, label %if.end16.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 1, label %if.end16.sw.bb21_crit_edge
    i32 4, label %sw.bb23
  ]

if.end16.sw.bb21_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end16
  %prot_autoc_read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 21
  %17 = ptrtoint ptr %prot_autoc_read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prot_autoc_read, align 4
  %call17 = call i32 %18(ptr noundef %hw, ptr noundef nonnull %locked, ptr noundef nonnull %reg_bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %sw.bb.sw.bb21_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.sw.bb21_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.bb.sw.bb21_crit_edge, %if.end16.sw.bb21_crit_edge
  %call22 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16920) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %19 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg, align 4
  %call26 = call i32 %20(ptr noundef %hw, i32 noundef 16, i32 noundef 7, ptr noundef nonnull %reg_cu) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb21, %if.end16.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 0, %if.end16.sw.epilog_crit_edge ], [ 0, %sw.bb23 ], [ %call22, %sw.bb21 ]
  %21 = ptrtoint ptr %requested_mode11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %requested_mode11, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %22, label %do.body87 [
    i32 0, label %sw.bb29
    i32 2, label %sw.bb43
    i32 1, label %sw.epilog.sw.bb66_crit_edge
    i32 3, label %sw.epilog.sw.bb66_crit_edge256
  ]

sw.epilog.sw.bb66_crit_edge256:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66

sw.epilog.sw.bb66_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66

sw.bb29:                                          ; preds = %sw.epilog
  %and = and i32 %reg.0, -385
  %24 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %media_type, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %25, label %sw.bb29.sw.epilog107_crit_edge [
    i32 5, label %if.then33
    i32 4, label %if.then38
  ]

sw.bb29.sw.epilog107_crit_edge:                   ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

if.then33:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %reg_bp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_bp, align 4
  %and34 = and i32 %28, -805306369
  store i32 %and34, ptr %reg_bp, align 4
  br label %sw.epilog107

if.then38:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %reg_cu to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %reg_cu, align 2
  %31 = and i16 %30, -3073
  store i16 %31, ptr %reg_cu, align 2
  br label %sw.epilog107

sw.bb43:                                          ; preds = %sw.epilog
  %or = and i32 %reg.0, -385
  %and44 = or i32 %or, 256
  %32 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %media_type, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %33, label %sw.bb43.sw.epilog107_crit_edge [
    i32 5, label %if.then49
    i32 4, label %if.then57
  ]

sw.bb43.sw.epilog107_crit_edge:                   ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

if.then49:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %reg_bp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_bp, align 4
  %or50 = and i32 %36, -805306369
  %and51 = or i32 %or50, 536870912
  store i32 %and51, ptr %reg_bp, align 4
  br label %sw.epilog107

if.then57:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %reg_cu to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %reg_cu, align 2
  %39 = and i16 %38, -3073
  %40 = or i16 %39, 2048
  store i16 %40, ptr %reg_cu, align 2
  br label %sw.epilog107

sw.bb66:                                          ; preds = %sw.epilog.sw.bb66_crit_edge, %sw.epilog.sw.bb66_crit_edge256
  %or67 = or i32 %reg.0, 384
  %41 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %media_type, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %42, label %sw.bb66.sw.epilog107_crit_edge [
    i32 5, label %if.then72
    i32 4, label %if.then79
  ]

sw.bb66.sw.epilog107_crit_edge:                   ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

if.then72:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %reg_bp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_bp, align 4
  %or73 = or i32 %45, 805306368
  store i32 %or73, ptr %reg_bp, align 4
  br label %sw.epilog107

if.then79:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %reg_cu to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %reg_cu, align 2
  %48 = or i16 %47, 3072
  store i16 %48, ptr %reg_cu, align 2
  br label %sw.epilog107

do.body87:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_fc_generic, %if.then99)) #7
          to label %cleanup [label %if.then99], !srcloc !244

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  %back100 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %49 = ptrtoint ptr %back100 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %back100, align 4
  %netdev101 = getelementptr inbounds %struct.ixgbe_adapter, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %netdev101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %netdev101, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug359, ptr noundef %52, ptr noundef nonnull @.str.6) #7
  br label %cleanup

sw.epilog107:                                     ; preds = %if.then79, %if.then72, %sw.bb66.sw.epilog107_crit_edge, %if.then57, %if.then49, %sw.bb43.sw.epilog107_crit_edge, %if.then38, %if.then33, %sw.bb29.sw.epilog107_crit_edge
  %reg.1 = phi i32 [ %or67, %if.then72 ], [ %or67, %if.then79 ], [ %and44, %if.then49 ], [ %and44, %if.then57 ], [ %and, %if.then33 ], [ %and, %if.then38 ], [ %and, %sw.bb29.sw.epilog107_crit_edge ], [ %and44, %sw.bb43.sw.epilog107_crit_edge ], [ %or67, %sw.bb66.sw.epilog107_crit_edge ]
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp109.not = icmp eq i32 %54, 3
  br i1 %cmp109.not, label %sw.epilog107.if.end140_crit_edge, label %if.then111

sw.epilog107.if.end140_crit_edge:                 ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.then111:                                       ; preds = %sw.epilog107
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.then111.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then111.ixgbe_write_reg.exit_crit_edge:        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  call void @arm_heavy_mb() #7
  %57 = call i32 @llvm.bswap.i32(i32 %reg.1) #7
  %add.ptr.i = getelementptr i8, ptr %56, i32 16920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %57) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then111.ixgbe_write_reg.exit_crit_edge
  %call112 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16904) #7
  %58 = ptrtoint ptr %strict_ieee to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %strict_ieee, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool115.not = icmp eq i8 %59, 0
  %and117 = and i32 %call112, -262145
  %spec.select = select i1 %tobool115.not, i32 %call112, i32 %and117
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i248 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i248, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit251_crit_edge, label %do.body1.i250

ixgbe_write_reg.exit.ixgbe_write_reg.exit251_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit251

do.body1.i250:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  call void @arm_heavy_mb() #7
  %62 = call i32 @llvm.bswap.i32(i32 %spec.select) #7
  %add.ptr.i249 = getelementptr i8, ptr %61, i32 16904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249, i32 %62) #7, !srcloc !246
  br label %ixgbe_write_reg.exit251

ixgbe_write_reg.exit251:                          ; preds = %do.body1.i250, %ixgbe_write_reg.exit.ixgbe_write_reg.exit251_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_fc_generic, %if.then132)) #7
          to label %if.end140 [label %if.then132], !srcloc !244

if.then132:                                       ; preds = %ixgbe_write_reg.exit251
  call void @__sanitizer_cov_trace_pc() #9
  %back133 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %63 = ptrtoint ptr %back133 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %back133, align 4
  %netdev134 = getelementptr inbounds %struct.ixgbe_adapter, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %netdev134 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %netdev134, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug360, ptr noundef %66, ptr noundef nonnull @.str.7, i32 noundef %spec.select) #7
  br label %if.end140

if.end140:                                        ; preds = %if.then132, %ixgbe_write_reg.exit251, %sw.epilog107.if.end140_crit_edge
  %reg.3 = phi i32 [ %spec.select, %if.then132 ], [ %reg.1, %sw.epilog107.if.end140_crit_edge ], [ %spec.select, %ixgbe_write_reg.exit251 ]
  %67 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %media_type, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %68, label %if.end140.do.body168_crit_edge [
    i32 5, label %if.then145
    i32 4, label %land.lhs.true158
  ]

if.end140.do.body168_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body168

if.then145:                                       ; preds = %if.end140
  %prot_autoc_write = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 22
  %70 = ptrtoint ptr %prot_autoc_write to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prot_autoc_write, align 4
  %72 = ptrtoint ptr %reg_bp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg_bp, align 4
  %74 = ptrtoint ptr %locked to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %locked, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool148 = icmp ne i8 %75, 0
  %call149 = call i32 %71(ptr noundef %hw, i32 noundef %73, i1 noundef zeroext %tobool148) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then145.do.body168_crit_edge, label %if.then145.cleanup_crit_edge

if.then145.cleanup_crit_edge:                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then145.do.body168_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body168

land.lhs.true158:                                 ; preds = %if.end140
  %call159 = call zeroext i1 @ixgbe_device_supports_autoneg_fc(ptr noundef %hw)
  br i1 %call159, label %if.then161, label %land.lhs.true158.do.body168_crit_edge

land.lhs.true158.do.body168_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body168

if.then161:                                       ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #9
  %write_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %76 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_reg, align 4
  %78 = ptrtoint ptr %reg_cu to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %reg_cu, align 2
  %call164 = call i32 %77(ptr noundef %hw, i32 noundef 16, i32 noundef 7, i16 noundef zeroext %79) #7
  br label %do.body168

do.body168:                                       ; preds = %if.then161, %land.lhs.true158.do.body168_crit_edge, %if.then145.do.body168_crit_edge, %if.end140.do.body168_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_fc_generic, %if.then180)) #7
          to label %cleanup [label %if.then180], !srcloc !244

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #9
  %back181 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %80 = ptrtoint ptr %back181 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %back181, align 4
  %netdev182 = getelementptr inbounds %struct.ixgbe_adapter, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %netdev182 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev182, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug361, ptr noundef %83, ptr noundef nonnull @.str.8, i32 noundef %reg.3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then180, %do.body168, %if.then145.cleanup_crit_edge, %if.then99, %do.body87, %sw.bb.cleanup_crit_edge, %if.then6, %do.body2
  %retval.0 = phi i32 [ -13, %if.then6 ], [ %call17, %sw.bb.cleanup_crit_edge ], [ -4, %if.then99 ], [ %call149, %if.then145.cleanup_crit_edge ], [ 0, %if.then180 ], [ -13, %do.body2 ], [ -4, %do.body87 ], [ 0, %do.body168 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %locked) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_cu) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_bp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_start_hw_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %device_caps = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %device_caps) #7
  %0 = ptrtoint ptr %device_caps to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %device_caps, align 2, !annotation !242
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %1 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %2(ptr noundef %hw) #7
  %phy = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5
  %media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 7
  %3 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %media_type, align 4
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 %5(ptr noundef %hw) #7
  %clear_vfta = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 47
  %6 = ptrtoint ptr %clear_vfta to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clear_vfta, align 4
  %call6 = tail call i32 %7(ptr noundef %hw) #7
  %clear_hw_cntrs = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 3
  %8 = ptrtoint ptr %clear_hw_cntrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clear_hw_cntrs, align 4
  %call9 = tail call i32 %9(ptr noundef %hw) #7
  %call10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 24) #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call10, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %setup_fc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 53
  %13 = ptrtoint ptr %setup_fc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %setup_fc, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %ixgbe_write_reg.exit.if.end20_crit_edge, label %if.then

ixgbe_write_reg.exit.if.end20_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then:                                          ; preds = %ixgbe_write_reg.exit
  %call17 = tail call i32 %14(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then.if.end20_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.then.if.end20_crit_edge, %ixgbe_write_reg.exit.if.end20_crit_edge
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %16, label %sw.default [
    i32 2, label %if.end20.sw.bb_crit_edge
    i32 5, label %if.end20.sw.bb_crit_edge55
    i32 6, label %if.end20.sw.bb_crit_edge56
  ]

if.end20.sw.bb_crit_edge56:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end20.sw.bb_crit_edge55:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end20.sw.bb_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end20.sw.bb_crit_edge, %if.end20.sw.bb_crit_edge55, %if.end20.sw.bb_crit_edge56
  %get_device_caps = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 7
  %18 = ptrtoint ptr %get_device_caps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_device_caps, align 4
  %call24 = call i32 %19(ptr noundef %hw, ptr noundef nonnull %device_caps) #7
  %20 = ptrtoint ptr %device_caps to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device_caps, align 2
  %22 = and i16 %21, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool25.not = icmp eq i16 %22, 0
  %need_crosstalk_fix27 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 20
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %need_crosstalk_fix27 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %need_crosstalk_fix27, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %need_crosstalk_fix27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %need_crosstalk_fix27, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %need_crosstalk_fix29 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 20
  %25 = ptrtoint ptr %need_crosstalk_fix29 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %need_crosstalk_fix29, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %if.then26
  %adapter_stopped = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 16
  %26 = ptrtoint ptr %adapter_stopped to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %adapter_stopped, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call17, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %device_caps) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_start_hw_gen2(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 15
  %0 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %ixgbe_write_reg.exit9.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %ixgbe_write_reg.exit9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.ixgbe_write_reg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.011) #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 18692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.ixgbe_write_reg.exit_crit_edge
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i6 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i6, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit9_crit_edge, label %do.body1.i8

ixgbe_write_reg.exit.ixgbe_write_reg.exit9_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit9

do.body1.i8:                                      ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i7 = getelementptr i8, ptr %6, i32 18820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit9

ixgbe_write_reg.exit9:                            ; preds = %do.body1.i8, %ixgbe_write_reg.exit.ixgbe_write_reg.exit9_crit_edge
  %inc = add nuw i32 %i.011, 1
  %7 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %ixgbe_write_reg.exit9.for.body_crit_edge, label %ixgbe_write_reg.exit9.for.end_crit_edge

ixgbe_write_reg.exit9.for.end_crit_edge:          ; preds = %ixgbe_write_reg.exit9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

ixgbe_write_reg.exit9.for.body_crit_edge:         ; preds = %ixgbe_write_reg.exit9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ixgbe_write_reg.exit9.for.end_crit_edge, %entry.for.end_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_hw_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_hw = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %reset_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_hw, align 4
  %call = tail call i32 %1(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %start_hw = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %start_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start_hw, align 4
  %call3 = tail call i32 %3(ptr noundef %hw) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %init_led_link_act = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 37
  %4 = ptrtoint ptr %init_led_link_act to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_led_link_act, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 %5(ptr noundef %hw) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_clear_hw_cntrs_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i) #7
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16384) #7
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16388) #7
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16392) #7
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16400) #7
  %call6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16288) #7
  %call6.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16292) #7
  %call6.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16296) #7
  %call6.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16300) #7
  %call6.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16304) #7
  %call6.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16308) #7
  %call6.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16312) #7
  %call6.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16316) #7
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 8, ptr %i, align 2
  %call7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16436) #7
  %call8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16440) #7
  %call9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16448) #7
  %call10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16224) #7
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16232) #7
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp12 = icmp ugt i32 %2, 1
  %. = select i1 %cmp12, i32 16804, i32 53088
  %.313 = select i1 %cmp12, i32 16808, i32 53096
  %call16 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %.) #7
  %call17 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %.313) #7
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body22.for.body22_crit_edge ]
  %mul24 = shl nuw nsw i32 %indvars.iv, 2
  %add25 = add nuw nsw i32 %mul24, 16128
  %call26 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add25) #7
  %add29 = add nuw nsw i32 %mul24, 16160
  %call30 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add29) #7
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp33 = icmp ugt i32 %4, 1
  %.314 = select i1 %cmp33, i32 16704, i32 52992
  %.315 = select i1 %cmp33, i32 16736, i32 53024
  %add38 = add nuw nsw i32 %mul24, %.314
  %call39 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add38) #7
  %add42 = add nuw nsw i32 %mul24, %.315
  %call43 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add42) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end56, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22

for.end56:                                        ; preds = %for.body22
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp59 = icmp ugt i32 %6, 1
  br i1 %cmp59, label %for.body66.preheader, label %for.end56.if.end74_crit_edge

for.end56.if.end74_crit_edge:                     ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

for.body66.preheader:                             ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12864) #7
  %call70.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12868) #7
  %call70.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12872) #7
  %call70.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12876) #7
  %call70.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12880) #7
  %call70.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12884) #7
  %call70.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12888) #7
  %call70.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12892) #7
  %7 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 8, ptr %i, align 2
  br label %if.end74

if.end74:                                         ; preds = %for.body66.preheader, %for.end56.if.end74_crit_edge
  %call75 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16476) #7
  %call76 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16480) #7
  %call77 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16484) #7
  %call78 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16488) #7
  %call79 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16492) #7
  %call80 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16496) #7
  %call81 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16500) #7
  %call82 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16504) #7
  %call83 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16508) #7
  %call84 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16512) #7
  %call85 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16520) #7
  %call86 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16524) #7
  %call87 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16528) #7
  %call88 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16532) #7
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp91 = icmp eq i32 %9, 1
  br i1 %cmp91, label %for.body98.preheader, label %if.end74.if.end106_crit_edge

if.end74.if.end106_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

for.body98.preheader:                             ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call102 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16320) #7
  %call102.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16324) #7
  %call102.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16328) #7
  %call102.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16332) #7
  %call102.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16336) #7
  %call102.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16340) #7
  %call102.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16344) #7
  %call102.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16348) #7
  %10 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8, ptr %i, align 2
  br label %if.end106

if.end106:                                        ; preds = %for.body98.preheader, %if.end74.if.end106_crit_edge
  %call107 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16548) #7
  %call108 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16552) #7
  %call109 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16556) #7
  %call110 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16560) #7
  %call111 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16564) #7
  %call112 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16568) #7
  %call113 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 53136) #7
  %call114 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16576) #7
  %call115 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16580) #7
  %call116 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16592) #7
  %call117 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16596) #7
  %call118 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16600) #7
  %call119 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16604) #7
  %call120 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16608) #7
  %call121 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16612) #7
  %call122 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16616) #7
  %call123 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16620) #7
  %call124 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16624) #7
  %call125 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16628) #7
  br label %for.body130

for.body130:                                      ; preds = %for.inc174.for.body130_crit_edge, %if.end106
  %indvars.iv306 = phi i32 [ 0, %if.end106 ], [ %indvars.iv.next307, %for.inc174.for.body130_crit_edge ]
  %mul132 = shl nuw nsw i32 %indvars.iv306, 6
  %add133 = add nuw nsw i32 %mul132, 4144
  %call134 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add133) #7
  %add137 = add nuw nsw i32 %mul132, 24624
  %call138 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add137) #7
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp141 = icmp ugt i32 %12, 1
  %add146 = add nuw nsw i32 %mul132, 4148
  %call147 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add146) #7
  br i1 %cmp141, label %if.then143, label %for.body130.for.inc174_crit_edge

for.body130.for.inc174_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc174

if.then143:                                       ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #9
  %add150 = add nuw nsw i32 %mul132, 4152
  %call151 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add150) #7
  %mul153 = shl nuw nsw i32 %indvars.iv306, 3
  %add154 = add nuw nsw i32 %mul153, 34560
  %call155 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add154) #7
  %add158 = add nuw nsw i32 %mul153, 34564
  %call159 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add158) #7
  br label %for.inc174

for.inc174:                                       ; preds = %if.then143, %for.body130.for.inc174_crit_edge
  %.sink312 = phi i32 [ 5168, %if.then143 ], [ 24628, %for.body130.for.inc174_crit_edge ]
  %add162 = add nuw nsw i32 %mul132, %.sink312
  %call163 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add162) #7
  %indvars.iv.next307 = add nuw nsw i32 %indvars.iv306, 1
  %exitcond308.not = icmp eq i32 %indvars.iv.next307, 16
  br i1 %exitcond308.not, label %for.end176, label %for.inc174.for.body130_crit_edge

for.inc174.for.body130_crit_edge:                 ; preds = %for.inc174
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body130

for.end176:                                       ; preds = %for.inc174
  %13 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16, ptr %i, align 2
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %.off = add i32 %15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then185, label %for.end176.if.end207_crit_edge

for.end176.if.end207_crit_edge:                   ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

if.then185:                                       ; preds = %for.end176
  %id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp186 = icmp eq i32 %17, 0
  br i1 %cmp186, label %if.then188, label %if.then185.if.end191_crit_edge

if.then185.if.end191_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.then188:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #9
  %phy = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  %call190 = tail call i32 %19(ptr noundef %hw) #7
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %if.then185.if.end191_crit_edge
  %read_reg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %20 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_reg, align 4
  %call194 = call i32 %21(ptr noundef %hw, i32 noundef 59408, i32 noundef 3, ptr noundef nonnull %i) #7
  %22 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_reg, align 4
  %call198 = call i32 %23(ptr noundef %hw, i32 noundef 59409, i32 noundef 3, ptr noundef nonnull %i) #7
  %24 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg, align 4
  %call202 = call i32 %25(ptr noundef %hw, i32 noundef 59424, i32 noundef 3, ptr noundef nonnull %i) #7
  %26 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg, align 4
  %call206 = call i32 %27(ptr noundef %hw, i32 noundef 59425, i32 noundef 3, ptr noundef nonnull %i) #7
  br label %if.end207

if.end207:                                        ; preds = %if.end191, %for.end176.if.end207_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_pba_string_generic(ptr noundef %hw, ptr noundef %pba_num, i32 noundef %pba_num_size) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  %pba_ptr = alloca i16, align 2
  %length = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pba_ptr) #7
  %1 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pba_ptr, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length) #7
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %length, align 2, !annotation !242
  %cmp = icmp eq ptr %pba_num, null
  br i1 %cmp, label %do.body1, label %if.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_pba_string_generic, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !244

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug362, ptr noundef %6, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %call8 = call i32 %8(ptr noundef %hw, i16 noundef zeroext 21, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end32, label %do.body12

do.body12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_pba_string_generic, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !244

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %back25 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %back25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back25, align 4
  %netdev26 = getelementptr inbounds %struct.ixgbe_adapter, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev26, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug363, ptr noundef %12, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read, align 4
  %call36 = call i32 %14(ptr noundef %hw, i16 noundef zeroext 22, ptr noundef nonnull %pba_ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end60, label %do.body40

do.body40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_pba_string_generic, %if.then52)) #7
          to label %cleanup [label %if.then52], !srcloc !244

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %back53 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %back53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %back53, align 4
  %netdev54 = getelementptr inbounds %struct.ixgbe_adapter, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %netdev54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev54, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug364, ptr noundef %18, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end60:                                         ; preds = %if.end32
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1286, i16 %20)
  %cmp61.not = icmp eq i16 %20, -1286
  br i1 %cmp61.not, label %if.end173, label %do.body65

do.body65:                                        ; preds = %if.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_pba_string_generic, %if.then77)) #7
          to label %do.end84 [label %if.then77], !srcloc !244

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %back78 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %21 = ptrtoint ptr %back78 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %back78, align 4
  %netdev79 = getelementptr inbounds %struct.ixgbe_adapter, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %netdev79 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev79, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug365, ptr noundef %24, ptr noundef nonnull @.str.12) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then77, %do.body65
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %pba_num_size)
  %cmp85 = icmp ult i32 %pba_num_size, 11
  br i1 %cmp85, label %do.body89, label %if.end109

do.body89:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_pba_string_generic, %if.then101)) #7
          to label %cleanup [label %if.then101], !srcloc !244

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  %back102 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %25 = ptrtoint ptr %back102 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %back102, align 4
  %netdev103 = getelementptr inbounds %struct.ixgbe_adapter, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %netdev103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev103, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug366, ptr noundef %28, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end109:                                        ; preds = %do.end84
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %data, align 2
  %31 = lshr i16 %30, 12
  %conv111 = trunc i16 %31 to i8
  %32 = lshr i16 %30, 8
  %33 = trunc i16 %32 to i8
  %conv115 = and i8 %33, 15
  %arrayidx116 = getelementptr i8, ptr %pba_num, i32 1
  %34 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv115, ptr %arrayidx116, align 1
  %35 = trunc i16 %30 to i8
  %36 = lshr i8 %35, 4
  %arrayidx121 = getelementptr i8, ptr %pba_num, i32 2
  %37 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx121, align 1
  %conv124 = and i8 %35, 15
  %arrayidx125 = getelementptr i8, ptr %pba_num, i32 3
  %38 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv124, ptr %arrayidx125, align 1
  %39 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pba_ptr, align 2
  %41 = lshr i16 %40, 12
  %conv129 = trunc i16 %41 to i8
  %arrayidx130 = getelementptr i8, ptr %pba_num, i32 4
  %42 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv129, ptr %arrayidx130, align 1
  %43 = lshr i16 %40, 8
  %44 = trunc i16 %43 to i8
  %conv134 = and i8 %44, 15
  %arrayidx135 = getelementptr i8, ptr %pba_num, i32 5
  %45 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv134, ptr %arrayidx135, align 1
  %arrayidx136 = getelementptr i8, ptr %pba_num, i32 6
  %46 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 45, ptr %arrayidx136, align 1
  %arrayidx137 = getelementptr i8, ptr %pba_num, i32 7
  %47 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx137, align 1
  %48 = trunc i16 %40 to i8
  %49 = lshr i8 %48, 4
  %arrayidx142 = getelementptr i8, ptr %pba_num, i32 8
  %50 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx142, align 1
  %conv145 = and i8 %48, 15
  %arrayidx146 = getelementptr i8, ptr %pba_num, i32 9
  %51 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv145, ptr %arrayidx146, align 1
  %arrayidx147 = getelementptr i8, ptr %pba_num, i32 10
  %52 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx147, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv111)
  %cmp153 = icmp ult i8 %conv111, 10
  %add = or i8 %conv111, 48
  %add169 = add nuw nsw i8 %conv111, 55
  %add.sink = select i1 %cmp153, i8 %add, i8 %add169
  %53 = ptrtoint ptr %pba_num to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %add.sink, ptr %pba_num, align 1
  %54 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %55)
  %cmp153.1 = icmp ult i8 %55, 10
  br i1 %cmp153.1, label %if.end109.for.inc.1.sink.split_crit_edge, label %if.else.1

if.end109.for.inc.1.sink.split_crit_edge:         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split

if.else.1:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %55)
  %cmp163.1 = icmp ult i8 %55, 16
  br i1 %cmp163.1, label %if.else.1.for.inc.1.sink.split_crit_edge, label %if.else.1.for.inc.1_crit_edge

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.else.1.for.inc.1.sink.split_crit_edge:         ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %if.else.1.for.inc.1.sink.split_crit_edge, %if.end109.for.inc.1.sink.split_crit_edge
  %.sink = phi i8 [ 55, %if.else.1.for.inc.1.sink.split_crit_edge ], [ 48, %if.end109.for.inc.1.sink.split_crit_edge ]
  %add.1 = add nuw nsw i8 %55, %.sink
  %56 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %add.1, ptr %arrayidx116, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %if.else.1.for.inc.1_crit_edge
  %57 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %58)
  %cmp153.2 = icmp ult i8 %58, 10
  br i1 %cmp153.2, label %for.inc.1.for.inc.2.sink.split_crit_edge, label %if.else.2

for.inc.1.for.inc.2.sink.split_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.sink.split

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %58)
  %cmp163.2 = icmp ult i8 %58, 16
  br i1 %cmp163.2, label %if.else.2.for.inc.2.sink.split_crit_edge, label %if.else.2.for.inc.2_crit_edge

if.else.2.for.inc.2_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.else.2.for.inc.2.sink.split_crit_edge:         ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.sink.split

for.inc.2.sink.split:                             ; preds = %if.else.2.for.inc.2.sink.split_crit_edge, %for.inc.1.for.inc.2.sink.split_crit_edge
  %.sink413 = phi i8 [ 55, %if.else.2.for.inc.2.sink.split_crit_edge ], [ 48, %for.inc.1.for.inc.2.sink.split_crit_edge ]
  %add.2 = add nuw nsw i8 %58, %.sink413
  %59 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %add.2, ptr %arrayidx121, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2.sink.split, %if.else.2.for.inc.2_crit_edge
  %60 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %61)
  %cmp153.3 = icmp ult i8 %61, 10
  br i1 %cmp153.3, label %for.inc.2.for.inc.3.sink.split_crit_edge, label %if.else.3

for.inc.2.for.inc.3.sink.split_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.sink.split

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %61)
  %cmp163.3 = icmp ult i8 %61, 16
  br i1 %cmp163.3, label %if.else.3.for.inc.3.sink.split_crit_edge, label %if.else.3.for.inc.3_crit_edge

if.else.3.for.inc.3_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.else.3.for.inc.3.sink.split_crit_edge:         ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.sink.split

for.inc.3.sink.split:                             ; preds = %if.else.3.for.inc.3.sink.split_crit_edge, %for.inc.2.for.inc.3.sink.split_crit_edge
  %.sink414 = phi i8 [ 55, %if.else.3.for.inc.3.sink.split_crit_edge ], [ 48, %for.inc.2.for.inc.3.sink.split_crit_edge ]
  %add.3 = add nuw nsw i8 %61, %.sink414
  %62 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %add.3, ptr %arrayidx125, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.3.sink.split, %if.else.3.for.inc.3_crit_edge
  %63 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %64)
  %cmp153.4 = icmp ult i8 %64, 10
  br i1 %cmp153.4, label %for.inc.3.for.inc.4.sink.split_crit_edge, label %if.else.4

for.inc.3.for.inc.4.sink.split_crit_edge:         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.sink.split

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %64)
  %cmp163.4 = icmp ult i8 %64, 16
  br i1 %cmp163.4, label %if.else.4.for.inc.4.sink.split_crit_edge, label %if.else.4.for.inc.4_crit_edge

if.else.4.for.inc.4_crit_edge:                    ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.else.4.for.inc.4.sink.split_crit_edge:         ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.sink.split

for.inc.4.sink.split:                             ; preds = %if.else.4.for.inc.4.sink.split_crit_edge, %for.inc.3.for.inc.4.sink.split_crit_edge
  %.sink415 = phi i8 [ 55, %if.else.4.for.inc.4.sink.split_crit_edge ], [ 48, %for.inc.3.for.inc.4.sink.split_crit_edge ]
  %add.4 = add nuw nsw i8 %64, %.sink415
  %65 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %add.4, ptr %arrayidx130, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.4.sink.split, %if.else.4.for.inc.4_crit_edge
  %66 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %67)
  %cmp153.5 = icmp ult i8 %67, 10
  br i1 %cmp153.5, label %for.inc.4.for.inc.5.sink.split_crit_edge, label %if.else.5

for.inc.4.for.inc.5.sink.split_crit_edge:         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.sink.split

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %67)
  %cmp163.5 = icmp ult i8 %67, 16
  br i1 %cmp163.5, label %if.else.5.for.inc.5.sink.split_crit_edge, label %if.else.5.for.inc.5_crit_edge

if.else.5.for.inc.5_crit_edge:                    ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.else.5.for.inc.5.sink.split_crit_edge:         ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.sink.split

for.inc.5.sink.split:                             ; preds = %if.else.5.for.inc.5.sink.split_crit_edge, %for.inc.4.for.inc.5.sink.split_crit_edge
  %.sink416 = phi i8 [ 55, %if.else.5.for.inc.5.sink.split_crit_edge ], [ 48, %for.inc.4.for.inc.5.sink.split_crit_edge ]
  %add.5 = add nuw nsw i8 %67, %.sink416
  %68 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %add.5, ptr %arrayidx135, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.5.sink.split, %if.else.5.for.inc.5_crit_edge
  %69 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx136, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %70)
  %cmp153.6 = icmp ult i8 %70, 10
  br i1 %cmp153.6, label %for.inc.5.for.inc.6.sink.split_crit_edge, label %if.else.6

for.inc.5.for.inc.6.sink.split_crit_edge:         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.sink.split

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %70)
  %cmp163.6 = icmp ult i8 %70, 16
  br i1 %cmp163.6, label %if.else.6.for.inc.6.sink.split_crit_edge, label %if.else.6.for.inc.6_crit_edge

if.else.6.for.inc.6_crit_edge:                    ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.else.6.for.inc.6.sink.split_crit_edge:         ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.sink.split

for.inc.6.sink.split:                             ; preds = %if.else.6.for.inc.6.sink.split_crit_edge, %for.inc.5.for.inc.6.sink.split_crit_edge
  %.sink417 = phi i8 [ 55, %if.else.6.for.inc.6.sink.split_crit_edge ], [ 48, %for.inc.5.for.inc.6.sink.split_crit_edge ]
  %add.6 = add nuw nsw i8 %70, %.sink417
  %71 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %add.6, ptr %arrayidx136, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.6.sink.split, %if.else.6.for.inc.6_crit_edge
  %72 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %73)
  %cmp153.7 = icmp ult i8 %73, 10
  br i1 %cmp153.7, label %for.inc.6.for.inc.7.sink.split_crit_edge, label %if.else.7

for.inc.6.for.inc.7.sink.split_crit_edge:         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7.sink.split

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %73)
  %cmp163.7 = icmp ult i8 %73, 16
  br i1 %cmp163.7, label %if.else.7.for.inc.7.sink.split_crit_edge, label %if.else.7.for.inc.7_crit_edge

if.else.7.for.inc.7_crit_edge:                    ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.else.7.for.inc.7.sink.split_crit_edge:         ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7.sink.split

for.inc.7.sink.split:                             ; preds = %if.else.7.for.inc.7.sink.split_crit_edge, %for.inc.6.for.inc.7.sink.split_crit_edge
  %.sink418 = phi i8 [ 55, %if.else.7.for.inc.7.sink.split_crit_edge ], [ 48, %for.inc.6.for.inc.7.sink.split_crit_edge ]
  %add.7 = add nuw nsw i8 %73, %.sink418
  %74 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %add.7, ptr %arrayidx137, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.7.sink.split, %if.else.7.for.inc.7_crit_edge
  %75 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %76)
  %cmp153.8 = icmp ult i8 %76, 10
  br i1 %cmp153.8, label %for.inc.7.for.inc.8.sink.split_crit_edge, label %if.else.8

for.inc.7.for.inc.8.sink.split_crit_edge:         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8.sink.split

if.else.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %76)
  %cmp163.8 = icmp ult i8 %76, 16
  br i1 %cmp163.8, label %if.else.8.for.inc.8.sink.split_crit_edge, label %if.else.8.for.inc.8_crit_edge

if.else.8.for.inc.8_crit_edge:                    ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8

if.else.8.for.inc.8.sink.split_crit_edge:         ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8.sink.split

for.inc.8.sink.split:                             ; preds = %if.else.8.for.inc.8.sink.split_crit_edge, %for.inc.7.for.inc.8.sink.split_crit_edge
  %.sink419 = phi i8 [ 55, %if.else.8.for.inc.8.sink.split_crit_edge ], [ 48, %for.inc.7.for.inc.8.sink.split_crit_edge ]
  %add.8 = add nuw nsw i8 %76, %.sink419
  %77 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %add.8, ptr %arrayidx142, align 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.8.sink.split, %if.else.8.for.inc.8_crit_edge
  %78 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx146, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %79)
  %cmp153.9 = icmp ult i8 %79, 10
  br i1 %cmp153.9, label %if.then155.9, label %if.else.9

if.else.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %79)
  %cmp163.9 = icmp ult i8 %79, 16
  br i1 %cmp163.9, label %if.then165.9, label %if.else.9.cleanup_crit_edge

if.else.9.cleanup_crit_edge:                      ; preds = %if.else.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then165.9:                                     ; preds = %if.else.9
  call void @__sanitizer_cov_trace_pc() #9
  %add169.9 = add nuw nsw i8 %79, 55
  %80 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %add169.9, ptr %arrayidx146, align 1
  br label %cleanup

if.then155.9:                                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  %add.9 = add nuw nsw i8 %79, 48
  %81 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %add.9, ptr %arrayidx146, align 1
  br label %cleanup

if.end173:                                        ; preds = %if.end60
  %82 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read, align 4
  %84 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %pba_ptr, align 2
  %call177 = call i32 %83(ptr noundef %hw, i16 noundef zeroext %85, ptr noundef nonnull %length) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end201, label %do.body181

do.body181:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_pba_string_generic, %if.then193)) #7
          to label %cleanup [label %if.then193], !srcloc !244

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #9
  %back194 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %86 = ptrtoint ptr %back194 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %back194, align 4
  %netdev195 = getelementptr inbounds %struct.ixgbe_adapter, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %netdev195 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %netdev195, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug367, ptr noundef %89, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end201:                                        ; preds = %if.end173
  %90 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %length, align 2
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %91, label %if.end230 [
    i16 -1, label %if.end201.do.body210_crit_edge
    i16 0, label %if.end201.do.body210_crit_edge423
  ]

if.end201.do.body210_crit_edge423:                ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body210

if.end201.do.body210_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body210

do.body210:                                       ; preds = %if.end201.do.body210_crit_edge, %if.end201.do.body210_crit_edge423
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_pba_string_generic, %if.then222)) #7
          to label %cleanup [label %if.then222], !srcloc !244

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #9
  %back223 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %93 = ptrtoint ptr %back223 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %back223, align 4
  %netdev224 = getelementptr inbounds %struct.ixgbe_adapter, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %netdev224 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %netdev224, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug368, ptr noundef %96, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end230:                                        ; preds = %if.end201
  %conv202 = zext i16 %91 to i32
  %mul = shl nuw nsw i32 %conv202, 1
  %sub = add nsw i32 %mul, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %pba_num_size)
  %cmp232 = icmp ugt i32 %sub, %pba_num_size
  br i1 %cmp232, label %do.body236, label %if.end256

do.body236:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_pba_string_generic, %if.then248)) #7
          to label %cleanup [label %if.then248], !srcloc !244

if.then248:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #9
  %back249 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %97 = ptrtoint ptr %back249 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %back249, align 4
  %netdev250 = getelementptr inbounds %struct.ixgbe_adapter, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %netdev250 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %netdev250, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug369, ptr noundef %100, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end256:                                        ; preds = %if.end230
  %101 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %pba_ptr, align 2
  %inc257 = add i16 %102, 1
  store i16 %inc257, ptr %pba_ptr, align 2
  %dec = add i16 %91, -1
  %103 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %dec, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp261407.not = icmp eq i16 %dec, 0
  br i1 %cmp261407.not, label %if.end256.for.end311_crit_edge, label %if.end256.for.body263_crit_edge

if.end256.for.body263_crit_edge:                  ; preds = %if.end256
  br label %for.body263

if.end256.for.end311_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end311

for.body263:                                      ; preds = %if.end295.for.body263_crit_edge, %if.end256.for.body263_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end295.for.body263_crit_edge ], [ 0, %if.end256.for.body263_crit_edge ]
  %104 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read, align 4
  %106 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %pba_ptr, align 2
  %108 = trunc i32 %indvars.iv to i16
  %add269 = add i16 %107, %108
  %call271 = call i32 %105(ptr noundef %hw, i16 noundef zeroext %add269, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %if.end295, label %do.body275

do.body275:                                       ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_pba_string_generic, %if.then287)) #7
          to label %cleanup [label %if.then287], !srcloc !244

if.then287:                                       ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #9
  %back288 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %109 = ptrtoint ptr %back288 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %back288, align 4
  %netdev289 = getelementptr inbounds %struct.ixgbe_adapter, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %netdev289 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %netdev289, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug370, ptr noundef %112, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end295:                                        ; preds = %for.body263
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %data, align 2
  %115 = lshr i16 %114, 8
  %conv298 = trunc i16 %115 to i8
  %mul300 = shl nuw nsw i32 %indvars.iv, 1
  %arrayidx301 = getelementptr i8, ptr %pba_num, i32 %mul300
  %116 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv298, ptr %arrayidx301, align 1
  %conv304 = trunc i16 %114 to i8
  %add307 = or i32 %mul300, 1
  %arrayidx308 = getelementptr i8, ptr %pba_num, i32 %add307
  %117 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv304, ptr %arrayidx308, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %118 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %length, align 2
  %120 = zext i16 %119 to i32
  %cmp261 = icmp ult i32 %indvars.iv.next, %120
  br i1 %cmp261, label %if.end295.for.body263_crit_edge, label %for.end311.loopexit

if.end295.for.body263_crit_edge:                  ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body263

for.end311.loopexit:                              ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = shl nuw i32 %indvars.iv.next, 1
  br label %for.end311

for.end311:                                       ; preds = %for.end311.loopexit, %if.end256.for.end311_crit_edge
  %conv259.lcssa = phi i32 [ 0, %if.end256.for.end311_crit_edge ], [ %phi.bo, %for.end311.loopexit ]
  %arrayidx314 = getelementptr i8, ptr %pba_num, i32 %conv259.lcssa
  %121 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx314, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end311, %if.then287, %do.body275, %if.then248, %do.body236, %if.then222, %do.body210, %if.then193, %do.body181, %if.then155.9, %if.then165.9, %if.else.9.cleanup_crit_edge, %if.then101, %do.body89, %if.then52, %do.body40, %if.then24, %do.body12, %if.then4, %do.body1
  %retval.0 = phi i32 [ 0, %for.end311 ], [ -32, %if.then4 ], [ %call8, %if.then24 ], [ %call36, %if.then52 ], [ -25, %if.then101 ], [ %call177, %if.then193 ], [ -31, %if.then222 ], [ -25, %if.then248 ], [ %call271, %if.then287 ], [ -32, %do.body1 ], [ %call8, %do.body12 ], [ %call36, %do.body40 ], [ -25, %do.body89 ], [ %call177, %do.body181 ], [ -31, %do.body210 ], [ -25, %do.body236 ], [ %call271, %do.body275 ], [ 0, %if.then155.9 ], [ 0, %if.then165.9 ], [ 0, %if.else.9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pba_ptr) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_get_mac_addr_generic(ptr noundef %hw, ptr nocapture noundef writeonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 21508) #7
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 21504) #7
  %conv4 = trunc i32 %call1 to i8
  %0 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv4, ptr %mac_addr, align 1
  %shr.1 = lshr i32 %call1, 8
  %conv4.1 = trunc i32 %shr.1 to i8
  %arrayidx.1 = getelementptr i8, ptr %mac_addr, i32 1
  %1 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv4.1, ptr %arrayidx.1, align 1
  %shr.2 = lshr i32 %call1, 16
  %conv4.2 = trunc i32 %shr.2 to i8
  %arrayidx.2 = getelementptr i8, ptr %mac_addr, i32 2
  %2 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4.2, ptr %arrayidx.2, align 1
  %shr.3 = lshr i32 %call1, 24
  %conv4.3 = trunc i32 %shr.3 to i8
  %arrayidx.3 = getelementptr i8, ptr %mac_addr, i32 3
  %3 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4.3, ptr %arrayidx.3, align 1
  %conv13 = trunc i32 %call to i8
  %arrayidx15 = getelementptr i8, ptr %mac_addr, i32 4
  %4 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv13, ptr %arrayidx15, align 1
  %shr12.1 = lshr i32 %call, 8
  %conv13.1 = trunc i32 %shr12.1 to i8
  %arrayidx15.1 = getelementptr i8, ptr %mac_addr, i32 5
  %5 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv13.1, ptr %arrayidx15.1, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ixgbe_convert_bus_width(i16 noundef zeroext %link_status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %link_status, 1008
  %and = zext i16 %0 to i32
  %1 = add nsw i32 %and, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %2 = icmp ult i32 %1, 128
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = lshr exact i32 %1, 4
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.ixgbe_convert_bus_width, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ixgbe_convert_bus_speed(i16 noundef zeroext %link_status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %link_status, 15
  %and = zext i16 %0 to i32
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 3
  br i1 %1, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ixgbe_convert_bus_speed, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_get_bus_info_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 4
  %call = tail call zeroext i16 @ixgbe_read_pci_cfg_word(ptr noundef %hw, i32 noundef 178) #7
  %1 = and i16 %call, 1008
  %and.i = zext i16 %1 to i32
  %2 = add nsw i32 %and.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %2)
  %3 = icmp ult i32 %2, 128
  br i1 %3, label %switch.lookup, label %entry.ixgbe_convert_bus_width.exit_crit_edge

entry.ixgbe_convert_bus_width.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_convert_bus_width.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = lshr exact i32 %2, 4
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.ixgbe_get_bus_info_generic, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ixgbe_convert_bus_width.exit

ixgbe_convert_bus_width.exit:                     ; preds = %switch.lookup, %entry.ixgbe_convert_bus_width.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.ixgbe_convert_bus_width.exit_crit_edge ]
  %width = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %width, align 4
  %7 = and i16 %call, 15
  %and.i11 = zext i16 %7 to i32
  %switch.tableidx = add nsw i32 %and.i11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup16, label %ixgbe_convert_bus_width.exit.ixgbe_convert_bus_speed.exit_crit_edge

ixgbe_convert_bus_width.exit.ixgbe_convert_bus_speed.exit_crit_edge: ; preds = %ixgbe_convert_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_convert_bus_speed.exit

switch.lookup16:                                  ; preds = %ixgbe_convert_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep17 = getelementptr inbounds [3 x i32], ptr @switch.table.ixgbe_get_bus_info_generic.86, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load18 = load i32, ptr %switch.gep17, align 4
  br label %ixgbe_convert_bus_speed.exit

ixgbe_convert_bus_speed.exit:                     ; preds = %switch.lookup16, %ixgbe_convert_bus_width.exit.ixgbe_convert_bus_speed.exit_crit_edge
  %retval.0.i15 = phi i32 [ %switch.load18, %switch.lookup16 ], [ 0, %ixgbe_convert_bus_width.exit.ixgbe_convert_bus_speed.exit_crit_edge ]
  %bus = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i15, ptr %bus, align 4
  %set_lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 11
  %11 = ptrtoint ptr %set_lan_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_lan_id, align 4
  tail call void %12(ptr noundef %hw) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ixgbe_read_pci_cfg_word(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_set_lan_id_multi_port_pcie(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %ee_ctrl_4 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ee_ctrl_4) #7
  %0 = ptrtoint ptr %ee_ctrl_4 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ee_ctrl_4, align 2, !annotation !242
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %1 = trunc i32 %call to i8
  %2 = lshr i8 %1, 2
  %conv = and i8 %2, 3
  %func = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 3
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %func, align 4
  %lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %lan_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %lan_id, align 1
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %5 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %8) #7
  %and4 = and i32 %call3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %func, align 4
  %11 = xor i8 %10, 1
  store i8 %11, ptr %func, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %12 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5582, i16 %13)
  %cmp = icmp eq i16 %13, 5582
  br i1 %cmp, label %if.then10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read, align 4
  %call11 = call i32 %15(ptr noundef %hw, i16 noundef zeroext 69, ptr noundef nonnull %ee_ctrl_4) #7
  %16 = ptrtoint ptr %ee_ctrl_4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ee_ctrl_4, align 2
  %18 = trunc i16 %17 to i8
  %19 = lshr i8 %18, 4
  %conv15 = and i8 %19, 1
  %instance_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 5
  %20 = ptrtoint ptr %instance_id to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv15, ptr %instance_id, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ee_ctrl_4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_stop_adapter_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter_stopped = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 16
  %0 = ptrtoint ptr %adapter_stopped to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %adapter_stopped, align 1
  %disable_rx = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 59
  %1 = ptrtoint ptr %disable_rx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disable_rx, align 4
  tail call void %2(ptr noundef %hw) #7
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %4, i32 2184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 2048) #7
  %max_tx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 15
  %5 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp70.not = icmp eq i32 %6, 0
  br i1 %cmp70.not, label %ixgbe_write_reg.exit.for.cond4.preheader_crit_edge, label %ixgbe_write_reg.exit.for.body_crit_edge

ixgbe_write_reg.exit.for.body_crit_edge:          ; preds = %ixgbe_write_reg.exit
  br label %for.body

ixgbe_write_reg.exit.for.cond4.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %ixgbe_write_reg.exit65.for.cond4.preheader_crit_edge, %ixgbe_write_reg.exit.for.cond4.preheader_crit_edge
  %max_rx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 16
  %7 = ptrtoint ptr %max_rx_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp773.not = icmp eq i32 %8, 0
  br i1 %cmp773.not, label %for.cond4.preheader.for.end36_crit_edge, label %for.cond4.preheader.for.body9_crit_edge

for.cond4.preheader.for.body9_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body9

for.cond4.preheader.for.end36_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.body:                                         ; preds = %ixgbe_write_reg.exit65.for.body_crit_edge, %ixgbe_write_reg.exit.for.body_crit_edge
  %conv72 = phi i32 [ %conv, %ixgbe_write_reg.exit65.for.body_crit_edge ], [ 0, %ixgbe_write_reg.exit.for.body_crit_edge ]
  %i.071 = phi i16 [ %inc, %ixgbe_write_reg.exit65.for.body_crit_edge ], [ 0, %ixgbe_write_reg.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i62 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i62, label %for.body.ixgbe_write_reg.exit65_crit_edge, label %do.body1.i64

for.body.ixgbe_write_reg.exit65_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit65

do.body1.i64:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl nuw nsw i32 %conv72, 6
  %add = add nuw nsw i32 %mul, 24616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i63 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 4) #7, !srcloc !246
  br label %ixgbe_write_reg.exit65

ixgbe_write_reg.exit65:                           ; preds = %do.body1.i64, %for.body.ixgbe_write_reg.exit65_crit_edge
  %inc = add i16 %i.071, 1
  %conv = zext i16 %inc to i32
  %11 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_tx_queues, align 4
  %cmp = icmp ugt i32 %12, %conv
  br i1 %cmp, label %ixgbe_write_reg.exit65.for.body_crit_edge, label %ixgbe_write_reg.exit65.for.cond4.preheader_crit_edge

ixgbe_write_reg.exit65.for.cond4.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond4.preheader

ixgbe_write_reg.exit65.for.body_crit_edge:        ; preds = %ixgbe_write_reg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body9:                                        ; preds = %ixgbe_write_reg.exit69.for.body9_crit_edge, %for.cond4.preheader.for.body9_crit_edge
  %conv575 = phi i32 [ %conv5, %ixgbe_write_reg.exit69.for.body9_crit_edge ], [ 0, %for.cond4.preheader.for.body9_crit_edge ]
  %i.174 = phi i16 [ %inc35, %ixgbe_write_reg.exit69.for.body9_crit_edge ], [ 0, %for.cond4.preheader.for.body9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %i.174)
  %cmp11 = icmp ult i16 %i.174, 64
  %mul14 = shl nuw nsw i32 %conv575, 6
  %cond.v = select i1 %cmp11, i32 4136, i32 49192
  %cond = add nuw nsw i32 %mul14, %cond.v
  %call19 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %cond) #7
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i66 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i66, label %for.body9.ixgbe_write_reg.exit69_crit_edge, label %do.body1.i68

for.body9.ixgbe_write_reg.exit69_crit_edge:       ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit69

do.body1.i68:                                     ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call19, -100663297
  %or = or i32 %and, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i67 = getelementptr i8, ptr %14, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %15) #7, !srcloc !246
  br label %ixgbe_write_reg.exit69

ixgbe_write_reg.exit69:                           ; preds = %do.body1.i68, %for.body9.ixgbe_write_reg.exit69_crit_edge
  %inc35 = add i16 %i.174, 1
  %conv5 = zext i16 %inc35 to i32
  %16 = ptrtoint ptr %max_rx_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_rx_queues, align 4
  %cmp7 = icmp ugt i32 %17, %conv5
  br i1 %cmp7, label %ixgbe_write_reg.exit69.for.body9_crit_edge, label %ixgbe_write_reg.exit69.for.end36_crit_edge

ixgbe_write_reg.exit69.for.end36_crit_edge:       ; preds = %ixgbe_write_reg.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

ixgbe_write_reg.exit69.for.body9_crit_edge:       ; preds = %ixgbe_write_reg.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.end36:                                        ; preds = %ixgbe_write_reg.exit69.for.end36_crit_edge, %for.cond4.preheader.for.end36_crit_edge
  %call37 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call38 = tail call fastcc i32 @ixgbe_disable_pcie_master(ptr noundef %hw)
  ret i32 %call38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_disable_pcie_master(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.for.body.preheader_crit_edge, label %do.body1.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 67108864) #7, !srcloc !246
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.0128 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end12

if.end:                                           ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, 800
  br i1 %exitcond.not, label %do.body3, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_disable_pcie_master, %if.then8)) #7
          to label %gio_disable_fail [label %if.then8], !srcloc !244

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug407, ptr noundef %5, ptr noundef nonnull @.str.77) #7
  br label %gio_disable_fail

if.end12:                                         ; preds = %for.body
  %call13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %and14 = and i32 %call13, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %lor.lhs.false

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body21_crit_edge

lor.lhs.false.for.body21_crit_edge:               ; preds = %lor.lhs.false
  br label %for.body21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond19:                                       ; preds = %for.body21
  %inc28 = add nuw nsw i32 %i.1129, 1
  %exitcond132.not = icmp eq i32 %inc28, 800
  br i1 %exitcond132.not, label %do.body31, label %for.cond19.for.body21_crit_edge

for.cond19.for.body21_crit_edge:                  ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.body21:                                       ; preds = %for.cond19.for.body21_crit_edge, %lor.lhs.false.for.body21_crit_edge
  %i.1129 = phi i32 [ %inc28, %for.cond19.for.body21_crit_edge ], [ 0, %lor.lhs.false.for.body21_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #7
  %call22 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %and23 = and i32 %call22, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %for.body21.cleanup_crit_edge, label %for.cond19

for.body21.cleanup_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body31:                                        ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_disable_pcie_master, %if.then43)) #7
          to label %gio_disable_fail [label %if.then43], !srcloc !244

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %back44 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %back44 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back44, align 4
  %netdev45 = getelementptr inbounds %struct.ixgbe_adapter, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %netdev45 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev45, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug408, ptr noundef %12, ptr noundef nonnull @.str.78) #7
  br label %gio_disable_fail

gio_disable_fail:                                 ; preds = %if.then43, %do.body31, %if.then8, %do.body3
  %flags = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 21
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 2
  %15 = or i8 %14, 1
  store i8 %15, ptr %flags, align 2
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp53 = icmp ugt i32 %17, 3
  br i1 %cmp53, label %gio_disable_fail.cleanup_crit_edge, label %if.end56

gio_disable_fail.cleanup_crit_edge:               ; preds = %gio_disable_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %gio_disable_fail
  %call.i = tail call zeroext i16 @ixgbe_read_pci_cfg_word(ptr noundef %hw, i32 noundef 200) #7
  %18 = and i16 %call.i, 15
  %19 = zext i16 %18 to i32
  %switch.tableidx = add nsw i32 %19, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 9
  br i1 %20, label %switch.lookup, label %if.end56.ixgbe_pcie_timeout_poll.exit_crit_edge

if.end56.ixgbe_pcie_timeout_poll.exit_crit_edge:  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_pcie_timeout_poll.exit

switch.lookup:                                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.ixgbe_disable_pcie_master, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ixgbe_pcie_timeout_poll.exit

ixgbe_pcie_timeout_poll.exit:                     ; preds = %switch.lookup, %if.end56.ixgbe_pcie_timeout_poll.exit_crit_edge
  %pollcnt.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 880, %if.end56.ixgbe_pcie_timeout_poll.exit_crit_edge ]
  br label %for.body61

for.cond58:                                       ; preds = %for.body61
  %inc73 = add nuw nsw i32 %i.2130, 1
  %exitcond133.not = icmp eq i32 %inc73, %pollcnt.0.i
  br i1 %exitcond133.not, label %do.body76, label %for.cond58.for.body61_crit_edge

for.cond58.for.body61_crit_edge:                  ; preds = %for.cond58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61

for.body61:                                       ; preds = %for.cond58.for.body61_crit_edge, %ixgbe_pcie_timeout_poll.exit
  %i.2130 = phi i32 [ 0, %ixgbe_pcie_timeout_poll.exit ], [ %inc73, %for.cond58.for.body61_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #7
  %call62 = tail call zeroext i16 @ixgbe_read_pci_cfg_word(ptr noundef %hw, i32 noundef 170) #7
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %tobool.not.i122 = icmp eq ptr %24, null
  %25 = and i16 %call62, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool69.not = icmp eq i16 %25, 0
  %or.cond = select i1 %tobool.not.i122, i1 true, i1 %tobool69.not
  br i1 %or.cond, label %for.body61.cleanup_crit_edge, label %for.cond58

for.body61.cleanup_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body76:                                        ; preds = %for.cond58
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_disable_pcie_master, %if.then88)) #7
          to label %cleanup [label %if.then88], !srcloc !244

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %back89 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %back89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %back89, align 4
  %netdev90 = getelementptr inbounds %struct.ixgbe_adapter, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %netdev90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev90, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug409, ptr noundef %29, ptr noundef nonnull @.str.79) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %do.body76, %for.body61.cleanup_crit_edge, %gio_disable_fail.cleanup_crit_edge, %for.body21.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %gio_disable_fail.cleanup_crit_edge ], [ -12, %if.then88 ], [ -12, %do.body76 ], [ 0, %for.body61.cleanup_crit_edge ], [ 0, %for.body21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_led_link_act_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 512) #7
  %and = and i32 %call, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp4 = icmp eq i32 %and, 4
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %entry
  %0 = and i32 %call, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %0)
  %cmp4.1 = icmp eq i32 %0, 1024
  br i1 %cmp4.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %1 = and i32 %call, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %1)
  %cmp4.2 = icmp eq i32 %1, 262144
  br i1 %cmp4.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %2 = and i32 %call, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %2)
  %cmp4.3 = icmp eq i32 %2, 67108864
  br i1 %cmp4.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %switch.selectcmp = icmp eq i32 %4, 5
  %switch.select = select i1 %switch.selectcmp, i8 1, i8 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %switch.selectcmp26 = icmp eq i32 %4, 6
  %switch.select27 = select i1 %switch.selectcmp26, i8 0, i8 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ], [ %switch.select27, %for.inc.3 ]
  %led_link_act8 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 25
  %5 = ptrtoint ptr %led_link_act8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %led_link_act8, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_led_on_generic(ptr noundef %hw, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp ugt i32 %index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end.ixgbe_write_reg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl nuw nsw i32 %index, 3
  %shl = shl nuw nsw i32 15, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %shl2 = shl nuw nsw i32 14, %mul
  %or = or i32 %and, %shl2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end.ixgbe_write_reg.exit_crit_edge
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_led_off_generic(ptr noundef %hw, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp ugt i32 %index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end.ixgbe_write_reg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl nuw nsw i32 %index, 3
  %shl = shl nuw nsw i32 15, %mul
  %or = or i32 %call, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end.ixgbe_write_reg.exit_crit_edge
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_eeprom_params_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %type, align 4
  %semaphore_delay = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %semaphore_delay to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %semaphore_delay, align 4
  %word_page_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %word_page_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %word_page_size, align 4
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %5 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvals, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %8) #7
  %and = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 4
  %10 = lshr i32 %call, 11
  %conv = and i32 %10, 15
  %shl = shl nuw nsw i32 64, %conv
  %conv7 = trunc i32 %shl to i16
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %word_size to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %word_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %and8 = and i32 %call, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select = select i1 %tobool9.not, i16 8, i16 16
  %12 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %spec.select, ptr %12, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_init_eeprom_params_generic.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_init_eeprom_params_generic, %if.then18)) #7
          to label %if.end27 [label %if.then18], !srcloc !244

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 128
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %word_size20 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %word_size20 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %word_size20, align 4
  %conv21 = zext i16 %21 to i32
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %12, align 2
  %conv23 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_init_eeprom_params_generic.__UNIQUE_ID_ddebug371, ptr noundef %17, ptr noundef nonnull @.str.16, i32 noundef %19, i32 noundef %conv21, i32 noundef %conv23) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %if.end, %entry.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_eeprom_buffer_bit_bang_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [128 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %call = tail call i32 %1(ptr noundef %hw) #7
  %conv = zext i16 %words to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp = icmp eq i16 %words, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i16 %offset to i32
  %add = add nuw nsw i32 %conv, %conv2
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %word_size, align 4
  %conv5 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv5)
  %cmp6 = icmp ugt i32 %add, %conv5
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %word_page_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %word_page_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %word_page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp12 = icmp eq i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %words)
  %cmp15 = icmp ugt i16 %words, 128
  %or.cond = and i1 %cmp15, %cmp12
  br i1 %or.cond, label %if.then17, label %if.end9.for.body.preheader_crit_edge

if.end9.for.body.preheader_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then17:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %data.i) #7
  %6 = call ptr @memset(ptr %data.i, i32 255, i32 256)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then17
  %indvars.iv.i = phi i32 [ 0, %if.then17 ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [128 x i16], ptr %data.i, i32 0, i32 %indvars.iv.i
  %7 = trunc i32 %indvars.iv.i to i16
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %9 = ptrtoint ptr %word_page_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 128, ptr %word_page_size, align 4
  %call.i = call fastcc i32 @ixgbe_write_eeprom_buffer_bit_bang(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext 128, ptr noundef nonnull %data.i) #7
  %10 = ptrtoint ptr %word_page_size to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %word_page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.i.ixgbe_detect_eeprom_page_size_generic.exit_crit_edge

for.end.i.ixgbe_detect_eeprom_page_size_generic.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_detect_eeprom_page_size_generic.exit

if.end.i:                                         ; preds = %for.end.i
  %call5.i = call fastcc i32 @ixgbe_read_eeprom_buffer_bit_bang(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext 1, ptr noundef nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.ixgbe_detect_eeprom_page_size_generic.exit_crit_edge

if.end.i.ixgbe_detect_eeprom_page_size_generic.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_detect_eeprom_page_size_generic.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data.i, align 2
  %sub.i = sub i16 128, %12
  %13 = ptrtoint ptr %word_page_size to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %sub.i, ptr %word_page_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_detect_eeprom_page_size_generic.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_eeprom_buffer_bit_bang_generic, %if.then19.i)) #7
          to label %ixgbe_detect_eeprom_page_size_generic.exit [label %if.then19.i], !srcloc !244

if.then19.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i, align 128
  %18 = ptrtoint ptr %word_page_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %word_page_size, align 4
  %conv22.i = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_detect_eeprom_page_size_generic.__UNIQUE_ID_ddebug373, ptr noundef %17, ptr noundef nonnull @.str.71, i32 noundef %conv22.i) #7
  br label %ixgbe_detect_eeprom_page_size_generic.exit

ixgbe_detect_eeprom_page_size_generic.exit:       ; preds = %if.then19.i, %if.end8.i, %if.end.i.ixgbe_detect_eeprom_page_size_generic.exit_crit_edge, %for.end.i.ixgbe_detect_eeprom_page_size_generic.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %data.i) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %ixgbe_detect_eeprom_page_size_generic.exit, %if.end9.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add42 = add nuw nsw i32 %conv2066, 512
  %conv20 = and i32 %add42, 65535
  %cmp22 = icmp ult i32 %conv20, %conv
  br i1 %cmp22, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %conv2066 = phi i32 [ %conv20, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.065 = phi i32 [ %add42, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sub = sub nsw i32 %conv, %conv2066
  %20 = tail call i32 @llvm.smin.i32(i32 %sub, i32 512)
  %conv31 = trunc i32 %20 to i16
  %21 = trunc i32 %i.065 to i16
  %conv35 = add i16 %21, %offset
  %arrayidx = getelementptr i16, ptr %data, i32 %conv2066
  %call36 = tail call fastcc i32 @ixgbe_write_eeprom_buffer_bit_bang(ptr noundef %hw, i16 noundef zeroext %conv35, i16 noundef zeroext %conv31, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call36, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_write_eeprom_buffer_bit_bang(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_acquire_eeprom(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %conv28.i = phi i32 [ %conv.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  tail call fastcc void @ixgbe_shift_out_eeprom_bits(ptr noundef %hw, i16 noundef zeroext 5, i16 noundef zeroext 8) #7
  %call.i = tail call fastcc zeroext i16 @ixgbe_shift_in_eeprom_bits(ptr noundef %hw, i16 noundef zeroext 8) #7
  %0 = and i16 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not.i = icmp eq i16 %0, 0
  br i1 %tobool.not.i, label %for.cond.preheader, label %if.end.i

for.cond.preheader:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp584.not = icmp eq i16 %words, 0
  br i1 %cmp584.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %address_bits = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 4
  %conv10 = zext i16 %offset to i32
  %word_page_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 5
  br label %for.body

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 1073740) #7
  tail call fastcc void @ixgbe_standby_eeprom(ptr noundef %hw) #7
  %add.i = add nuw nsw i32 %conv28.i, 5
  %conv.i = and i32 %add.i, 65535
  %cmp.i = icmp ult i32 %conv.i, 5000
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %do.body10.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.body10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_ready_eeprom.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_eeprom_buffer_bit_bang, %ixgbe_ready_eeprom.exit.thread)) #7
          to label %cleanup.sink.split [label %ixgbe_ready_eeprom.exit.thread], !srcloc !244

ixgbe_ready_eeprom.exit.thread:                   ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_ready_eeprom.__UNIQUE_ID_ddebug380, ptr noundef %5, ptr noundef nonnull @.str.69) #7
  br label %cleanup.sink.split

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %conv87 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %do.end.for.body_crit_edge ]
  %write_opcode.086 = phi i8 [ 2, %for.body.lr.ph ], [ %write_opcode.1, %do.end.for.body_crit_edge ]
  %i.085 = phi i16 [ 0, %for.body.lr.ph ], [ %inc49, %do.end.for.body_crit_edge ]
  tail call fastcc void @ixgbe_standby_eeprom(ptr noundef %hw)
  tail call fastcc void @ixgbe_shift_out_eeprom_bits(ptr noundef %hw, i16 noundef zeroext 6, i16 noundef zeroext 8)
  tail call fastcc void @ixgbe_standby_eeprom(ptr noundef %hw)
  %6 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %address_bits, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp8 = icmp eq i16 %7, 8
  %add = add nuw nsw i32 %conv87, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add)
  %cmp12 = icmp ugt i32 %add, 127
  %8 = or i8 %write_opcode.086, 8
  %9 = select i1 %cmp8, i1 %cmp12, i1 false
  %write_opcode.1 = select i1 %9, i8 %8, i8 %write_opcode.086
  %conv18 = zext i8 %write_opcode.1 to i16
  tail call fastcc void @ixgbe_shift_out_eeprom_bits(ptr noundef %hw, i16 noundef zeroext %conv18, i16 noundef zeroext 8)
  %add21 = add i16 %i.085, %offset
  %mul = shl i16 %add21, 1
  %10 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %address_bits, align 2
  tail call fastcc void @ixgbe_shift_out_eeprom_bits(ptr noundef %hw, i16 noundef zeroext %mul, i16 noundef zeroext %11)
  %12 = ptrtoint ptr %word_page_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %word_page_size, align 4
  %conv30 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp31 = icmp eq i16 %13, 0
  %sub = add nsw i32 %conv30, -1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %for.body
  %i.1 = phi i16 [ %i.085, %for.body ], [ %inc, %do.cond.do.body_crit_edge ]
  %idxprom = zext i16 %i.1 to i32
  %arrayidx = getelementptr i16, ptr %data, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %or28 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call fastcc void @ixgbe_shift_out_eeprom_bits(ptr noundef %hw, i16 noundef zeroext %or28, i16 noundef zeroext 16)
  br i1 %cmp31, label %do.body.do.end_crit_edge, label %if.end34

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end34:                                         ; preds = %do.body
  %add37 = add nuw nsw i32 %idxprom, %conv10
  %and = and i32 %add37, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub)
  %cmp41 = icmp eq i32 %and, %sub
  br i1 %cmp41, label %if.end34.do.end_crit_edge, label %do.cond

if.end34.do.end_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.cond:                                          ; preds = %if.end34
  %inc = add nuw i16 %i.1, 1
  %cmp47 = icmp ult i16 %inc, %words
  br i1 %cmp47, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.end34.do.end_crit_edge, %do.body.do.end_crit_edge
  %i.2 = phi i16 [ %i.085, %do.body.do.end_crit_edge ], [ %i.1, %if.end34.do.end_crit_edge ], [ %inc, %do.cond.do.end_crit_edge ]
  tail call fastcc void @ixgbe_standby_eeprom(ptr noundef %hw)
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %inc49 = add i16 %i.2, 1
  %conv = zext i16 %inc49 to i32
  %cmp5 = icmp ult i16 %inc49, %words
  br i1 %cmp5, label %do.end.for.body_crit_edge, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.sink.split:                               ; preds = %do.end.cleanup.sink.split_crit_edge, %ixgbe_ready_eeprom.exit.thread, %do.body10.i, %for.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -1, %do.body10.i ], [ -1, %ixgbe_ready_eeprom.exit.thread ], [ 0, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ 0, %do.end.cleanup.sink.split_crit_edge ]
  tail call fastcc void @ixgbe_release_eeprom(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_eeprom_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %data, ptr %data.addr, align 2
  %eeprom = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7
  %1 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eeprom, align 4
  %call = tail call i32 %2(ptr noundef %hw) #7
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %3 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %offset)
  %cmp.not = icmp ugt i16 %4, %offset
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call fastcc i32 @ixgbe_write_eeprom_buffer_bit_bang(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext 1, ptr noundef nonnull %data.addr)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_eeprom_buffer_bit_bang_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %call = tail call i32 %1(ptr noundef %hw) #7
  %conv = zext i16 %words to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp = icmp eq i16 %words, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i16 %offset to i32
  %add = add nuw nsw i32 %conv, %conv2
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %word_size, align 4
  %conv5 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv5)
  %cmp6 = icmp ugt i32 %add, %conv5
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %add30 = add nuw nsw i32 %conv1050, 512
  %conv10 = and i32 %add30, 65535
  %cmp12 = icmp ult i32 %conv10, %conv
  br i1 %cmp12, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %conv1050 = phi i32 [ %conv10, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.049 = phi i32 [ %add30, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %sub = sub nsw i32 %conv, %conv1050
  %4 = tail call i32 @llvm.smin.i32(i32 %sub, i32 512)
  %conv21 = trunc i32 %4 to i16
  %5 = trunc i32 %i.049 to i16
  %conv25 = add i16 %5, %offset
  %arrayidx = getelementptr i16, ptr %data, i32 %conv1050
  %call26 = tail call fastcc i32 @ixgbe_read_eeprom_buffer_bit_bang(ptr noundef %hw, i16 noundef zeroext %conv25, i16 noundef zeroext %conv21, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call26, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_read_eeprom_buffer_bit_bang(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_acquire_eeprom(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %conv28.i = phi i32 [ %conv.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  tail call fastcc void @ixgbe_shift_out_eeprom_bits(ptr noundef %hw, i16 noundef zeroext 5, i16 noundef zeroext 8) #7
  %call.i = tail call fastcc zeroext i16 @ixgbe_shift_in_eeprom_bits(ptr noundef %hw, i16 noundef zeroext 8) #7
  %0 = and i16 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not.i = icmp eq i16 %0, 0
  br i1 %tobool.not.i, label %for.cond.preheader, label %if.end.i

for.cond.preheader:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp552.not = icmp eq i16 %words, 0
  br i1 %cmp552.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %address_bits = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 4
  %conv10 = zext i16 %offset to i32
  %wide.trip.count = zext i16 %words to i32
  br label %for.body

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 1073740) #7
  tail call fastcc void @ixgbe_standby_eeprom(ptr noundef %hw) #7
  %add.i = add nuw nsw i32 %conv28.i, 5
  %conv.i = and i32 %add.i, 65535
  %cmp.i = icmp ult i32 %conv.i, 5000
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %do.body10.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.body10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_ready_eeprom.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_eeprom_buffer_bit_bang, %ixgbe_ready_eeprom.exit.thread)) #7
          to label %cleanup.sink.split [label %ixgbe_ready_eeprom.exit.thread], !srcloc !244

ixgbe_ready_eeprom.exit.thread:                   ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_ready_eeprom.__UNIQUE_ID_ddebug380, ptr noundef %5, ptr noundef nonnull @.str.69) #7
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %read_opcode.053 = phi i8 [ 3, %for.body.lr.ph ], [ %read_opcode.1, %for.body.for.body_crit_edge ]
  tail call fastcc void @ixgbe_standby_eeprom(ptr noundef %hw)
  %6 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %address_bits, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp8 = icmp eq i16 %7, 8
  %add = add nuw nsw i32 %indvars.iv, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add)
  %cmp12 = icmp ugt i32 %add, 127
  %8 = or i8 %read_opcode.053, 8
  %9 = select i1 %cmp8, i1 %cmp12, i1 false
  %read_opcode.1 = select i1 %9, i8 %8, i8 %read_opcode.053
  %conv18 = zext i8 %read_opcode.1 to i16
  tail call fastcc void @ixgbe_shift_out_eeprom_bits(ptr noundef %hw, i16 noundef zeroext %conv18, i16 noundef zeroext 8)
  %10 = trunc i32 %indvars.iv to i16
  %add21 = add i16 %10, %offset
  %mul = shl i16 %add21, 1
  %11 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %address_bits, align 2
  tail call fastcc void @ixgbe_shift_out_eeprom_bits(ptr noundef %hw, i16 noundef zeroext %mul, i16 noundef zeroext %12)
  %call25 = tail call fastcc zeroext i16 @ixgbe_shift_in_eeprom_bits(ptr noundef %hw, i16 noundef zeroext 16)
  %or28 = tail call i16 @llvm.bswap.i16(i16 %call25)
  %arrayidx = getelementptr i16, ptr %data, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %or28, ptr %arrayidx, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.cleanup.sink.split_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %ixgbe_ready_eeprom.exit.thread, %do.body10.i, %for.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -1, %do.body10.i ], [ -1, %ixgbe_ready_eeprom.exit.thread ], [ 0, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ 0, %for.body.cleanup.sink.split_crit_edge ]
  tail call fastcc void @ixgbe_release_eeprom(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_eeprom_bit_bang_generic(ptr noundef %hw, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %call = tail call i32 %1(ptr noundef %hw) #7
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %offset)
  %cmp.not = icmp ugt i16 %3, %offset
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @ixgbe_read_eeprom_buffer_bit_bang(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext 1, ptr noundef %data)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_eerd_buffer_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %call = tail call i32 %1(ptr noundef %hw) #7
  %conv = zext i16 %words to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp = icmp eq i16 %words, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %offset)
  %cmp5.not = icmp ugt i16 %3, %offset
  br i1 %cmp5.not, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.then16.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %if.then16.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %for.body.for.body.i.preheader_crit_edge, label %do.body1.i

for.body.for.body.i.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %i.047, %conv2
  %shl = shl i32 %add, 2
  %or = or i32 %shl, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 65556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !246
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.body1.i, %for.body.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.08.i = phi i32 [ %inc.i, %if.end4.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %call2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 65556) #7
  %and.i = and i32 %call2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.then16

if.end4.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1073740) #7
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.body19, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then16:                                        ; preds = %for.body.i
  %call17 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 65556) #7
  %shr = lshr i32 %call17, 16
  %conv18 = trunc i32 %shr to i16
  %arrayidx = getelementptr i16, ptr %data, i32 %i.047
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv18, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.then16.cleanup_crit_edge, label %if.then16.for.body_crit_edge

if.then16.for.body_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body19:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_eerd_buffer_generic.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_eerd_buffer_generic, %if.then23)) #7
          to label %cleanup [label %if.then23], !srcloc !244

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_eerd_buffer_generic.__UNIQUE_ID_ddebug372, ptr noundef %12, ptr noundef nonnull @.str.18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body19, %if.then16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.then23 ], [ -1, %do.body19 ], [ 0, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_read_eerd_generic(ptr noundef %hw, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_eerd_buffer_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext 1, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_eewr_buffer_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 4
  %call = tail call i32 %1(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp = icmp eq i16 %words, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %offset)
  %cmp5.not = icmp ugt i16 %3, %offset
  br i1 %cmp5.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext i16 %words to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %data, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body
  %i.08.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %call2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 65560) #7
  %and.i = and i32 %call2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end29

if.end4.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1073740) #7
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.body20, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.body20:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_eewr_buffer_generic, %cleanup.sink.split)) #7
          to label %cleanup [label %cleanup.sink.split], !srcloc !244

if.end29:                                         ; preds = %for.body.i
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end29.for.body.i80.preheader_crit_edge, label %do.body1.i

if.end29.for.body.i80.preheader_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i80.preheader

do.body1.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %indvars.iv, %conv2
  %shl = shl nuw nsw i32 %add, 2
  %conv15 = zext i16 %5 to i32
  %shl16 = shl nuw i32 %conv15, 16
  %or = or i32 %shl, %shl16
  %or17 = or i32 %or, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or17) #7
  %add.ptr.i = getelementptr i8, ptr %8, i32 65560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !246
  br label %for.body.i80.preheader

for.body.i80.preheader:                           ; preds = %do.body1.i, %if.end29.for.body.i80.preheader_crit_edge
  br label %for.body.i80

for.body.i80:                                     ; preds = %if.end4.i83.for.body.i80_crit_edge, %for.body.i80.preheader
  %i.08.i76 = phi i32 [ %inc.i81, %if.end4.i83.for.body.i80_crit_edge ], [ 0, %for.body.i80.preheader ]
  %call2.i77 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 65560) #7
  %and.i78 = and i32 %call2.i77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i79 = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i79, label %if.end4.i83, label %for.inc

if.end4.i83:                                      ; preds = %for.body.i80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #7
  %inc.i81 = add nuw nsw i32 %i.08.i76, 1
  %exitcond.not.i82 = icmp eq i32 %inc.i81, 100000
  br i1 %exitcond.not.i82, label %do.body34, label %if.end4.i83.for.body.i80_crit_edge

if.end4.i83.for.body.i80_crit_edge:               ; preds = %if.end4.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i80

do.body34:                                        ; preds = %if.end4.i83
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_eewr_buffer_generic, %cleanup.sink.split)) #7
          to label %cleanup [label %cleanup.sink.split], !srcloc !244

for.inc:                                          ; preds = %for.body.i80
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body34, %do.body20
  %ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug375.sink = phi ptr [ @ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug374, %do.body20 ], [ @ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug375, %do.body34 ]
  call void @__sanitizer_cov_trace_pc() #9
  %back47 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %back47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %back47, align 4
  %netdev48 = getelementptr inbounds %struct.ixgbe_adapter, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %netdev48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev48, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull %ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug375.sink, ptr noundef %14, ptr noundef nonnull @.str.20) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %do.body34, %do.body20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %do.body20 ], [ -1, %do.body34 ], [ -1, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_write_eewr_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %data, ptr %data.addr, align 2
  %call = call i32 @ixgbe_write_eewr_buffer_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext 1, ptr noundef nonnull %data.addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_calc_eeprom_checksum_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %length = alloca i16, align 2
  %pointer = alloca i16, align 2
  %word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length) #7
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %length, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pointer) #7
  %1 = ptrtoint ptr %pointer to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %pointer, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word) #7
  %2 = ptrtoint ptr %word to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %word, align 2
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry
  %i.0190 = phi i16 [ 0, %entry ], [ %inc, %if.end10.for.body_crit_edge ]
  %checksum.0189 = phi i16 [ 0, %entry ], [ %add, %if.end10.for.body_crit_edge ]
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %call = call i32 %4(ptr noundef %hw, i16 noundef zeroext %i.0190, ptr noundef nonnull %word) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body2

do.body2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_calc_eeprom_checksum_generic, %if.then7)) #7
          to label %for.body18 [label %if.then7], !srcloc !244

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug381, ptr noundef %8, ptr noundef nonnull @.str.22) #7
  br label %for.body18

if.end10:                                         ; preds = %for.body
  %9 = ptrtoint ptr %word to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %word, align 2
  %add = add i16 %10, %checksum.0189
  %inc = add nuw nsw i16 %i.0190, 1
  %cmp = icmp ult i16 %i.0190, 62
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.for.body18_crit_edge

if.end10.for.body18_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body18:                                       ; preds = %for.inc138.for.body18_crit_edge, %if.end10.for.body18_crit_edge, %if.then7, %do.body2
  %i.1200 = phi i16 [ %inc139, %for.inc138.for.body18_crit_edge ], [ 3, %do.body2 ], [ 3, %if.then7 ], [ 3, %if.end10.for.body18_crit_edge ]
  %checksum.1199 = phi i16 [ %checksum.3, %for.inc138.for.body18_crit_edge ], [ %checksum.0189, %do.body2 ], [ %checksum.0189, %if.then7 ], [ %add, %if.end10.for.body18_crit_edge ]
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 4
  %call22 = call i32 %12(ptr noundef %hw, i16 noundef zeroext %i.1200, ptr noundef nonnull %pointer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end46, label %do.body26

do.body26:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_calc_eeprom_checksum_generic, %if.then38)) #7
          to label %cleanup [label %if.then38], !srcloc !244

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %back39 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %back39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back39, align 4
  %netdev40 = getelementptr inbounds %struct.ixgbe_adapter, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %netdev40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev40, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug382, ptr noundef %16, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end46:                                         ; preds = %for.body18
  %17 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pointer, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %18, label %if.end54 [
    i16 -1, label %if.end46.for.inc138_crit_edge
    i16 0, label %if.end46.for.inc138_crit_edge206
  ]

if.end46.for.inc138_crit_edge206:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc138

if.end46.for.inc138_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc138

if.end54:                                         ; preds = %if.end46
  %20 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read, align 4
  %call58 = call i32 %21(ptr noundef %hw, i16 noundef zeroext %18, ptr noundef nonnull %length) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end82, label %do.body62

do.body62:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_calc_eeprom_checksum_generic, %if.then74)) #7
          to label %cleanup [label %if.then74], !srcloc !244

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %back75 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %back75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %back75, align 4
  %netdev76 = getelementptr inbounds %struct.ixgbe_adapter, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %netdev76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev76, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug383, ptr noundef %25, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end82:                                         ; preds = %if.end54
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %length, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %27, label %if.end91 [
    i16 -1, label %if.end82.for.inc138_crit_edge
    i16 0, label %if.end82.for.inc138_crit_edge207
  ]

if.end82.for.inc138_crit_edge207:                 ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc138

if.end82.for.inc138_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc138

if.end91:                                         ; preds = %if.end82
  %29 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pointer, align 2
  %j.0191 = add i16 %30, 1
  %conv96192 = zext i16 %j.0191 to i32
  %conv97193 = zext i16 %30 to i32
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %length, align 2
  %conv98194 = zext i16 %32 to i32
  %add99195 = add nuw nsw i32 %conv98194, %conv97193
  call void @__sanitizer_cov_trace_cmp4(i32 %add99195, i32 %conv96192)
  %cmp100.not196 = icmp ult i32 %add99195, %conv96192
  br i1 %cmp100.not196, label %if.end91.for.inc138_crit_edge, label %if.end91.for.body102_crit_edge

if.end91.for.body102_crit_edge:                   ; preds = %if.end91
  br label %for.body102

if.end91.for.inc138_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc138

for.body102:                                      ; preds = %if.end130.for.body102_crit_edge, %if.end91.for.body102_crit_edge
  %j.0198 = phi i16 [ %j.0, %if.end130.for.body102_crit_edge ], [ %j.0191, %if.end91.for.body102_crit_edge ]
  %checksum.2197 = phi i16 [ %add133, %if.end130.for.body102_crit_edge ], [ %checksum.1199, %if.end91.for.body102_crit_edge ]
  %33 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read, align 4
  %call106 = call i32 %34(ptr noundef %hw, i16 noundef zeroext %j.0198, ptr noundef nonnull %word) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end130, label %do.body110

do.body110:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_calc_eeprom_checksum_generic, %if.then122)) #7
          to label %cleanup [label %if.then122], !srcloc !244

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  %back123 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %35 = ptrtoint ptr %back123 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %back123, align 4
  %netdev124 = getelementptr inbounds %struct.ixgbe_adapter, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %netdev124 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev124, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug384, ptr noundef %38, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end130:                                        ; preds = %for.body102
  %39 = ptrtoint ptr %word to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %word, align 2
  %add133 = add i16 %40, %checksum.2197
  %j.0 = add i16 %j.0198, 1
  %conv96 = zext i16 %j.0 to i32
  %41 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pointer, align 2
  %conv97 = zext i16 %42 to i32
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %length, align 2
  %conv98 = zext i16 %44 to i32
  %add99 = add nuw nsw i32 %conv98, %conv97
  %cmp100.not = icmp ult i32 %add99, %conv96
  br i1 %cmp100.not, label %if.end130.for.inc138_crit_edge, label %if.end130.for.body102_crit_edge

if.end130.for.body102_crit_edge:                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body102

if.end130.for.inc138_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc138

for.inc138:                                       ; preds = %if.end130.for.inc138_crit_edge, %if.end91.for.inc138_crit_edge, %if.end82.for.inc138_crit_edge, %if.end82.for.inc138_crit_edge207, %if.end46.for.inc138_crit_edge, %if.end46.for.inc138_crit_edge206
  %checksum.3 = phi i16 [ %checksum.1199, %if.end46.for.inc138_crit_edge ], [ %checksum.1199, %if.end82.for.inc138_crit_edge ], [ %checksum.1199, %if.end46.for.inc138_crit_edge206 ], [ %checksum.1199, %if.end82.for.inc138_crit_edge207 ], [ %checksum.1199, %if.end91.for.inc138_crit_edge ], [ %add133, %if.end130.for.inc138_crit_edge ]
  %inc139 = add nuw nsw i16 %i.1200, 1
  %cmp16 = icmp ult i16 %i.1200, 14
  br i1 %cmp16, label %for.inc138.for.body18_crit_edge, label %for.end140

for.inc138.for.body18_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.end140:                                       ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i16 -17734, %checksum.3
  %conv143 = zext i16 %sub to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end140, %if.then122, %do.body110, %if.then74, %do.body62, %if.then38, %do.body26
  %retval.0 = phi i32 [ %conv143, %for.end140 ], [ -1, %if.then38 ], [ -1, %if.then74 ], [ -1, %if.then122 ], [ -1, %do.body26 ], [ -1, %do.body62 ], [ -1, %do.body110 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pointer) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_validate_eeprom_checksum_generic(ptr noundef %hw, ptr noundef writeonly %checksum_val) local_unnamed_addr #0 align 64 {
entry:
  %checksum = alloca i16, align 2
  %read_checksum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #7
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %checksum, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_checksum) #7
  %1 = ptrtoint ptr %read_checksum to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %read_checksum, align 2
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = call i32 %3(ptr noundef %hw, i16 noundef zeroext 0, ptr noundef nonnull %checksum) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_validate_eeprom_checksum_generic.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_validate_eeprom_checksum_generic, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !244

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_validate_eeprom_checksum_generic.__UNIQUE_ID_ddebug385, ptr noundef %7, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  %calc_checksum = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 7
  %8 = ptrtoint ptr %calc_checksum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %calc_checksum, align 4
  %call12 = call i32 %9(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %conv = trunc i32 %call12 to i16
  %10 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %checksum, align 2
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 4
  %call18 = call i32 %12(ptr noundef %hw, i16 noundef zeroext 63, ptr noundef nonnull %read_checksum) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end42, label %do.body22

do.body22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_validate_eeprom_checksum_generic.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_validate_eeprom_checksum_generic, %if.then34)) #7
          to label %cleanup [label %if.then34], !srcloc !244

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %back35 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %back35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back35, align 4
  %netdev36 = getelementptr inbounds %struct.ixgbe_adapter, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev36, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_validate_eeprom_checksum_generic.__UNIQUE_ID_ddebug386, ptr noundef %16, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end42:                                         ; preds = %if.end14
  %17 = ptrtoint ptr %read_checksum to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %read_checksum, align 2
  %19 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %checksum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp45.not = icmp eq i16 %18, %20
  %spec.select = select i1 %cmp45.not, i32 0, i32 -2
  %tobool49.not = icmp eq ptr %checksum_val, null
  br i1 %tobool49.not, label %if.end42.cleanup_crit_edge, label %if.then50

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %checksum_val to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %checksum_val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end42.cleanup_crit_edge, %if.then34, %do.body22, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ %call, %if.then6 ], [ %call12, %if.end9.cleanup_crit_edge ], [ %call18, %if.then34 ], [ %spec.select, %if.then50 ], [ %spec.select, %if.end42.cleanup_crit_edge ], [ %call, %do.body1 ], [ %call18, %do.body22 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_checksum) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_update_eeprom_checksum_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %checksum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #7
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %checksum, align 2, !annotation !242
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call = call i32 %2(ptr noundef %hw, i16 noundef zeroext 0, ptr noundef nonnull %checksum) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_eeprom_checksum_generic.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_eeprom_checksum_generic, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !244

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_eeprom_checksum_generic.__UNIQUE_ID_ddebug387, ptr noundef %6, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  %calc_checksum = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 7
  %7 = ptrtoint ptr %calc_checksum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %calc_checksum, align 4
  %call12 = call i32 %8(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %call12 to i16
  %9 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %checksum, align 2
  %write = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 3
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %call17 = call i32 %11(ptr noundef %hw, i16 noundef zeroext 63, i16 noundef zeroext %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ %call17, %if.end14 ], [ %call, %if.then6 ], [ %call12, %if.end9.cleanup_crit_edge ], [ %call, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_set_rar_generic(ptr noundef %hw, i32 noundef %index, ptr nocapture noundef readonly %addr, i32 noundef %vmdq, i32 noundef %enable_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %0 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rar_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp.not = icmp ugt i32 %1, %index
  br i1 %cmp.not, label %if.end7, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_rar_generic.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_rar_generic, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !244

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_rar_generic.__UNIQUE_ID_ddebug388, ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %index) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %set_vmdq = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 40
  %6 = ptrtoint ptr %set_vmdq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_vmdq, align 4
  %call9 = tail call i32 %7(ptr noundef %hw, i32 noundef %index, i32 noundef %vmdq) #7
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr, align 1
  %arrayidx10 = getelementptr i8, ptr %addr, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr i8, ptr %addr, i32 2
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %arrayidx16 = getelementptr i8, ptr %addr, i32 3
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp20 = icmp ult i32 %index, 16
  %mul = shl i32 %index, 3
  %cond.v = select i1 %cmp20, i32 21508, i32 41476
  %cond = add i32 %cond.v, %mul
  %call24 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %cond) #7
  %and = and i32 %call24, 2147418112
  %arrayidx25 = getelementptr i8, ptr %addr, i32 4
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %17 to i32
  %arrayidx27 = getelementptr i8, ptr %addr, i32 5
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %19 to i32
  %shl29 = shl nuw nsw i32 %conv28, 8
  %or30 = or i32 %and, %conv26
  %or31 = or i32 %or30, %shl29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable_addr)
  %cmp32.not = icmp eq i32 %enable_addr, 0
  %or35 = or i32 %or31, -2147483648
  %rar_high.0 = select i1 %cmp32.not, i32 %or31, i32 %or35
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end7.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end7.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %cond46.v = select i1 %cmp20, i32 21504, i32 41472
  %cond46 = add i32 %cond46.v, %mul
  %conv11 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %conv = zext i8 %9 to i32
  %or = or i32 %shl, %conv
  %conv13 = zext i8 %13 to i32
  %shl14 = shl nuw nsw i32 %conv13, 16
  %or15 = or i32 %or, %shl14
  %conv17 = zext i8 %15 to i32
  %shl18 = shl nuw i32 %conv17, 24
  %or19 = or i32 %or15, %shl18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or19) #7
  %add.ptr.i = getelementptr i8, ptr %21, i32 %cond46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end7.ixgbe_write_reg.exit_crit_edge
  %call47 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i86 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i86, label %ixgbe_write_reg.exit.cleanup_crit_edge, label %do.body1.i88

ixgbe_write_reg.exit.cleanup_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i88:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %rar_high.0) #7
  %add.ptr.i87 = getelementptr i8, ptr %24, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %25) #7, !srcloc !246
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i88, %ixgbe_write_reg.exit.cleanup_crit_edge, %if.then4, %do.body1
  %retval.0 = phi i32 [ -32, %if.then4 ], [ -32, %do.body1 ], [ 0, %ixgbe_write_reg.exit.cleanup_crit_edge ], [ 0, %do.body1.i88 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_clear_rar_generic(ptr noundef %hw, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %0 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rar_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp.not = icmp ugt i32 %1, %index
  br i1 %cmp.not, label %if.end7, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_clear_rar_generic.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_clear_rar_generic, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !244

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_clear_rar_generic.__UNIQUE_ID_ddebug389, ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %index) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp8 = icmp ult i32 %index, 16
  %mul = shl i32 %index, 3
  %cond.v = select i1 %cmp8, i32 21508, i32 41476
  %cond = add i32 %cond.v, %mul
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %cond) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end7.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end7.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call11, 2147418112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i = getelementptr i8, ptr %7, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end7.ixgbe_write_reg.exit_crit_edge
  %call21 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i53 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i53, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit56_crit_edge, label %do.body1.i55

ixgbe_write_reg.exit.ixgbe_write_reg.exit56_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit56

do.body1.i55:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cond30.v = select i1 %cmp8, i32 21504, i32 41472
  %cond30 = add i32 %cond30.v, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i54 = getelementptr i8, ptr %10, i32 %cond30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit56

ixgbe_write_reg.exit56:                           ; preds = %do.body1.i55, %ixgbe_write_reg.exit.ixgbe_write_reg.exit56_crit_edge
  %clear_vmdq = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 42
  %11 = ptrtoint ptr %clear_vmdq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clear_vmdq, align 4
  %call32 = tail call i32 %12(ptr noundef %hw, i32 noundef %index, i32 noundef -1) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit56, %if.then4, %do.body1
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit56 ], [ -32, %if.then4 ], [ -32, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_rx_addrs_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %0 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rar_entries, align 4
  %addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 2, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then_crit_edge, label %do.body18

is_valid_ether_addr.exit.if.then_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %is_valid_ether_addr.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %get_mac_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 5
  %7 = ptrtoint ptr %get_mac_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_mac_addr, align 4
  %call6 = tail call i32 %8(ptr noundef %hw, ptr noundef %addr) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_init_rx_addrs_generic, %if.then11)) #7
          to label %if.end68 [label %if.then11], !srcloc !244

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug390, ptr noundef %12, ptr noundef nonnull @.str.29, ptr noundef %addr) #7
  br label %if.end68

do.body18:                                        ; preds = %is_valid_ether_addr.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_init_rx_addrs_generic, %if.then30)) #7
          to label %do.body39 [label %if.then30], !srcloc !244

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %back31 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %back31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back31, align 4
  %netdev32 = getelementptr inbounds %struct.ixgbe_adapter, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev32, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug391, ptr noundef %16, ptr noundef nonnull @.str.30) #7
  br label %do.body39

do.body39:                                        ; preds = %if.then30, %do.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_init_rx_addrs_generic, %if.then51)) #7
          to label %do.end61 [label %if.then51], !srcloc !244

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %back52 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %back52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %back52, align 4
  %netdev53 = getelementptr inbounds %struct.ixgbe_adapter, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %netdev53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev53, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug392, ptr noundef %20, ptr noundef nonnull @.str.31, ptr noundef %addr) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then51, %do.body39
  %set_rar = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 38
  %21 = ptrtoint ptr %set_rar to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_rar, align 4
  %call67 = tail call i32 %22(ptr noundef %hw, i32 noundef 0, ptr noundef %addr, i32 noundef 0, i32 noundef -2147483648) #7
  br label %if.end68

if.end68:                                         ; preds = %do.end61, %if.then11, %if.then
  %clear_vmdq = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 42
  %23 = ptrtoint ptr %clear_vmdq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clear_vmdq, align 4
  %call71 = tail call i32 %24(ptr noundef %hw, i32 noundef 0, i32 noundef -1) #7
  %overflow_promisc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %overflow_promisc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %overflow_promisc, align 4
  %rar_used_count = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %rar_used_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %rar_used_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_init_rx_addrs_generic, %if.then86)) #7
          to label %do.end93 [label %if.then86], !srcloc !244

if.then86:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %back87 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %27 = ptrtoint ptr %back87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %back87, align 4
  %netdev88 = getelementptr inbounds %struct.ixgbe_adapter, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %netdev88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev88, align 128
  %sub = add i32 %1, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug393, ptr noundef %30, ptr noundef nonnull @.str.32, i32 noundef %sub) #7
  br label %do.end93

do.end93:                                         ; preds = %if.then86, %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp215 = icmp ugt i32 %1, 1
  br i1 %cmp215, label %do.end93.for.body_crit_edge, label %do.end93.for.end_crit_edge

do.end93.for.end_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end93.for.body_crit_edge:                      ; preds = %do.end93
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit201.for.body_crit_edge, %do.end93.for.body_crit_edge
  %i.0216 = phi i32 [ %inc, %ixgbe_write_reg.exit201.for.body_crit_edge ], [ 1, %do.end93.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0216)
  %cmp94 = icmp ult i32 %i.0216, 16
  %mul = shl i32 %i.0216, 3
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.ixgbe_write_reg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %cond.v = select i1 %cmp94, i32 21504, i32 41472
  %cond = add i32 %cond.v, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %32, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.ixgbe_write_reg.exit_crit_edge
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i198 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i198, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit201_crit_edge, label %do.body1.i200

ixgbe_write_reg.exit.ixgbe_write_reg.exit201_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit201

do.body1.i200:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cond105.v = select i1 %cmp94, i32 21508, i32 41476
  %cond105 = add i32 %cond105.v, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i199 = getelementptr i8, ptr %34, i32 %cond105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit201

ixgbe_write_reg.exit201:                          ; preds = %do.body1.i200, %ixgbe_write_reg.exit.ixgbe_write_reg.exit201_crit_edge
  %inc = add nuw i32 %i.0216, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %ixgbe_write_reg.exit201.for.end_crit_edge, label %ixgbe_write_reg.exit201.for.body_crit_edge

ixgbe_write_reg.exit201.for.body_crit_edge:       ; preds = %ixgbe_write_reg.exit201
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

ixgbe_write_reg.exit201.for.end_crit_edge:        ; preds = %ixgbe_write_reg.exit201
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %ixgbe_write_reg.exit201.for.end_crit_edge, %do.end93.for.end_crit_edge
  %mta_in_use = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %mta_in_use to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mta_in_use, align 4
  %mc_filter_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 9
  %36 = ptrtoint ptr %mc_filter_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mc_filter_type, align 4
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i202 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i202, label %for.end.ixgbe_write_reg.exit205_crit_edge, label %do.body1.i204

for.end.ixgbe_write_reg.exit205_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit205

do.body1.i204:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %add.ptr.i203 = getelementptr i8, ptr %39, i32 20624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203, i32 %40) #7, !srcloc !246
  br label %ixgbe_write_reg.exit205

ixgbe_write_reg.exit205:                          ; preds = %do.body1.i204, %for.end.ixgbe_write_reg.exit205_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_init_rx_addrs_generic, %if.then121)) #7
          to label %do.end128 [label %if.then121], !srcloc !244

if.then121:                                       ; preds = %ixgbe_write_reg.exit205
  call void @__sanitizer_cov_trace_pc() #9
  %back122 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %41 = ptrtoint ptr %back122 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %back122, align 4
  %netdev123 = getelementptr inbounds %struct.ixgbe_adapter, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %netdev123 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev123, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug394, ptr noundef %44, ptr noundef nonnull @.str.33) #7
  br label %do.end128

do.end128:                                        ; preds = %if.then121, %ixgbe_write_reg.exit205
  %mcft_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 10
  %45 = ptrtoint ptr %mcft_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mcft_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp131217.not = icmp eq i32 %46, 0
  br i1 %cmp131217.not, label %do.end128.for.end137_crit_edge, label %do.end128.for.body132_crit_edge

do.end128.for.body132_crit_edge:                  ; preds = %do.end128
  br label %for.body132

do.end128.for.end137_crit_edge:                   ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end137

for.body132:                                      ; preds = %ixgbe_write_reg.exit209.for.body132_crit_edge, %do.end128.for.body132_crit_edge
  %i.1218 = phi i32 [ %inc136, %ixgbe_write_reg.exit209.for.body132_crit_edge ], [ 0, %do.end128.for.body132_crit_edge ]
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i206 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i206, label %for.body132.ixgbe_write_reg.exit209_crit_edge, label %do.body1.i208

for.body132.ixgbe_write_reg.exit209_crit_edge:    ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit209

do.body1.i208:                                    ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #9
  %mul133 = shl i32 %i.1218, 2
  %add134 = add i32 %mul133, 20992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i207 = getelementptr i8, ptr %48, i32 %add134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit209

ixgbe_write_reg.exit209:                          ; preds = %do.body1.i208, %for.body132.ixgbe_write_reg.exit209_crit_edge
  %inc136 = add nuw i32 %i.1218, 1
  %49 = ptrtoint ptr %mcft_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mcft_size, align 4
  %cmp131 = icmp ult i32 %inc136, %50
  br i1 %cmp131, label %ixgbe_write_reg.exit209.for.body132_crit_edge, label %ixgbe_write_reg.exit209.for.end137_crit_edge

ixgbe_write_reg.exit209.for.end137_crit_edge:     ; preds = %ixgbe_write_reg.exit209
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end137

ixgbe_write_reg.exit209.for.body132_crit_edge:    ; preds = %ixgbe_write_reg.exit209
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body132

for.end137:                                       ; preds = %ixgbe_write_reg.exit209.for.end137_crit_edge, %do.end128.for.end137_crit_edge
  %init_uta_tables = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 49
  %51 = ptrtoint ptr %init_uta_tables to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_uta_tables, align 4
  %tobool140.not = icmp eq ptr %52, null
  br i1 %tobool140.not, label %for.end137.if.end146_crit_edge, label %if.then141

for.end137.if.end146_crit_edge:                   ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then141:                                       ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #9
  %call145 = tail call i32 %52(ptr noundef %hw) #7
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %for.end137.if.end146_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_update_mc_addr_list_generic(ptr noundef %hw, ptr noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 8
  %addr_ctrl = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %addr_ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %addr_ctrl, align 4
  %mta_in_use = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %mta_in_use to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mta_in_use, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_mc_addr_list_generic, %if.then)) #7
          to label %do.end7 [label %if.then], !srcloc !244

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 4
  %netdev5 = getelementptr inbounds %struct.ixgbe_adapter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev5, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug397, ptr noundef %7, ptr noundef nonnull @.str.33) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %mta_shadow = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 8
  %8 = call ptr @memset(ptr %mta_shadow, i32 0, i32 512)
  %9 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.0108 = load ptr, ptr %mc, align 4
  %cmp.not109 = icmp eq ptr %ha.0108, %mc
  br i1 %cmp.not109, label %do.end7.for.cond41.preheader_crit_edge, label %do.body16.lr.ph

do.end7.for.cond41.preheader_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond41.preheader

do.body16.lr.ph:                                  ; preds = %do.end7
  %back29 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  br label %do.body16

for.cond41.preheader:                             ; preds = %do.end35.for.cond41.preheader_crit_edge, %do.end7.for.cond41.preheader_crit_edge
  %mcft_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 10
  %10 = ptrtoint ptr %mcft_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mcft_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp43111.not = icmp eq i32 %11, 0
  br i1 %cmp43111.not, label %for.cond41.preheader.for.end48_crit_edge, label %for.cond41.preheader.for.body44_crit_edge

for.cond41.preheader.for.body44_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body44

for.cond41.preheader.for.end48_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end48

do.body16:                                        ; preds = %do.end35.do.body16_crit_edge, %do.body16.lr.ph
  %ha.0110 = phi ptr [ %ha.0108, %do.body16.lr.ph ], [ %ha.0, %do.end35.do.body16_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_mc_addr_list_generic, %if.then28)) #7
          to label %do.end35 [label %if.then28], !srcloc !244

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %back29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %back29, align 4
  %netdev30 = getelementptr inbounds %struct.ixgbe_adapter, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev30, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug398, ptr noundef %15, ptr noundef nonnull @.str.35) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then28, %do.body16
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0110, i32 0, i32 2
  tail call fastcc void @ixgbe_set_mta(ptr noundef %hw, ptr noundef %addr)
  %16 = ptrtoint ptr %ha.0110 to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0 = load ptr, ptr %ha.0110, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %do.end35.for.cond41.preheader_crit_edge, label %do.end35.do.body16_crit_edge

do.end35.do.body16_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

do.end35.for.cond41.preheader_crit_edge:          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond41.preheader

for.body44:                                       ; preds = %ixgbe_write_reg.exit.for.body44_crit_edge, %for.cond41.preheader.for.body44_crit_edge
  %i.0112 = phi i32 [ %inc, %ixgbe_write_reg.exit.for.body44_crit_edge ], [ 0, %for.cond41.preheader.for.body44_crit_edge ]
  %arrayidx = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 8, i32 %i.0112
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %for.body44.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body44.ixgbe_write_reg.exit_crit_edge:        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %i.0112, 2
  %add = add i32 %shl, 20992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body44.ixgbe_write_reg.exit_crit_edge
  %inc = add nuw i32 %i.0112, 1
  %22 = ptrtoint ptr %mcft_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mcft_size, align 4
  %cmp43 = icmp ult i32 %inc, %23
  br i1 %cmp43, label %ixgbe_write_reg.exit.for.body44_crit_edge, label %ixgbe_write_reg.exit.for.end48_crit_edge

ixgbe_write_reg.exit.for.end48_crit_edge:         ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end48

ixgbe_write_reg.exit.for.body44_crit_edge:        ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44

for.end48:                                        ; preds = %ixgbe_write_reg.exit.for.end48_crit_edge, %for.cond41.preheader.for.end48_crit_edge
  %24 = ptrtoint ptr %mta_in_use to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mta_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp51.not = icmp eq i32 %25, 0
  br i1 %cmp51.not, label %for.end48.do.body56_crit_edge, label %if.then52

for.end48.do.body56_crit_edge:                    ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

if.then52:                                        ; preds = %for.end48
  %mc_filter_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 9
  %26 = ptrtoint ptr %mc_filter_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mc_filter_type, align 4
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i101 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i101, label %if.then52.do.body56_crit_edge, label %do.body1.i103

if.then52.do.body56_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

do.body1.i103:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %27, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i102 = getelementptr i8, ptr %29, i32 20624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %30) #7, !srcloc !246
  br label %do.body56

do.body56:                                        ; preds = %do.body1.i103, %if.then52.do.body56_crit_edge, %for.end48.do.body56_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_mc_addr_list_generic, %if.then68)) #7
          to label %do.end75 [label %if.then68], !srcloc !244

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %back69 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %31 = ptrtoint ptr %back69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %back69, align 4
  %netdev70 = getelementptr inbounds %struct.ixgbe_adapter, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %netdev70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev70, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug399, ptr noundef %34, ptr noundef nonnull @.str.36) #7
  br label %do.end75

do.end75:                                         ; preds = %if.then68, %do.body56
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_set_mta(ptr nocapture noundef %hw, ptr nocapture noundef readonly %mc_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mta_in_use = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %mta_in_use to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mta_in_use, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %mta_in_use, align 4
  %mc_filter_type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 9
  %2 = ptrtoint ptr %mc_filter_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mc_filter_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %3, label %do.body30.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb13.i
    i32 3, label %sw.bb22.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %mc_addr, i32 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = lshr i8 %6, 4
  %8 = zext i8 %7 to i32
  %arrayidx1.i = getelementptr i8, ptr %mc_addr, i32 5
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %conv3.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 4
  %or.i = or i32 %shl.i, %8
  br label %ixgbe_mta_vector.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.i = getelementptr i8, ptr %mc_addr, i32 4
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  %13 = lshr i8 %12, 3
  %14 = zext i8 %13 to i32
  %arrayidx8.i = getelementptr i8, ptr %mc_addr, i32 5
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i, align 1
  %conv10.i = zext i8 %16 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 5
  %or12.i = or i32 %shl11.i, %14
  br label %ixgbe_mta_vector.exit

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14.i = getelementptr i8, ptr %mc_addr, i32 4
  %17 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14.i, align 1
  %19 = lshr i8 %18, 2
  %20 = zext i8 %19 to i32
  %arrayidx17.i = getelementptr i8, ptr %mc_addr, i32 5
  %21 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx17.i, align 1
  %conv19.i = zext i8 %22 to i32
  %shl20.i = shl nuw nsw i32 %conv19.i, 6
  %or21.i = or i32 %shl20.i, %20
  br label %ixgbe_mta_vector.exit

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx23.i = getelementptr i8, ptr %mc_addr, i32 4
  %23 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %24 to i32
  %arrayidx25.i = getelementptr i8, ptr %mc_addr, i32 5
  %25 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx25.i, align 1
  %conv27.i = zext i8 %26 to i32
  %shl28.i = shl nuw nsw i32 %conv27.i, 8
  %or29.i = or i32 %shl28.i, %conv24.i
  br label %ixgbe_mta_vector.exit

do.body30.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_mta_vector.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_mta, %if.then.i)) #7
          to label %ixgbe_mta_vector.exit [label %if.then.i], !srcloc !244

if.then.i:                                        ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #9
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %27 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_mta_vector.__UNIQUE_ID_ddebug395, ptr noundef %30, ptr noundef nonnull @.str.75) #7
  br label %ixgbe_mta_vector.exit

ixgbe_mta_vector.exit:                            ; preds = %if.then.i, %do.body30.i, %sw.bb22.i, %sw.bb13.i, %sw.bb4.i, %sw.bb.i
  %vector.0.i = phi i32 [ 0, %if.then.i ], [ %or29.i, %sw.bb22.i ], [ %or21.i, %sw.bb13.i ], [ %or12.i, %sw.bb4.i ], [ %or.i, %sw.bb.i ], [ 0, %do.body30.i ]
  %and.i = and i32 %vector.0.i, 4095
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_mta.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_mta, %if.then)) #7
          to label %do.end6 [label %if.then], !srcloc !244

if.then:                                          ; preds = %ixgbe_mta_vector.exit
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %31 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_mta.__UNIQUE_ID_ddebug396, ptr noundef %34, ptr noundef nonnull @.str.73, i32 noundef %and.i) #7
  br label %do.end6

do.end6:                                          ; preds = %if.then, %ixgbe_mta_vector.exit
  %shr = lshr i32 %and.i, 5
  %and7 = and i32 %vector.0.i, 31
  %shl = shl nuw i32 1, %and7
  %arrayidx = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 8, i32 %shr
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %or = or i32 %36, %shl
  store i32 %or, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_enable_mc_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mta_in_use = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %mta_in_use to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mta_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %mc_filter_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 9
  %2 = ptrtoint ptr %mc_filter_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mc_filter_type, align 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %3, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 20624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !246
  br label %if.end

if.end:                                           ; preds = %do.body1.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_disable_mc_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mta_in_use = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %mta_in_use to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mta_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %mc_filter_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 9
  %2 = ptrtoint ptr %mc_filter_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mc_filter_type, align 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 20624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !246
  br label %if.end

if.end:                                           ; preds = %do.body1.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fc_enable_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4
  %pause_time = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pause_time, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %current_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_mode, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.cond.preheader.for.inc.7_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc.7_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

land.lhs.true:                                    ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.land.lhs.true.1_crit_edge, label %if.then5

land.lhs.true.land.lhs.true.1_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.1

if.then5:                                         ; preds = %land.lhs.true
  %arrayidx7 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp15.not = icmp ult i32 %7, %5
  %or.cond = select i1 %tobool8.not, i1 %cmp15.not, i1 false
  br i1 %or.cond, label %if.then5.land.lhs.true.1_crit_edge, label %if.then5.do.body17_crit_edge

if.then5.do.body17_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then5.land.lhs.true.1_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.1

do.body17:                                        ; preds = %if.then5.7.do.body17_crit_edge, %if.then5.6.do.body17_crit_edge, %if.then5.5.do.body17_crit_edge, %if.then5.4.do.body17_crit_edge, %if.then5.3.do.body17_crit_edge, %if.then5.2.do.body17_crit_edge, %if.then5.1.do.body17_crit_edge, %if.then5.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fc_enable_generic.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fc_enable_generic, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !244

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fc_enable_generic.__UNIQUE_ID_ddebug400, ptr noundef %11, ptr noundef nonnull @.str.38) #7
  br label %cleanup

land.lhs.true.1:                                  ; preds = %if.then5.land.lhs.true.1_crit_edge, %land.lhs.true.land.lhs.true.1_crit_edge
  %arrayidx.1 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.1 = icmp eq i32 %13, 0
  br i1 %tobool4.not.1, label %land.lhs.true.1.land.lhs.true.2_crit_edge, label %if.then5.1

land.lhs.true.1.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.2

if.then5.1:                                       ; preds = %land.lhs.true.1
  %arrayidx7.1 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not.1 = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp15.not.1 = icmp ult i32 %15, %13
  %or.cond.1 = select i1 %tobool8.not.1, i1 %cmp15.not.1, i1 false
  br i1 %or.cond.1, label %if.then5.1.land.lhs.true.2_crit_edge, label %if.then5.1.do.body17_crit_edge

if.then5.1.do.body17_crit_edge:                   ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then5.1.land.lhs.true.2_crit_edge:             ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %if.then5.1.land.lhs.true.2_crit_edge, %land.lhs.true.1.land.lhs.true.2_crit_edge
  %arrayidx.2 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.2 = icmp eq i32 %17, 0
  br i1 %tobool4.not.2, label %land.lhs.true.2.land.lhs.true.3_crit_edge, label %if.then5.2

land.lhs.true.2.land.lhs.true.3_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.3

if.then5.2:                                       ; preds = %land.lhs.true.2
  %arrayidx7.2 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not.2 = icmp ne i32 %19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp15.not.2 = icmp ult i32 %19, %17
  %or.cond.2 = select i1 %tobool8.not.2, i1 %cmp15.not.2, i1 false
  br i1 %or.cond.2, label %if.then5.2.land.lhs.true.3_crit_edge, label %if.then5.2.do.body17_crit_edge

if.then5.2.do.body17_crit_edge:                   ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then5.2.land.lhs.true.3_crit_edge:             ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %if.then5.2.land.lhs.true.3_crit_edge, %land.lhs.true.2.land.lhs.true.3_crit_edge
  %arrayidx.3 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.3 = icmp eq i32 %21, 0
  br i1 %tobool4.not.3, label %land.lhs.true.3.land.lhs.true.4_crit_edge, label %if.then5.3

land.lhs.true.3.land.lhs.true.4_crit_edge:        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.4

if.then5.3:                                       ; preds = %land.lhs.true.3
  %arrayidx7.3 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 3
  %22 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not.3 = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp15.not.3 = icmp ult i32 %23, %21
  %or.cond.3 = select i1 %tobool8.not.3, i1 %cmp15.not.3, i1 false
  br i1 %or.cond.3, label %if.then5.3.land.lhs.true.4_crit_edge, label %if.then5.3.do.body17_crit_edge

if.then5.3.do.body17_crit_edge:                   ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then5.3.land.lhs.true.4_crit_edge:             ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %if.then5.3.land.lhs.true.4_crit_edge, %land.lhs.true.3.land.lhs.true.4_crit_edge
  %arrayidx.4 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not.4 = icmp eq i32 %25, 0
  br i1 %tobool4.not.4, label %land.lhs.true.4.land.lhs.true.5_crit_edge, label %if.then5.4

land.lhs.true.4.land.lhs.true.5_crit_edge:        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.5

if.then5.4:                                       ; preds = %land.lhs.true.4
  %arrayidx7.4 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 4
  %26 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx7.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not.4 = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp15.not.4 = icmp ult i32 %27, %25
  %or.cond.4 = select i1 %tobool8.not.4, i1 %cmp15.not.4, i1 false
  br i1 %or.cond.4, label %if.then5.4.land.lhs.true.5_crit_edge, label %if.then5.4.do.body17_crit_edge

if.then5.4.do.body17_crit_edge:                   ; preds = %if.then5.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then5.4.land.lhs.true.5_crit_edge:             ; preds = %if.then5.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %if.then5.4.land.lhs.true.5_crit_edge, %land.lhs.true.4.land.lhs.true.5_crit_edge
  %arrayidx.5 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool4.not.5 = icmp eq i32 %29, 0
  br i1 %tobool4.not.5, label %land.lhs.true.5.land.lhs.true.6_crit_edge, label %if.then5.5

land.lhs.true.5.land.lhs.true.6_crit_edge:        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.6

if.then5.5:                                       ; preds = %land.lhs.true.5
  %arrayidx7.5 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 5
  %30 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool8.not.5 = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp15.not.5 = icmp ult i32 %31, %29
  %or.cond.5 = select i1 %tobool8.not.5, i1 %cmp15.not.5, i1 false
  br i1 %or.cond.5, label %if.then5.5.land.lhs.true.6_crit_edge, label %if.then5.5.do.body17_crit_edge

if.then5.5.do.body17_crit_edge:                   ; preds = %if.then5.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then5.5.land.lhs.true.6_crit_edge:             ; preds = %if.then5.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.then5.5.land.lhs.true.6_crit_edge, %land.lhs.true.5.land.lhs.true.6_crit_edge
  %arrayidx.6 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool4.not.6 = icmp eq i32 %33, 0
  br i1 %tobool4.not.6, label %land.lhs.true.6.land.lhs.true.7_crit_edge, label %if.then5.6

land.lhs.true.6.land.lhs.true.7_crit_edge:        ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.7

if.then5.6:                                       ; preds = %land.lhs.true.6
  %arrayidx7.6 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 6
  %34 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx7.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool8.not.6 = icmp ne i32 %35, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp15.not.6 = icmp ult i32 %35, %33
  %or.cond.6 = select i1 %tobool8.not.6, i1 %cmp15.not.6, i1 false
  br i1 %or.cond.6, label %if.then5.6.land.lhs.true.7_crit_edge, label %if.then5.6.do.body17_crit_edge

if.then5.6.do.body17_crit_edge:                   ; preds = %if.then5.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then5.6.land.lhs.true.7_crit_edge:             ; preds = %if.then5.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %if.then5.6.land.lhs.true.7_crit_edge, %land.lhs.true.6.land.lhs.true.7_crit_edge
  %arrayidx.7 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 0, i32 7
  %36 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.7 = icmp eq i32 %37, 0
  br i1 %tobool4.not.7, label %land.lhs.true.7.for.inc.7_crit_edge, label %if.then5.7

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then5.7:                                       ; preds = %land.lhs.true.7
  %arrayidx7.7 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 7
  %38 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx7.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool8.not.7 = icmp ne i32 %39, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp15.not.7 = icmp ult i32 %39, %37
  %or.cond.7 = select i1 %tobool8.not.7, i1 %cmp15.not.7, i1 false
  br i1 %or.cond.7, label %if.then5.7.for.inc.7_crit_edge, label %if.then5.7.do.body17_crit_edge

if.then5.7.do.body17_crit_edge:                   ; preds = %if.then5.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then5.7.for.inc.7_crit_edge:                   ; preds = %if.then5.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then5.7.for.inc.7_crit_edge, %land.lhs.true.7.for.inc.7_crit_edge, %for.cond.preheader.for.inc.7_crit_edge
  %fc_autoneg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 54
  %40 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fc_autoneg, align 4
  tail call void %41(ptr noundef %hw) #7
  %call27 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17044) #7
  %and28 = and i32 %call27, -4093
  %call29 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 15616) #7
  %and30 = and i32 %call29, -25
  %42 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %current_mode, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %43, label %do.body39 [
    i32 0, label %for.inc.7.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb33
    i32 3, label %sw.bb35
  ]

for.inc.7.sw.epilog_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and28, 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  %or34 = or i32 %and30, 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  %or36 = or i32 %and28, 8
  %or37 = or i32 %and30, 8
  br label %sw.epilog

do.body39:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fc_enable_generic.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fc_enable_generic, %if.then51)) #7
          to label %cleanup [label %if.then51], !srcloc !244

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %back52 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %45 = ptrtoint ptr %back52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %back52, align 4
  %netdev53 = getelementptr inbounds %struct.ixgbe_adapter, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %netdev53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev53, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fc_enable_generic.__UNIQUE_ID_ddebug401, ptr noundef %48, ptr noundef nonnull @.str.6) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb33, %sw.bb, %for.inc.7.sw.epilog_crit_edge
  %fccfg_reg.0 = phi i32 [ %or37, %sw.bb35 ], [ %or34, %sw.bb33 ], [ %and30, %sw.bb ], [ %and30, %for.inc.7.sw.epilog_crit_edge ]
  %mflcn_reg.0 = phi i32 [ %or36, %sw.bb35 ], [ %and28, %sw.bb33 ], [ %or, %sw.bb ], [ %and28, %for.inc.7.sw.epilog_crit_edge ]
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %sw.epilog.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

sw.epilog.ixgbe_write_reg.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or59 = or i32 %mflcn_reg.0, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %or59) #7
  %add.ptr.i = getelementptr i8, ptr %50, i32 17044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %51) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %sw.epilog.ixgbe_write_reg.exit_crit_edge
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i167 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i167, label %ixgbe_write_reg.exit.for.body62.preheader_crit_edge, label %do.body1.i169

ixgbe_write_reg.exit.for.body62.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body62.preheader

do.body1.i169:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %fccfg_reg.0) #7
  %add.ptr.i168 = getelementptr i8, ptr %53, i32 15616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %54) #7, !srcloc !246
  br label %for.body62.preheader

for.body62.preheader:                             ; preds = %do.body1.i169, %ixgbe_write_reg.exit.for.body62.preheader_crit_edge
  br label %for.body62

for.body62:                                       ; preds = %ixgbe_write_reg.exit182.for.body62_crit_edge, %for.body62.preheader
  %i.1195 = phi i32 [ %inc91, %ixgbe_write_reg.exit182.for.body62_crit_edge ], [ 0, %for.body62.preheader ]
  %55 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %current_mode, align 4
  %and65 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %for.body62.if.else_crit_edge, label %land.lhs.true67

for.body62.if.else_crit_edge:                     ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true67:                                  ; preds = %for.body62
  %arrayidx70 = getelementptr [8 x i32], ptr %fc, i32 0, i32 %i.1195
  %57 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool71.not = icmp eq i32 %58, 0
  br i1 %tobool71.not, label %land.lhs.true67.if.else_crit_edge, label %if.then72

land.lhs.true67.if.else_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then72:                                        ; preds = %land.lhs.true67
  %arrayidx75 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 1, i32 %i.1195
  %59 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx75, align 4
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i171 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i171, label %if.then72.ixgbe_write_reg.exit174_crit_edge, label %do.body1.i173

if.then72.ixgbe_write_reg.exit174_crit_edge:      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit174

do.body1.i173:                                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %i.1195, 2
  %add = add nuw nsw i32 %mul, 12832
  %shl = shl i32 %60, 10
  %or76 = or i32 %shl, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %or76) #7
  %add.ptr.i172 = getelementptr i8, ptr %62, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %63) #7, !srcloc !246
  br label %ixgbe_write_reg.exit174

ixgbe_write_reg.exit174:                          ; preds = %do.body1.i173, %if.then72.ixgbe_write_reg.exit174_crit_edge
  %64 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx70, align 4
  %shl80 = shl i32 %65, 10
  %or81 = or i32 %shl80, -2147483648
  br label %if.end87

if.else:                                          ; preds = %land.lhs.true67.if.else_crit_edge, %for.body62.if.else_crit_edge
  %mul82 = shl i32 %i.1195, 2
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i175 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i175, label %if.else.ixgbe_write_reg.exit178_crit_edge, label %do.body1.i177

if.else.ixgbe_write_reg.exit178_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit178

do.body1.i177:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add83 = add nuw nsw i32 %mul82, 12832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i176 = getelementptr i8, ptr %67, i32 %add83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit178

ixgbe_write_reg.exit178:                          ; preds = %do.body1.i177, %if.else.ixgbe_write_reg.exit178_crit_edge
  %add85 = add nuw nsw i32 %mul82, 15360
  %call86 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add85) #7
  %sub = add i32 %call86, -24576
  br label %if.end87

if.end87:                                         ; preds = %ixgbe_write_reg.exit178, %ixgbe_write_reg.exit174
  %fcrth.0 = phi i32 [ %or81, %ixgbe_write_reg.exit174 ], [ %sub, %ixgbe_write_reg.exit178 ]
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i179 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i179, label %if.end87.ixgbe_write_reg.exit182_crit_edge, label %do.body1.i181

if.end87.ixgbe_write_reg.exit182_crit_edge:       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit182

do.body1.i181:                                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %mul88 = shl i32 %i.1195, 2
  %add89 = add nuw nsw i32 %mul88, 12896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %70 = tail call i32 @llvm.bswap.i32(i32 %fcrth.0) #7
  %add.ptr.i180 = getelementptr i8, ptr %69, i32 %add89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %70) #7, !srcloc !246
  br label %ixgbe_write_reg.exit182

ixgbe_write_reg.exit182:                          ; preds = %do.body1.i181, %if.end87.ixgbe_write_reg.exit182_crit_edge
  %inc91 = add nuw nsw i32 %i.1195, 1
  %exitcond.not = icmp eq i32 %inc91, 8
  br i1 %exitcond.not, label %for.end92, label %ixgbe_write_reg.exit182.for.body62_crit_edge

ixgbe_write_reg.exit182.for.body62_crit_edge:     ; preds = %ixgbe_write_reg.exit182
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body62

for.end92:                                        ; preds = %ixgbe_write_reg.exit182
  %71 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %pause_time, align 4
  %conv = zext i16 %72 to i32
  %mul95 = mul nuw i32 %conv, 65537
  %73 = tail call i32 @llvm.bswap.i32(i32 %mul95) #7
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i183 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i183, label %for.end92.ixgbe_write_reg.exit186_crit_edge, label %do.body1.i185

for.end92.ixgbe_write_reg.exit186_crit_edge:      ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit186

do.body1.i185:                                    ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i184 = getelementptr i8, ptr %75, i32 12800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %73) #7, !srcloc !246
  br label %ixgbe_write_reg.exit186

ixgbe_write_reg.exit186:                          ; preds = %do.body1.i185, %for.end92.ixgbe_write_reg.exit186_crit_edge
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i183.1 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i183.1, label %ixgbe_write_reg.exit186.ixgbe_write_reg.exit186.1_crit_edge, label %do.body1.i185.1

ixgbe_write_reg.exit186.ixgbe_write_reg.exit186.1_crit_edge: ; preds = %ixgbe_write_reg.exit186
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit186.1

do.body1.i185.1:                                  ; preds = %ixgbe_write_reg.exit186
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i184.1 = getelementptr i8, ptr %77, i32 12804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.1, i32 %73) #7, !srcloc !246
  br label %ixgbe_write_reg.exit186.1

ixgbe_write_reg.exit186.1:                        ; preds = %do.body1.i185.1, %ixgbe_write_reg.exit186.ixgbe_write_reg.exit186.1_crit_edge
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i183.2 = icmp eq ptr %79, null
  br i1 %tobool.not.i.i183.2, label %ixgbe_write_reg.exit186.1.ixgbe_write_reg.exit186.2_crit_edge, label %do.body1.i185.2

ixgbe_write_reg.exit186.1.ixgbe_write_reg.exit186.2_crit_edge: ; preds = %ixgbe_write_reg.exit186.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit186.2

do.body1.i185.2:                                  ; preds = %ixgbe_write_reg.exit186.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i184.2 = getelementptr i8, ptr %79, i32 12808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.2, i32 %73) #7, !srcloc !246
  br label %ixgbe_write_reg.exit186.2

ixgbe_write_reg.exit186.2:                        ; preds = %do.body1.i185.2, %ixgbe_write_reg.exit186.1.ixgbe_write_reg.exit186.2_crit_edge
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i183.3 = icmp eq ptr %81, null
  br i1 %tobool.not.i.i183.3, label %ixgbe_write_reg.exit186.2.ixgbe_write_reg.exit186.3_crit_edge, label %do.body1.i185.3

ixgbe_write_reg.exit186.2.ixgbe_write_reg.exit186.3_crit_edge: ; preds = %ixgbe_write_reg.exit186.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit186.3

do.body1.i185.3:                                  ; preds = %ixgbe_write_reg.exit186.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i184.3 = getelementptr i8, ptr %81, i32 12812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.3, i32 %73) #7, !srcloc !246
  br label %ixgbe_write_reg.exit186.3

ixgbe_write_reg.exit186.3:                        ; preds = %do.body1.i185.3, %ixgbe_write_reg.exit186.2.ixgbe_write_reg.exit186.3_crit_edge
  %82 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %pause_time, align 4
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i187 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i187, label %ixgbe_write_reg.exit186.3.cleanup_crit_edge, label %do.body1.i189

ixgbe_write_reg.exit186.3.cleanup_crit_edge:      ; preds = %ixgbe_write_reg.exit186.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i189:                                    ; preds = %ixgbe_write_reg.exit186.3
  call void @__sanitizer_cov_trace_pc() #9
  %86 = lshr i16 %83, 1
  %div = zext i16 %86 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %87 = tail call i32 @llvm.bswap.i32(i32 %div) #7
  %add.ptr.i188 = getelementptr i8, ptr %85, i32 12960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %87) #7, !srcloc !246
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i189, %ixgbe_write_reg.exit186.3.cleanup_crit_edge, %if.then51, %do.body39, %if.then21, %do.body17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ -13, %if.then21 ], [ -4, %if.then51 ], [ -13, %do.body17 ], [ -4, %do.body39 ], [ 0, %ixgbe_write_reg.exit186.3.cleanup_crit_edge ], [ 0, %do.body1.i189 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_negotiate_fc(ptr nocapture noundef %hw, i32 noundef %adv_reg, i32 noundef %lp_reg, i32 noundef %adv_sym, i32 noundef %adv_asm, i32 noundef %lp_sym, i32 noundef %lp_asm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adv_reg)
  %tobool.not = icmp eq i32 %adv_reg, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lp_reg)
  %tobool1.not = icmp eq i32 %lp_reg, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %and = and i32 %adv_sym, %adv_reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %and3 = and i32 %lp_sym, %lp_reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond156 = or i1 %tobool2.not, %tobool4.not
  br i1 %or.cond156, label %if.else37, label %if.then5

if.then5:                                         ; preds = %if.end
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %current_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 7
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_negotiate_fc, %if.then12)) #7
          to label %return [label %if.then12], !srcloc !244

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug402, ptr noundef %6, ptr noundef nonnull @.str.40) #7
  br label %return

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_negotiate_fc, %if.then30)) #7
          to label %return [label %if.then30], !srcloc !244

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %back31 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %back31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back31, align 4
  %netdev32 = getelementptr inbounds %struct.ixgbe_adapter, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev32, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug403, ptr noundef %11, ptr noundef nonnull @.str.41) #7
  br label %return

if.else37:                                        ; preds = %if.end
  %tobool2.not.not = xor i1 %tobool2.not, true
  %and41 = and i32 %adv_asm, %adv_reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond157 = or i1 %tobool42.not, %tobool2.not.not
  %or.cond158 = or i1 %or.cond157, %tobool4.not
  %and47 = and i32 %lp_asm, %lp_reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %or.cond159 = or i1 %or.cond158, %tobool48.not
  br i1 %or.cond159, label %if.else71, label %if.then49

if.then49:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  %current_mode51 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 7
  %12 = ptrtoint ptr %current_mode51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %current_mode51, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_negotiate_fc, %if.then65)) #7
          to label %return [label %if.then65], !srcloc !244

if.then65:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %back66 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %back66 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back66, align 4
  %netdev67 = getelementptr inbounds %struct.ixgbe_adapter, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %netdev67 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev67, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug404, ptr noundef %16, ptr noundef nonnull @.str.42) #7
  br label %return

if.else71:                                        ; preds = %if.else37
  %or.cond160 = or i1 %tobool2.not, %tobool42.not
  %tobool4.not.not = xor i1 %tobool4.not, true
  %or.cond161.not = or i1 %or.cond160, %tobool4.not.not
  %or.cond162 = or i1 %or.cond161.not, %tobool48.not
  %current_mode107 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 7
  br i1 %or.cond162, label %if.else105, label %if.then83

if.then83:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %current_mode107 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %current_mode107, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_negotiate_fc, %if.then99)) #7
          to label %return [label %if.then99], !srcloc !244

if.then99:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  %back100 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %back100 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %back100, align 4
  %netdev101 = getelementptr inbounds %struct.ixgbe_adapter, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %netdev101 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev101, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug405, ptr noundef %21, ptr noundef nonnull @.str.43) #7
  br label %return

if.else105:                                       ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %current_mode107 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %current_mode107, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_negotiate_fc, %if.then121)) #7
          to label %return [label %if.then121], !srcloc !244

if.then121:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  %back122 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %back122 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back122, align 4
  %netdev123 = getelementptr inbounds %struct.ixgbe_adapter, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %netdev123 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev123, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug406, ptr noundef %26, ptr noundef nonnull @.str.44) #7
  br label %return

return:                                           ; preds = %if.then121, %if.else105, %if.then99, %if.then83, %if.then65, %if.then49, %if.then30, %if.else, %if.then12, %if.then6, %entry.return_crit_edge
  %retval.0 = phi i32 [ -27, %entry.return_crit_edge ], [ 0, %if.then65 ], [ 0, %if.then121 ], [ 0, %if.then99 ], [ 0, %if.then12 ], [ 0, %if.then30 ], [ 0, %if.then6 ], [ 0, %if.else ], [ 0, %if.then49 ], [ 0, %if.then83 ], [ 0, %if.else105 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_fc_autoneg(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %technology_ability_reg.i = alloca i16, align 2
  %lp_technology_ability_reg.i = alloca i16, align 2
  %speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #7
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 4, !annotation !242
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link_up, align 1, !annotation !242
  %disable_fc_autoneg = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %disable_fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_fc_autoneg, align 4, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end:                                           ; preds = %entry
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %4 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_link, align 4
  %call = call i32 %5(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %link_up, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %if.end3

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end3:                                          ; preds = %if.end
  %media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 7
  %8 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %media_type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %9, label %if.end3.if.else_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb7
    i32 4, label %sw.bb9
  ]

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb:                                            ; preds = %if.end3
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp = icmp eq i32 %12, 32
  br i1 %cmp, label %if.then4, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then4:                                         ; preds = %sw.bb
  %call.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16908) #7
  %13 = and i32 %call.i, 327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %13)
  %14 = icmp eq i32 %13, 65536
  br i1 %14, label %if.end.i, label %if.then4.if.else_crit_edge

if.then4.if.else_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16920) #7
  %call10.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16924) #7
  %call11.i = call i32 @ixgbe_negotiate_fc(ptr noundef %hw, i32 noundef %call9.i, i32 noundef %call10.i, i32 noundef 128, i32 noundef 256, i32 noundef 128, i32 noundef 256) #7
  br label %out

sw.bb7:                                           ; preds = %if.end3
  %call.i33 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i33)
  %cmp.i = icmp sgt i32 %call.i33, -1
  br i1 %cmp.i, label %sw.bb7.if.else_crit_edge, label %if.end.i34

sw.bb7.if.else_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end.i34:                                       ; preds = %sw.bb7
  %type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp1.i = icmp eq i32 %16, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i34.if.end8.i_crit_edge

if.end.i34.if.end8.i_crit_edge:                   ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i34
  %call3.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17188) #7
  %and4.i = and i32 %call3.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and4.i, 0
  br i1 %cmp5.i, label %if.then2.i.if.else_crit_edge, label %if.then2.i.if.end8.i_crit_edge

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then2.i.if.else_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end8.i:                                        ; preds = %if.then2.i.if.end8.i_crit_edge, %if.end.i34.if.end8.i_crit_edge
  %call9.i35 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %call10.i36 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %call11.i37 = call i32 @ixgbe_negotiate_fc(ptr noundef %hw, i32 noundef %call9.i35, i32 noundef %call10.i36, i32 noundef 268435456, i32 noundef 536870912, i32 noundef 1024, i32 noundef 2048) #7
  br label %out

sw.bb9:                                           ; preds = %if.end3
  %call10 = call zeroext i1 @ixgbe_device_supports_autoneg_fc(ptr noundef %hw)
  br i1 %call10, label %if.then11, label %sw.bb9.if.else_crit_edge

sw.bb9.if.else_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %technology_ability_reg.i) #7
  %17 = ptrtoint ptr %technology_ability_reg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %technology_ability_reg.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lp_technology_ability_reg.i) #7
  %18 = ptrtoint ptr %lp_technology_ability_reg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %lp_technology_ability_reg.i, align 2
  %read_reg.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %19 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg.i, align 4
  %call.i39 = call i32 %20(ptr noundef %hw, i32 noundef 16, i32 noundef 7, ptr noundef nonnull %technology_ability_reg.i) #7
  %21 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg.i, align 4
  %call4.i = call i32 %22(ptr noundef %hw, i32 noundef 19, i32 noundef 7, ptr noundef nonnull %lp_technology_ability_reg.i) #7
  %23 = ptrtoint ptr %technology_ability_reg.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %technology_ability_reg.i, align 2
  %conv.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %lp_technology_ability_reg.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %lp_technology_ability_reg.i, align 2
  %conv5.i = zext i16 %26 to i32
  %call6.i = call i32 @ixgbe_negotiate_fc(ptr noundef %hw, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef 1024, i32 noundef 2048, i32 noundef 1024, i32 noundef 2048) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lp_technology_ability_reg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %technology_ability_reg.i) #7
  br label %out

out:                                              ; preds = %if.then11, %if.end8.i, %if.end.i
  %ret_val.0 = phi i32 [ %call6.i, %if.then11 ], [ %call11.i, %if.end.i ], [ %call11.i37, %if.end8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %cmp14 = icmp eq i32 %ret_val.0, 0
  br i1 %cmp14, label %if.then15, label %out.if.else_crit_edge

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then15:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %fc_was_autonegged = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %fc_was_autonegged to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %fc_was_autonegged, align 1
  br label %if.end21

if.else:                                          ; preds = %out.if.else_crit_edge, %sw.bb9.if.else_crit_edge, %if.then2.i.if.else_crit_edge, %sw.bb7.if.else_crit_edge, %if.then4.if.else_crit_edge, %sw.bb.if.else_crit_edge, %if.end3.if.else_crit_edge, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %fc_was_autonegged18 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 6
  %28 = ptrtoint ptr %fc_was_autonegged18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %fc_was_autonegged18, align 1
  %requested_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %requested_mode, align 4
  %current_mode = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 4, i32 7
  %31 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %current_mode, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_acquire_swfw_sync(ptr noundef %hw, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %mask, 5
  %or = or i32 %shl, %mask
  %mvals.i33 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %ixgbe_release_eeprom_semaphore.exit42.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %ixgbe_release_eeprom_semaphore.exit42.for.body_crit_edge ]
  %call = tail call fastcc i32 @ixgbe_get_eeprom_semaphore(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 65888) #7
  %and = and i32 %call1, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then3.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then3.ixgbe_write_reg.exit_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %or4 = or i32 %call1, %mask
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or4) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 65888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then3.ixgbe_write_reg.exit_crit_edge
  %3 = ptrtoint ptr %mvals.i33 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mvals.i33, align 4
  %arrayidx.i = getelementptr i32, ptr %4, i32 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %6) #7
  %7 = ptrtoint ptr %mvals.i33 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvals.i33, align 4
  %arrayidx2.i = getelementptr i32, ptr %8, i32 4
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i, align 4
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %ixgbe_write_reg.exit.ixgbe_release_eeprom_semaphore.exit_crit_edge, label %do.body1.i.i

ixgbe_write_reg.exit.ixgbe_release_eeprom_semaphore.exit_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_release_eeprom_semaphore.exit

do.body1.i.i:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #7, !srcloc !246
  br label %ixgbe_release_eeprom_semaphore.exit

ixgbe_release_eeprom_semaphore.exit:              ; preds = %do.body1.i.i, %ixgbe_write_reg.exit.ixgbe_release_eeprom_semaphore.exit_crit_edge
  %call3.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %14 = ptrtoint ptr %mvals.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mvals.i33, align 4
  %arrayidx.i34 = getelementptr i32, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i34, align 4
  %call.i35 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %17) #7
  %18 = ptrtoint ptr %mvals.i33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mvals.i33, align 4
  %arrayidx2.i36 = getelementptr i32, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx2.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2.i36, align 4
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i37 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i37, label %if.else.ixgbe_release_eeprom_semaphore.exit42_crit_edge, label %do.body1.i.i40

if.else.ixgbe_release_eeprom_semaphore.exit42_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_release_eeprom_semaphore.exit42

do.body1.i.i40:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and.i38 = and i32 %call.i35, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i38) #7
  %add.ptr.i.i39 = getelementptr i8, ptr %23, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 %24) #7, !srcloc !246
  br label %ixgbe_release_eeprom_semaphore.exit42

ixgbe_release_eeprom_semaphore.exit42:            ; preds = %do.body1.i.i40, %if.else.ixgbe_release_eeprom_semaphore.exit42_crit_edge
  %call3.i41 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %if.end12, label %ixgbe_release_eeprom_semaphore.exit42.for.body_crit_edge

ixgbe_release_eeprom_semaphore.exit42.for.body_crit_edge: ; preds = %ixgbe_release_eeprom_semaphore.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end12:                                         ; preds = %ixgbe_release_eeprom_semaphore.exit42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ixgbe_release_swfw_sync(ptr noundef %hw, i32 noundef %and)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %ixgbe_release_eeprom_semaphore.exit, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_release_eeprom_semaphore.exit ], [ -16, %if.end12 ], [ -16, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_get_eeprom_semaphore(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.0133 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #7
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.body43.preheader_crit_edge, label %if.end

for.body.for.body43.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43.preheader

if.end:                                           ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %do.body3, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body3:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_get_eeprom_semaphore, %if.then8)) #7
          to label %do.end11 [label %if.then8], !srcloc !244

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug377, ptr noundef %7, ptr noundef nonnull @.str.81) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3
  %8 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mvals, align 4
  %arrayidx.i = getelementptr i32, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %11) #7
  %12 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvals, align 4
  %arrayidx2.i = getelementptr i32, ptr %13, i32 4
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %do.end11.ixgbe_release_eeprom_semaphore.exit_crit_edge, label %do.body1.i.i

do.end11.ixgbe_release_eeprom_semaphore.exit_crit_edge: ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_release_eeprom_semaphore.exit

do.body1.i.i:                                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #7, !srcloc !246
  br label %ixgbe_release_eeprom_semaphore.exit

ixgbe_release_eeprom_semaphore.exit:              ; preds = %do.body1.i.i, %do.end11.ixgbe_release_eeprom_semaphore.exit_crit_edge
  %call3.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  %19 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mvals, align 4
  %arrayidx13 = getelementptr i32, ptr %20, i32 4
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx13, align 4
  %call14 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %22) #7
  %and15 = and i32 %call14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %ixgbe_release_eeprom_semaphore.exit.for.body43.preheader_crit_edge, label %do.body19

ixgbe_release_eeprom_semaphore.exit.for.body43.preheader_crit_edge: ; preds = %ixgbe_release_eeprom_semaphore.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43.preheader

for.body43.preheader:                             ; preds = %ixgbe_release_eeprom_semaphore.exit.for.body43.preheader_crit_edge, %for.body.for.body43.preheader_crit_edge
  br label %for.body43

do.body19:                                        ; preds = %ixgbe_release_eeprom_semaphore.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_get_eeprom_semaphore, %if.then31)) #7
          to label %cleanup [label %if.then31], !srcloc !244

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %back32 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %back32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back32, align 4
  %netdev33 = getelementptr inbounds %struct.ixgbe_adapter, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %netdev33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev33, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug378, ptr noundef %26, ptr noundef nonnull @.str.82) #7
  br label %cleanup

for.body43:                                       ; preds = %if.end55.for.body43_crit_edge, %for.body43.preheader
  %i.1134 = phi i32 [ %inc57, %if.end55.for.body43_crit_edge ], [ 0, %for.body43.preheader ]
  %27 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mvals, align 4
  %arrayidx45 = getelementptr i32, ptr %28, i32 4
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx45, align 4
  %call46 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %30) #7
  %31 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mvals, align 4
  %arrayidx48 = getelementptr i32, ptr %32, i32 4
  %33 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx48, align 4
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %for.body43.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body43.ixgbe_write_reg.exit_crit_edge:        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call46, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %36, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %37) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body43.ixgbe_write_reg.exit_crit_edge
  %38 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mvals, align 4
  %arrayidx50 = getelementptr i32, ptr %39, i32 4
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx50, align 4
  %call51 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %41) #7
  %and52 = and i32 %call51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end55, label %ixgbe_write_reg.exit.cleanup_crit_edge

ixgbe_write_reg.exit.cleanup_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %ixgbe_write_reg.exit
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  %inc57 = add nuw nsw i32 %i.1134, 1
  %exitcond135.not = icmp eq i32 %inc57, 2000
  br i1 %exitcond135.not, label %do.body62, label %if.end55.for.body43_crit_edge

if.end55.for.body43_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43

do.body62:                                        ; preds = %if.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_get_eeprom_semaphore, %if.then74)) #7
          to label %do.end81 [label %if.then74], !srcloc !244

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %back75 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %42 = ptrtoint ptr %back75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %back75, align 4
  %netdev76 = getelementptr inbounds %struct.ixgbe_adapter, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %netdev76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev76, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug379, ptr noundef %45, ptr noundef nonnull @.str.83) #7
  br label %do.end81

do.end81:                                         ; preds = %if.then74, %do.body62
  %46 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mvals, align 4
  %arrayidx.i118 = getelementptr i32, ptr %47, i32 4
  %48 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i118, align 4
  %call.i119 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %49) #7
  %50 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mvals, align 4
  %arrayidx2.i120 = getelementptr i32, ptr %51, i32 4
  %52 = ptrtoint ptr %arrayidx2.i120 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx2.i120, align 4
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i121 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i121, label %do.end81.ixgbe_release_eeprom_semaphore.exit126_crit_edge, label %do.body1.i.i124

do.end81.ixgbe_release_eeprom_semaphore.exit126_crit_edge: ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_release_eeprom_semaphore.exit126

do.body1.i.i124:                                  ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #9
  %and.i122 = and i32 %call.i119, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %and.i122) #7
  %add.ptr.i.i123 = getelementptr i8, ptr %55, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 %56) #7, !srcloc !246
  br label %ixgbe_release_eeprom_semaphore.exit126

ixgbe_release_eeprom_semaphore.exit126:           ; preds = %do.body1.i.i124, %do.end81.ixgbe_release_eeprom_semaphore.exit126_crit_edge
  %call3.i125 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_release_eeprom_semaphore.exit126, %ixgbe_write_reg.exit.cleanup_crit_edge, %if.then31, %do.body19
  %retval.0 = phi i32 [ -1, %ixgbe_release_eeprom_semaphore.exit126 ], [ -1, %if.then31 ], [ -1, %do.body19 ], [ 0, %ixgbe_write_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_release_swfw_sync(ptr noundef %hw, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_get_eeprom_semaphore(ptr noundef %hw)
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 65888) #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %mask, -1
  %and = and i32 %call1, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 65888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %mvals.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %3 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mvals.i, align 4
  %arrayidx.i = getelementptr i32, ptr %4, i32 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %6) #7
  %7 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvals.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %8, i32 4
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i, align 4
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %ixgbe_write_reg.exit.ixgbe_release_eeprom_semaphore.exit_crit_edge, label %do.body1.i.i

ixgbe_write_reg.exit.ixgbe_release_eeprom_semaphore.exit_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_release_eeprom_semaphore.exit

do.body1.i.i:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #7, !srcloc !246
  br label %ixgbe_release_eeprom_semaphore.exit

ixgbe_release_eeprom_semaphore.exit:              ; preds = %do.body1.i.i, %ixgbe_write_reg.exit.ixgbe_release_eeprom_semaphore.exit_crit_edge
  %call3.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prot_autoc_read_generic(ptr noundef %hw, ptr nocapture noundef writeonly %locked, ptr nocapture noundef writeonly %reg_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %locked, align 1
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %1 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %reg_val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prot_autoc_write_generic(ptr noundef %hw, i32 noundef %reg_val, i1 noundef zeroext %locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %reg_val) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 17056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_disable_rx_buff_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 36096) #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.for.body.preheader_crit_edge, label %do.body1.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 36096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !246
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.else.for.body_crit_edge, %for.body.preheader
  %i.023 = phi i32 [ %inc, %if.else.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 36100) #7
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %do.body4, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_disable_rx_buff_generic.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_disable_rx_buff_generic, %if.then9)) #7
          to label %if.end13 [label %if.then9], !srcloc !244

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_disable_rx_buff_generic.__UNIQUE_ID_ddebug410, ptr noundef %7, ptr noundef nonnull @.str.46) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %do.body4, %for.body.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_enable_rx_buff_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 36096) #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 36096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_enable_rx_dma_generic(ptr noundef %hw, i32 noundef %regval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %regval, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %disable_rx = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 59
  %enable_rx = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 60
  %disable_rx.sink = select i1 %tobool.not, ptr %disable_rx, ptr %enable_rx
  %0 = ptrtoint ptr %disable_rx.sink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disable_rx.sink, align 4
  tail call void %1(ptr noundef %hw) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_blink_led_start_generic(ptr noundef %hw, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  %autoc_reg = alloca i32, align 4
  %locked = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #7
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %speed, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %link_up, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %autoc_reg) #7
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %2 = ptrtoint ptr %autoc_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %autoc_reg, align 4
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 512) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %locked) #7
  %3 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %locked, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp ugt i32 %index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %4 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_link, align 4
  %call2 = call i32 %5(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %link_up, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then3:                                         ; preds = %if.end
  %prot_autoc_read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 21
  %8 = ptrtoint ptr %prot_autoc_read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prot_autoc_read, align 4
  %call6 = call i32 %9(ptr noundef %hw, ptr noundef nonnull %locked, ptr noundef nonnull %autoc_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  %10 = ptrtoint ptr %autoc_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %autoc_reg, align 4
  %or10 = or i32 %11, 4097
  store i32 %or10, ptr %autoc_reg, align 4
  %prot_autoc_write = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 22
  %12 = ptrtoint ptr %prot_autoc_write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prot_autoc_write, align 4
  %14 = ptrtoint ptr %locked to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %locked, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13 = icmp ne i8 %15, 0
  %call14 = call i32 %13(ptr noundef %hw, i32 noundef %or10, i1 noundef zeroext %tobool13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end.if.end19_crit_edge
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end19.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end19.ixgbe_write_reg.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl nuw nsw i32 %index, 3
  %shl = shl nuw nsw i32 15, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %call1, %neg
  %shl21 = shl nuw i32 128, %mul
  %or22 = or i32 %and, %shl21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  call void @arm_heavy_mb() #7
  %18 = call i32 @llvm.bswap.i32(i32 %or22) #7
  %add.ptr.i = getelementptr i8, ptr %17, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end19.ixgbe_write_reg.exit_crit_edge
  %call23 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit, %if.end9.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit ], [ -5, %entry.cleanup_crit_edge ], [ %call6, %if.then3.cleanup_crit_edge ], [ %call14, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %locked) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %autoc_reg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_blink_led_stop_generic(ptr noundef %hw, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %autoc_reg = alloca i32, align 4
  %locked = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %autoc_reg) #7
  %0 = ptrtoint ptr %autoc_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoc_reg, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 512) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %locked) #7
  %1 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %locked, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp ugt i32 %index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %prot_autoc_read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 21
  %2 = ptrtoint ptr %prot_autoc_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prot_autoc_read, align 4
  %call1 = call i32 %3(ptr noundef %hw, ptr noundef nonnull %locked, ptr noundef nonnull %autoc_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %autoc_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoc_reg, align 4
  %and = and i32 %5, -4098
  %or = or i32 %and, 4096
  store i32 %or, ptr %autoc_reg, align 4
  %prot_autoc_write = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 22
  %6 = ptrtoint ptr %prot_autoc_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prot_autoc_write, align 4
  %8 = ptrtoint ptr %locked to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %locked, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6 = icmp ne i8 %9, 0
  %call7 = call i32 %7(ptr noundef %hw, i32 noundef %or, i1 noundef zeroext %tobool6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end10.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end10.ixgbe_write_reg.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl nuw nsw i32 %index, 3
  %12 = shl nuw i32 143, %mul
  %13 = xor i32 %12, -1
  %and15 = and i32 %call, %13
  %shl17 = shl nuw nsw i32 4, %mul
  %or18 = or i32 %and15, %shl17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  call void @arm_heavy_mb() #7
  %14 = call i32 @llvm.bswap.i32(i32 %or18) #7
  %add.ptr.i = getelementptr i8, ptr %11, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end10.ixgbe_write_reg.exit_crit_edge
  %call19 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit ], [ -5, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call7, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %locked) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %autoc_reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_get_san_mac_addr_generic(ptr noundef %hw, ptr nocapture noundef writeonly %san_mac_addr) local_unnamed_addr #0 align 64 {
entry:
  %san_mac_data = alloca i16, align 2
  %san_mac_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %san_mac_data) #7
  %0 = ptrtoint ptr %san_mac_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %san_mac_data, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %san_mac_offset) #7
  %1 = ptrtoint ptr %san_mac_offset to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %san_mac_offset, align 2, !annotation !242
  %read.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i16 noundef zeroext 40, ptr noundef nonnull %san_mac_offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %ixgbe_get_san_mac_addr_offset.exit

ixgbe_get_san_mac_addr_offset.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef 40) #10
  br label %san_mac_addr_clr

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %san_mac_offset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %san_mac_offset, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %9, label %if.end [
    i16 0, label %lor.lhs.false.san_mac_addr_clr_crit_edge
    i16 -1, label %lor.lhs.false.san_mac_addr_clr_crit_edge66
  ]

lor.lhs.false.san_mac_addr_clr_crit_edge66:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %san_mac_addr_clr

lor.lhs.false.san_mac_addr_clr_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %san_mac_addr_clr

if.end:                                           ; preds = %lor.lhs.false
  %set_lan_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 11
  %11 = ptrtoint ptr %set_lan_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_lan_id, align 4
  call void %12(ptr noundef %hw) #7
  %func = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 3
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %san_mac_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %san_mac_offset, align 2
  %add = add i16 %16, 3
  store i16 %add, ptr %san_mac_offset, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %19 = ptrtoint ptr %san_mac_offset to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %san_mac_offset, align 2
  %call19 = call i32 %18(ptr noundef %hw, i16 noundef zeroext %20, ptr noundef nonnull %san_mac_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %cond.end.if.then21_crit_edge

cond.end.if.then21_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %if.end23.1.if.then21_crit_edge, %if.end23.if.then21_crit_edge, %cond.end.if.then21_crit_edge
  %call19.lcssa = phi i32 [ %call19, %cond.end.if.then21_crit_edge ], [ %call19.1, %if.end23.if.then21_crit_edge ], [ %call19.2, %if.end23.1.if.then21_crit_edge ]
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %21 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev, align 128
  %25 = ptrtoint ptr %san_mac_offset to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %san_mac_offset, align 2
  %conv22 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.47, i32 noundef %conv22) #10
  br label %san_mac_addr_clr

if.end23:                                         ; preds = %cond.end
  %27 = ptrtoint ptr %san_mac_data to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %san_mac_data, align 2
  %conv24 = trunc i16 %28 to i8
  %29 = ptrtoint ptr %san_mac_addr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv24, ptr %san_mac_addr, align 1
  %30 = lshr i16 %28, 8
  %conv27 = trunc i16 %30 to i8
  %arrayidx31 = getelementptr i8, ptr %san_mac_addr, i32 1
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv27, ptr %arrayidx31, align 1
  %32 = ptrtoint ptr %san_mac_offset to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %san_mac_offset, align 2
  %inc = add i16 %33, 1
  store i16 %inc, ptr %san_mac_offset, align 2
  %34 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i, align 4
  %call19.1 = call i32 %35(ptr noundef %hw, i16 noundef zeroext %inc, ptr noundef nonnull %san_mac_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %tobool20.not.1 = icmp eq i32 %call19.1, 0
  br i1 %tobool20.not.1, label %if.end23.1, label %if.end23.if.then21_crit_edge

if.end23.if.then21_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.end23.1:                                       ; preds = %if.end23
  %36 = ptrtoint ptr %san_mac_data to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %san_mac_data, align 2
  %conv24.1 = trunc i16 %37 to i8
  %arrayidx.1 = getelementptr i8, ptr %san_mac_addr, i32 2
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv24.1, ptr %arrayidx.1, align 1
  %39 = lshr i16 %37, 8
  %conv27.1 = trunc i16 %39 to i8
  %arrayidx31.1 = getelementptr i8, ptr %san_mac_addr, i32 3
  %40 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv27.1, ptr %arrayidx31.1, align 1
  %41 = ptrtoint ptr %san_mac_offset to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %san_mac_offset, align 2
  %inc.1 = add i16 %42, 1
  store i16 %inc.1, ptr %san_mac_offset, align 2
  %43 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read.i, align 4
  %call19.2 = call i32 %44(ptr noundef %hw, i16 noundef zeroext %inc.1, ptr noundef nonnull %san_mac_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2)
  %tobool20.not.2 = icmp eq i32 %call19.2, 0
  br i1 %tobool20.not.2, label %if.end23.2, label %if.end23.1.if.then21_crit_edge

if.end23.1.if.then21_crit_edge:                   ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.end23.2:                                       ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %san_mac_data to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %san_mac_data, align 2
  %conv24.2 = trunc i16 %46 to i8
  %arrayidx.2 = getelementptr i8, ptr %san_mac_addr, i32 4
  %47 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv24.2, ptr %arrayidx.2, align 1
  %48 = lshr i16 %46, 8
  %conv27.2 = trunc i16 %48 to i8
  %arrayidx31.2 = getelementptr i8, ptr %san_mac_addr, i32 5
  %49 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv27.2, ptr %arrayidx31.2, align 1
  br label %cleanup

san_mac_addr_clr:                                 ; preds = %if.then21, %lor.lhs.false.san_mac_addr_clr_crit_edge, %lor.lhs.false.san_mac_addr_clr_crit_edge66, %ixgbe_get_san_mac_addr_offset.exit
  %ret_val.0 = phi i32 [ %call.i, %ixgbe_get_san_mac_addr_offset.exit ], [ 0, %lor.lhs.false.san_mac_addr_clr_crit_edge ], [ %call19.lcssa, %if.then21 ], [ 0, %lor.lhs.false.san_mac_addr_clr_crit_edge66 ]
  %50 = call ptr @memset(ptr %san_mac_addr, i32 255, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %san_mac_addr_clr, %if.end23.2
  %retval.0 = phi i32 [ %ret_val.0, %san_mac_addr_clr ], [ 0, %if.end23.2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %san_mac_offset) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %san_mac_data) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ixgbe_get_pcie_msix_count_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 6
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.ixgbe_get_pcie_msix_count_generic, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.gep18 = getelementptr inbounds [6 x i32], ptr @switch.table.ixgbe_get_pcie_msix_count_generic.87, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load19 = load i32, ptr %switch.gep18, align 4
  %call = tail call zeroext i16 @ixgbe_read_pci_cfg_word(ptr noundef %hw, i32 noundef %switch.load19) #7
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %call.op = and i16 %call, 2047
  %7 = select i1 %tobool.not.i, i16 0, i16 %call.op
  %inc = add nuw nsw i16 %7, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %switch.load)
  %cmp.not = icmp ult i16 %7, %switch.load
  %msix_count.1 = select i1 %cmp.not, i16 %inc, i16 %switch.load
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %msix_count.1, %switch.lookup ], [ 1, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_clear_vmdq_generic(ptr noundef %hw, i32 noundef %rar, i32 noundef %vmdq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %0 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rar_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rar)
  %cmp.not = icmp ugt i32 %1, %rar
  br i1 %cmp.not, label %if.end7, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_clear_vmdq_generic.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_clear_vmdq_generic, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !244

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_clear_vmdq_generic.__UNIQUE_ID_ddebug411, ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %rar) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %mul = shl i32 %rar, 3
  %add = add i32 %mul, 42496
  %call8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add) #7
  %add10 = add i32 %mul, 42500
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add10) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool15.not = icmp eq i32 %call8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool16.not = icmp eq i32 %call11, 0
  %or.cond = select i1 %tobool15.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vmdq)
  %cmp19 = icmp eq i32 %vmdq, -1
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  br i1 %tobool15.not, label %if.then20.if.end25_crit_edge, label %if.then22

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %if.then20
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then22.if.end25_crit_edge, label %do.body1.i

if.then22.if.end25_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.body1.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !246
  br label %if.end25

if.end25:                                         ; preds = %do.body1.i, %if.then22.if.end25_crit_edge, %if.then20.if.end25_crit_edge
  br i1 %tobool16.not, label %if.end25.if.end42_crit_edge, label %if.then27

if.end25.if.end42_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then27:                                        ; preds = %if.end25
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i92 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i92, label %if.then27.if.end42_crit_edge, label %do.body1.i94

if.then27.if.end42_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.body1.i94:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i93 = getelementptr i8, ptr %11, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 0) #7, !srcloc !246
  br label %if.end42

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %vmdq)
  %cmp31 = icmp ult i32 %vmdq, 32
  br i1 %cmp31, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.else
  %shl = shl nuw i32 1, %vmdq
  %neg = xor i32 %shl, -1
  %and = and i32 %call8, %neg
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i96 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i96, label %if.then32.if.end42_crit_edge, label %do.body1.i98

if.then32.if.end42_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.body1.i98:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i97 = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %14) #7, !srcloc !246
  br label %if.end42

if.else35:                                        ; preds = %if.else
  %sub = add i32 %vmdq, -32
  %shl36 = shl nuw i32 1, %sub
  %neg37 = xor i32 %shl36, -1
  %and38 = and i32 %call11, %neg37
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i100 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i100, label %if.else35.if.end42_crit_edge, label %do.body1.i102

if.else35.if.end42_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.body1.i102:                                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %and38) #7
  %add.ptr.i101 = getelementptr i8, ptr %16, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %17) #7, !srcloc !246
  br label %if.end42

if.end42:                                         ; preds = %do.body1.i102, %if.else35.if.end42_crit_edge, %do.body1.i98, %if.then32.if.end42_crit_edge, %do.body1.i94, %if.then27.if.end42_crit_edge, %if.end25.if.end42_crit_edge
  %mpsar_hi.0 = phi i32 [ 0, %if.end25.if.end42_crit_edge ], [ 0, %if.then27.if.end42_crit_edge ], [ 0, %do.body1.i94 ], [ %call11, %if.then32.if.end42_crit_edge ], [ %call11, %do.body1.i98 ], [ %and38, %if.else35.if.end42_crit_edge ], [ %and38, %do.body1.i102 ]
  %mpsar_lo.1 = phi i32 [ 0, %if.end25.if.end42_crit_edge ], [ 0, %if.then27.if.end42_crit_edge ], [ 0, %do.body1.i94 ], [ %and, %if.then32.if.end42_crit_edge ], [ %and, %do.body1.i98 ], [ %call8, %if.else35.if.end42_crit_edge ], [ %call8, %do.body1.i102 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mpsar_lo.1)
  %cmp43 = icmp ne i32 %mpsar_lo.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mpsar_hi.0)
  %cmp45 = icmp ne i32 %mpsar_hi.0, 0
  %or.cond90 = select i1 %cmp43, i1 true, i1 %cmp45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rar)
  %cmp47.not = icmp eq i32 %rar, 0
  %or.cond91 = or i1 %cmp47.not, %or.cond90
  br i1 %or.cond91, label %if.end42.cleanup_crit_edge, label %land.lhs.true48

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true48:                                  ; preds = %if.end42
  %san_mac_rar_index = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 22
  %18 = ptrtoint ptr %san_mac_rar_index to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %san_mac_rar_index, align 1
  %conv = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %rar)
  %cmp50.not = icmp eq i32 %conv, %rar
  br i1 %cmp50.not, label %land.lhs.true48.cleanup_crit_edge, label %if.then52

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then52:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  %clear_rar = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 39
  %20 = ptrtoint ptr %clear_rar to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clear_rar, align 4
  %call54 = tail call i32 %21(ptr noundef %hw, i32 noundef %rar) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %land.lhs.true48.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %do.body1
  %retval.0 = phi i32 [ -32, %if.then4 ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %land.lhs.true48.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ -32, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_set_vmdq_generic(ptr noundef %hw, i32 noundef %rar, i32 noundef %vmdq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %0 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rar_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rar)
  %cmp.not = icmp ugt i32 %1, %rar
  br i1 %cmp.not, label %if.end7, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_vmdq_generic.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_vmdq_generic, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !244

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_vmdq_generic.__UNIQUE_ID_ddebug412, ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %rar) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %vmdq)
  %cmp8 = icmp ult i32 %vmdq, 32
  %mul = shl i32 %rar, 3
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %add = add i32 %mul, 42496
  %call10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then9.cleanup_crit_edge, label %do.body1.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %vmdq
  %or = or i32 %call10, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !246
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %add14 = add i32 %mul, 42500
  %call15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add14) #7
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i37 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i37, label %if.else.cleanup_crit_edge, label %do.body1.i39

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i39:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %vmdq, -32
  %shl16 = shl nuw i32 1, %sub
  %or17 = or i32 %call15, %shl16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or17) #7
  %add.ptr.i38 = getelementptr i8, ptr %10, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %11) #7, !srcloc !246
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i39, %if.else.cleanup_crit_edge, %do.body1.i, %if.then9.cleanup_crit_edge, %if.then4, %do.body1
  %retval.0 = phi i32 [ -32, %if.then4 ], [ -32, %do.body1 ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %do.body1.i ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.body1.i39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_set_vmdq_san_mac_generic(ptr noundef %hw, i32 noundef %vmdq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %san_mac_rar_index = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 22
  %0 = ptrtoint ptr %san_mac_rar_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %san_mac_rar_index, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %vmdq)
  %cmp = icmp ult i32 %vmdq, 32
  %mul = shl nuw nsw i32 %conv, 3
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i, label %if.then.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %vmdq
  %add = add nuw nsw i32 %mul, 42496
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then.ixgbe_write_reg.exit_crit_edge
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i18 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i18, label %ixgbe_write_reg.exit.if.end_crit_edge, label %do.body1.i20

ixgbe_write_reg.exit.if.end_crit_edge:            ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1.i20:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add3 = add nuw nsw i32 %mul, 42500
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i19 = getelementptr i8, ptr %6, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #7, !srcloc !246
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i, label %if.else.ixgbe_write_reg.exit25_crit_edge, label %do.body1.i24

if.else.ixgbe_write_reg.exit25_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit25

do.body1.i24:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add5 = add nuw nsw i32 %mul, 42496
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i23 = getelementptr i8, ptr %3, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit25

ixgbe_write_reg.exit25:                           ; preds = %do.body1.i24, %if.else.ixgbe_write_reg.exit25_crit_edge
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i26 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i26, label %ixgbe_write_reg.exit25.if.end_crit_edge, label %do.body1.i28

ixgbe_write_reg.exit25.if.end_crit_edge:          ; preds = %ixgbe_write_reg.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1.i28:                                     ; preds = %ixgbe_write_reg.exit25
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %vmdq, -32
  %shl8 = shl nuw i32 1, %sub
  %add7 = add nuw nsw i32 %mul, 42500
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %shl8) #7
  %add.ptr.i27 = getelementptr i8, ptr %8, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %9) #7, !srcloc !246
  br label %if.end

if.end:                                           ; preds = %do.body1.i28, %ixgbe_write_reg.exit25.if.end_crit_edge, %do.body1.i20, %ixgbe_write_reg.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_uta_tables_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %ixgbe_write_reg.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.ixgbe_write_reg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %i.03, 2
  %add = add nuw nsw i32 %mul, 62464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.ixgbe_write_reg.exit_crit_edge
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %ixgbe_write_reg.exit.for.body_crit_edge

ixgbe_write_reg.exit.for.body_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_set_vfta_generic(ptr noundef %hw, i32 noundef %vlan, i32 noundef %vind, i1 noundef zeroext %vlan_on, i1 noundef zeroext %vlvf_bypass) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %vlan)
  %cmp = icmp ugt i32 %vlan, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %vind)
  %cmp2 = icmp ugt i32 %vind, 63
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %vlan, 31
  %shl = shl nuw i32 1, %rem
  %0 = lshr i32 %vlan, 3
  %mul = and i32 %0, 536870908
  %add = add nuw nsw i32 %mul, 40960
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add) #7
  %neg = sext i1 %vlan_on to i32
  %cond = xor i32 %call, %neg
  %and = and i32 %cond, %shl
  %xor = xor i32 %and, %call
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 20912) #7
  %and4 = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.vfta_update_crit_edge, label %if.end7

if.end.vfta_update_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfta_update

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlan)
  %cmp.i = icmp eq i32 %vlan, 0
  br i1 %cmp.i, label %if.end7.if.end15_crit_edge, label %if.end.i

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end.i:                                         ; preds = %if.end7
  %cond.i = select i1 %vlvf_bypass, i32 -25, i32 0
  %or.i = or i32 %vlan, -2147483648
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %if.end.i
  %dec39.i = phi i32 [ 63, %if.end.i ], [ %dec.i, %if.end4.i.for.body.i_crit_edge ]
  %first_empty_slot.038.i = phi i32 [ %cond.i, %if.end.i ], [ %first_empty_slot.1.i, %if.end4.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %dec39.i, 2
  %add.i = add nuw nsw i32 %mul.i, 61696
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %or.i)
  %cmp2.i = icmp eq i32 %call.i, %or.i
  br i1 %cmp2.i, label %for.body.i.ixgbe_find_vlvf_slot.exit_crit_edge, label %if.end4.i

for.body.i.ixgbe_find_vlvf_slot.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_find_vlvf_slot.exit

if.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_empty_slot.038.i)
  %tobool5.not.i = icmp eq i32 %first_empty_slot.038.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 %dec39.i, i32 0
  %first_empty_slot.1.i = select i1 %tobool5.not.i, i32 %spec.select.i, i32 %first_empty_slot.038.i
  %dec.i = add nsw i32 %dec39.i, -1
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %for.end.i, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_empty_slot.1.i)
  %tobool9.not.i = icmp eq i32 %first_empty_slot.1.i, 0
  br i1 %tobool9.not.i, label %do.body11.i, label %for.end.i.ixgbe_find_vlvf_slot.exit_crit_edge

for.end.i.ixgbe_find_vlvf_slot.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_find_vlvf_slot.exit

do.body11.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_find_vlvf_slot.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_vfta_generic, %ixgbe_find_vlvf_slot.exit.thread)) #7
          to label %ixgbe_find_vlvf_slot.exit [label %ixgbe_find_vlvf_slot.exit.thread], !srcloc !244

ixgbe_find_vlvf_slot.exit.thread:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_find_vlvf_slot.__UNIQUE_ID_ddebug413, ptr noundef %4, ptr noundef nonnull @.str.85) #7
  br label %if.then11

ixgbe_find_vlvf_slot.exit:                        ; preds = %do.body11.i, %for.end.i.ixgbe_find_vlvf_slot.exit_crit_edge, %for.body.i.ixgbe_find_vlvf_slot.exit_crit_edge
  %retval.0.i = phi i32 [ %first_empty_slot.1.i, %for.end.i.ixgbe_find_vlvf_slot.exit_crit_edge ], [ -25, %do.body11.i ], [ %dec39.i, %for.body.i.ixgbe_find_vlvf_slot.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp10 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp10, label %ixgbe_find_vlvf_slot.exit.if.then11_crit_edge, label %ixgbe_find_vlvf_slot.exit.if.end15_crit_edge

ixgbe_find_vlvf_slot.exit.if.end15_crit_edge:     ; preds = %ixgbe_find_vlvf_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

ixgbe_find_vlvf_slot.exit.if.then11_crit_edge:    ; preds = %ixgbe_find_vlvf_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %ixgbe_find_vlvf_slot.exit.if.then11_crit_edge, %ixgbe_find_vlvf_slot.exit.thread
  %retval.0.i134 = phi i32 [ -25, %ixgbe_find_vlvf_slot.exit.thread ], [ %retval.0.i, %ixgbe_find_vlvf_slot.exit.if.then11_crit_edge ]
  br i1 %vlvf_bypass, label %if.then11.vfta_update_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.vfta_update_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfta_update

if.end15:                                         ; preds = %ixgbe_find_vlvf_slot.exit.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %retval.0.i138 = phi i32 [ %retval.0.i, %ixgbe_find_vlvf_slot.exit.if.end15_crit_edge ], [ 0, %if.end7.if.end15_crit_edge ]
  %mul16 = shl nuw i32 %retval.0.i138, 1
  %div17111 = lshr i32 %vind, 5
  %add18 = add i32 %mul16, %div17111
  %mul19 = shl i32 %add18, 2
  %add20 = add i32 %mul19, 61952
  %call21 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add20) #7
  %rem22 = and i32 %vind, 31
  %shl23 = shl nuw i32 1, %rem22
  %or = or i32 %call21, %shl23
  br i1 %vlan_on, label %if.end15.vlvf_update_crit_edge, label %if.end26

if.end15.vlvf_update_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %vlvf_update

if.end26:                                         ; preds = %if.end15
  %xor29 = xor i32 %or, %shl23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor29)
  %tobool30.not = icmp eq i32 %xor29, 0
  br i1 %tobool30.not, label %land.lhs.true, label %if.end26.vlvf_update_crit_edge

if.end26.vlvf_update_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %vlvf_update

land.lhs.true:                                    ; preds = %if.end26
  %add32 = sub nsw i32 1, %div17111
  %sub = add i32 %add32, %mul16
  %mul34 = shl i32 %sub, 2
  %add35 = add i32 %mul34, 61952
  %call36 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true.vlvf_update_crit_edge

land.lhs.true.vlvf_update_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %vlvf_update

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.then38.if.end43_crit_edge, label %if.then40

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then40:                                        ; preds = %if.then38
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then40.if.end43_crit_edge, label %do.body1.i

if.then40.if.end43_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body1.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %xor) #7
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !246
  br label %if.end43

if.end43:                                         ; preds = %do.body1.i, %if.then40.if.end43_crit_edge, %if.then38.if.end43_crit_edge
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i112 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i112, label %if.end43.ixgbe_write_reg.exit115_crit_edge, label %do.body1.i114

if.end43.ixgbe_write_reg.exit115_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit115

do.body1.i114:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %mul44 = shl i32 %retval.0.i138, 2
  %add45 = add i32 %mul44, 61696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i113 = getelementptr i8, ptr %9, i32 %add45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit115

ixgbe_write_reg.exit115:                          ; preds = %do.body1.i114, %if.end43.ixgbe_write_reg.exit115_crit_edge
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i116 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i116, label %ixgbe_write_reg.exit115.cleanup_crit_edge, label %do.body1.i118

ixgbe_write_reg.exit115.cleanup_crit_edge:        ; preds = %ixgbe_write_reg.exit115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i118:                                    ; preds = %ixgbe_write_reg.exit115
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i117 = getelementptr i8, ptr %11, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 0) #7, !srcloc !246
  br label %cleanup

vlvf_update:                                      ; preds = %land.lhs.true.vlvf_update_crit_edge, %if.end26.vlvf_update_crit_edge, %if.end15.vlvf_update_crit_edge
  %vfta_delta.0 = phi i32 [ %and, %if.end15.vlvf_update_crit_edge ], [ 0, %land.lhs.true.vlvf_update_crit_edge ], [ 0, %if.end26.vlvf_update_crit_edge ]
  %bits.0 = phi i32 [ %or, %if.end15.vlvf_update_crit_edge ], [ 0, %land.lhs.true.vlvf_update_crit_edge ], [ %xor29, %if.end26.vlvf_update_crit_edge ]
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i120 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i120, label %vlvf_update.ixgbe_write_reg.exit123_crit_edge, label %do.body1.i122

vlvf_update.ixgbe_write_reg.exit123_crit_edge:    ; preds = %vlvf_update
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit123

do.body1.i122:                                    ; preds = %vlvf_update
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %bits.0) #7
  %add.ptr.i121 = getelementptr i8, ptr %13, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %14) #7, !srcloc !246
  br label %ixgbe_write_reg.exit123

ixgbe_write_reg.exit123:                          ; preds = %do.body1.i122, %vlvf_update.ixgbe_write_reg.exit123_crit_edge
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i124 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i124, label %ixgbe_write_reg.exit123.vfta_update_crit_edge, label %do.body1.i126

ixgbe_write_reg.exit123.vfta_update_crit_edge:    ; preds = %ixgbe_write_reg.exit123
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfta_update

do.body1.i126:                                    ; preds = %ixgbe_write_reg.exit123
  call void @__sanitizer_cov_trace_pc() #9
  %or59 = or i32 %vlan, -2147483648
  %mul57 = shl i32 %retval.0.i138, 2
  %add58 = add i32 %mul57, 61696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or59) #7
  %add.ptr.i125 = getelementptr i8, ptr %16, i32 %add58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %17) #7, !srcloc !246
  br label %vfta_update

vfta_update:                                      ; preds = %do.body1.i126, %ixgbe_write_reg.exit123.vfta_update_crit_edge, %if.then11.vfta_update_crit_edge, %if.end.vfta_update_crit_edge
  %vfta_delta.1 = phi i32 [ %and, %if.then11.vfta_update_crit_edge ], [ %and, %if.end.vfta_update_crit_edge ], [ %vfta_delta.0, %ixgbe_write_reg.exit123.vfta_update_crit_edge ], [ %vfta_delta.0, %do.body1.i126 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vfta_delta.1)
  %tobool60.not = icmp eq i32 %vfta_delta.1, 0
  br i1 %tobool60.not, label %vfta_update.cleanup_crit_edge, label %if.then61

vfta_update.cleanup_crit_edge:                    ; preds = %vfta_update
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then61:                                        ; preds = %vfta_update
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i128 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i128, label %if.then61.cleanup_crit_edge, label %do.body1.i130

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i130:                                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %xor) #7
  %add.ptr.i129 = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %20) #7, !srcloc !246
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i130, %if.then61.cleanup_crit_edge, %vfta_update.cleanup_crit_edge, %do.body1.i118, %ixgbe_write_reg.exit115.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %retval.0.i134, %if.then11.cleanup_crit_edge ], [ 0, %vfta_update.cleanup_crit_edge ], [ 0, %ixgbe_write_reg.exit115.cleanup_crit_edge ], [ 0, %do.body1.i118 ], [ 0, %if.then61.cleanup_crit_edge ], [ 0, %do.body1.i130 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_clear_vfta_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vft_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vft_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39.not = icmp eq i32 %1, 0
  br i1 %cmp39.not, label %entry.for.body3.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.body3.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.preheader

for.body:                                         ; preds = %ixgbe_write_reg.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %offset.040 = phi i32 [ %inc, %ixgbe_write_reg.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.ixgbe_write_reg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %offset.040, 2
  %add = add i32 %mul, 40960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.ixgbe_write_reg.exit_crit_edge
  %inc = add nuw i32 %offset.040, 1
  %4 = ptrtoint ptr %vft_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vft_size, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %ixgbe_write_reg.exit.for.body_crit_edge, label %ixgbe_write_reg.exit.for.body3.preheader_crit_edge

ixgbe_write_reg.exit.for.body3.preheader_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.preheader

ixgbe_write_reg.exit.for.body_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body3.preheader:                              ; preds = %ixgbe_write_reg.exit.for.body3.preheader_crit_edge, %entry.for.body3.preheader_crit_edge
  br label %for.body3

for.body3:                                        ; preds = %ixgbe_write_reg.exit38.for.body3_crit_edge, %for.body3.preheader
  %offset.142 = phi i32 [ %inc14, %ixgbe_write_reg.exit38.for.body3_crit_edge ], [ 0, %for.body3.preheader ]
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i27 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i27, label %for.body3.ixgbe_write_reg.exit30_crit_edge, label %do.body1.i29

for.body3.ixgbe_write_reg.exit30_crit_edge:       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit30

do.body1.i29:                                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  %mul4 = shl nuw nsw i32 %offset.142, 2
  %add5 = add nuw nsw i32 %mul4, 61696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i28 = getelementptr i8, ptr %7, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit30

ixgbe_write_reg.exit30:                           ; preds = %do.body1.i29, %for.body3.ixgbe_write_reg.exit30_crit_edge
  %mul6 = shl nuw nsw i32 %offset.142, 3
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i31 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i31, label %ixgbe_write_reg.exit30.ixgbe_write_reg.exit34_crit_edge, label %do.body1.i33

ixgbe_write_reg.exit30.ixgbe_write_reg.exit34_crit_edge: ; preds = %ixgbe_write_reg.exit30
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit34

do.body1.i33:                                     ; preds = %ixgbe_write_reg.exit30
  call void @__sanitizer_cov_trace_pc() #9
  %add8 = add nuw nsw i32 %mul6, 61952
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i32 = getelementptr i8, ptr %9, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit34

ixgbe_write_reg.exit34:                           ; preds = %do.body1.i33, %ixgbe_write_reg.exit30.ixgbe_write_reg.exit34_crit_edge
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i35 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i35, label %ixgbe_write_reg.exit34.ixgbe_write_reg.exit38_crit_edge, label %do.body1.i37

ixgbe_write_reg.exit34.ixgbe_write_reg.exit38_crit_edge: ; preds = %ixgbe_write_reg.exit34
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit38

do.body1.i37:                                     ; preds = %ixgbe_write_reg.exit34
  call void @__sanitizer_cov_trace_pc() #9
  %add12 = add nuw nsw i32 %mul6, 61956
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i36 = getelementptr i8, ptr %11, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit38

ixgbe_write_reg.exit38:                           ; preds = %do.body1.i37, %ixgbe_write_reg.exit34.ixgbe_write_reg.exit38_crit_edge
  %inc14 = add nuw nsw i32 %offset.142, 1
  %exitcond.not = icmp eq i32 %inc14, 64
  br i1 %exitcond.not, label %for.end15, label %ixgbe_write_reg.exit38.for.body3_crit_edge

ixgbe_write_reg.exit38.for.body3_crit_edge:       ; preds = %ixgbe_write_reg.exit38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end15:                                        ; preds = %ixgbe_write_reg.exit38
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_check_mac_link_generic(ptr noundef %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %link_up, i1 noundef zeroext %link_up_wait_to_complete) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %need_crosstalk_fix.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 20
  %0 = ptrtoint ptr %need_crosstalk_fix.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %need_crosstalk_fix.i, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end6_crit_edge, label %ixgbe_need_crosstalk_fix.exit

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

ixgbe_need_crosstalk_fix.exit:                    ; preds = %entry
  %get_media_type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %2 = ptrtoint ptr %get_media_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_media_type.i, align 4
  %call.i = tail call i32 %3(ptr noundef %hw) #7
  %call.off.i = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.then, label %ixgbe_need_crosstalk_fix.exit.if.end6_crit_edge

ixgbe_need_crosstalk_fix.exit.if.end6_crit_edge:  ; preds = %ixgbe_need_crosstalk_fix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %ixgbe_need_crosstalk_fix.exit
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %5, label %if.then.if.then5_crit_edge [
    i32 2, label %if.then.sw.epilog_crit_edge
    i32 5, label %if.then.sw.bb2_crit_edge
    i32 6, label %if.then.sw.bb2_crit_edge118
  ]

if.then.sw.bb2_crit_edge118:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.then.sw.bb2_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

sw.bb2:                                           ; preds = %if.then.sw.bb2_crit_edge, %if.then.sw.bb2_crit_edge118
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.then.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb2 ], [ 4, %if.then.sw.epilog_crit_edge ]
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %and4 = and i32 %call3, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %sw.epilog.if.then5_crit_edge, label %sw.epilog.if.end6_crit_edge

sw.epilog.if.end6_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.epilog.if.then5_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %sw.epilog.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %7 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %link_up, align 1
  br label %cleanup68

if.end6:                                          ; preds = %sw.epilog.if.end6_crit_edge, %ixgbe_need_crosstalk_fix.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #7
  %call8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %call8)
  %cmp.not = icmp eq i32 %call7, %call8
  br i1 %cmp.not, label %if.end6.if.end20_crit_edge, label %do.body10

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_check_mac_link_generic.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_check_mac_link_generic, %if.then16)) #7
          to label %if.end20 [label %if.then16], !srcloc !244

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_check_mac_link_generic.__UNIQUE_ID_ddebug414, ptr noundef %11, ptr noundef nonnull @.str.51, i32 noundef %call7, i32 noundef %call8) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %do.body10, %if.end6.if.end20_crit_edge
  br i1 %link_up_wait_to_complete, label %if.end20.for.body_crit_edge, label %if.else29

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

for.body:                                         ; preds = %if.else.for.body_crit_edge, %if.end20.for.body_crit_edge
  %links_reg.0109 = phi i32 [ %call28, %if.else.for.body_crit_edge ], [ %call8, %if.end20.for.body_crit_edge ]
  %i.0108 = phi i32 [ %inc, %if.else.for.body_crit_edge ], [ 0, %if.end20.for.body_crit_edge ]
  %and24 = and i32 %links_reg.0109, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %for.body.if.end35.sink.split_crit_edge

for.body.if.end35.sink.split_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.sink.split

if.else:                                          ; preds = %for.body
  %12 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %link_up, align 1
  tail call void @msleep(i32 noundef 100) #7
  %call28 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #7
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, 90
  br i1 %exitcond.not, label %if.else.if.end35_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.else29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %and30 = lshr i32 %call8, 30
  %13 = trunc i32 %and30 to i8
  %14 = and i8 %13, 1
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.else29, %for.body.if.end35.sink.split_crit_edge
  %.sink112 = phi i8 [ %14, %if.else29 ], [ 1, %for.body.if.end35.sink.split_crit_edge ]
  %links_reg.1.ph = phi i32 [ %call8, %if.else29 ], [ %links_reg.0109, %for.body.if.end35.sink.split_crit_edge ]
  %15 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink112, ptr %link_up, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else.if.end35_crit_edge
  %links_reg.1 = phi i32 [ %links_reg.1.ph, %if.end35.sink.split ], [ %call28, %if.else.if.end35_crit_edge ]
  %and36 = lshr i32 %links_reg.1, 28
  %16 = and i32 %and36, 3
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %16, label %if.end35.unreachabledefault [
    i32 3, label %sw.bb37
    i32 2, label %if.end35.cleanup68_crit_edge
    i32 1, label %sw.bb47
    i32 0, label %sw.bb57
  ]

if.end35.cleanup68_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

sw.bb37:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %type39 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %type39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp40 = icmp ult i32 %19, 4
  %and41 = and i32 %links_reg.1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond = select i1 %cmp40, i1 true, i1 %tobool42.not
  %.113 = select i1 %or.cond, i32 128, i32 1024
  br label %cleanup68

sw.bb47:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %type49 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %type49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp50 = icmp ult i32 %21, 4
  %and52 = and i32 %links_reg.1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %or.cond101 = select i1 %cmp50, i1 true, i1 %tobool53.not
  %.114 = select i1 %or.cond101, i32 8, i32 2048
  br label %cleanup68

sw.bb57:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %speed, align 4
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %23 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device_id, align 4
  %25 = and i16 %24, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5604, i16 %25)
  %switch = icmp eq i16 %25, 5604
  %spec.store.select = select i1 %switch, i32 2, i32 0
  br label %cleanup68

if.end35.unreachabledefault:                      ; preds = %if.end35
  unreachable

cleanup68:                                        ; preds = %sw.bb57, %sw.bb47, %sw.bb37, %if.end35.cleanup68_crit_edge, %if.then5
  %spec.store.select.sink = phi i32 [ %spec.store.select, %sw.bb57 ], [ 0, %if.then5 ], [ %.113, %sw.bb37 ], [ 32, %if.end35.cleanup68_crit_edge ], [ %.114, %sw.bb47 ]
  %26 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.store.select.sink, ptr %speed, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_get_wwn_prefix_generic(ptr noundef %hw, ptr noundef %wwnn_prefix, ptr noundef %wwpn_prefix) local_unnamed_addr #0 align 64 {
entry:
  %caps = alloca i16, align 2
  %alt_san_mac_blk_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %caps) #7
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %caps, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %alt_san_mac_blk_offset) #7
  %1 = ptrtoint ptr %alt_san_mac_blk_offset to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %alt_san_mac_blk_offset, align 2, !annotation !242
  %2 = ptrtoint ptr %wwnn_prefix to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %wwnn_prefix, align 2
  %3 = ptrtoint ptr %wwpn_prefix to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %wwpn_prefix, align 2
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %call = call i32 %5(ptr noundef %hw, i16 noundef zeroext 39, ptr noundef nonnull %alt_san_mac_blk_offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.wwn_prefix_err_crit_edge

entry.wwn_prefix_err_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wwn_prefix_err

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %alt_san_mac_blk_offset to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %alt_san_mac_blk_offset, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %7, label %if.end6 [
    i16 0, label %if.end.cleanup_crit_edge
    i16 -1, label %if.end.cleanup_crit_edge62
  ]

if.end.cleanup_crit_edge62:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read, align 4
  %call12 = call i32 %10(ptr noundef %hw, i16 noundef zeroext %7, ptr noundef nonnull %caps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.wwn_prefix_err_crit_edge

if.end6.wwn_prefix_err_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %wwn_prefix_err

if.end15:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %caps, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool17.not = icmp eq i16 %13, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %alt_san_mac_blk_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %alt_san_mac_blk_offset, align 2
  %add21 = add i16 %15, 7
  %16 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read, align 4
  %call26 = call i32 %17(ptr noundef %hw, i16 noundef zeroext %add21, ptr noundef %wwnn_prefix) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end19.if.end30_crit_edge, label %if.then28

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 128
  %conv29 = zext i16 %add21 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.47, i32 noundef %conv29) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end19.if.end30_crit_edge
  %22 = ptrtoint ptr %alt_san_mac_blk_offset to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %alt_san_mac_blk_offset, align 2
  %add32 = add i16 %23, 8
  %24 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read, align 4
  %call37 = call i32 %25(ptr noundef %hw, i16 noundef zeroext %add32, ptr noundef %wwpn_prefix) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end30.cleanup_crit_edge, label %if.end30.wwn_prefix_err_crit_edge

if.end30.wwn_prefix_err_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %wwn_prefix_err

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

wwn_prefix_err:                                   ; preds = %if.end30.wwn_prefix_err_crit_edge, %if.end6.wwn_prefix_err_crit_edge, %entry.wwn_prefix_err_crit_edge
  %offset.0 = phi i16 [ 39, %entry.wwn_prefix_err_crit_edge ], [ %7, %if.end6.wwn_prefix_err_crit_edge ], [ %add32, %if.end30.wwn_prefix_err_crit_edge ]
  %back41 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %back41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %back41, align 4
  %netdev42 = getelementptr inbounds %struct.ixgbe_adapter, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %netdev42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev42, align 128
  %conv43 = zext i16 %offset.0 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.47, i32 noundef %conv43) #10
  br label %cleanup

cleanup:                                          ; preds = %wwn_prefix_err, %if.end30.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge62
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %alt_san_mac_blk_offset) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %caps) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_set_mac_anti_spoofing(ptr noundef %hw, i1 noundef zeroext %enable, i32 noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ashr i32 %vf, 1
  %3 = add nsw i32 %2, 33280
  %add = and i32 %3, -4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add) #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %do.body1.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rem15 = and i32 %vf, 7
  %shl = shl nuw nsw i32 1, %rem15
  %or = or i32 %call, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %pfvfspoof.0 = select i1 %enable, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %pfvfspoof.0) #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !246
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_set_vlan_anti_spoofing(ptr noundef %hw, i1 noundef zeroext %enable, i32 noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ashr i32 %vf, 1
  %3 = add nsw i32 %2, 33280
  %add1 = and i32 %3, -4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add1) #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %do.body1.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rem = srem i32 %vf, 8
  %add = add nsw i32 %rem, 8
  %shl = shl nuw nsw i32 1, %add
  %or = or i32 %call, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %pfvfspoof.0 = select i1 %enable, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %pfvfspoof.0) #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !246
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_get_device_caps_generic(ptr noundef %hw, ptr noundef %device_caps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %call = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext 44, ptr noundef %device_caps) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_set_rxpba_generic(ptr noundef %hw, i32 noundef %num_pb, i32 noundef %headroom, i32 noundef %strategy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pb_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 14
  %0 = ptrtoint ptr %rx_pb_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pb_size, align 4
  %sub = sub i32 %1, %headroom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pb)
  %tobool.not = icmp eq i32 %num_pb, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %num_pb
  %2 = zext i32 %strategy to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %strategy, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %entry.sw.bb8_crit_edge
  ]

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mul1 = mul i32 %sub, 10
  %mul2 = shl i32 %spec.store.select, 3
  %div = udiv i32 %mul1, %mul2
  %div3 = sdiv i32 %spec.store.select, 2
  %mul4 = mul i32 %div, %div3
  %sub5 = sub i32 %sub, %mul4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select)
  %cmp106 = icmp sgt i32 %spec.store.select, 1
  br i1 %cmp106, label %for.body.lr.ph, label %sw.bb.sw.bb8_crit_edge

sw.bb.sw.bb8_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

for.body.lr.ph:                                   ; preds = %sw.bb
  %shl = shl i32 %div, 10
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl) #7
  br label %for.body

for.body:                                         ; preds = %ixgbe_write_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ixgbe_write_reg.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.ixgbe_write_reg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul7 = shl i32 %i.0107, 2
  %add = add i32 %mul7, 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.ixgbe_write_reg.exit_crit_edge
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %div3
  br i1 %exitcond.not, label %ixgbe_write_reg.exit.sw.bb8_crit_edge, label %ixgbe_write_reg.exit.for.body_crit_edge

ixgbe_write_reg.exit.for.body_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

ixgbe_write_reg.exit.sw.bb8_crit_edge:            ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

sw.bb8:                                           ; preds = %ixgbe_write_reg.exit.sw.bb8_crit_edge, %sw.bb.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge
  %pbsize.0 = phi i32 [ %sub, %entry.sw.bb8_crit_edge ], [ %sub5, %sw.bb.sw.bb8_crit_edge ], [ %sub5, %ixgbe_write_reg.exit.sw.bb8_crit_edge ]
  %i.1 = phi i32 [ %strategy, %entry.sw.bb8_crit_edge ], [ 0, %sw.bb.sw.bb8_crit_edge ], [ %div3, %ixgbe_write_reg.exit.sw.bb8_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %i.1)
  %cmp13109 = icmp sgt i32 %spec.store.select, %i.1
  br i1 %cmp13109, label %for.body14.lr.ph, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body14.lr.ph:                                 ; preds = %sw.bb8
  %sub9 = sub i32 %spec.store.select, %i.1
  %div10 = udiv i32 %pbsize.0, %sub9
  %shl11 = shl i32 %div10, 10
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl11) #7
  br label %for.body14

for.body14:                                       ; preds = %ixgbe_write_reg.exit85.for.body14_crit_edge, %for.body14.lr.ph
  %i.2110 = phi i32 [ %i.1, %for.body14.lr.ph ], [ %inc18, %ixgbe_write_reg.exit85.for.body14_crit_edge ]
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i82 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i82, label %for.body14.ixgbe_write_reg.exit85_crit_edge, label %do.body1.i84

for.body14.ixgbe_write_reg.exit85_crit_edge:      ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit85

do.body1.i84:                                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #9
  %mul15 = shl i32 %i.2110, 2
  %add16 = add i32 %mul15, 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i83 = getelementptr i8, ptr %8, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %6) #7, !srcloc !246
  br label %ixgbe_write_reg.exit85

ixgbe_write_reg.exit85:                           ; preds = %do.body1.i84, %for.body14.ixgbe_write_reg.exit85_crit_edge
  %inc18 = add i32 %i.2110, 1
  %exitcond117.not = icmp eq i32 %inc18, %spec.store.select
  br i1 %exitcond117.not, label %ixgbe_write_reg.exit85.sw.epilog_crit_edge, label %ixgbe_write_reg.exit85.for.body14_crit_edge

ixgbe_write_reg.exit85.for.body14_crit_edge:      ; preds = %ixgbe_write_reg.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body14

ixgbe_write_reg.exit85.sw.epilog_crit_edge:       ; preds = %ixgbe_write_reg.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %ixgbe_write_reg.exit85.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp24112 = icmp sgt i32 %spec.store.select, 0
  br i1 %cmp24112, label %for.body25.lr.ph, label %sw.epilog.for.body35.preheader_crit_edge

sw.epilog.for.body35.preheader_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35.preheader

for.body25.lr.ph:                                 ; preds = %sw.epilog
  %div20123 = udiv i32 163840, %spec.store.select
  %div2181 = lshr i32 %div20123, 10
  %sub22 = add nsw i32 %div2181, -10
  %9 = tail call i32 @llvm.bswap.i32(i32 %div20123) #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %sub22) #7
  br label %for.body25

for.cond33.preheader:                             ; preds = %ixgbe_write_reg.exit93
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.store.select)
  %cmp34115 = icmp ult i32 %spec.store.select, 8
  br i1 %cmp34115, label %for.cond33.preheader.for.body35.preheader_crit_edge, label %for.cond33.preheader.for.end44_crit_edge

for.cond33.preheader.for.end44_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.cond33.preheader.for.body35.preheader_crit_edge: ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35.preheader

for.body35.preheader:                             ; preds = %for.cond33.preheader.for.body35.preheader_crit_edge, %sw.epilog.for.body35.preheader_crit_edge
  %i.4116.ph = phi i32 [ 0, %sw.epilog.for.body35.preheader_crit_edge ], [ %spec.store.select, %for.cond33.preheader.for.body35.preheader_crit_edge ]
  br label %for.body35

for.body25:                                       ; preds = %ixgbe_write_reg.exit93.for.body25_crit_edge, %for.body25.lr.ph
  %i.3113 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc31, %ixgbe_write_reg.exit93.for.body25_crit_edge ]
  %mul26 = shl i32 %i.3113, 2
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i86 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i86, label %for.body25.ixgbe_write_reg.exit89_crit_edge, label %do.body1.i88

for.body25.ixgbe_write_reg.exit89_crit_edge:      ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit89

do.body1.i88:                                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  %add27 = add i32 %mul26, 52224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i87 = getelementptr i8, ptr %12, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %9) #7, !srcloc !246
  br label %ixgbe_write_reg.exit89

ixgbe_write_reg.exit89:                           ; preds = %do.body1.i88, %for.body25.ixgbe_write_reg.exit89_crit_edge
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i90 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i90, label %ixgbe_write_reg.exit89.ixgbe_write_reg.exit93_crit_edge, label %do.body1.i92

ixgbe_write_reg.exit89.ixgbe_write_reg.exit93_crit_edge: ; preds = %ixgbe_write_reg.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit93

do.body1.i92:                                     ; preds = %ixgbe_write_reg.exit89
  call void @__sanitizer_cov_trace_pc() #9
  %add29 = add i32 %mul26, 18768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i91 = getelementptr i8, ptr %14, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %10) #7, !srcloc !246
  br label %ixgbe_write_reg.exit93

ixgbe_write_reg.exit93:                           ; preds = %do.body1.i92, %ixgbe_write_reg.exit89.ixgbe_write_reg.exit93_crit_edge
  %inc31 = add nuw nsw i32 %i.3113, 1
  %exitcond118.not = icmp eq i32 %inc31, %spec.store.select
  br i1 %exitcond118.not, label %for.cond33.preheader, label %ixgbe_write_reg.exit93.for.body25_crit_edge

ixgbe_write_reg.exit93.for.body25_crit_edge:      ; preds = %ixgbe_write_reg.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

for.body35:                                       ; preds = %ixgbe_write_reg.exit105.for.body35_crit_edge, %for.body35.preheader
  %i.4116 = phi i32 [ %inc43, %ixgbe_write_reg.exit105.for.body35_crit_edge ], [ %i.4116.ph, %for.body35.preheader ]
  %mul36 = shl i32 %i.4116, 2
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i94 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i94, label %for.body35.ixgbe_write_reg.exit97_crit_edge, label %do.body1.i96

for.body35.ixgbe_write_reg.exit97_crit_edge:      ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit97

do.body1.i96:                                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #9
  %add37 = add i32 %mul36, 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i95 = getelementptr i8, ptr %16, i32 %add37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit97

ixgbe_write_reg.exit97:                           ; preds = %do.body1.i96, %for.body35.ixgbe_write_reg.exit97_crit_edge
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i98 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i98, label %ixgbe_write_reg.exit97.ixgbe_write_reg.exit101_crit_edge, label %do.body1.i100

ixgbe_write_reg.exit97.ixgbe_write_reg.exit101_crit_edge: ; preds = %ixgbe_write_reg.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit101

do.body1.i100:                                    ; preds = %ixgbe_write_reg.exit97
  call void @__sanitizer_cov_trace_pc() #9
  %add39 = add i32 %mul36, 52224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i99 = getelementptr i8, ptr %18, i32 %add39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit101

ixgbe_write_reg.exit101:                          ; preds = %do.body1.i100, %ixgbe_write_reg.exit97.ixgbe_write_reg.exit101_crit_edge
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i102 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i102, label %ixgbe_write_reg.exit101.ixgbe_write_reg.exit105_crit_edge, label %do.body1.i104

ixgbe_write_reg.exit101.ixgbe_write_reg.exit105_crit_edge: ; preds = %ixgbe_write_reg.exit101
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit105

do.body1.i104:                                    ; preds = %ixgbe_write_reg.exit101
  call void @__sanitizer_cov_trace_pc() #9
  %add41 = add i32 %mul36, 18768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i103 = getelementptr i8, ptr %20, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 0) #7, !srcloc !246
  br label %ixgbe_write_reg.exit105

ixgbe_write_reg.exit105:                          ; preds = %do.body1.i104, %ixgbe_write_reg.exit101.ixgbe_write_reg.exit105_crit_edge
  %inc43 = add nuw i32 %i.4116, 1
  %exitcond119.not = icmp eq i32 %inc43, 8
  br i1 %exitcond119.not, label %ixgbe_write_reg.exit105.for.end44_crit_edge, label %ixgbe_write_reg.exit105.for.body35_crit_edge

ixgbe_write_reg.exit105.for.body35_crit_edge:     ; preds = %ixgbe_write_reg.exit105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35

ixgbe_write_reg.exit105.for.end44_crit_edge:      ; preds = %ixgbe_write_reg.exit105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.end44:                                        ; preds = %ixgbe_write_reg.exit105.for.end44_crit_edge, %for.cond33.preheader.for.end44_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ixgbe_calculate_checksum(ptr noundef readonly %buffer, i32 noundef %length) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp10.not = icmp eq i32 %length, 0
  br i1 %cmp10.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %sum.012 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buffer, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %sum.012, %conv
  %inc = add nuw i32 %i.011, 1
  %phi.cast = and i32 %add, 255
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast13 = trunc i32 %add to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %sum.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast13, %for.end.loopexit ]
  %conv4 = sub i8 0, %sum.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv4, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_hic_unlocked(ptr noundef %hw, ptr nocapture noundef readonly %buffer, i32 noundef %length, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %length, -1793
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1792, i32 %0)
  %1 = icmp ult i32 %0, -1792
  br i1 %1, label %do.body1, label %if.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_hic_unlocked.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_hic_unlocked, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !244

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_hic_unlocked.__UNIQUE_ID_ddebug415, ptr noundef %5, ptr noundef nonnull @.str.53, i32 noundef %length) #7
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 89868) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end8.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end8.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call9, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %7, i32 89868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end8.ixgbe_write_reg.exit_crit_edge
  %call10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 89856) #7
  %and = and i32 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body14, label %if.end34

do.body14:                                        ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_hic_unlocked.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_hic_unlocked, %if.then26)) #7
          to label %cleanup [label %if.then26], !srcloc !244

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %back27 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %back27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back27, align 4
  %netdev28 = getelementptr inbounds %struct.ixgbe_adapter, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev28, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_hic_unlocked.__UNIQUE_ID_ddebug416, ptr noundef %12, ptr noundef nonnull @.str.54) #7
  br label %cleanup

if.end34:                                         ; preds = %ixgbe_write_reg.exit
  %rem = and i32 %length, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool35.not = icmp eq i32 %rem, 0
  br i1 %tobool35.not, label %if.end58, label %do.body38

do.body38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_hic_unlocked.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_hic_unlocked, %if.then50)) #7
          to label %cleanup [label %if.then50], !srcloc !244

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %back51 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %back51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back51, align 4
  %netdev52 = getelementptr inbounds %struct.ixgbe_adapter, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %netdev52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev52, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_hic_unlocked.__UNIQUE_ID_ddebug417, ptr noundef %16, ptr noundef nonnull @.str.55) #7
  br label %cleanup

if.end58:                                         ; preds = %if.end34
  %shr = lshr i32 %length, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp60128.not = icmp ult i32 %length, 4
  br i1 %cmp60128.not, label %if.end58.for.end_crit_edge, label %if.end58.for.body_crit_edge

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  br label %for.body

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %ixgbe_write_reg.exit120.for.body_crit_edge, %if.end58.for.body_crit_edge
  %i.0129 = phi i32 [ %inc, %ixgbe_write_reg.exit120.for.body_crit_edge ], [ 0, %if.end58.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %buffer, i32 %i.0129
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i117 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i117, label %for.body.ixgbe_write_reg.exit120_crit_edge, label %do.body1.i119

for.body.ixgbe_write_reg.exit120_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit120

do.body1.i119:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %i.0129, 2
  %add = add nuw nsw i32 %shl, 88064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %add.ptr.i118 = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %18) #7, !srcloc !246
  br label %ixgbe_write_reg.exit120

ixgbe_write_reg.exit120:                          ; preds = %do.body1.i119, %for.body.ixgbe_write_reg.exit120_crit_edge
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %ixgbe_write_reg.exit120.for.end_crit_edge, label %ixgbe_write_reg.exit120.for.body_crit_edge

ixgbe_write_reg.exit120.for.body_crit_edge:       ; preds = %ixgbe_write_reg.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

ixgbe_write_reg.exit120.for.end_crit_edge:        ; preds = %ixgbe_write_reg.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %ixgbe_write_reg.exit120.for.end_crit_edge, %if.end58.for.end_crit_edge
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i121 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i121, label %for.end.ixgbe_write_reg.exit124_crit_edge, label %do.body1.i123

for.end.ixgbe_write_reg.exit124_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit124

do.body1.i123:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %or62 = or i32 %call10, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or62) #7
  %add.ptr.i122 = getelementptr i8, ptr %22, i32 89856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %23) #7, !srcloc !246
  br label %ixgbe_write_reg.exit124

ixgbe_write_reg.exit124:                          ; preds = %do.body1.i123, %for.end.ixgbe_write_reg.exit124_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp64131.not = icmp eq i32 %timeout, 0
  br i1 %cmp64131.not, label %ixgbe_write_reg.exit124.lor.lhs.false78_crit_edge, label %ixgbe_write_reg.exit124.for.body66_crit_edge

ixgbe_write_reg.exit124.for.body66_crit_edge:     ; preds = %ixgbe_write_reg.exit124
  br label %for.body66

ixgbe_write_reg.exit124.lor.lhs.false78_crit_edge: ; preds = %ixgbe_write_reg.exit124
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false78

for.body66:                                       ; preds = %if.end71.for.body66_crit_edge, %ixgbe_write_reg.exit124.for.body66_crit_edge
  %i.1132 = phi i32 [ %inc73, %if.end71.for.body66_crit_edge ], [ 0, %ixgbe_write_reg.exit124.for.body66_crit_edge ]
  %call67 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 89856) #7
  %and68 = and i32 %call67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %for.body66.for.end74_crit_edge, label %if.end71

for.body66.for.end74_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74

if.end71:                                         ; preds = %for.body66
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %inc73 = add nuw i32 %i.1132, 1
  %exitcond134.not = icmp eq i32 %inc73, %timeout
  br i1 %exitcond134.not, label %if.end71.for.end74_crit_edge, label %if.end71.for.body66_crit_edge

if.end71.for.body66_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body66

if.end71.for.end74_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end74

for.end74:                                        ; preds = %if.end71.for.end74_crit_edge, %for.body66.for.end74_crit_edge
  %i.1.lcssa = phi i32 [ %timeout, %if.end71.for.end74_crit_edge ], [ %i.1132, %for.body66.for.end74_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %timeout)
  %cmp76 = icmp eq i32 %i.1.lcssa, %timeout
  br i1 %cmp76, label %for.end74.cleanup_crit_edge, label %for.end74.lor.lhs.false78_crit_edge

for.end74.lor.lhs.false78_crit_edge:              ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false78

for.end74.cleanup_crit_edge:                      ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false78:                                  ; preds = %for.end74.lor.lhs.false78_crit_edge, %ixgbe_write_reg.exit124.lor.lhs.false78_crit_edge
  %call79 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 89856) #7
  %and80 = and i32 %call79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %spec.select = select i1 %tobool81.not, i32 -33, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false78, %for.end74.cleanup_crit_edge, %if.then50, %do.body38, %if.then26, %do.body14, %if.then5, %do.body1
  %retval.0 = phi i32 [ -33, %if.then5 ], [ -33, %if.then26 ], [ -32, %if.then50 ], [ -33, %for.end74.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false78 ], [ -33, %do.body1 ], [ -33, %do.body14 ], [ -32, %do.body38 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr nocapture noundef %buffer, i32 noundef %length, i32 noundef %timeout, i1 noundef zeroext %return_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %length, -1793
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1792, i32 %0)
  %1 = icmp ult i32 %0, -1792
  br i1 %1, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_host_interface_command.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_host_interface_command, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !244

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_host_interface_command.__UNIQUE_ID_ddebug418, ptr noundef %5, ptr noundef nonnull @.str.53, i32 noundef %length) #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %6 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acquire_swfw_sync, align 4
  %call10 = tail call i32 %7(ptr noundef %hw, i32 noundef 1024) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @ixgbe_hic_unlocked(ptr noundef %hw, ptr noundef %buffer, i32 noundef %length, i32 noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %8 = and i1 %tobool15.not, %return_data
  br i1 %8, label %for.body, label %if.end13.rel_out_crit_edge

if.end13.rel_out_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rel_out

for.body:                                         ; preds = %if.end13
  %call24 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 88064) #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %call24) #7
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buffer, align 4
  %11 = lshr i32 %9, 16
  %12 = trunc i32 %11 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not = icmp eq i8 %12, 0
  br i1 %tobool28.not, label %for.body.rel_out_crit_edge, label %if.end30

for.body.rel_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rel_out

if.end30:                                         ; preds = %for.body
  %conv31 = and i32 %11, 255
  %sub = add nsw i32 %conv31, -1
  %or = or i32 %sub, 3
  %add33 = add nsw i32 %or, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %length)
  %cmp34 = icmp ugt i32 %add33, %length
  br i1 %cmp34, label %do.body38, label %for.body67.preheader

do.body38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_host_interface_command.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_host_interface_command, %if.then50)) #7
          to label %rel_out [label %if.then50], !srcloc !244

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %back51 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %back51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %back51, align 4
  %netdev52 = getelementptr inbounds %struct.ixgbe_adapter, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %netdev52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev52, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_host_interface_command.__UNIQUE_ID_ddebug419, ptr noundef %16, ptr noundef nonnull @.str.57) #7
  br label %rel_out

for.body67.preheader:                             ; preds = %if.end30
  %add60 = add nuw nsw i32 %conv31, 3
  %17 = lshr i32 %add60, 2
  %18 = call i32 @llvm.umax.i32(i32 %17, i32 1)
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.body67.preheader
  %bi.1123 = phi i32 [ %inc74, %for.body67.for.body67_crit_edge ], [ 1, %for.body67.preheader ]
  %shl68 = shl i32 %bi.1123, 2
  %add69 = add nuw nsw i32 %shl68, 88064
  %call70 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %add69) #7
  %arrayidx71 = getelementptr i32, ptr %buffer, i32 %bi.1123
  %19 = tail call i32 @llvm.bswap.i32(i32 %call70) #7
  %20 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx71, align 4
  %inc74 = add nuw nsw i32 %bi.1123, 1
  %exitcond = icmp eq i32 %bi.1123, %18
  br i1 %exitcond, label %for.body67.rel_out_crit_edge, label %for.body67.for.body67_crit_edge

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body67

for.body67.rel_out_crit_edge:                     ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %rel_out

rel_out:                                          ; preds = %for.body67.rel_out_crit_edge, %if.then50, %do.body38, %for.body.rel_out_crit_edge, %if.end13.rel_out_crit_edge
  %status.0 = phi i32 [ %call14, %if.end13.rel_out_crit_edge ], [ 0, %for.body.rel_out_crit_edge ], [ -33, %if.then50 ], [ -33, %do.body38 ], [ 0, %for.body67.rel_out_crit_edge ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %21 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %22(ptr noundef %hw, i32 noundef 1024) #7
  br label %cleanup

cleanup:                                          ; preds = %rel_out, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ %status.0, %rel_out ], [ -33, %if.then6 ], [ %call10, %if.end9.cleanup_crit_edge ], [ -33, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_set_fw_drv_ver_generic(ptr noundef %hw, i8 noundef zeroext %maj, i8 noundef zeroext %min, i8 noundef zeroext %build, i8 noundef zeroext %sub, i16 noundef zeroext %len, ptr nocapture noundef readnone %driver_ver) local_unnamed_addr #0 align 64 {
entry:
  %fw_cmd = alloca %struct.ixgbe_hic_drv_info, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fw_cmd) #7
  %0 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %fw_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %fw_cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ixgbe_hic_hdr, ptr %fw_cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ixgbe_hic_drv_info, ptr %fw_cmd, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ixgbe_hic_drv_info, ptr %fw_cmd, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ixgbe_hic_drv_info, ptr %fw_cmd, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ixgbe_hic_drv_info, ptr %fw_cmd, i32 0, i32 4
  %7 = getelementptr inbounds %struct.ixgbe_hic_drv_info, ptr %fw_cmd, i32 0, i32 5
  %8 = getelementptr inbounds %struct.ixgbe_hic_drv_info, ptr %fw_cmd, i32 0, i32 6
  %9 = getelementptr inbounds %struct.ixgbe_hic_drv_info, ptr %fw_cmd, i32 0, i32 7
  %10 = ptrtoint ptr %fw_cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -35, ptr %fw_cmd, align 2
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %1, align 2
  %func = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 8, i32 3
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %func, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %3, align 2
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %maj, ptr %7, align 2
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %min, ptr %6, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %build, ptr %5, align 2
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %sub, ptr %4, align 1
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %8, align 1
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %9, align 2
  %22 = add i8 %14, %sub
  %23 = add i8 %22, %build
  %24 = add i8 %23, %min
  %25 = add i8 %24, %maj
  %add.i.8.neg = sub i8 30, %25
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %add.i.8.neg, ptr %2, align 1
  %call9 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %fw_cmd, i32 noundef 12, i32 noundef 500, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %entry.if.end_crit_edge, label %for.cond

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond:                                         ; preds = %entry
  %call9.1 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %fw_cmd, i32 noundef 12, i32 noundef 500, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %cmp10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %cmp10.not.1, label %for.cond.if.end_crit_edge, label %for.cond.1

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.1:                                       ; preds = %for.cond
  %call9.2 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %fw_cmd, i32 noundef 12, i32 noundef 500, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %cmp10.not.2 = icmp eq i32 %call9.2, 0
  br i1 %cmp10.not.2, label %for.cond.1.if.end_crit_edge, label %for.cond.2

for.cond.1.if.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.2:                                       ; preds = %for.cond.1
  %call9.3 = call i32 @ixgbe_host_interface_command(ptr noundef %hw, ptr noundef nonnull %fw_cmd, i32 noundef 12, i32 noundef 500, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3)
  %cmp10.not.3 = icmp eq i32 %call9.3, 0
  br i1 %cmp10.not.3, label %for.cond.2.if.end_crit_edge, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.2.if.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.cond.2.if.end_crit_edge, %for.cond.1.if.end_crit_edge, %for.cond.if.end_crit_edge, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp15 = icmp eq i8 %28, 1
  %. = select i1 %cmp15, i32 0, i32 -33
  br label %for.end

for.end:                                          ; preds = %if.end, %for.cond.2.for.end_crit_edge
  %ret_val.1 = phi i32 [ %., %if.end ], [ %call9.3, %for.cond.2.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fw_cmd) #7
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_clear_tx_pending(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 21
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 16960) #7
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end.ixgbe_write_reg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %4, i32 16960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end.ixgbe_write_reg.exit_crit_edge
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #7
  %call.i = tail call zeroext i16 @ixgbe_read_pci_cfg_word(ptr noundef %hw, i32 noundef 200) #7
  %6 = and i16 %call.i, 15
  %7 = zext i16 %6 to i32
  %switch.tableidx = add nsw i32 %7, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 9
  br i1 %8, label %switch.lookup, label %ixgbe_write_reg.exit.ixgbe_pcie_timeout_poll.exit_crit_edge

ixgbe_write_reg.exit.ixgbe_pcie_timeout_poll.exit_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_pcie_timeout_poll.exit

switch.lookup:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.ixgbe_clear_tx_pending, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ixgbe_pcie_timeout_poll.exit

ixgbe_pcie_timeout_poll.exit:                     ; preds = %switch.lookup, %ixgbe_write_reg.exit.ixgbe_pcie_timeout_poll.exit_crit_edge
  %pollcnt.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 880, %ixgbe_write_reg.exit.ixgbe_pcie_timeout_poll.exit_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %ixgbe_pcie_timeout_poll.exit
  %i.046 = phi i32 [ 0, %ixgbe_pcie_timeout_poll.exit ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %call4 = tail call zeroext i16 @ixgbe_read_pci_cfg_word(ptr noundef %hw, i32 noundef 170) #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %tobool.not.i = icmp eq ptr %11, null
  %12 = and i16 %call4, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool10.not = icmp eq i16 %12, 0
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool10.not
  %inc = add nuw nsw i32 %i.046, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %pollcnt.0.i)
  %exitcond.not = icmp eq i32 %inc, %pollcnt.0.i
  %or.cond47 = select i1 %or.cond, i1 true, i1 %exitcond.not
  br i1 %or.cond47, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %call13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 69712) #7
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i34 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i34, label %for.end.ixgbe_write_reg.exit37_crit_edge, label %do.body1.i36

for.end.ixgbe_write_reg.exit37_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit37

do.body1.i36:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %or14 = or i32 %call13, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or14) #7
  %add.ptr.i35 = getelementptr i8, ptr %14, i32 69712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %15) #7, !srcloc !246
  br label %ixgbe_write_reg.exit37

ixgbe_write_reg.exit37:                           ; preds = %do.body1.i36, %for.end.ixgbe_write_reg.exit37_crit_edge
  %call15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 4294960) #7
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i38 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i38, label %ixgbe_write_reg.exit37.ixgbe_write_reg.exit41_crit_edge, label %do.body1.i40

ixgbe_write_reg.exit37.ixgbe_write_reg.exit41_crit_edge: ; preds = %ixgbe_write_reg.exit37
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit41

do.body1.i40:                                     ; preds = %ixgbe_write_reg.exit37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %call13) #7
  %add.ptr.i39 = getelementptr i8, ptr %18, i32 69712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %19) #7, !srcloc !246
  br label %ixgbe_write_reg.exit41

ixgbe_write_reg.exit41:                           ; preds = %do.body1.i40, %ixgbe_write_reg.exit37.ixgbe_write_reg.exit41_crit_edge
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i42 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i42, label %ixgbe_write_reg.exit41.cleanup_crit_edge, label %do.body1.i44

ixgbe_write_reg.exit41.cleanup_crit_edge:         ; preds = %ixgbe_write_reg.exit41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i44:                                     ; preds = %ixgbe_write_reg.exit41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %call) #7
  %add.ptr.i43 = getelementptr i8, ptr %21, i32 16960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %22) #7, !srcloc !246
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i44, %ixgbe_write_reg.exit41.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_get_thermal_sensor_data_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %ets_offset = alloca i16, align 2
  %ets_cfg = alloca i16, align 2
  %ets_sensor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_offset) #7
  %0 = ptrtoint ptr %ets_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ets_offset, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_cfg) #7
  %1 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ets_cfg, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_sensor) #7
  %2 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ets_sensor, align 2, !annotation !242
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup43_crit_edge

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end:                                           ; preds = %entry
  %read.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %4(ptr noundef %hw, i16 noundef zeroext 38, ptr noundef nonnull %ets_offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup43_crit_edge

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ets_offset, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %6, label %if.end6.i [
    i16 0, label %if.end.i.cleanup43_crit_edge
    i16 -1, label %if.end.i.cleanup43_crit_edge74
  ]

if.end.i.cleanup43_crit_edge74:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end.i.cleanup43_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end6.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %call10.i = call i32 %9(ptr noundef %hw, i16 noundef zeroext %6, ptr noundef nonnull %ets_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.cleanup43_crit_edge

if.end6.i.cleanup43_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end13.i:                                       ; preds = %if.end6.i
  %10 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ets_cfg, align 2
  %12 = and i16 %11, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp15.not.i = icmp eq i16 %12, 0
  br i1 %cmp15.not.i, label %if.end4, label %if.end13.i.cleanup43_crit_edge

if.end13.i.cleanup43_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end4:                                          ; preds = %if.end13.i
  %13 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ets_cfg, align 2
  %15 = trunc i16 %14 to i8
  %conv6 = and i8 %15, 7
  %16 = call i8 @llvm.umin.i8(i8 %conv6, i8 3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp1369.not = icmp eq i8 %16, 0
  br i1 %cmp1369.not, label %if.end4.cleanup43_crit_edge, label %for.body.lr.ph

if.end4.cleanup43_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

for.body.lr.ph:                                   ; preds = %if.end4
  %read_i2c_byte = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 12
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %19 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ets_offset, align 2
  %conv18 = add i16 %20, 1
  %call19 = call i32 %18(ptr noundef %hw, i16 noundef zeroext %conv18, ptr noundef nonnull %ets_sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %for.body.lr.ph.cleanup43_crit_edge

for.body.lr.ph.cleanup43_crit_edge:               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end22:                                         ; preds = %for.body.lr.ph
  %21 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ets_sensor, align 2
  %23 = and i16 %22, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp31.not = icmp eq i16 %23, 0
  br i1 %cmp31.not, label %if.end22.for.inc_crit_edge, label %if.then33

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then33:                                        ; preds = %if.end22
  %and24 = lshr i16 %22, 8
  %24 = and i16 %and24, 3
  %conv25 = zext i16 %24 to i32
  %25 = ptrtoint ptr %read_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_i2c_byte, align 4
  %arrayidx = getelementptr [4 x i8], ptr @ixgbe_emc_temp_data, i32 0, i32 %conv25
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %temp = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 0, i32 1
  %call37 = call i32 %26(ptr noundef %hw, i8 noundef zeroext %28, i8 noundef zeroext -8, ptr noundef %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then33.for.inc_crit_edge, label %if.then33.cleanup43_crit_edge

if.then33.cleanup43_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.then33.for.inc_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then33.for.inc_crit_edge, %if.end22.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %exitcond.not = icmp eq i8 %16, 1
  br i1 %exitcond.not, label %for.inc.cleanup43_crit_edge, label %for.body.1

for.inc.cleanup43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

for.body.1:                                       ; preds = %for.inc
  %29 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i, align 4
  %31 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ets_offset, align 2
  %conv18.1 = add i16 %32, 2
  %call19.1 = call i32 %30(ptr noundef %hw, i16 noundef zeroext %conv18.1, ptr noundef nonnull %ets_sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %tobool20.not.1 = icmp eq i32 %call19.1, 0
  br i1 %tobool20.not.1, label %if.end22.1, label %for.body.1.cleanup43_crit_edge

for.body.1.cleanup43_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end22.1:                                       ; preds = %for.body.1
  %33 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ets_sensor, align 2
  %35 = and i16 %34, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp31.not.1 = icmp eq i16 %35, 0
  br i1 %cmp31.not.1, label %if.end22.1.for.inc.1_crit_edge, label %if.then33.1

if.end22.1.for.inc.1_crit_edge:                   ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then33.1:                                      ; preds = %if.end22.1
  %and24.1 = lshr i16 %34, 8
  %36 = and i16 %and24.1, 3
  %conv25.1 = zext i16 %36 to i32
  %37 = ptrtoint ptr %read_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_i2c_byte, align 4
  %arrayidx.1 = getelementptr [4 x i8], ptr @ixgbe_emc_temp_data, i32 0, i32 %conv25.1
  %39 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.1, align 1
  %temp.1 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 1, i32 1
  %call37.1 = call i32 %38(ptr noundef %hw, i8 noundef zeroext %40, i8 noundef zeroext -8, ptr noundef %temp.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.1)
  %tobool38.not.1 = icmp eq i32 %call37.1, 0
  br i1 %tobool38.not.1, label %if.then33.1.for.inc.1_crit_edge, label %if.then33.1.cleanup43_crit_edge

if.then33.1.cleanup43_crit_edge:                  ; preds = %if.then33.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.then33.1.for.inc.1_crit_edge:                  ; preds = %if.then33.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then33.1.for.inc.1_crit_edge, %if.end22.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %exitcond.not.1 = icmp eq i8 %16, 2
  br i1 %exitcond.not.1, label %for.inc.1.cleanup43_crit_edge, label %for.body.2

for.inc.1.cleanup43_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

for.body.2:                                       ; preds = %for.inc.1
  %41 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read.i, align 4
  %43 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ets_offset, align 2
  %conv18.2 = add i16 %44, 3
  %call19.2 = call i32 %42(ptr noundef %hw, i16 noundef zeroext %conv18.2, ptr noundef nonnull %ets_sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2)
  %tobool20.not.2 = icmp eq i32 %call19.2, 0
  br i1 %tobool20.not.2, label %if.end22.2, label %for.body.2.cleanup43_crit_edge

for.body.2.cleanup43_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end22.2:                                       ; preds = %for.body.2
  %45 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ets_sensor, align 2
  %47 = and i16 %46, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp31.not.2 = icmp eq i16 %47, 0
  br i1 %cmp31.not.2, label %if.end22.2.for.inc.2_crit_edge, label %if.then33.2

if.end22.2.for.inc.2_crit_edge:                   ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then33.2:                                      ; preds = %if.end22.2
  %and24.2 = lshr i16 %46, 8
  %48 = and i16 %and24.2, 3
  %conv25.2 = zext i16 %48 to i32
  %49 = ptrtoint ptr %read_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_i2c_byte, align 4
  %arrayidx.2 = getelementptr [4 x i8], ptr @ixgbe_emc_temp_data, i32 0, i32 %conv25.2
  %51 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.2, align 1
  %temp.2 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 2, i32 1
  %call37.2 = call i32 %50(ptr noundef %hw, i8 noundef zeroext %52, i8 noundef zeroext -8, ptr noundef %temp.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.2)
  %tobool38.not.2 = icmp eq i32 %call37.2, 0
  br i1 %tobool38.not.2, label %if.then33.2.for.inc.2_crit_edge, label %if.then33.2.cleanup43_crit_edge

if.then33.2.cleanup43_crit_edge:                  ; preds = %if.then33.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.then33.2.for.inc.2_crit_edge:                  ; preds = %if.then33.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then33.2.for.inc.2_crit_edge, %if.end22.2.for.inc.2_crit_edge
  br label %cleanup43

cleanup43:                                        ; preds = %for.inc.2, %if.then33.2.cleanup43_crit_edge, %for.body.2.cleanup43_crit_edge, %for.inc.1.cleanup43_crit_edge, %if.then33.1.cleanup43_crit_edge, %for.body.1.cleanup43_crit_edge, %for.inc.cleanup43_crit_edge, %if.then33.cleanup43_crit_edge, %for.body.lr.ph.cleanup43_crit_edge, %if.end4.cleanup43_crit_edge, %if.end13.i.cleanup43_crit_edge, %if.end6.i.cleanup43_crit_edge, %if.end.i.cleanup43_crit_edge, %if.end.i.cleanup43_crit_edge74, %if.end.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.2 = phi i32 [ 2147483647, %entry.cleanup43_crit_edge ], [ 2147483647, %if.end13.i.cleanup43_crit_edge ], [ %call10.i, %if.end6.i.cleanup43_crit_edge ], [ 2147483647, %if.end.i.cleanup43_crit_edge ], [ 2147483647, %if.end.i.cleanup43_crit_edge74 ], [ %call.i, %if.end.cleanup43_crit_edge ], [ 0, %if.end4.cleanup43_crit_edge ], [ 0, %for.inc.cleanup43_crit_edge ], [ %call19, %for.body.lr.ph.cleanup43_crit_edge ], [ %call37, %if.then33.cleanup43_crit_edge ], [ %call19.1, %for.body.1.cleanup43_crit_edge ], [ %call37.1, %if.then33.1.cleanup43_crit_edge ], [ 0, %for.inc.1.cleanup43_crit_edge ], [ %call19.2, %for.body.2.cleanup43_crit_edge ], [ %call37.2, %if.then33.2.cleanup43_crit_edge ], [ 0, %for.inc.2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_sensor) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_cfg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_offset) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_thermal_sensor_thresh_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %ets_offset = alloca i16, align 2
  %ets_cfg = alloca i16, align 2
  %ets_sensor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_offset) #7
  %0 = ptrtoint ptr %ets_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ets_offset, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_cfg) #7
  %1 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ets_cfg, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_sensor) #7
  %2 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ets_sensor, align 2, !annotation !242
  %thermal_sensor_data = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23
  %3 = call ptr @memset(ptr %thermal_sensor_data, i32 0, i32 12)
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup60_crit_edge

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end:                                           ; preds = %entry
  %read.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %5(ptr noundef %hw, i16 noundef zeroext 38, ptr noundef nonnull %ets_offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup60_crit_edge

if.end.cleanup60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ets_offset, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %7, label %if.end6.i [
    i16 0, label %if.end.i.cleanup60_crit_edge
    i16 -1, label %if.end.i.cleanup60_crit_edge95
  ]

if.end.i.cleanup60_crit_edge95:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end.i.cleanup60_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end6.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %call10.i = call i32 %10(ptr noundef %hw, i16 noundef zeroext %7, ptr noundef nonnull %ets_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.cleanup60_crit_edge

if.end6.i.cleanup60_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end13.i:                                       ; preds = %if.end6.i
  %11 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ets_cfg, align 2
  %13 = and i16 %12, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp15.not.i = icmp eq i16 %13, 0
  br i1 %cmp15.not.i, label %if.end4, label %if.end13.i.cleanup60_crit_edge

if.end13.i.cleanup60_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end4:                                          ; preds = %if.end13.i
  %14 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ets_cfg, align 2
  %and5 = lshr i16 %15, 6
  %16 = trunc i16 %and5 to i8
  %conv6 = and i8 %16, 31
  %17 = trunc i16 %15 to i8
  %conv9 = and i8 %17, 7
  %18 = call i8 @llvm.umin.i8(i8 %conv9, i8 3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp1692.not = icmp eq i8 %18, 0
  br i1 %cmp1692.not, label %if.end4.cleanup60_crit_edge, label %for.body.lr.ph

if.end4.cleanup60_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

for.body.lr.ph:                                   ; preds = %if.end4
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %write_i2c_byte = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %19 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i, align 4
  %21 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ets_offset, align 2
  %conv21 = add i16 %22, 1
  %call22 = call i32 %20(ptr noundef %hw, i16 noundef zeroext %conv21, ptr noundef nonnull %ets_sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 128
  %27 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ets_offset, align 2
  %conv25 = zext i16 %28 to i32
  %add28 = add nuw nsw i32 %conv25, 1
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.47, i32 noundef %add28) #10
  br label %cleanup

if.end29:                                         ; preds = %for.body.lr.ph
  %29 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ets_sensor, align 2
  %and31 = lshr i16 %30, 8
  %31 = and i16 %and31, 3
  %conv33 = zext i16 %31 to i32
  %and35 = lshr i16 %30, 10
  %32 = trunc i16 %and35 to i8
  %conv37 = and i8 %32, 15
  %conv40 = trunc i16 %30 to i8
  %33 = ptrtoint ptr %write_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_i2c_byte, align 4
  %arrayidx = getelementptr [4 x i8], ptr @ixgbe_emc_therm_limit, i32 0, i32 %conv33
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %call42 = call i32 %34(ptr noundef %hw, i8 noundef zeroext %36, i8 noundef zeroext -8, i8 noundef zeroext %conv40) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv37)
  %cmp44 = icmp eq i8 %conv37, 0
  br i1 %cmp44, label %if.end29.cleanup_crit_edge, label %if.end47

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %thermal_sensor_data to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv37, ptr %thermal_sensor_data, align 1
  %caution_thresh = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %caution_thresh to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv40, ptr %caution_thresh, align 1
  %sub = sub i8 %conv40, %conv6
  %max_op_thresh = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 0, i32 3
  %39 = ptrtoint ptr %max_op_thresh to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %sub, ptr %max_op_thresh, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end29.cleanup_crit_edge, %if.then24
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %exitcond.not = icmp eq i8 %18, 1
  br i1 %exitcond.not, label %cleanup.cleanup60_crit_edge, label %for.body.1

cleanup.cleanup60_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

for.body.1:                                       ; preds = %cleanup
  %40 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read.i, align 4
  %42 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ets_offset, align 2
  %conv21.1 = add i16 %43, 2
  %call22.1 = call i32 %41(ptr noundef %hw, i16 noundef zeroext %conv21.1, ptr noundef nonnull %ets_sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.1)
  %tobool23.not.1 = icmp eq i32 %call22.1, 0
  br i1 %tobool23.not.1, label %if.end29.1, label %if.then24.1

if.then24.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %back, align 4
  %netdev.1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %netdev.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev.1, align 128
  %48 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ets_offset, align 2
  %conv25.1 = zext i16 %49 to i32
  %add28.1 = add nuw nsw i32 %conv25.1, 2
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.47, i32 noundef %add28.1) #10
  br label %cleanup.1

if.end29.1:                                       ; preds = %for.body.1
  %50 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ets_sensor, align 2
  %and31.1 = lshr i16 %51, 8
  %52 = and i16 %and31.1, 3
  %conv33.1 = zext i16 %52 to i32
  %and35.1 = lshr i16 %51, 10
  %53 = trunc i16 %and35.1 to i8
  %conv37.1 = and i8 %53, 15
  %conv40.1 = trunc i16 %51 to i8
  %54 = ptrtoint ptr %write_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_i2c_byte, align 4
  %arrayidx.1 = getelementptr [4 x i8], ptr @ixgbe_emc_therm_limit, i32 0, i32 %conv33.1
  %56 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.1, align 1
  %call42.1 = call i32 %55(ptr noundef %hw, i8 noundef zeroext %57, i8 noundef zeroext -8, i8 noundef zeroext %conv40.1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv37.1)
  %cmp44.1 = icmp eq i8 %conv37.1, 0
  br i1 %cmp44.1, label %if.end29.1.cleanup.1_crit_edge, label %if.end47.1

if.end29.1.cleanup.1_crit_edge:                   ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end47.1:                                       ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx49.1 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv37.1, ptr %arrayidx49.1, align 1
  %caution_thresh.1 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %caution_thresh.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv40.1, ptr %caution_thresh.1, align 1
  %sub.1 = sub i8 %conv40.1, %conv6
  %max_op_thresh.1 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %max_op_thresh.1 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %sub.1, ptr %max_op_thresh.1, align 1
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end47.1, %if.end29.1.cleanup.1_crit_edge, %if.then24.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %exitcond.not.1 = icmp eq i8 %18, 2
  br i1 %exitcond.not.1, label %cleanup.1.cleanup60_crit_edge, label %for.body.2

cleanup.1.cleanup60_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

for.body.2:                                       ; preds = %cleanup.1
  %61 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read.i, align 4
  %63 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %ets_offset, align 2
  %conv21.2 = add i16 %64, 3
  %call22.2 = call i32 %62(ptr noundef %hw, i16 noundef zeroext %conv21.2, ptr noundef nonnull %ets_sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.2)
  %tobool23.not.2 = icmp eq i32 %call22.2, 0
  br i1 %tobool23.not.2, label %if.end29.2, label %if.then24.2

if.then24.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %back, align 4
  %netdev.2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %netdev.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %netdev.2, align 128
  %69 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ets_offset, align 2
  %conv25.2 = zext i16 %70 to i32
  %add28.2 = add nuw nsw i32 %conv25.2, 3
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %68, ptr noundef nonnull @.str.47, i32 noundef %add28.2) #10
  br label %cleanup60

if.end29.2:                                       ; preds = %for.body.2
  %71 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ets_sensor, align 2
  %and31.2 = lshr i16 %72, 8
  %73 = and i16 %and31.2, 3
  %conv33.2 = zext i16 %73 to i32
  %and35.2 = lshr i16 %72, 10
  %74 = trunc i16 %and35.2 to i8
  %conv37.2 = and i8 %74, 15
  %conv40.2 = trunc i16 %72 to i8
  %75 = ptrtoint ptr %write_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_i2c_byte, align 4
  %arrayidx.2 = getelementptr [4 x i8], ptr @ixgbe_emc_therm_limit, i32 0, i32 %conv33.2
  %77 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.2, align 1
  %call42.2 = call i32 %76(ptr noundef %hw, i8 noundef zeroext %78, i8 noundef zeroext -8, i8 noundef zeroext %conv40.2) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv37.2)
  %cmp44.2 = icmp eq i8 %conv37.2, 0
  br i1 %cmp44.2, label %if.end29.2.cleanup60_crit_edge, label %if.end47.2

if.end29.2.cleanup60_crit_edge:                   ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end47.2:                                       ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx49.2 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 2
  %79 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv37.2, ptr %arrayidx49.2, align 1
  %caution_thresh.2 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 2, i32 2
  %80 = ptrtoint ptr %caution_thresh.2 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv40.2, ptr %caution_thresh.2, align 1
  %sub.2 = sub i8 %conv40.2, %conv6
  %max_op_thresh.2 = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 23, i32 0, i32 2, i32 3
  %81 = ptrtoint ptr %max_op_thresh.2 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %sub.2, ptr %max_op_thresh.2, align 1
  br label %cleanup60

cleanup60:                                        ; preds = %if.end47.2, %if.end29.2.cleanup60_crit_edge, %if.then24.2, %cleanup.1.cleanup60_crit_edge, %cleanup.cleanup60_crit_edge, %if.end4.cleanup60_crit_edge, %if.end13.i.cleanup60_crit_edge, %if.end6.i.cleanup60_crit_edge, %if.end.i.cleanup60_crit_edge, %if.end.i.cleanup60_crit_edge95, %if.end.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ 2147483647, %entry.cleanup60_crit_edge ], [ 2147483647, %if.end13.i.cleanup60_crit_edge ], [ %call10.i, %if.end6.i.cleanup60_crit_edge ], [ 2147483647, %if.end.i.cleanup60_crit_edge ], [ 2147483647, %if.end.i.cleanup60_crit_edge95 ], [ %call.i, %if.end.cleanup60_crit_edge ], [ 0, %if.end4.cleanup60_crit_edge ], [ 0, %if.then24.2 ], [ 0, %if.end29.2.cleanup60_crit_edge ], [ 0, %if.end47.2 ], [ 0, %cleanup.1.cleanup60_crit_edge ], [ 0, %cleanup.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_sensor) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_cfg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_offset) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_get_orom_version(ptr noundef %hw, ptr nocapture noundef writeonly %nvm_ver) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i16, align 2
  %eeprom_cfg_blkh = alloca i16, align 2
  %eeprom_cfg_blkl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset) #7
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %offset, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eeprom_cfg_blkh) #7
  %1 = ptrtoint ptr %eeprom_cfg_blkh to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %eeprom_cfg_blkh, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eeprom_cfg_blkl) #7
  %2 = ptrtoint ptr %eeprom_cfg_blkl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %eeprom_cfg_blkl, align 2, !annotation !242
  %or_valid = getelementptr inbounds %struct.ixgbe_nvm_version, ptr %nvm_ver, i32 0, i32 8
  %3 = ptrtoint ptr %or_valid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %or_valid, align 2
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %call = call i32 %5(ptr noundef %hw, i16 noundef zeroext 23, ptr noundef nonnull %offset) #7
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %offset, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %7, label %if.end [
    i16 0, label %entry.cleanup_crit_edge
    i16 -1, label %entry.cleanup_crit_edge55
  ]

entry.cleanup_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read, align 4
  %add = add i16 %7, 132
  %call10 = call i32 %10(ptr noundef %hw, i16 noundef zeroext %add, ptr noundef nonnull %eeprom_cfg_blkh) #7
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 4
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %offset, align 2
  %add15 = add i16 %14, 131
  %call17 = call i32 %12(ptr noundef %hw, i16 noundef zeroext %add15, ptr noundef nonnull %eeprom_cfg_blkl) #7
  %15 = ptrtoint ptr %eeprom_cfg_blkl to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %eeprom_cfg_blkl, align 2
  %17 = ptrtoint ptr %eeprom_cfg_blkh to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %eeprom_cfg_blkh, align 2
  %or53 = or i16 %18, %16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or53)
  %cmp20 = icmp eq i16 %or53, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp24 = icmp eq i16 %16, -1
  %or.cond = or i1 %cmp24, %cmp20
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp28 = icmp eq i16 %18, -1
  %or.cond54 = select i1 %or.cond, i1 true, i1 %cmp28
  br i1 %or.cond54, label %if.end.cleanup_crit_edge, label %if.end31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %or_valid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %or_valid, align 2
  %20 = lshr i16 %16, 8
  %conv34 = trunc i16 %20 to i8
  %or_major = getelementptr inbounds %struct.ixgbe_nvm_version, ptr %nvm_ver, i32 0, i32 9
  %21 = ptrtoint ptr %or_major to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv34, ptr %or_major, align 1
  %or38 = call i16 @llvm.fshl.i16(i16 %16, i16 %18, i16 8)
  %or_build = getelementptr inbounds %struct.ixgbe_nvm_version, ptr %nvm_ver, i32 0, i32 10
  %22 = ptrtoint ptr %or_build to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or38, ptr %or_build, align 4
  %conv41 = trunc i16 %18 to i8
  %or_patch = getelementptr inbounds %struct.ixgbe_nvm_version, ptr %nvm_ver, i32 0, i32 11
  %23 = ptrtoint ptr %or_patch to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv41, ptr %or_patch, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge55
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eeprom_cfg_blkl) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eeprom_cfg_blkh) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_get_oem_prod_version(ptr noundef %hw, ptr nocapture noundef writeonly %nvm_ver) local_unnamed_addr #0 align 64 {
entry:
  %rel_num = alloca i16, align 2
  %prod_ver = alloca i16, align 2
  %mod_len = alloca i16, align 2
  %cap = alloca i16, align 2
  %offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rel_num) #7
  %0 = ptrtoint ptr %rel_num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %rel_num, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %prod_ver) #7
  %1 = ptrtoint ptr %prod_ver to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %prod_ver, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mod_len) #7
  %2 = ptrtoint ptr %mod_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %mod_len, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap) #7
  %3 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %cap, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offset) #7
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %offset, align 2, !annotation !242
  %oem_valid = getelementptr inbounds %struct.ixgbe_nvm_version, ptr %nvm_ver, i32 0, i32 4
  %5 = ptrtoint ptr %oem_valid to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %oem_valid, align 1
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read, align 4
  %call = call i32 %7(ptr noundef %hw, i16 noundef zeroext 27, ptr noundef nonnull %offset) #7
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %offset, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %9, label %if.end [
    i16 0, label %entry.cleanup_crit_edge
    i16 -1, label %entry.cleanup_crit_edge77
  ]

entry.cleanup_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 4
  %call8 = call i32 %12(ptr noundef %hw, i16 noundef zeroext %9, ptr noundef nonnull %mod_len) #7
  %13 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read, align 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %offset, align 2
  %add = add i16 %16, 1
  %call14 = call i32 %14(ptr noundef %hw, i16 noundef zeroext %add, ptr noundef nonnull %cap) #7
  %17 = ptrtoint ptr %mod_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mod_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %cmp16.not = icmp eq i16 %18, 3
  br i1 %cmp16.not, label %lor.lhs.false18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false18:                                  ; preds = %if.end
  %19 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cap, align 2
  %21 = and i16 %20, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp20.not = icmp eq i16 %21, 0
  br i1 %cmp20.not, label %if.end23, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false18
  %22 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read, align 4
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %offset, align 2
  %add28 = add i16 %25, 2
  %call30 = call i32 %23(ptr noundef %hw, i16 noundef zeroext %add28, ptr noundef nonnull %prod_ver) #7
  %26 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read, align 4
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %offset, align 2
  %add35 = add i16 %29, 3
  %call37 = call i32 %27(ptr noundef %hw, i16 noundef zeroext %add35, ptr noundef nonnull %rel_num) #7
  %30 = ptrtoint ptr %rel_num to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rel_num, align 2
  %32 = ptrtoint ptr %prod_ver to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %prod_ver, align 2
  %or75 = or i16 %33, %31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or75)
  %cmp40 = icmp eq i16 %or75, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp44 = icmp eq i16 %31, -1
  %or.cond = or i1 %cmp44, %cmp40
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp48 = icmp eq i16 %33, -1
  %or.cond76 = select i1 %or.cond, i1 true, i1 %cmp48
  br i1 %or.cond76, label %if.end23.cleanup_crit_edge, label %if.end51

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %34 = lshr i16 %33, 8
  %conv53 = trunc i16 %34 to i8
  %oem_major = getelementptr inbounds %struct.ixgbe_nvm_version, ptr %nvm_ver, i32 0, i32 5
  %35 = ptrtoint ptr %oem_major to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv53, ptr %oem_major, align 2
  %conv56 = trunc i16 %33 to i8
  %oem_minor = getelementptr inbounds %struct.ixgbe_nvm_version, ptr %nvm_ver, i32 0, i32 6
  %36 = ptrtoint ptr %oem_minor to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv56, ptr %oem_minor, align 1
  %oem_release = getelementptr inbounds %struct.ixgbe_nvm_version, ptr %nvm_ver, i32 0, i32 7
  %37 = ptrtoint ptr %oem_release to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %31, ptr %oem_release, align 4
  %38 = ptrtoint ptr %oem_valid to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %oem_valid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end23.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge77
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offset) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mod_len) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %prod_ver) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rel_num) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_get_etk_id(ptr noundef %hw, ptr nocapture noundef writeonly %nvm_ver) local_unnamed_addr #0 align 64 {
entry:
  %etk_id_l = alloca i16, align 2
  %etk_id_h = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %etk_id_l) #7
  %0 = ptrtoint ptr %etk_id_l to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %etk_id_l, align 2, !annotation !242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %etk_id_h) #7
  %1 = ptrtoint ptr %etk_id_h to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %etk_id_h, align 2, !annotation !242
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = call i32 %3(ptr noundef %hw, i16 noundef zeroext 45, ptr noundef nonnull %etk_id_l) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %etk_id_l to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %etk_id_l, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read, align 4
  %call4 = call i32 %6(ptr noundef %hw, i16 noundef zeroext 46, ptr noundef nonnull %etk_id_h) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %etk_id_h to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %etk_id_h, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %8 = ptrtoint ptr %etk_id_h to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %etk_id_h, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %10 = ptrtoint ptr %etk_id_l to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %etk_id_l, align 2
  %conv11 = zext i16 %11 to i32
  %conv11.conv = select i1 %cmp, i32 %conv11, i32 %conv
  %conv.conv11 = select i1 %cmp, i32 %conv, i32 %conv11
  %shl16 = shl nuw i32 %conv11.conv, 16
  %or18 = or i32 %shl16, %conv.conv11
  %12 = ptrtoint ptr %nvm_ver to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or18, ptr %nvm_ver, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %etk_id_h) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %etk_id_l) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_disable_rx_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12288) #7
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.then.if.end10_crit_edge, label %if.then1

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then1:                                         ; preds = %if.then
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 33312) #7
  %and3 = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then1.if.end10.sink.split_crit_edge, label %if.then5

if.then1.if.end10.sink.split_crit_edge:           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.sink.split

if.then5:                                         ; preds = %if.then1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then5.if.end10.sink.split_crit_edge, label %do.body1.i

if.then5.if.end10.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.sink.split

do.body1.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %and6 = and i32 %call2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %and6) #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 33312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !246
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %do.body1.i, %if.then5.if.end10.sink.split_crit_edge, %if.then1.if.end10.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then5.if.end10.sink.split_crit_edge ], [ 1, %do.body1.i ], [ 0, %if.then1.if.end10.sink.split_crit_edge ]
  %set_lben = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 24
  %5 = ptrtoint ptr %set_lben to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %set_lben, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.then.if.end10_crit_edge
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i23 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i23, label %if.end10.if.end12_crit_edge, label %do.body1.i25

if.end10.if.end12_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.body1.i25:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %and11 = and i32 %call, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and11) #7
  %add.ptr.i24 = getelementptr i8, ptr %7, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %8) #7, !srcloc !246
  br label %if.end12

if.end12:                                         ; preds = %do.body1.i25, %if.end10.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_enable_rx_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 12288) #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %ixgbe_write_reg.exit.if.end7_crit_edge, label %if.then

ixgbe_write_reg.exit.if.end7_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %ixgbe_write_reg.exit
  %set_lben = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 24
  %5 = ptrtoint ptr %set_lben to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %set_lben, align 4, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then2

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 33312) #7
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i15 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i15, label %if.then2.ixgbe_write_reg.exit18_crit_edge, label %do.body1.i17

if.then2.ixgbe_write_reg.exit18_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit18

do.body1.i17:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %or4 = or i32 %call3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or4) #7
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 33312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %9) #7, !srcloc !246
  br label %ixgbe_write_reg.exit18

ixgbe_write_reg.exit18:                           ; preds = %do.body1.i17, %if.then2.ixgbe_write_reg.exit18_crit_edge
  %10 = ptrtoint ptr %set_lben to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %set_lben, align 4
  br label %if.end7

if.end7:                                          ; preds = %ixgbe_write_reg.exit18, %if.then.if.end7_crit_edge, %ixgbe_write_reg.exit.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgbe_mng_present(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %5) #7
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_setup_mac_link_multispeed_fiber(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) local_unnamed_addr #0 align 64 {
entry:
  %link_speed = alloca i32, align 4
  %autoneg = alloca i8, align 1
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed) #7
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %link_speed, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %autoneg) #7
  %1 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %autoneg, align 1, !annotation !242
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %2 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %link_up, align 1
  %get_link_capabilities = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 30
  %3 = ptrtoint ptr %get_link_capabilities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_link_capabilities, align 4
  %call = call i32 %4(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %autoneg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %link_speed, align 4
  %and = and i32 %6, %speed
  %and1 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end41_crit_edge, label %if.then3

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then3:                                         ; preds = %if.end
  %media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %media_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %8, label %do.body6 [
    i32 1, label %sw.bb
    i32 2, label %if.then3.sw.epilog_crit_edge
  ]

if.then3.sw.epilog_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %set_rate_select_speed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 31
  %10 = ptrtoint ptr %set_rate_select_speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_rate_select_speed, align 4
  call void %11(ptr noundef %hw, i32 noundef 128) #7
  br label %sw.epilog

do.body6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_mac_link_multispeed_fiber.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_mac_link_multispeed_fiber, %if.then12)) #7
          to label %sw.epilog [label %if.then12], !srcloc !244

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_mac_link_multispeed_fiber.__UNIQUE_ID_ddebug420, ptr noundef %15, ptr noundef nonnull @.str.59) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then12, %do.body6, %sw.bb, %if.then3.sw.epilog_crit_edge
  call void @msleep(i32 noundef 40) #7
  %setup_mac_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 28
  %16 = ptrtoint ptr %setup_mac_link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setup_mac_link, align 4
  %call19 = call i32 %17(ptr noundef %hw, i32 noundef 128, i1 noundef zeroext %autoneg_wait_to_complete) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %sw.epilog
  %flap_tx_laser = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 25
  %18 = ptrtoint ptr %flap_tx_laser to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %flap_tx_laser, align 4
  %tobool25.not = icmp eq ptr %19, null
  br i1 %tobool25.not, label %if.end22.if.end30_crit_edge, label %if.then26

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void %19(ptr noundef %hw) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end22.if.end30_crit_edge
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  call void @msleep(i32 noundef 100) #7
  %20 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %check_link, align 4
  %call33 = call i32 %21(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %if.end36
  call void @msleep(i32 noundef 100) #7
  %22 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %check_link, align 4
  %call33.1 = call i32 %23(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.1)
  %tobool34.not.1 = icmp eq i32 %call33.1, 0
  br i1 %tobool34.not.1, label %if.end36.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36.1:                                       ; preds = %for.cond
  %24 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %link_up, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool37.not.1 = icmp eq i8 %25, 0
  br i1 %tobool37.not.1, label %for.cond.1, label %if.end36.1.out_crit_edge

if.end36.1.out_crit_edge:                         ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.1:                                       ; preds = %if.end36.1
  call void @msleep(i32 noundef 100) #7
  %26 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %check_link, align 4
  %call33.2 = call i32 %27(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.2)
  %tobool34.not.2 = icmp eq i32 %call33.2, 0
  br i1 %tobool34.not.2, label %if.end36.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36.2:                                       ; preds = %for.cond.1
  %28 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %link_up, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool37.not.2 = icmp eq i8 %29, 0
  br i1 %tobool37.not.2, label %for.cond.2, label %if.end36.2.out_crit_edge

if.end36.2.out_crit_edge:                         ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.2:                                       ; preds = %if.end36.2
  call void @msleep(i32 noundef 100) #7
  %30 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %check_link, align 4
  %call33.3 = call i32 %31(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.3)
  %tobool34.not.3 = icmp eq i32 %call33.3, 0
  br i1 %tobool34.not.3, label %if.end36.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36.3:                                       ; preds = %for.cond.2
  %32 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %link_up, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool37.not.3 = icmp eq i8 %33, 0
  br i1 %tobool37.not.3, label %for.cond.3, label %if.end36.3.out_crit_edge

if.end36.3.out_crit_edge:                         ; preds = %if.end36.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.3:                                       ; preds = %if.end36.3
  call void @msleep(i32 noundef 100) #7
  %34 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %check_link, align 4
  %call33.4 = call i32 %35(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.4)
  %tobool34.not.4 = icmp eq i32 %call33.4, 0
  br i1 %tobool34.not.4, label %if.end36.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36.4:                                       ; preds = %for.cond.3
  %36 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %link_up, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool37.not.4 = icmp eq i8 %37, 0
  br i1 %tobool37.not.4, label %if.end36.4.if.end41_crit_edge, label %if.end36.4.out_crit_edge

if.end36.4.out_crit_edge:                         ; preds = %if.end36.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end36.4.if.end41_crit_edge:                    ; preds = %if.end36.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end36:                                         ; preds = %if.end30
  %38 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %link_up, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool37.not = icmp eq i8 %39, 0
  br i1 %tobool37.not, label %for.cond, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end41:                                         ; preds = %if.end36.4.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %spec.store.select = phi i32 [ 32, %if.end.if.end41_crit_edge ], [ 128, %if.end36.4.if.end41_crit_edge ]
  %40 = xor i1 %tobool2.not, true
  %and42 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %out.thread197, label %if.then44

out.thread197:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %autoneg_advertised200 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %41 = ptrtoint ptr %autoneg_advertised200 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and1, ptr %autoneg_advertised200, align 4
  br label %cleanup

if.then44:                                        ; preds = %if.end41
  %media_type50 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 7
  %42 = ptrtoint ptr %media_type50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %media_type50, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %43, label %do.body57 [
    i32 1, label %sw.bb51
    i32 2, label %if.then44.sw.epilog77_crit_edge
  ]

if.then44.sw.epilog77_crit_edge:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog77

sw.bb51:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %set_rate_select_speed54 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 31
  %45 = ptrtoint ptr %set_rate_select_speed54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_rate_select_speed54, align 4
  call void %46(ptr noundef %hw, i32 noundef 32) #7
  br label %sw.epilog77

do.body57:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_mac_link_multispeed_fiber.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_mac_link_multispeed_fiber, %if.then69)) #7
          to label %sw.epilog77 [label %if.then69], !srcloc !244

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %back70 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %47 = ptrtoint ptr %back70 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %back70, align 4
  %netdev71 = getelementptr inbounds %struct.ixgbe_adapter, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %netdev71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev71, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_mac_link_multispeed_fiber.__UNIQUE_ID_ddebug421, ptr noundef %50, ptr noundef nonnull @.str.59) #7
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %if.then69, %do.body57, %sw.bb51, %if.then44.sw.epilog77_crit_edge
  call void @msleep(i32 noundef 40) #7
  %setup_mac_link80 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 28
  %51 = ptrtoint ptr %setup_mac_link80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %setup_mac_link80, align 4
  %call82 = call i32 %52(ptr noundef %hw, i32 noundef 32, i1 noundef zeroext %autoneg_wait_to_complete) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %sw.epilog77.cleanup_crit_edge

sw.epilog77.cleanup_crit_edge:                    ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end85:                                         ; preds = %sw.epilog77
  %flap_tx_laser88 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 25
  %53 = ptrtoint ptr %flap_tx_laser88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %flap_tx_laser88, align 4
  %tobool89.not = icmp eq ptr %54, null
  br i1 %tobool89.not, label %if.end85.if.end94_crit_edge, label %if.then90

if.end85.if.end94_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  call void %54(ptr noundef %hw) #7
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end85.if.end94_crit_edge
  call void @msleep(i32 noundef 100) #7
  %check_link97 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %55 = ptrtoint ptr %check_link97 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %check_link97, align 4
  %call98 = call i32 %56(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  %57 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %link_up, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool102.not = icmp eq i8 %58, 0
  %or.cond = select i1 %tobool102.not, i1 %40, i1 false
  br i1 %or.cond, label %if.then107, label %if.end101.out.thread_crit_edge

if.end101.out.thread_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %call109 = call i32 @ixgbe_setup_mac_link_multispeed_fiber(ptr noundef %hw, i32 noundef %spec.store.select, i1 noundef zeroext %autoneg_wait_to_complete)
  br label %out.thread

out.thread:                                       ; preds = %if.then107, %if.end101.out.thread_crit_edge
  %status.3.ph = phi i32 [ 0, %if.end101.out.thread_crit_edge ], [ %call109, %if.then107 ]
  %autoneg_advertised193 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  br label %if.then120

out:                                              ; preds = %if.end36.out_crit_edge, %if.end36.4.out_crit_edge, %if.end36.3.out_crit_edge, %if.end36.2.out_crit_edge, %if.end36.1.out_crit_edge
  %.pre = and i32 %and, 32
  %autoneg_advertised = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %59 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and1, ptr %autoneg_advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool119.not = icmp eq i32 %.pre, 0
  br i1 %tobool119.not, label %out.cleanup_crit_edge, label %out.if.then120_crit_edge

out.if.then120_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then120

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then120:                                       ; preds = %out.if.then120_crit_edge, %out.thread
  %autoneg_advertised196 = phi ptr [ %autoneg_advertised193, %out.thread ], [ %autoneg_advertised, %out.if.then120_crit_edge ]
  %status.3195 = phi i32 [ %status.3.ph, %out.thread ], [ 0, %out.if.then120_crit_edge ]
  %or123 = or i32 %and1, 32
  %60 = ptrtoint ptr %autoneg_advertised196 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or123, ptr %autoneg_advertised196, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %out.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %sw.epilog77.cleanup_crit_edge, %out.thread197, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call19, %sw.epilog.cleanup_crit_edge ], [ %call82, %sw.epilog77.cleanup_crit_edge ], [ %call98, %if.end94.cleanup_crit_edge ], [ %status.3195, %if.then120 ], [ 0, %out.cleanup_crit_edge ], [ 0, %out.thread197 ], [ %call33, %if.end30.cleanup_crit_edge ], [ %call33.1, %for.cond.cleanup_crit_edge ], [ %call33.2, %for.cond.1.cleanup_crit_edge ], [ %call33.3, %for.cond.2.cleanup_crit_edge ], [ %call33.4, %for.cond.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %autoneg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_set_soft_rate_select_speed(ptr noundef %hw, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  %eeprom_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eeprom_data) #7
  %0 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %eeprom_data, align 1, !annotation !242
  %1 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %speed, label %do.body2 [
    i32 128, label %entry.sw.epilog_crit_edge
    i32 32, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_soft_rate_select_speed, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !244

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug422, ptr noundef %5, ptr noundef nonnull @.str.61) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %rs.0 = phi i8 [ 0, %sw.bb1 ], [ 8, %entry.sw.epilog_crit_edge ]
  %read_i2c_byte = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 12
  %6 = ptrtoint ptr %read_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_i2c_byte, align 4
  %call7 = call i32 %7(ptr noundef %hw, i8 noundef zeroext 110, i8 noundef zeroext -94, ptr noundef nonnull %eeprom_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end31, label %do.body11

do.body11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_soft_rate_select_speed, %if.then23)) #7
          to label %cleanup [label %if.then23], !srcloc !244

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %back24 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %back24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back24, align 4
  %netdev25 = getelementptr inbounds %struct.ixgbe_adapter, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %netdev25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev25, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug423, ptr noundef %11, ptr noundef nonnull @.str.62) #7
  br label %cleanup

if.end31:                                         ; preds = %sw.epilog
  %12 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eeprom_data, align 1
  %14 = and i8 %13, -9
  %conv33 = or i8 %14, %rs.0
  store i8 %conv33, ptr %eeprom_data, align 1
  %write_i2c_byte = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %15 = ptrtoint ptr %write_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_i2c_byte, align 4
  %call36 = call i32 %16(ptr noundef %hw, i8 noundef zeroext 110, i8 noundef zeroext -94, i8 noundef zeroext %conv33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end60, label %do.body40

do.body40:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_soft_rate_select_speed, %if.then52)) #7
          to label %cleanup [label %if.then52], !srcloc !244

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %back53 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %back53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %back53, align 4
  %netdev54 = getelementptr inbounds %struct.ixgbe_adapter, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %netdev54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev54, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug424, ptr noundef %20, ptr noundef nonnull @.str.63) #7
  br label %cleanup

if.end60:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %read_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_i2c_byte, align 4
  %call64 = call i32 %22(ptr noundef %hw, i8 noundef zeroext 118, i8 noundef zeroext -94, ptr noundef nonnull %eeprom_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end88, label %do.body68

do.body68:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_soft_rate_select_speed, %if.then80)) #7
          to label %cleanup [label %if.then80], !srcloc !244

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  %back81 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %back81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back81, align 4
  %netdev82 = getelementptr inbounds %struct.ixgbe_adapter, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %netdev82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev82, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug425, ptr noundef %26, ptr noundef nonnull @.str.64) #7
  br label %cleanup

if.end88:                                         ; preds = %if.end60
  %27 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %eeprom_data, align 1
  %29 = and i8 %28, -9
  %conv93 = or i8 %29, %rs.0
  store i8 %conv93, ptr %eeprom_data, align 1
  %30 = ptrtoint ptr %write_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_i2c_byte, align 4
  %call97 = call i32 %31(ptr noundef %hw, i8 noundef zeroext 118, i8 noundef zeroext -94, i8 noundef zeroext %conv93) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end88.cleanup_crit_edge, label %do.body101

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body101:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_soft_rate_select_speed, %if.then113)) #7
          to label %cleanup [label %if.then113], !srcloc !244

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %back114 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %32 = ptrtoint ptr %back114 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %back114, align 4
  %netdev115 = getelementptr inbounds %struct.ixgbe_adapter, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %netdev115 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev115, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug426, ptr noundef %35, ptr noundef nonnull @.str.65) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %do.body101, %if.end88.cleanup_crit_edge, %if.then80, %do.body68, %if.then52, %do.body40, %if.then23, %do.body11, %if.then, %do.body2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eeprom_data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_acquire_eeprom(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvals, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %5) #7
  %6 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvals, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.for.body.preheader_crit_edge, label %do.body1.i

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call1, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !246
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body1.i, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.preheader
  %i.065 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %13 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mvals, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %call7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %16) #7
  %and = and i32 %call7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.end27

if.end9:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #7
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then12, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then12:                                        ; preds = %if.end9
  %18 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mvals, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i56 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i56, label %if.then12.ixgbe_write_reg.exit59_crit_edge, label %do.body1.i58

if.then12.ixgbe_write_reg.exit59_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit59

do.body1.i58:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %and13 = and i32 %call7, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %and13) #7
  %add.ptr.i57 = getelementptr i8, ptr %23, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %24) #7, !srcloc !246
  br label %ixgbe_write_reg.exit59

ixgbe_write_reg.exit59:                           ; preds = %do.body1.i58, %if.then12.ixgbe_write_reg.exit59_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_acquire_eeprom.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_acquire_eeprom, %if.then21)) #7
          to label %do.end24 [label %if.then21], !srcloc !244

if.then21:                                        ; preds = %ixgbe_write_reg.exit59
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %25 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_acquire_eeprom.__UNIQUE_ID_ddebug376, ptr noundef %28, ptr noundef nonnull @.str.67) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %ixgbe_write_reg.exit59
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %29 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %30(ptr noundef %hw, i32 noundef 1) #7
  br label %cleanup

if.end27:                                         ; preds = %for.body
  %31 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mvals, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i60 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i60, label %if.end27.ixgbe_write_reg.exit63_crit_edge, label %do.body1.i62

if.end27.ixgbe_write_reg.exit63_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit63

do.body1.i62:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %and28 = and i32 %call7, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %and28) #7
  %add.ptr.i61 = getelementptr i8, ptr %36, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %37) #7, !srcloc !246
  br label %ixgbe_write_reg.exit63

ixgbe_write_reg.exit63:                           ; preds = %do.body1.i62, %if.end27.ixgbe_write_reg.exit63_crit_edge
  %call31 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit63, %do.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit63 ], [ -1, %do.end24 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_release_eeprom(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #7
  %or = and i32 %call, -4
  %and = or i32 %or, 2
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #7
  %12 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvals, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i24 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i24, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit27_crit_edge, label %do.body1.i26

ixgbe_write_reg.exit.ixgbe_write_reg.exit27_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit27

do.body1.i26:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = and i32 %and, -66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %and4) #7
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %18) #7, !srcloc !246
  br label %ixgbe_write_reg.exit27

ixgbe_write_reg.exit27:                           ; preds = %do.body1.i26, %ixgbe_write_reg.exit.ixgbe_write_reg.exit27_crit_edge
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %19 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %20(ptr noundef %hw, i32 noundef 1) #7
  %semaphore_delay = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %semaphore_delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %semaphore_delay, align 4
  %mul = mul i32 %22, 1000
  %mul9 = mul i32 %22, 2000
  tail call void @usleep_range_state(i32 noundef %mul, i32 noundef %mul9, i32 noundef 2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_standby_eeprom(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #7
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #7
  %12 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvals, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i17 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i17, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit20_crit_edge, label %do.body1.i19

ixgbe_write_reg.exit.ixgbe_write_reg.exit20_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit20

do.body1.i19:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i18 = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %18) #7, !srcloc !246
  br label %ixgbe_write_reg.exit20

ixgbe_write_reg.exit20:                           ; preds = %do.body1.i19, %ixgbe_write_reg.exit.ixgbe_write_reg.exit20_crit_edge
  %call6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_shift_out_eeprom_bits(ptr noundef %hw, i16 noundef zeroext %data, i16 noundef zeroext %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #7
  %conv = zext i16 %count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp37.not = icmp eq i16 %count, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %conv3 = zext i16 %data to i32
  br label %for.body

for.body:                                         ; preds = %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge ]
  %mask.039 = phi i32 [ %shl, %for.body.lr.ph ], [ %shr, %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge ]
  %eec.038 = phi i32 [ %call, %for.body.lr.ph ], [ %and.i, %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge ]
  %and = and i32 %mask.039, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %eec.038, -5
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %storemerge = or i32 %masksel, %and4
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %for.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

for.body.ixgbe_write_reg.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %storemerge) #7
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !246
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %for.body.ixgbe_write_reg.exit_crit_edge
  %call7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #7
  %12 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvals, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %ixgbe_write_reg.exit.ixgbe_raise_eeprom_clk.exit_crit_edge, label %do.body1.i.i

ixgbe_write_reg.exit.ixgbe_raise_eeprom_clk.exit_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_raise_eeprom_clk.exit

do.body1.i.i:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %storemerge, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #7, !srcloc !246
  br label %ixgbe_raise_eeprom_clk.exit

ixgbe_raise_eeprom_clk.exit:                      ; preds = %do.body1.i.i, %ixgbe_write_reg.exit.ixgbe_raise_eeprom_clk.exit_crit_edge
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #7
  %and.i = and i32 %storemerge, -2
  %20 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvals, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i25 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i25, label %ixgbe_raise_eeprom_clk.exit.ixgbe_lower_eeprom_clk.exit_crit_edge, label %do.body1.i.i27

ixgbe_raise_eeprom_clk.exit.ixgbe_lower_eeprom_clk.exit_crit_edge: ; preds = %ixgbe_raise_eeprom_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_lower_eeprom_clk.exit

do.body1.i.i27:                                   ; preds = %ixgbe_raise_eeprom_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr.i.i26 = getelementptr i8, ptr %25, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26, i32 %26) #7, !srcloc !246
  br label %ixgbe_lower_eeprom_clk.exit

ixgbe_lower_eeprom_clk.exit:                      ; preds = %do.body1.i.i27, %ixgbe_raise_eeprom_clk.exit.ixgbe_lower_eeprom_clk.exit_crit_edge
  %call.i28 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #7
  %shr = lshr i32 %mask.039, 1
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %ixgbe_lower_eeprom_clk.exit.for.end_crit_edge, label %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge

ixgbe_lower_eeprom_clk.exit.for.body_crit_edge:   ; preds = %ixgbe_lower_eeprom_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

ixgbe_lower_eeprom_clk.exit.for.end_crit_edge:    ; preds = %ixgbe_lower_eeprom_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %ixgbe_lower_eeprom_clk.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %eec.0.lcssa = phi i32 [ %call, %entry.for.end_crit_edge ], [ %and.i, %ixgbe_lower_eeprom_clk.exit.for.end_crit_edge ]
  %28 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mvals, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i29 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i29, label %for.end.ixgbe_write_reg.exit32_crit_edge, label %do.body1.i31

for.end.ixgbe_write_reg.exit32_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit32

do.body1.i31:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = and i32 %eec.0.lcssa, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %and8) #7
  %add.ptr.i30 = getelementptr i8, ptr %33, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %34) #7, !srcloc !246
  br label %ixgbe_write_reg.exit32

ixgbe_write_reg.exit32:                           ; preds = %do.body1.i31, %for.end.ixgbe_write_reg.exit32_crit_edge
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @ixgbe_shift_in_eeprom_bits(ptr noundef %hw, i16 noundef zeroext %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #7
  %conv = zext i16 %count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp25.not = icmp eq i16 %count, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %and = and i32 %call, -13
  br label %for.body

for.body:                                         ; preds = %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge, %for.body.preheader
  %data.028 = phi i16 [ %19, %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.027 = phi i32 [ %inc, %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %eec.026 = phi i32 [ %and.i, %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge ], [ %and, %for.body.preheader ]
  %shl = shl i16 %data.028, 1
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %for.body.ixgbe_raise_eeprom_clk.exit_crit_edge, label %do.body1.i.i

for.body.ixgbe_raise_eeprom_clk.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_raise_eeprom_clk.exit

do.body1.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %eec.026, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #7, !srcloc !246
  br label %ixgbe_raise_eeprom_clk.exit

ixgbe_raise_eeprom_clk.exit:                      ; preds = %do.body1.i.i, %for.body.ixgbe_raise_eeprom_clk.exit_crit_edge
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #7
  %12 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvals, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %15) #7
  %16 = trunc i32 %call6 to i16
  %17 = lshr i16 %16, 3
  %18 = and i16 %17, 1
  %19 = or i16 %18, %shl
  %and.i = and i32 %call6, -6
  %20 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvals, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i20 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i20, label %ixgbe_raise_eeprom_clk.exit.ixgbe_lower_eeprom_clk.exit_crit_edge, label %do.body1.i.i22

ixgbe_raise_eeprom_clk.exit.ixgbe_lower_eeprom_clk.exit_crit_edge: ; preds = %ixgbe_raise_eeprom_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_lower_eeprom_clk.exit

do.body1.i.i22:                                   ; preds = %ixgbe_raise_eeprom_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr.i.i21 = getelementptr i8, ptr %25, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %26) #7, !srcloc !246
  br label %ixgbe_lower_eeprom_clk.exit

ixgbe_lower_eeprom_clk.exit:                      ; preds = %do.body1.i.i22, %ixgbe_raise_eeprom_clk.exit.ixgbe_lower_eeprom_clk.exit_crit_edge
  %call.i23 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %ixgbe_lower_eeprom_clk.exit.for.end_crit_edge, label %ixgbe_lower_eeprom_clk.exit.for.body_crit_edge

ixgbe_lower_eeprom_clk.exit.for.body_crit_edge:   ; preds = %ixgbe_lower_eeprom_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

ixgbe_lower_eeprom_clk.exit.for.end_crit_edge:    ; preds = %ixgbe_lower_eeprom_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %ixgbe_lower_eeprom_clk.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %data.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %19, %ixgbe_lower_eeprom_clk.exit.for.end_crit_edge ]
  ret i16 %data.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !27, !28, !30, !32, !33, !35, !36, !38, !40, !41, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !69, !71, !72, !74, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !135, !137, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !167, !169, !171, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !217, !218, !219, !221, !222, !224, !225, !227, !228, !229, !231}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @ixgbe_mvals_8259X, !1, !"ixgbe_mvals_8259X", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 36, i32 11}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 102, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ixgbe_device_supports_autoneg_fc.__UNIQUE_ID_ddebug357, !3, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 126, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug358, !9, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 217, i32 3}
!14 = !{ptr @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug359, !13, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 234, i32 3}
!17 = !{ptr @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug360, !16, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 257, i32 2}
!20 = !{ptr @ixgbe_setup_fc_generic.__UNIQUE_ID_ddebug361, !19, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 502, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug362, !22, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 508, i32 3}
!27 = !{ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug363, !26, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!28 = !{ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug364, !29, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 514, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 524, i32 3}
!32 = !{ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug365, !31, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 528, i32 4}
!35 = !{ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug366, !34, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!36 = !{ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug367, !37, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 560, i32 3}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 565, i32 3}
!40 = !{ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug368, !39, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!41 = !{ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug369, !42, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 571, i32 3}
!43 = !{ptr @ixgbe_read_pba_string_generic.__UNIQUE_ID_ddebug370, !44, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 582, i32 4}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 883, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ixgbe_init_eeprom_params_generic.__UNIQUE_ID_ddebug371, !46, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1185, i32 4}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ixgbe_read_eerd_buffer_generic.__UNIQUE_ID_ddebug372, !50, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1278, i32 4}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug374, !54, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!57 = !{ptr @ixgbe_write_eewr_buffer_generic.__UNIQUE_ID_ddebug375, !58, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1286, i32 4}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1708, i32 4}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug381, !60, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!63 = !{ptr @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug382, !64, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1717, i32 4}
!65 = !{ptr @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug383, !66, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1726, i32 4}
!67 = !{ptr @ixgbe_calc_eeprom_checksum_generic.__UNIQUE_ID_ddebug384, !68, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1735, i32 5}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1769, i32 3}
!71 = !{ptr @ixgbe_validate_eeprom_checksum_generic.__UNIQUE_ID_ddebug385, !70, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!72 = !{ptr @ixgbe_validate_eeprom_checksum_generic.__UNIQUE_ID_ddebug386, !73, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1781, i32 3}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1814, i32 3}
!76 = !{ptr @ixgbe_update_eeprom_checksum_generic.__UNIQUE_ID_ddebug387, !75, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1847, i32 3}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ixgbe_set_rar_generic.__UNIQUE_ID_ddebug388, !78, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1899, i32 3}
!83 = !{ptr @ixgbe_clear_rar_generic.__UNIQUE_ID_ddebug389, !82, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1947, i32 3}
!86 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug390, !85, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1950, i32 3}
!90 = !{ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug391, !89, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1951, i32 3}
!93 = !{ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug392, !92, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1964, i32 2}
!96 = !{ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug393, !95, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1974, i32 2}
!99 = !{ptr @ixgbe_init_rx_addrs_generic.__UNIQUE_ID_ddebug394, !98, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2079, i32 2}
!102 = !{ptr @ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug397, !101, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2084, i32 3}
!105 = !{ptr @ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug398, !104, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2097, i32 2}
!108 = !{ptr @ixgbe_update_mc_addr_list_generic.__UNIQUE_ID_ddebug399, !107, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2157, i32 5}
!111 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ixgbe_fc_enable_generic.__UNIQUE_ID_ddebug400, !110, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!113 = !{ptr @ixgbe_fc_enable_generic.__UNIQUE_ID_ddebug401, !114, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2214, i32 3}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2284, i32 4}
!117 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug402, !116, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2287, i32 4}
!121 = !{ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug403, !120, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2292, i32 3}
!124 = !{ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug404, !123, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2296, i32 3}
!127 = !{ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug405, !126, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2299, i32 3}
!130 = !{ptr @ixgbe_negotiate_fc.__UNIQUE_ID_ddebug406, !129, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2704, i32 3}
!133 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ixgbe_disable_rx_buff_generic.__UNIQUE_ID_ddebug410, !132, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2889, i32 4}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2965, i32 3}
!139 = !{ptr @ixgbe_clear_vmdq_generic.__UNIQUE_ID_ddebug411, !138, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3016, i32 3}
!142 = !{ptr @ixgbe_set_vmdq_generic.__UNIQUE_ID_ddebug412, !141, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!143 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3333, i32 3}
!145 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ixgbe_check_mac_link_generic.__UNIQUE_ID_ddebug414, !144, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3611, i32 3}
!149 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ixgbe_hic_unlocked.__UNIQUE_ID_ddebug415, !148, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3622, i32 3}
!153 = !{ptr @ixgbe_hic_unlocked.__UNIQUE_ID_ddebug416, !152, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3628, i32 3}
!156 = !{ptr @ixgbe_hic_unlocked.__UNIQUE_ID_ddebug417, !155, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3688, i32 3}
!159 = !{ptr @ixgbe_host_interface_command.__UNIQUE_ID_ddebug418, !158, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!160 = !{ptr @.str.57, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3718, i32 3}
!162 = !{ptr @ixgbe_host_interface_command.__UNIQUE_ID_ddebug419, !161, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!163 = !{ptr @.str.58, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 4228, i32 4}
!165 = !{ptr @.str.59, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @ixgbe_setup_mac_link_multispeed_fiber.__UNIQUE_ID_ddebug420, !164, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!167 = !{ptr @ixgbe_setup_mac_link_multispeed_fiber.__UNIQUE_ID_ddebug421, !168, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 4279, i32 4}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 4353, i32 3}
!171 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug422, !170, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 4362, i32 3}
!175 = !{ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug423, !174, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!176 = !{ptr @.str.63, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 4372, i32 3}
!178 = !{ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug424, !177, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!179 = !{ptr @.str.64, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 4381, i32 3}
!181 = !{ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug425, !180, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!182 = !{ptr @.str.65, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 4391, i32 3}
!184 = !{ptr @ixgbe_set_soft_rate_select_speed.__UNIQUE_ID_ddebug426, !183, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!185 = !{ptr @.str.66, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1366, i32 3}
!187 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @ixgbe_acquire_eeprom.__UNIQUE_ID_ddebug376, !186, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!189 = !{ptr @.str.68, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1505, i32 3}
!191 = !{ptr @.str.69, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @ixgbe_ready_eeprom.__UNIQUE_ID_ddebug380, !190, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!193 = !{ptr @.str.70, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1229, i32 2}
!195 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @ixgbe_detect_eeprom_page_size_generic.__UNIQUE_ID_ddebug373, !194, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!197 = !{ptr @.str.72, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2039, i32 2}
!199 = !{ptr @.str.73, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @ixgbe_set_mta.__UNIQUE_ID_ddebug396, !198, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!201 = !{ptr @.str.74, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2014, i32 3}
!203 = !{ptr @.str.75, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @ixgbe_mta_vector.__UNIQUE_ID_ddebug395, !202, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!205 = !{ptr @.str.76, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2532, i32 3}
!207 = !{ptr @.str.77, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug407, !206, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!209 = !{ptr @.str.78, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2556, i32 2}
!211 = !{ptr @ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug408, !210, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!212 = !{ptr @.str.79, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 2577, i32 2}
!214 = !{ptr @ixgbe_disable_pcie_master.__UNIQUE_ID_ddebug409, !213, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!215 = !{ptr @.str.80, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1406, i32 3}
!217 = !{ptr @.str.81, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug377, !216, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!219 = !{ptr @.str.82, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1421, i32 4}
!221 = !{ptr @ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug378, !220, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!222 = !{ptr @.str.83, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 1448, i32 3}
!224 = !{ptr @ixgbe_get_eeprom_semaphore.__UNIQUE_ID_ddebug379, !223, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!225 = !{ptr @.str.84, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3116, i32 3}
!227 = !{ptr @.str.85, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @ixgbe_find_vlvf_slot.__UNIQUE_ID_ddebug413, !226, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!229 = !{ptr @ixgbe_emc_temp_data, !230, !"ixgbe_emc_temp_data", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3854, i32 17}
!231 = !{ptr @ixgbe_emc_therm_limit, !232, !"ixgbe_emc_therm_limit", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c", i32 3860, i32 17}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{!"auto-init"}
!243 = !{i8 0, i8 2}
!244 = !{i64 2148605795, i64 2148605800, i64 2148605813, i64 2148605857, i64 2148605891, i64 2148605912}
!245 = !{i64 2157376519}
!246 = !{i64 5100392}
