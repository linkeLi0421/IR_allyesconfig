; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igb/e1000_mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.igb_adapter = type { [128 x i32], ptr, ptr, i32, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x ptr], i32, [16 x ptr], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, ptr, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i32, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, i32, [28 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x ptr], i32, i32, i16, i16, i32, ptr, i32, i32, i32, ptr, ptr, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.133], [32 x i8], ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, ptr, i32, [128 x i8], i32, i32, %struct.e1000_info, i16, %struct.hlist_head, %struct.hlist_head, i32, %struct.spinlock, [3 x i8], ptr, %struct.vf_mac_filter, ptr, [60 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igb_ring = type { ptr, ptr, ptr, ptr, %union.anon.122, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.126, [88 x i8], %struct.xdp_rxq_info }
%union.anon.122 = type { ptr }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { %struct.igb_tx_queue_stats, %struct.u64_stats_sync, %struct.u64_stats_sync }
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
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
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
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }

@igb_init_rx_addrs.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igb\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igb_init_rx_addrs\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/igb/e1000_mac.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Programming MAC Address into RAR[0]\0A\00", [59 x i8] zeroinitializer }, align 32
@igb_init_rx_addrs.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Clearing RAR[1-%u]\0A\00", [44 x i8] zeroinitializer }, align 32
@igb_check_alt_mac_addr.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igb_check_alt_mac_addr\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@igb_check_alt_mac_addr.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_check_alt_mac_addr.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Ignoring Alternate Mac Address with MC bit set\0A\00", [48 x i8] zeroinitializer }, align 32
@igb_check_for_copper_link.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igb_check_for_copper_link\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error configuring flow control\0A\00", [32 x i8] zeroinitializer }, align 32
@igb_setup_link.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"igb_setup_link\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", [57 x i8] zeroinitializer }, align 32
@igb_setup_link.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Initializing the Flow Control address, type and timer regs\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_force_mac_fc.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igb_force_mac_fc\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hw->fc.current_mode = %u\0A\00", [38 x i8] zeroinitializer }, align 32
@igb_force_mac_fc.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"igb_config_fc_after_link_up\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error forcing flow control settings\0A\00", [59 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Copper PHY and Auto Neg has not completed.\0A\00", [52 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control = FULL.\0A\00", [42 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = RX PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 1, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = TX PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.22, i8 1, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control = NONE.\0A\00", [42 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 1, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.23, i8 1, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error getting link speed and duplex\0A\00", [59 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.24, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCS Auto Neg has not completed.\0A\00", [63 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 1, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.25, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = Rx PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.26, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = Tx PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.25, i8 1, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.22, i8 1, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_config_fc_after_link_up.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 1, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"igb_get_speed_and_duplex_copper\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000 Mbs, \00", [21 x i8] zeroinitializer }, align 32
@igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 1, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100 Mbs, \00", [22 x i8] zeroinitializer }, align 32
@igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"10 Mbs, \00", [23 x i8] zeroinitializer }, align 32
@igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 1, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Full Duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.32, i8 1, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Half Duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@igb_get_hw_semaphore.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igb_get_hw_semaphore\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Driver can't access device - SMBI bit is set.\0A\00", [49 x i8] zeroinitializer }, align 32
@igb_get_hw_semaphore.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 1, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Driver can't access the NVM\0A\00", [35 x i8] zeroinitializer }, align 32
@igb_get_auto_rd_done.__UNIQUE_ID_ddebug440 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igb_get_auto_rd_done\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Auto read by HW from NVM has not completed.\0A\00", [51 x i8] zeroinitializer }, align 32
@igb_disable_pcie_master.__UNIQUE_ID_ddebug446 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igb_disable_pcie_master\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Master requests are pending.\0A\00", [34 x i8] zeroinitializer }, align 32
@igb_validate_mdi_setting.__UNIQUE_ID_ddebug447 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 1, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igb_validate_mdi_setting\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid MDI setting detected\0A\00", [34 x i8] zeroinitializer }, align 32
@igb_write_8bit_ctrl_reg.__UNIQUE_ID_ddebug449 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igb_write_8bit_ctrl_reg\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Reg %08x did not indicate ready\0A\00", [63 x i8] zeroinitializer }, align 32
@igb_i21x_hw_doublecheck.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igb_i21x_hw_doublecheck\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to update MTA_REGISTER, too many retries\00", [48 x i8] zeroinitializer }, align 32
@igb_set_default_fc.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.6, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"igb_set_default_fc\00", [45 x i8] zeroinitializer }, align 32
@igb_valid_led_default.__UNIQUE_ID_ddebug441 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.6, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igb_valid_led_default\00", [42 x i8] zeroinitializer }, align 32
@switch.table.igb_id_led_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 14, i32 15, i32 15, i32 14, i32 15], [44 x i8] zeroinitializer }, align 32
@switch.table.igb_id_led_init.48 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3584, i32 3840, i32 3840, i32 3584, i32 3840], [44 x i8] zeroinitializer }, align 32
@switch.table.igb_id_led_init.49 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 917504, i32 983040, i32 983040, i32 917504, i32 983040], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 12, i64 2048, i64 3072]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.56 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.57 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.58 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.59 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 113, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 118, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 303, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 333, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 662, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 703, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 715, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 861, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 879, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 921, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 945, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1007, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1010, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1025, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1065, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1077, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1106, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1165, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1180, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1238, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1241, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1244, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1249, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1252, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1282, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1302, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1348, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1571, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1596, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1635, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 509, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 812, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [46 x i8] c"../drivers/net/ethernet/intel/igb/e1000_mac.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1371, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [29 x i8] c"switch.table.igb_id_led_init\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [32 x i8] c"switch.table.igb_id_led_init.48\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [32 x i8] c"switch.table.igb_id_led_init.49\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @switch.table.igb_id_led_init, ptr @switch.table.igb_id_led_init.48, ptr @switch.table.igb_id_led_init.49], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_id_led_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_id_led_init.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_id_led_init.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_bus_info_pcie(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %pcie_link_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcie_link_status) #4
  %0 = ptrtoint ptr %pcie_link_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pcie_link_status, align 2, !annotation !139
  %1 = ptrtoint ptr %bus1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %bus1, align 4
  %call = call i32 @igb_read_pcie_cap_reg(ptr noundef %hw, i32 noundef 18, ptr noundef nonnull %pcie_link_status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %width = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %width, align 4
  %speed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %speed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pcie_link_status to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pcie_link_status, align 2
  %6 = and i16 %5, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %switch.selectcmp = icmp eq i16 %6, 2
  %switch.select = select i1 %switch.selectcmp, i32 7, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %switch.selectcmp22 = icmp eq i16 %6, 1
  %switch.select23 = select i1 %switch.selectcmp22, i32 6, i32 %switch.select
  %speed5 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %speed5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.select23, ptr %speed5, align 4
  %8 = lshr i16 %5, 4
  %9 = and i16 %8, 63
  %10 = zext i16 %9 to i32
  %width8 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %width8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call9 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %12 = trunc i32 %call9 to i16
  %13 = lshr i16 %12, 2
  %conv12 = and i16 %13, 3
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv12, ptr %func, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcie_link_status) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_pcie_cap_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_clear_vfta(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write_vfta = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %offset.03 = phi i32 [ 128, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %dec = add nsw i32 %offset.03, -1
  %0 = ptrtoint ptr %write_vfta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_vfta, align 4
  tail call void %1(ptr noundef %hw, i32 noundef %dec, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_write_vfta(ptr noundef %hw, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !140

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %value)
  %shl = shl i32 %offset, 2
  %add = add i32 %shl, 22016
  %arrayidx = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !142
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %shadow_vfta = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 55
  %5 = ptrtoint ptr %shadow_vfta to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shadow_vfta, align 4
  %arrayidx11 = getelementptr i32, ptr %6, i32 %offset
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %value, ptr %arrayidx11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_init_rx_addrs(ptr noundef %hw, i16 noundef zeroext %rar_count) local_unnamed_addr #0 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #4
  %0 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_init_rx_addrs.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_init_rx_addrs, %if.then)) #4
          to label %do.end6 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_init_rx_addrs.__UNIQUE_ID_ddebug386, ptr noundef %call4, ptr noundef nonnull @.str.3) #4
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %rar_set = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 5
  %1 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rar_set, align 4
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 1
  tail call void %2(ptr noundef %hw, ptr noundef %addr, i32 noundef 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_init_rx_addrs.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_init_rx_addrs, %if.then21)) #4
          to label %do.end27 [label %if.then21], !srcloc !143

if.then21:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %conv = zext i16 %rar_count to i32
  %sub = add nsw i32 %conv, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_init_rx_addrs.__UNIQUE_ID_ddebug387, ptr noundef %call22, ptr noundef nonnull @.str.4, i32 noundef %sub) #4
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.end6
  %conv28 = zext i16 %rar_count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %rar_count)
  %cmp48 = icmp ugt i16 %rar_count, 1
  br i1 %cmp48, label %do.end27.for.body_crit_edge, label %do.end27.for.end_crit_edge

do.end27.for.end_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.end27.for.body_crit_edge:                      ; preds = %do.end27
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end27.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %do.end27.for.body_crit_edge ]
  %3 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rar_set, align 4
  call void %4(ptr noundef %hw, ptr noundef nonnull %mac_addr, i32 noundef %i.049) #4
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %conv28
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end27.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igb_get_hw_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_vfta_set(ptr noundef %hw, i32 noundef %vlan, i32 noundef %vind, i1 noundef zeroext %vlan_on, i1 noundef zeroext %vlvf_bypass) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %vlan)
  %cmp = icmp ugt i32 %vlan, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %vind)
  %cmp2 = icmp ugt i32 %vind, 7
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %div119 = lshr i32 %vlan, 5
  %rem = and i32 %vlan, 31
  %shl = shl nuw i32 1, %rem
  %shadow_vfta = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %shadow_vfta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shadow_vfta, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %div119
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %neg = sext i1 %vlan_on to i32
  %cond = xor i32 %5, %neg
  %and = and i32 %cond, %shl
  %xor = xor i32 %and, %5
  %vfs_allocated_count = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 50
  %6 = ptrtoint ptr %vfs_allocated_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vfs_allocated_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.vfta_update_crit_edge, label %if.end5

if.end.vfta_update_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfta_update

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlan)
  %cmp.i = icmp eq i32 %vlan, 0
  br i1 %cmp.i, label %if.end5.if.end12_crit_edge, label %if.end.i

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end.i:                                         ; preds = %if.end5
  %cond.i = select i1 %vlvf_bypass, i32 -17, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %if.end.i
  %dec22.i = phi i32 [ 31, %if.end.i ], [ %dec.i, %if.end4.i.for.body.i_crit_edge ]
  %first_empty_slot.021.i = phi i32 [ %cond.i, %if.end.i ], [ %first_empty_slot.1.i, %if.end4.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %dec22.i, 2
  %add.i = add nuw nsw i32 %mul.i, 23808
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add.i) #4
  %and.i = and i32 %call.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %vlan)
  %cmp2.i = icmp eq i32 %and.i, %vlan
  br i1 %cmp2.i, label %for.body.i.igb_find_vlvf_slot.exit_crit_edge, label %if.end4.i

for.body.i.igb_find_vlvf_slot.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_find_vlvf_slot.exit

if.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_empty_slot.021.i)
  %tobool5.not.i = icmp eq i32 %first_empty_slot.021.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 %dec22.i, i32 0
  %first_empty_slot.1.i = select i1 %tobool5.not.i, i32 %spec.select.i, i32 %first_empty_slot.021.i
  %dec.i = add nsw i32 %dec22.i, -1
  %cmp1.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp1.not.i, label %for.end.i, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_empty_slot.1.i)
  %tobool9.not.i = icmp eq i32 %first_empty_slot.1.i, 0
  br i1 %tobool9.not.i, label %for.end.i.if.then8_crit_edge, label %for.end.i.igb_find_vlvf_slot.exit_crit_edge

for.end.i.igb_find_vlvf_slot.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_find_vlvf_slot.exit

for.end.i.if.then8_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

igb_find_vlvf_slot.exit:                          ; preds = %for.end.i.igb_find_vlvf_slot.exit_crit_edge, %for.body.i.igb_find_vlvf_slot.exit_crit_edge
  %retval.0.i = phi i32 [ %first_empty_slot.1.i, %for.end.i.igb_find_vlvf_slot.exit_crit_edge ], [ %dec22.i, %for.body.i.igb_find_vlvf_slot.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp7 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp7, label %igb_find_vlvf_slot.exit.if.then8_crit_edge, label %igb_find_vlvf_slot.exit.if.end12_crit_edge

igb_find_vlvf_slot.exit.if.end12_crit_edge:       ; preds = %igb_find_vlvf_slot.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

igb_find_vlvf_slot.exit.if.then8_crit_edge:       ; preds = %igb_find_vlvf_slot.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %igb_find_vlvf_slot.exit.if.then8_crit_edge, %for.end.i.if.then8_crit_edge
  %retval.0.i122 = phi i32 [ %retval.0.i, %igb_find_vlvf_slot.exit.if.then8_crit_edge ], [ -17, %for.end.i.if.then8_crit_edge ]
  br i1 %vlvf_bypass, label %if.then8.vfta_update_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8.vfta_update_crit_edge:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfta_update

if.end12:                                         ; preds = %igb_find_vlvf_slot.exit.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %retval.0.i126 = phi i32 [ %retval.0.i, %igb_find_vlvf_slot.exit.if.end12_crit_edge ], [ 0, %if.end5.if.end12_crit_edge ]
  %mul = shl i32 %retval.0.i126, 2
  %add = add i32 %mul, 23808
  %call13 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add) #4
  %add14 = add i32 %vind, 12
  %shl15 = shl nuw i32 1, %add14
  %or = or i32 %call13, %shl15
  br i1 %vlan_on, label %if.end12.do.body45_crit_edge, label %if.end18

if.end12.do.body45_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

if.end18:                                         ; preds = %if.end12
  %xor21 = xor i32 %or, %shl15
  %and22 = and i32 %xor21, 1044480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end18.do.body45_crit_edge

if.end18.do.body45_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.then24.do.body_crit_edge, label %if.then26

if.then24.do.body_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %write_vfta = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 12
  %8 = ptrtoint ptr %write_vfta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_vfta, align 4
  tail call void %9(ptr noundef %hw, i32 noundef %div119, i32 noundef %xor) #4
  br label %do.body

do.body:                                          ; preds = %if.then26, %if.then24.do.body_crit_edge
  %hw_addr29 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %hw_addr29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw_addr29, align 4
  %tobool30.not = icmp eq ptr %11, null
  br i1 %tobool30.not, label %do.body.cleanup_crit_edge, label %do.body35, !prof !140

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  tail call void @arm_heavy_mb() #4
  %arrayidx40 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx40, i32 0) #4, !srcloc !142
  br label %cleanup

do.body45:                                        ; preds = %if.end18.do.body45_crit_edge, %if.end12.do.body45_crit_edge
  %vfta_delta.0 = phi i32 [ %and, %if.end12.do.body45_crit_edge ], [ 0, %if.end18.do.body45_crit_edge ]
  %bits.0 = phi i32 [ %or, %if.end12.do.body45_crit_edge ], [ %xor21, %if.end18.do.body45_crit_edge ]
  %hw_addr51 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %hw_addr51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw_addr51, align 4
  %tobool52.not = icmp eq ptr %13, null
  br i1 %tobool52.not, label %do.body45.vfta_update_crit_edge, label %do.body62, !prof !140

do.body45.vfta_update_crit_edge:                  ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  br label %vfta_update

do.body62:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  tail call void @arm_heavy_mb() #4
  %or65 = or i32 %bits.0, %vlan
  %or66 = or i32 %or65, -2147483648
  %14 = tail call i32 @llvm.bswap.i32(i32 %or66)
  %arrayidx69 = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx69, i32 %14) #4, !srcloc !142
  br label %vfta_update

vfta_update:                                      ; preds = %do.body62, %do.body45.vfta_update_crit_edge, %if.then8.vfta_update_crit_edge, %if.end.vfta_update_crit_edge
  %vfta_delta.1 = phi i32 [ %and, %if.then8.vfta_update_crit_edge ], [ %and, %if.end.vfta_update_crit_edge ], [ %vfta_delta.0, %do.body62 ], [ %vfta_delta.0, %do.body45.vfta_update_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vfta_delta.1)
  %tobool73.not = icmp eq i32 %vfta_delta.1, 0
  br i1 %tobool73.not, label %vfta_update.cleanup_crit_edge, label %if.then74

vfta_update.cleanup_crit_edge:                    ; preds = %vfta_update
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then74:                                        ; preds = %vfta_update
  call void @__sanitizer_cov_trace_pc() #6
  %write_vfta77 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 12
  %15 = ptrtoint ptr %write_vfta77 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_vfta77, align 4
  tail call void %16(ptr noundef %hw, i32 noundef %div119, i32 noundef %xor) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %vfta_update.cleanup_crit_edge, %do.body35, %do.body.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %entry.cleanup_crit_edge ], [ %retval.0.i122, %if.then8.cleanup_crit_edge ], [ 0, %do.body35 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.then74 ], [ 0, %vfta_update.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_check_alt_mac_addr(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %nvm_alt_mac_addr_offset = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  %alt_mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_alt_mac_addr_offset) #4
  %0 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_alt_mac_addr_offset, align 2, !annotation !139
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #4
  %1 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %nvm_data, align 2, !annotation !139
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %alt_mac_addr) #4
  %2 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %alt_mac_addr, i32 0, i32 5
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp ugt i32 %8, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %9 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read, align 4
  %call = call i32 %10(ptr noundef %hw, i16 noundef zeroext 55, i16 noundef zeroext 1, ptr noundef nonnull %nvm_alt_mac_addr_offset) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12, label %do.body2

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_check_alt_mac_addr.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_check_alt_mac_addr, %if.then7)) #4
          to label %out [label %if.then7], !srcloc !143

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_check_alt_mac_addr.__UNIQUE_ID_ddebug390, ptr noundef %call8, ptr noundef nonnull @.str.6) #4
  br label %out

if.end12:                                         ; preds = %if.end
  %11 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.end19 [
    i16 -1, label %if.end12.out_crit_edge
    i16 0, label %if.end12.out_crit_edge144
  ]

if.end12.out_crit_edge144:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end19:                                         ; preds = %if.end12
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %func, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %15, label %if.end19.if.end46_crit_edge [
    i16 1, label %if.end26.thread
    i16 2, label %if.then32
    i16 3, label %if.then42
  ]

if.end19.if.end46_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.end26.thread:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i16 %12, 3
  %17 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add, ptr %nvm_alt_mac_addr_offset, align 2
  br label %if.end46

if.then32:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %add34 = add i16 %19, 6
  store i16 %add34, ptr %nvm_alt_mac_addr_offset, align 2
  br label %if.end46

if.then42:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %add44 = add i16 %21, 9
  store i16 %add44, ptr %nvm_alt_mac_addr_offset, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.then32, %if.end26.thread, %if.end19.if.end46_crit_edge
  %22 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %24 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read, align 4
  %call55 = call i32 %25(ptr noundef %hw, i16 noundef zeroext %23, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end78, label %if.end46.do.body59_crit_edge

if.end46.do.body59_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body59

do.body59:                                        ; preds = %if.end78.1.do.body59_crit_edge, %if.end78.do.body59_crit_edge, %if.end46.do.body59_crit_edge
  %call55.lcssa = phi i32 [ %call55, %if.end46.do.body59_crit_edge ], [ %call55.1, %if.end78.do.body59_crit_edge ], [ %call55.2, %if.end78.1.do.body59_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_check_alt_mac_addr.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_check_alt_mac_addr, %if.then71)) #4
          to label %out [label %if.then71], !srcloc !143

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #6
  %call72 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_check_alt_mac_addr.__UNIQUE_ID_ddebug391, ptr noundef %call72, ptr noundef nonnull @.str.6) #4
  br label %out

if.end78:                                         ; preds = %if.end46
  %26 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nvm_data, align 2
  %conv80 = trunc i16 %27 to i8
  %28 = ptrtoint ptr %alt_mac_addr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv80, ptr %alt_mac_addr, align 4
  %29 = lshr i16 %27, 8
  %conv83 = trunc i16 %29 to i8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv83, ptr %2, align 1
  %31 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %conv51.1 = add i16 %32, 1
  %33 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read, align 4
  %call55.1 = call i32 %34(ptr noundef %hw, i16 noundef zeroext %conv51.1, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.1)
  %tobool56.not.1 = icmp eq i32 %call55.1, 0
  br i1 %tobool56.not.1, label %if.end78.1, label %if.end78.do.body59_crit_edge

if.end78.do.body59_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body59

if.end78.1:                                       ; preds = %if.end78
  %35 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nvm_data, align 2
  %conv80.1 = trunc i16 %36 to i8
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv80.1, ptr %3, align 2
  %38 = lshr i16 %36, 8
  %conv83.1 = trunc i16 %38 to i8
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv83.1, ptr %4, align 1
  %40 = ptrtoint ptr %nvm_alt_mac_addr_offset to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nvm_alt_mac_addr_offset, align 2
  %conv51.2 = add i16 %41, 2
  %42 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read, align 4
  %call55.2 = call i32 %43(ptr noundef %hw, i16 noundef zeroext %conv51.2, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.2)
  %tobool56.not.2 = icmp eq i32 %call55.2, 0
  br i1 %tobool56.not.2, label %if.end78.2, label %if.end78.1.do.body59_crit_edge

if.end78.1.do.body59_crit_edge:                   ; preds = %if.end78.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body59

if.end78.2:                                       ; preds = %if.end78.1
  %44 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nvm_data, align 2
  %conv80.2 = trunc i16 %45 to i8
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv80.2, ptr %5, align 4
  %47 = lshr i16 %45, 8
  %conv83.2 = trunc i16 %47 to i8
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv83.2, ptr %6, align 1
  %49 = ptrtoint ptr %alt_mac_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %alt_mac_addr, align 4
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not = icmp eq i32 %51, 0
  br i1 %tobool.i.not, label %if.end109, label %do.body90

do.body90:                                        ; preds = %if.end78.2
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_check_alt_mac_addr.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_check_alt_mac_addr, %if.then102)) #4
          to label %out [label %if.then102], !srcloc !143

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  %call103 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_check_alt_mac_addr.__UNIQUE_ID_ddebug392, ptr noundef %call103, ptr noundef nonnull @.str.7) #4
  br label %out

if.end109:                                        ; preds = %if.end78.2
  call void @__sanitizer_cov_trace_pc() #6
  %rar_set = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 5
  %52 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rar_set, align 4
  call void %53(ptr noundef %hw, ptr noundef nonnull %alt_mac_addr, i32 noundef 0) #4
  br label %out

out:                                              ; preds = %if.end109, %if.then102, %do.body90, %if.then71, %do.body59, %if.end12.out_crit_edge, %if.end12.out_crit_edge144, %if.then7, %do.body2, %entry.out_crit_edge
  %ret_val.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %call, %if.then7 ], [ 0, %if.end12.out_crit_edge ], [ %call55.lcssa, %if.then71 ], [ 0, %if.then102 ], [ 0, %if.end109 ], [ 0, %if.end12.out_crit_edge144 ], [ %call, %do.body2 ], [ %call55.lcssa, %do.body59 ], [ 0, %do.body90 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %alt_mac_addr) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_alt_mac_addr_offset) #4
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_rar_set(ptr noundef %hw, ptr nocapture noundef readonly %addr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %arrayidx7 = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %arrayidx11 = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %arrayidx13 = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10)
  %tobool.not = icmp eq i32 %or10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or16)
  %tobool17.not = icmp eq i32 %or16, 0
  %or.cond = select i1 %tobool.not, i1 %tobool17.not, i1 false
  %or18 = or i32 %or16, -2147483648
  %rar_high.0 = select i1 %or.cond, i32 0, i32 %or18
  %hw_addr20 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %hw_addr20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw_addr20, align 4
  %tobool21.not = icmp eq ptr %13, null
  br i1 %tobool21.not, label %entry.if.end33_crit_edge, label %do.body26, !prof !140

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

do.body26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  tail call void @arm_heavy_mb() #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %or10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp = icmp ult i32 %index, 16
  %mul = shl i32 %index, 3
  %cond.v = select i1 %cmp, i32 21504, i32 21600
  %cond = add i32 %cond.v, %mul
  %arrayidx32 = getelementptr i8, ptr %13, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx32, i32 %14) #4, !srcloc !142
  br label %if.end33

if.end33:                                         ; preds = %do.body26, %entry.if.end33_crit_edge
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %15 = ptrtoint ptr %hw_addr20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr20, align 4
  %tobool43.not = icmp eq ptr %16, null
  br i1 %tobool43.not, label %if.end33.if.end68_crit_edge, label %do.body53, !prof !140

if.end33.if.end68_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

do.body53:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %rar_high.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp56 = icmp ult i32 %index, 16
  %mul59 = shl i32 %index, 3
  %cond66.v = select i1 %cmp56, i32 21508, i32 21604
  %cond66 = add i32 %cond66.v, %mul59
  %arrayidx67 = getelementptr i8, ptr %16, i32 %cond66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx67, i32 %17) #4, !srcloc !142
  br label %if.end68

if.end68:                                         ; preds = %do.body53, %if.end33.if.end68_crit_edge
  %call71 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_mta_set(ptr noundef %hw, i32 noundef %hash_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %hash_value, 5
  %mta_reg_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 9
  %0 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mta_reg_count, align 4
  %conv = zext i16 %1 to i32
  %sub = add nuw nsw i32 %conv, 134217727
  %and = and i32 %sub, %shr
  %shl = shl nuw nsw i32 %and, 2
  %add = add nuw nsw i32 %shl, 20992
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add) #4
  %hw_addr4 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr4, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body8, !prof !140

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and1 = and i32 %hash_value, 31
  %shl2 = shl nuw i32 1, %and1
  %or = or i32 %call, %shl2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !142
  br label %if.end

if.end:                                           ; preds = %do.body8, %entry.if.end_crit_edge
  %call15 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_update_mc_addr_list(ptr noundef %hw, ptr nocapture noundef readonly %mc_addr_list, i32 noundef %mc_addr_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mta_shadow = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 11
  %0 = call ptr @memset(ptr %mta_shadow, i32 0, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mc_addr_count)
  %cmp58.not = icmp eq i32 %mc_addr_count, 0
  br i1 %cmp58.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mta_reg_count.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 9
  %1 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mta_reg_count.i, align 4
  %conv.i = zext i16 %2 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %sub.i = add nsw i32 %mul.i, -1
  %mc_filter_type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %mc_filter_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mc_filter_type.i, align 4
  %sub = add nsw i32 %conv.i, -1
  br label %for.body

for.body:                                         ; preds = %igb_hash_mc_addr.exit.for.body_crit_edge, %for.body.lr.ph
  %mc_addr_list.addr.060 = phi ptr [ %mc_addr_list, %for.body.lr.ph ], [ %add.ptr, %igb_hash_mc_addr.exit.for.body_crit_edge ]
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %igb_hash_mc_addr.exit.for.body_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %bit_shift.0.i = phi i8 [ 0, %for.body ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %conv1.i = zext i8 %bit_shift.0.i to i32
  %shr.i = lshr i32 %sub.i, %conv1.i
  %cmp.not.i = icmp eq i32 %shr.i, 255
  %inc.i = add i8 %bit_shift.0.i, 1
  br i1 %cmp.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %4, label %while.end.i.igb_hash_mc_addr.exit_crit_edge [
    i32 3, label %sw.bb10.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

while.end.i.igb_hash_mc_addr.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_hash_mc_addr.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_hash_mc_addr.exit

sw.bb6.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add8.i = add i8 %bit_shift.0.i, 2
  br label %igb_hash_mc_addr.exit

sw.bb10.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add12.i = add i8 %bit_shift.0.i, 4
  br label %igb_hash_mc_addr.exit

igb_hash_mc_addr.exit:                            ; preds = %sw.bb10.i, %sw.bb6.i, %sw.bb.i, %while.end.i.igb_hash_mc_addr.exit_crit_edge
  %bit_shift.1.i = phi i8 [ %bit_shift.0.i, %while.end.i.igb_hash_mc_addr.exit_crit_edge ], [ %add8.i, %sw.bb6.i ], [ %inc.i, %sw.bb.i ], [ %add12.i, %sw.bb10.i ]
  %arrayidx.i = getelementptr i8, ptr %mc_addr_list.addr.060, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %7 to i32
  %conv15.i = zext i8 %bit_shift.1.i to i32
  %sub16.i = sub nsw i32 8, %conv15.i
  %shr17.i = lshr i32 %conv14.i, %sub16.i
  %arrayidx18.i = getelementptr i8, ptr %mc_addr_list.addr.060, i32 5
  %8 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx18.i, align 1
  %conv20.i = zext i8 %9 to i32
  %shl.i = shl i32 %conv20.i, %conv15.i
  %or.i = or i32 %shl.i, %shr17.i
  %and.i = and i32 %or.i, %sub.i
  %shr = lshr i32 %and.i, 5
  %and = and i32 %shr, %sub
  %and2 = and i32 %or.i, 31
  %shl = shl nuw i32 1, %and2
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 11, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %or = or i32 %shl, %11
  store i32 %or, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %mc_addr_list.addr.060, i32 6
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %mc_addr_count
  br i1 %exitcond.not, label %igb_hash_mc_addr.exit.for.end_crit_edge, label %igb_hash_mc_addr.exit.for.body_crit_edge

igb_hash_mc_addr.exit.for.body_crit_edge:         ; preds = %igb_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

igb_hash_mc_addr.exit.for.end_crit_edge:          ; preds = %igb_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %igb_hash_mc_addr.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mta_reg_count6 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 9
  %12 = ptrtoint ptr %mta_reg_count6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mta_reg_count6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp1062.not = icmp eq i16 %13, 0
  br i1 %cmp1062.not, label %for.end.for.end29_crit_edge, label %do.body.lr.ph

for.end.for.end29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end29

do.body.lr.ph:                                    ; preds = %for.end
  %conv7 = zext i16 %13 to i32
  %hw_addr14 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %do.body.lr.ph
  %i.163.in = phi i32 [ %conv7, %do.body.lr.ph ], [ %i.163, %if.end.do.body_crit_edge ]
  %i.163 = add nsw i32 %i.163.in, -1
  %14 = ptrtoint ptr %hw_addr14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr14, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %do.body18, !prof !140

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  tail call void @arm_heavy_mb() #4
  %arrayidx23 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 11, i32 %i.163
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx23, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shl24 = shl i32 %i.163, 2
  %add = add nsw i32 %shl24, 20992
  %arrayidx25 = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx25, i32 %18) #4, !srcloc !142
  br label %if.end

if.end:                                           ; preds = %do.body18, %do.body.if.end_crit_edge
  %cmp10 = icmp ugt i32 %i.163.in, 1
  br i1 %cmp10, label %if.end.do.body_crit_edge, label %if.end.for.end29_crit_edge

if.end.for.end29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end29

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.end29:                                        ; preds = %if.end.for.end29_crit_edge, %for.end.for.end29_crit_edge
  %call30 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %21 = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %switch = icmp eq i32 %21, 6
  br i1 %switch, label %if.then38, label %for.end29.if.end39_crit_edge

for.end29.if.end39_crit_edge:                     ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then38:                                        ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @igb_i21x_hw_doublecheck(ptr noundef %hw)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %for.end29.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igb_i21x_hw_doublecheck(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mta_reg_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 9
  %hw_addr7 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mta_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp70.not = icmp eq i16 %1, 0
  br i1 %cmp70.not, label %entry.do.end52_crit_edge, label %for.body.preheader

entry.do.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

for.body.preheader:                               ; preds = %entry
  %conv = zext i16 %1 to i32
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.preheader
  %i.072.in.ph = phi i32 [ %i.072, %for.inc.thread.for.body.outer_crit_edge ], [ %conv, %for.body.preheader ]
  %is_failed.0.off071.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.preheader ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.072.in = phi i32 [ %i.072, %for.inc.for.body_crit_edge ], [ %i.072.in.ph, %for.body.outer ]
  %i.072 = add nsw i32 %i.072.in, -1
  %shl = shl i32 %i.072, 2
  %add = add nsw i32 %shl, 20992
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add) #4
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 11, i32 %i.072
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %3)
  %cmp3.not = icmp eq i32 %call, %3
  br i1 %cmp3.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %hw_addr7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr7, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then.for.inc.thread_crit_edge, label %do.body12, !prof !140

if.then.for.inc.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

do.body12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %arrayidx20 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20, i32 %8) #4, !srcloc !142
  br label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %cmp = icmp ugt i32 %i.072.in, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.thread:                                   ; preds = %do.body12, %if.then.for.inc.thread_crit_edge
  %call23 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %cmp74 = icmp ugt i32 %i.072.in, 1
  br i1 %cmp74, label %for.inc.thread.for.body.outer_crit_edge, label %for.inc.thread.land.lhs.true_crit_edge

for.inc.thread.land.lhs.true_crit_edge:           ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.outer

for.end:                                          ; preds = %for.inc
  br i1 %is_failed.0.off071.ph, label %for.end.land.lhs.true_crit_edge, label %for.end.do.end52_crit_edge

for.end.do.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.land.lhs.true_crit_edge, %for.inc.thread.land.lhs.true_crit_edge
  %9 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mta_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp70.not.1 = icmp eq i16 %10, 0
  br i1 %cmp70.not.1, label %land.lhs.true.do.end52_crit_edge, label %for.body.preheader.1

land.lhs.true.do.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

for.body.preheader.1:                             ; preds = %land.lhs.true
  %conv.1 = zext i16 %10 to i32
  br label %for.body.1.outer

for.body.1.outer:                                 ; preds = %for.inc.1.thread.for.body.1.outer_crit_edge, %for.body.preheader.1
  %i.072.1.in.ph = phi i32 [ %i.072.1, %for.inc.1.thread.for.body.1.outer_crit_edge ], [ %conv.1, %for.body.preheader.1 ]
  %is_failed.0.off071.1.ph = phi i1 [ true, %for.inc.1.thread.for.body.1.outer_crit_edge ], [ false, %for.body.preheader.1 ]
  br label %for.body.1

for.body.1:                                       ; preds = %for.inc.1.for.body.1_crit_edge, %for.body.1.outer
  %i.072.1.in = phi i32 [ %i.072.1, %for.inc.1.for.body.1_crit_edge ], [ %i.072.1.in.ph, %for.body.1.outer ]
  %i.072.1 = add nsw i32 %i.072.1.in, -1
  %shl.1 = shl i32 %i.072.1, 2
  %add.1 = add nsw i32 %shl.1, 20992
  %call.1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add.1) #4
  %arrayidx.1 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 11, i32 %i.072.1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.1, i32 %12)
  %cmp3.not.1 = icmp eq i32 %call.1, %12
  br i1 %cmp3.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.body.1
  %13 = ptrtoint ptr %hw_addr7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw_addr7, align 4
  %tobool.not.1 = icmp eq ptr %14, null
  br i1 %tobool.not.1, label %if.then.1.for.inc.1.thread_crit_edge, label %do.body12.1, !prof !140

if.then.1.for.inc.1.thread_crit_edge:             ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.thread

do.body12.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %arrayidx20.1 = getelementptr i8, ptr %14, i32 %add.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20.1, i32 %17) #4, !srcloc !142
  br label %for.inc.1.thread

for.inc.1:                                        ; preds = %for.body.1
  %cmp.1 = icmp ugt i32 %i.072.1.in, 1
  br i1 %cmp.1, label %for.inc.1.for.body.1_crit_edge, label %for.end.1

for.inc.1.for.body.1_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.1

for.inc.1.thread:                                 ; preds = %do.body12.1, %if.then.1.for.inc.1.thread_crit_edge
  %call23.1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %cmp.178 = icmp ugt i32 %i.072.1.in, 1
  br i1 %cmp.178, label %for.inc.1.thread.for.body.1.outer_crit_edge, label %for.inc.1.thread.land.lhs.true.1_crit_edge

for.inc.1.thread.land.lhs.true.1_crit_edge:       ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.1

for.inc.1.thread.for.body.1.outer_crit_edge:      ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.1.outer

for.end.1:                                        ; preds = %for.inc.1
  br i1 %is_failed.0.off071.1.ph, label %for.end.1.land.lhs.true.1_crit_edge, label %for.end.1.do.end52_crit_edge

for.end.1.do.end52_crit_edge:                     ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

for.end.1.land.lhs.true.1_crit_edge:              ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %for.end.1.land.lhs.true.1_crit_edge, %for.inc.1.thread.land.lhs.true.1_crit_edge
  %18 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mta_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp70.not.2 = icmp eq i16 %19, 0
  br i1 %cmp70.not.2, label %land.lhs.true.1.do.end52_crit_edge, label %for.body.preheader.2

land.lhs.true.1.do.end52_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

for.body.preheader.2:                             ; preds = %land.lhs.true.1
  %conv.2 = zext i16 %19 to i32
  br label %for.body.2.outer

for.body.2.outer:                                 ; preds = %for.inc.2.thread.for.body.2.outer_crit_edge, %for.body.preheader.2
  %i.072.2.in.ph = phi i32 [ %i.072.2, %for.inc.2.thread.for.body.2.outer_crit_edge ], [ %conv.2, %for.body.preheader.2 ]
  %is_failed.0.off071.2.ph = phi i1 [ true, %for.inc.2.thread.for.body.2.outer_crit_edge ], [ false, %for.body.preheader.2 ]
  br label %for.body.2

for.body.2:                                       ; preds = %for.inc.2.for.body.2_crit_edge, %for.body.2.outer
  %i.072.2.in = phi i32 [ %i.072.2, %for.inc.2.for.body.2_crit_edge ], [ %i.072.2.in.ph, %for.body.2.outer ]
  %i.072.2 = add nsw i32 %i.072.2.in, -1
  %shl.2 = shl i32 %i.072.2, 2
  %add.2 = add nsw i32 %shl.2, 20992
  %call.2 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add.2) #4
  %arrayidx.2 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 11, i32 %i.072.2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.2, i32 %21)
  %cmp3.not.2 = icmp eq i32 %call.2, %21
  br i1 %cmp3.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.body.2
  %22 = ptrtoint ptr %hw_addr7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw_addr7, align 4
  %tobool.not.2 = icmp eq ptr %23, null
  br i1 %tobool.not.2, label %if.then.2.for.inc.2.thread_crit_edge, label %do.body12.2, !prof !140

if.then.2.for.inc.2.thread_crit_edge:             ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.thread

do.body12.2:                                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.2, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %arrayidx20.2 = getelementptr i8, ptr %23, i32 %add.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20.2, i32 %26) #4, !srcloc !142
  br label %for.inc.2.thread

for.inc.2:                                        ; preds = %for.body.2
  %cmp.2 = icmp ugt i32 %i.072.2.in, 1
  br i1 %cmp.2, label %for.inc.2.for.body.2_crit_edge, label %for.end.2

for.inc.2.for.body.2_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.2

for.inc.2.thread:                                 ; preds = %do.body12.2, %if.then.2.for.inc.2.thread_crit_edge
  %call23.2 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %cmp.282 = icmp ugt i32 %i.072.2.in, 1
  br i1 %cmp.282, label %for.inc.2.thread.for.body.2.outer_crit_edge, label %for.inc.2.thread.land.lhs.true.2_crit_edge

for.inc.2.thread.land.lhs.true.2_crit_edge:       ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.2

for.inc.2.thread.for.body.2.outer_crit_edge:      ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.2.outer

for.end.2:                                        ; preds = %for.inc.2
  br i1 %is_failed.0.off071.2.ph, label %for.end.2.land.lhs.true.2_crit_edge, label %for.end.2.do.end52_crit_edge

for.end.2.do.end52_crit_edge:                     ; preds = %for.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

for.end.2.land.lhs.true.2_crit_edge:              ; preds = %for.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %for.end.2.land.lhs.true.2_crit_edge, %for.inc.2.thread.land.lhs.true.2_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_i21x_hw_doublecheck.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_i21x_hw_doublecheck, %if.then42)) #4
          to label %do.end52 [label %if.then42], !srcloc !143

if.then42:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  %call43 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_i21x_hw_doublecheck.__UNIQUE_ID_ddebug397, ptr noundef %call43, ptr noundef nonnull @.str.45) #4
  br label %do.end52

do.end52:                                         ; preds = %if.then42, %land.lhs.true.2, %for.end.2.do.end52_crit_edge, %land.lhs.true.1.do.end52_crit_edge, %for.end.1.do.end52_crit_edge, %land.lhs.true.do.end52_crit_edge, %for.end.do.end52_crit_edge, %entry.do.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_clear_hw_cntrs_base(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16384) #4
  %call1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16392) #4
  %call2 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16400) #4
  %call3 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16404) #4
  %call4 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16408) #4
  %call5 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16412) #4
  %call6 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16416) #4
  %call7 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16424) #4
  %call8 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16432) #4
  %call9 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16440) #4
  %call10 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16448) #4
  %call11 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16456) #4
  %call12 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16460) #4
  %call13 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16464) #4
  %call14 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16468) #4
  %call15 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16472) #4
  %call16 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16500) #4
  %call17 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16504) #4
  %call18 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16508) #4
  %call19 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16512) #4
  %call20 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16520) #4
  %call21 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16524) #4
  %call22 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16528) #4
  %call23 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16532) #4
  %call24 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16544) #4
  %call25 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16548) #4
  %call26 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16552) #4
  %call27 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16556) #4
  %call28 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16560) #4
  %call29 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16576) #4
  %call30 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16580) #4
  %call31 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16584) #4
  %call32 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16588) #4
  %call33 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16592) #4
  %call34 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16596) #4
  %call35 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16624) #4
  %call36 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16628) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_check_for_copper_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %0 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %link, align 1, !annotation !139
  %get_link_status = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 20
  %1 = ptrtoint ptr %get_link_status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %get_link_status, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = call i32 @igb_phy_has_link(ptr noundef %hw, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %link) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.end4.out_crit_edge, label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end7:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %get_link_status, align 1
  %call9 = call i32 @igb_check_downshift(ptr noundef %hw) #4
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 17
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.end7.out_crit_edge, label %if.end12

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12:                                         ; preds = %if.end7
  %call.i = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 1024) #4
  %hw_addr2.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %hw_addr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end12.igb_config_collision_dist.exit_crit_edge, label %do.body6.i, !prof !140

if.end12.igb_config_collision_dist.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_config_collision_dist.exit

do.body6.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = and i32 %call.i, -4190209
  %or.i = or i32 %and.i, 258048
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  call void @arm_heavy_mb() #4
  %10 = call i32 @llvm.bswap.i32(i32 %or.i) #4
  %arrayidx.i = getelementptr i8, ptr %9, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %10) #4, !srcloc !142
  br label %igb_config_collision_dist.exit

igb_config_collision_dist.exit:                   ; preds = %do.body6.i, %if.end12.igb_config_collision_dist.exit_crit_edge
  %call11.i = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %call13 = call i32 @igb_config_fc_after_link_up(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %igb_config_collision_dist.exit.out_crit_edge, label %do.body16

igb_config_collision_dist.exit.out_crit_edge:     ; preds = %igb_config_collision_dist.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body16:                                        ; preds = %igb_config_collision_dist.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_check_for_copper_link.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_check_for_copper_link, %if.then21)) #4
          to label %out [label %if.then21], !srcloc !143

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_check_for_copper_link.__UNIQUE_ID_ddebug399, ptr noundef %call22, ptr noundef nonnull @.str.9) #4
  br label %out

out:                                              ; preds = %if.then21, %do.body16, %igb_config_collision_dist.exit.out_crit_edge, %if.end7.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call13, %if.then21 ], [ 0, %igb_config_collision_dist.exit.out_crit_edge ], [ 0, %if.end4.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ -3, %if.end7.out_crit_edge ], [ %call13, %do.body16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_has_link(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_downshift(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_config_collision_dist(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 1024) #4
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !140

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, -4190209
  %or = or i32 %and, 258048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !142
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  %call11 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_config_fc_after_link_up(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mii_status_reg = alloca i16, align 2
  %mii_nway_adv_reg = alloca i16, align 2
  %mii_nway_lp_ability_reg = alloca i16, align 2
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_status_reg) #4
  %0 = ptrtoint ptr %mii_status_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %mii_status_reg, align 2, !annotation !139
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_nway_adv_reg) #4
  %1 = ptrtoint ptr %mii_nway_adv_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %mii_nway_adv_reg, align 2, !annotation !139
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_nway_lp_ability_reg) #4
  %2 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %mii_nway_lp_ability_reg, align 2, !annotation !139
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #4
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %speed, align 2, !annotation !139
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #4
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %duplex, align 2, !annotation !139
  %autoneg_failed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 18
  %5 = ptrtoint ptr %autoneg_failed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autoneg_failed, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %media_type4 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %7 = ptrtoint ptr %media_type4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %media_type4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then.if.end9_crit_edge, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp5 = icmp eq i32 %8, 1
  br i1 %cmp5, label %if.else.if.end9_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %call7 = tail call i32 @igb_force_mac_fc(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool10.not = icmp eq i32 %call7, 0
  br i1 %tobool10.not, label %if.end9.if.end22_crit_edge, label %do.body12

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

do.body12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then17)) #4
          to label %cleanup [label %if.then17], !srcloc !143

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug413, ptr noundef %call18, ptr noundef nonnull @.str.17) #4
  br label %cleanup

if.end22:                                         ; preds = %if.end9.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.then.if.end22_crit_edge
  %media_type24 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %9 = ptrtoint ptr %media_type24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %media_type24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp25 = icmp eq i32 %10, 1
  br i1 %cmp25, label %land.lhs.true, label %if.end22.if.end331_crit_edge

if.end22.if.end331_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end331

land.lhs.true:                                    ; preds = %if.end22
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 17
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autoneg, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool26.not = icmp eq i8 %12, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end331thread-pre-split_crit_edge, label %if.then27

land.lhs.true.if.end331thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end331thread-pre-split

if.then27:                                        ; preds = %land.lhs.true
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %13 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg, align 4
  %call29 = call i32 %14(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %mii_status_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %if.then27
  %15 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg, align 4
  %call36 = call i32 %16(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %mii_status_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %17 = ptrtoint ptr %mii_status_reg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mii_status_reg, align 2
  %19 = and i16 %18, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool40.not = icmp eq i16 %19, 0
  br i1 %tobool40.not, label %do.body43, label %if.end62

do.body43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then55)) #4
          to label %cleanup [label %if.then55], !srcloc !143

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug414, ptr noundef %call56, ptr noundef nonnull @.str.18) #4
  br label %cleanup

if.end62:                                         ; preds = %if.end39
  %20 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_reg, align 4
  %call66 = call i32 %21(ptr noundef %hw, i32 noundef 4, ptr noundef nonnull %mii_nway_adv_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %22 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_reg, align 4
  %call73 = call i32 %23(ptr noundef %hw, i32 noundef 5, ptr noundef nonnull %mii_nway_lp_ability_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end76:                                         ; preds = %if.end69
  %24 = ptrtoint ptr %mii_nway_adv_reg to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mii_nway_adv_reg, align 2
  %26 = and i16 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool79.not = icmp eq i16 %26, 0
  br i1 %tobool79.not, label %if.end76.if.else133_crit_edge, label %land.lhs.true80

if.end76.if.else133_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else133

land.lhs.true80:                                  ; preds = %if.end76
  %27 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mii_nway_lp_ability_reg, align 2
  %29 = and i16 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool83.not = icmp eq i16 %29, 0
  br i1 %tobool83.not, label %land.lhs.true80.if.else133_crit_edge, label %if.then84

land.lhs.true80.if.else133_crit_edge:             ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else133

if.then84:                                        ; preds = %land.lhs.true80
  %requested_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %30 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp85 = icmp eq i32 %31, 3
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  br i1 %cmp85, label %if.then87, label %if.else109

if.then87:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then102)) #4
          to label %if.end273 [label %if.then102], !srcloc !143

if.then102:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #6
  %call103 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug415, ptr noundef %call103, ptr noundef nonnull @.str.19) #4
  br label %if.end273

if.else109:                                       ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then125)) #4
          to label %if.end273 [label %if.then125], !srcloc !143

if.then125:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #6
  %call126 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug416, ptr noundef %call126, ptr noundef nonnull @.str.20) #4
  br label %if.end273

if.else133:                                       ; preds = %land.lhs.true80.if.else133_crit_edge, %if.end76.if.else133_crit_edge
  %34 = trunc i16 %25 to i12
  %trunc = and i12 %34, -1024
  %35 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.52)
  switch i12 %trunc, label %if.else133.if.else211_crit_edge [
    i12 -2048, label %land.lhs.true141
    i12 -1024, label %land.lhs.true180
  ]

if.else133.if.else211_crit_edge:                  ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else211

land.lhs.true141:                                 ; preds = %if.else133
  %36 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mii_nway_lp_ability_reg, align 2
  %38 = and i16 %37, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %38)
  %.not738 = icmp eq i16 %38, 3072
  br i1 %.not738, label %if.then149, label %land.lhs.true141.if.else211_crit_edge

land.lhs.true141.if.else211_crit_edge:            ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else211

if.then149:                                       ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #6
  %current_mode151 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %39 = ptrtoint ptr %current_mode151 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %current_mode151, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then165)) #4
          to label %if.end273 [label %if.then165], !srcloc !143

if.then165:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #6
  %call166 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug417, ptr noundef %call166, ptr noundef nonnull @.str.21) #4
  br label %if.end273

land.lhs.true180:                                 ; preds = %if.else133
  %40 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mii_nway_lp_ability_reg, align 2
  %42 = and i16 %41, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %42)
  %.not740 = icmp eq i16 %42, 2048
  br i1 %.not740, label %if.then188, label %land.lhs.true180.if.else211_crit_edge

land.lhs.true180.if.else211_crit_edge:            ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else211

if.then188:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #6
  %current_mode190 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %43 = ptrtoint ptr %current_mode190 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %current_mode190, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then204)) #4
          to label %if.end273 [label %if.then204], !srcloc !143

if.then204:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #6
  %call205 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug418, ptr noundef %call205, ptr noundef nonnull @.str.20) #4
  br label %if.end273

if.else211:                                       ; preds = %land.lhs.true180.if.else211_crit_edge, %land.lhs.true141.if.else211_crit_edge, %if.else133.if.else211_crit_edge
  %requested_mode213 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %44 = ptrtoint ptr %requested_mode213 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %requested_mode213, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %45, label %lor.lhs.false220 [
    i32 0, label %if.else211.if.then224_crit_edge
    i32 2, label %if.else211.if.then224_crit_edge741
  ]

if.else211.if.then224_crit_edge741:               ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then224

if.else211.if.then224_crit_edge:                  ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then224

lor.lhs.false220:                                 ; preds = %if.else211
  %strict_ieee = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 4
  %47 = ptrtoint ptr %strict_ieee to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %strict_ieee, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool222.not = icmp eq i8 %48, 0
  br i1 %tobool222.not, label %if.else247, label %lor.lhs.false220.if.then224_crit_edge

lor.lhs.false220.if.then224_crit_edge:            ; preds = %lor.lhs.false220
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then224

if.then224:                                       ; preds = %lor.lhs.false220.if.then224_crit_edge, %if.else211.if.then224_crit_edge, %if.else211.if.then224_crit_edge741
  %current_mode226 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %49 = ptrtoint ptr %current_mode226 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %current_mode226, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then240)) #4
          to label %if.end273 [label %if.then240], !srcloc !143

if.then240:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #6
  %call241 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug419, ptr noundef %call241, ptr noundef nonnull @.str.22) #4
  br label %if.end273

if.else247:                                       ; preds = %lor.lhs.false220
  call void @__sanitizer_cov_trace_pc() #6
  %current_mode249 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %50 = ptrtoint ptr %current_mode249 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %current_mode249, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then263)) #4
          to label %if.end273 [label %if.then263], !srcloc !143

if.then263:                                       ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #6
  %call264 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug420, ptr noundef %call264, ptr noundef nonnull @.str.20) #4
  br label %if.end273

if.end273:                                        ; preds = %if.then263, %if.else247, %if.then240, %if.then224, %if.then204, %if.then188, %if.then165, %if.then149, %if.then125, %if.else109, %if.then102, %if.then87
  %get_speed_and_duplex = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 7
  %51 = ptrtoint ptr %get_speed_and_duplex to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_speed_and_duplex, align 4
  %call276 = call i32 %52(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %duplex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %if.end299, label %do.body280

do.body280:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then292)) #4
          to label %cleanup [label %if.then292], !srcloc !143

if.then292:                                       ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #6
  %call293 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug421, ptr noundef %call293, ptr noundef nonnull @.str.23) #4
  br label %cleanup

if.end299:                                        ; preds = %if.end273
  %53 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %54)
  %cmp301 = icmp eq i16 %54, 1
  br i1 %cmp301, label %if.then303, label %if.end299.if.end306_crit_edge

if.end299.if.end306_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end306

if.then303:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #6
  %current_mode305 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %55 = ptrtoint ptr %current_mode305 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %current_mode305, align 4
  br label %if.end306

if.end306:                                        ; preds = %if.then303, %if.end299.if.end306_crit_edge
  %call307 = call i32 @igb_force_mac_fc(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %if.end306.if.end331thread-pre-split_crit_edge, label %do.body311

if.end306.if.end331thread-pre-split_crit_edge:    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end331thread-pre-split

do.body311:                                       ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then323)) #4
          to label %cleanup [label %if.then323], !srcloc !143

if.then323:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #6
  %call324 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug422, ptr noundef %call324, ptr noundef nonnull @.str.17) #4
  br label %cleanup

if.end331thread-pre-split:                        ; preds = %if.end306.if.end331thread-pre-split_crit_edge, %land.lhs.true.if.end331thread-pre-split_crit_edge
  %56 = ptrtoint ptr %media_type24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %media_type24, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.end331thread-pre-split, %if.end22.if.end331_crit_edge
  %57 = phi i32 [ %.pr, %if.end331thread-pre-split ], [ %10, %if.end22.if.end331_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp334 = icmp eq i32 %57, 3
  br i1 %cmp334, label %land.lhs.true336, label %if.end331.cleanup_crit_edge

if.end331.cleanup_crit_edge:                      ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true336:                                 ; preds = %if.end331
  %autoneg337 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 17
  %58 = ptrtoint ptr %autoneg337 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %autoneg337, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool338.not = icmp eq i8 %59, 0
  br i1 %tobool338.not, label %land.lhs.true336.cleanup_crit_edge, label %if.then340

land.lhs.true336.cleanup_crit_edge:               ; preds = %land.lhs.true336
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then340:                                       ; preds = %land.lhs.true336
  %call341 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16908) #4
  %and342 = and i32 %call341, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and342)
  %tobool343.not = icmp eq i32 %and342, 0
  br i1 %tobool343.not, label %do.body346, label %if.end365

do.body346:                                       ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then358)) #4
          to label %cleanup [label %if.then358], !srcloc !143

if.then358:                                       ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #6
  %call359 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug423, ptr noundef %call359, ptr noundef nonnull @.str.24) #4
  br label %cleanup

if.end365:                                        ; preds = %if.then340
  %call366 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16920) #4
  %call367 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16924) #4
  %and368 = and i32 %call366, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and368)
  %tobool369.not = icmp eq i32 %and368, 0
  %and371 = and i32 %call367, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371)
  %tobool372.not = icmp eq i32 %and371, 0
  %or.cond661 = select i1 %tobool369.not, i1 true, i1 %tobool372.not
  br i1 %or.cond661, label %if.else425, label %if.then373

if.then373:                                       ; preds = %if.end365
  %requested_mode375 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %60 = ptrtoint ptr %requested_mode375 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %requested_mode375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp376 = icmp eq i32 %61, 3
  %current_mode380 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  br i1 %cmp376, label %if.then378, label %if.else401

if.then378:                                       ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %current_mode380 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %current_mode380, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then394)) #4
          to label %if.end520 [label %if.then394], !srcloc !143

if.then394:                                       ; preds = %if.then378
  call void @__sanitizer_cov_trace_pc() #6
  %call395 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug424, ptr noundef %call395, ptr noundef nonnull @.str.19) #4
  br label %if.end520

if.else401:                                       ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %current_mode380 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %current_mode380, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then417)) #4
          to label %if.end520 [label %if.then417], !srcloc !143

if.then417:                                       ; preds = %if.else401
  call void @__sanitizer_cov_trace_pc() #6
  %call418 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug425, ptr noundef %call418, ptr noundef nonnull @.str.25) #4
  br label %if.end520

if.else425:                                       ; preds = %if.end365
  %tobool369.not.not = xor i1 %tobool369.not, true
  %and429 = and i32 %call366, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and429)
  %tobool430.not = icmp eq i32 %and429, 0
  %or.cond662 = select i1 %tobool369.not.not, i1 true, i1 %tobool430.not
  %or.cond663 = select i1 %or.cond662, i1 true, i1 %tobool372.not
  %and435 = and i32 %call367, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and435)
  %tobool436.not = icmp eq i32 %and435, 0
  %or.cond664 = select i1 %or.cond663, i1 true, i1 %tobool436.not
  br i1 %or.cond664, label %if.else460, label %if.then437

if.then437:                                       ; preds = %if.else425
  call void @__sanitizer_cov_trace_pc() #6
  %current_mode439 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %64 = ptrtoint ptr %current_mode439 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %current_mode439, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then453)) #4
          to label %if.end520 [label %if.then453], !srcloc !143

if.then453:                                       ; preds = %if.then437
  call void @__sanitizer_cov_trace_pc() #6
  %call454 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug426, ptr noundef %call454, ptr noundef nonnull @.str.26) #4
  br label %if.end520

if.else460:                                       ; preds = %if.else425
  %65 = and i32 %call366, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %65)
  %.not = icmp eq i32 %65, 384
  %or.cond666 = select i1 %.not, i1 %tobool372.not, i1 false
  %or.cond666.not = xor i1 %or.cond666, true
  %or.cond667 = select i1 %or.cond666.not, i1 true, i1 %tobool436.not
  %current_mode497 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  br i1 %or.cond667, label %if.else495, label %if.then472

if.then472:                                       ; preds = %if.else460
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %current_mode497 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %current_mode497, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then488)) #4
          to label %if.end520 [label %if.then488], !srcloc !143

if.then488:                                       ; preds = %if.then472
  call void @__sanitizer_cov_trace_pc() #6
  %call489 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug427, ptr noundef %call489, ptr noundef nonnull @.str.25) #4
  br label %if.end520

if.else495:                                       ; preds = %if.else460
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %current_mode497 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %current_mode497, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then511)) #4
          to label %if.end520 [label %if.then511], !srcloc !143

if.then511:                                       ; preds = %if.else495
  call void @__sanitizer_cov_trace_pc() #6
  %call512 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug428, ptr noundef %call512, ptr noundef nonnull @.str.22) #4
  br label %if.end520

if.end520:                                        ; preds = %if.then511, %if.else495, %if.then488, %if.then472, %if.then453, %if.then437, %if.then417, %if.else401, %if.then394, %if.then378
  %call521 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16904) #4
  %hw_addr527 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %68 = ptrtoint ptr %hw_addr527 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %hw_addr527, align 4
  %tobool528.not = icmp eq ptr %69, null
  br i1 %tobool528.not, label %if.end520.if.end541_crit_edge, label %do.body538, !prof !140

if.end520.if.end541_crit_edge:                    ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end541

do.body538:                                       ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %call521, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  call void @arm_heavy_mb() #4
  %70 = call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %69, i32 16904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %70) #4, !srcloc !142
  br label %if.end541

if.end541:                                        ; preds = %do.body538, %if.end520.if.end541_crit_edge
  %call544 = call i32 @igb_force_mac_fc(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call544)
  %tobool545.not = icmp eq i32 %call544, 0
  br i1 %tobool545.not, label %if.end541.cleanup_crit_edge, label %do.body548

if.end541.cleanup_crit_edge:                      ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body548:                                       ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_config_fc_after_link_up, %if.then560)) #4
          to label %cleanup [label %if.then560], !srcloc !143

if.then560:                                       ; preds = %do.body548
  call void @__sanitizer_cov_trace_pc() #6
  %call561 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug430, ptr noundef %call561, ptr noundef nonnull @.str.17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then560, %do.body548, %if.end541.cleanup_crit_edge, %if.then358, %do.body346, %land.lhs.true336.cleanup_crit_edge, %if.end331.cleanup_crit_edge, %if.then323, %do.body311, %if.then292, %do.body280, %if.end69.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then55, %do.body43, %if.end32.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then17, %do.body12
  %retval.0 = phi i32 [ 0, %if.then358 ], [ %call544, %if.then560 ], [ %call7, %if.then17 ], [ %call29, %if.then27.cleanup_crit_edge ], [ %call36, %if.end32.cleanup_crit_edge ], [ %call66, %if.end62.cleanup_crit_edge ], [ %call73, %if.end69.cleanup_crit_edge ], [ %call276, %if.then292 ], [ %call307, %if.then323 ], [ 0, %if.end541.cleanup_crit_edge ], [ 0, %land.lhs.true336.cleanup_crit_edge ], [ 0, %if.end331.cleanup_crit_edge ], [ 0, %if.then55 ], [ %call7, %do.body12 ], [ 0, %do.body43 ], [ %call276, %do.body280 ], [ %call307, %do.body311 ], [ 0, %do.body346 ], [ %call544, %do.body548 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_nway_lp_ability_reg) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_nway_adv_reg) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_status_reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_setup_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %nvm_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_check_reset_block(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %requested_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp eq i32 %1, 255
  br i1 %cmp, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data.i) #4
  %2 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %nvm_data.i, align 2, !annotation !139
  %type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.i = icmp eq i32 %4, 4
  br i1 %cmp.i, label %if.then.i, label %if.then1.if.end.i_crit_edge

if.then1.if.end.i_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %func.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %func.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  %mul.i = shl i16 %6, 6
  %add.op.i = add i16 %mul.i, 79
  %phi.bo.i = select i1 %tobool.not.i, i16 15, i16 %add.op.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then1.if.end.i_crit_edge
  %lan_offset.0.i = phi i16 [ %phi.bo.i, %if.then.i ], [ 15, %if.then1.if.end.i_crit_edge ]
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %7 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %8(ptr noundef %hw, i16 noundef zeroext %lan_offset.0.i, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end20.i, label %do.body10.i

do.body10.i:                                      ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_set_default_fc.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_link, %if.then15.i)) #4
          to label %igb_set_default_fc.exit [label %if.then15.i], !srcloc !143

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #6
  %call16.i = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_set_default_fc.__UNIQUE_ID_ddebug409, ptr noundef %call16.i, ptr noundef nonnull @.str.6) #4
  br label %igb_set_default_fc.exit

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nvm_data.i, align 2
  %11 = trunc i16 %10 to i14
  %trunc.i = and i14 %11, -4096
  %12 = sext i14 %trunc.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8192, i16 %12)
  %switch.selectcmp = icmp eq i14 %trunc.i, -8192
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 3
  %13 = sext i14 %trunc.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %switch.selectcmp169 = icmp eq i14 %trunc.i, 0
  %switch.select170 = select i1 %switch.selectcmp169, i32 0, i32 %switch.select
  %14 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %switch.select170, ptr %requested_mode, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data.i) #4
  br label %if.end6

igb_set_default_fc.exit:                          ; preds = %if.then15.i, %do.body10.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data.i) #4
  br label %out

if.end6:                                          ; preds = %if.end20.i, %if.end.if.end6_crit_edge
  %15 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %requested_mode, align 4
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %17 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_link.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_link, %if.then15)) #4
          to label %do.end21 [label %if.then15], !srcloc !143

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %call16 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %18 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %current_mode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_link.__UNIQUE_ID_ddebug400, ptr noundef %call16, ptr noundef nonnull @.str.11, i32 noundef %19) #4
  br label %do.end21

do.end21:                                         ; preds = %if.then15, %if.end6
  %setup_physical_interface = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 4
  %20 = ptrtoint ptr %setup_physical_interface to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup_physical_interface, align 4
  %call22 = call i32 %21(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body27, label %do.end21.out_crit_edge

do.end21.out_crit_edge:                           ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body27:                                        ; preds = %do.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_link.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_link, %if.then39)) #4
          to label %do.body46 [label %if.then39], !srcloc !143

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_link.__UNIQUE_ID_ddebug401, ptr noundef %call40, ptr noundef nonnull @.str.12) #4
  br label %do.body46

do.body46:                                        ; preds = %if.then39, %do.body27
  %hw_addr51 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %hw_addr51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw_addr51, align 4
  %tobool52.not = icmp eq ptr %23, null
  br i1 %tobool52.not, label %do.body46.if.end65_crit_edge, label %do.body62, !prof !140

do.body46.if.end65_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

do.body62:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  call void @arm_heavy_mb() #4
  %arrayidx = getelementptr i8, ptr %23, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 143130624) #4, !srcloc !142
  br label %if.end65

if.end65:                                         ; preds = %do.body62, %do.body46.if.end65_crit_edge
  %24 = ptrtoint ptr %hw_addr51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw_addr51, align 4
  %tobool75.not = icmp eq ptr %25, null
  br i1 %tobool75.not, label %if.end65.if.end89_crit_edge, label %do.body85, !prof !140

if.end65.if.end89_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89

do.body85:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  call void @arm_heavy_mb() #4
  %arrayidx88 = getelementptr i8, ptr %25, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx88, i32 65536) #4, !srcloc !142
  br label %if.end89

if.end89:                                         ; preds = %do.body85, %if.end65.if.end89_crit_edge
  %26 = ptrtoint ptr %hw_addr51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw_addr51, align 4
  %tobool99.not = icmp eq ptr %27, null
  br i1 %tobool99.not, label %if.end89.if.end113_crit_edge, label %do.body109, !prof !140

if.end89.if.end113_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end113

do.body109:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  call void @arm_heavy_mb() #4
  %arrayidx112 = getelementptr i8, ptr %27, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx112, i32 25215488) #4, !srcloc !142
  br label %if.end113

if.end113:                                        ; preds = %do.body109, %if.end89.if.end113_crit_edge
  %28 = ptrtoint ptr %hw_addr51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw_addr51, align 4
  %tobool123.not = icmp eq ptr %29, null
  br i1 %tobool123.not, label %if.end113.if.end138_crit_edge, label %do.body133, !prof !140

if.end113.if.end138_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end138

do.body133:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  call void @arm_heavy_mb() #4
  %pause_time = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pause_time, align 4
  %conv = zext i16 %31 to i32
  %32 = call i32 @llvm.bswap.i32(i32 %conv)
  %arrayidx137 = getelementptr i8, ptr %29, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx137, i32 %32) #4, !srcloc !142
  br label %if.end138

if.end138:                                        ; preds = %do.body133, %if.end113.if.end138_crit_edge
  %33 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %current_mode, align 4
  %and.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i165 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i165, label %if.end138.do.body.i_crit_edge, label %if.then.i166

if.end138.do.body.i_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.then.i166:                                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #6
  %fc.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %low_water.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %low_water.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %low_water.i, align 4
  %send_xon.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  %37 = ptrtoint ptr %send_xon.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %send_xon.i, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool3.not.i = icmp eq i8 %38, 0
  %or.i = or i32 %36, -2147483648
  %spec.select.i = select i1 %tobool3.not.i, i32 %36, i32 %or.i
  %39 = ptrtoint ptr %fc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fc.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i166, %if.end138.do.body.i_crit_edge
  %fcrth.0.i = phi i32 [ %40, %if.then.i166 ], [ 0, %if.end138.do.body.i_crit_edge ]
  %fcrtl.1.i = phi i32 [ %spec.select.i, %if.then.i166 ], [ 0, %if.end138.do.body.i_crit_edge ]
  %41 = ptrtoint ptr %hw_addr51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %hw_addr51, align 4
  %tobool9.not.i = icmp eq ptr %42, null
  br i1 %tobool9.not.i, label %do.body.i.if.end17.i_crit_edge, label %do.body14.i, !prof !140

do.body.i.if.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

do.body14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  call void @arm_heavy_mb() #4
  %43 = call i32 @llvm.bswap.i32(i32 %fcrtl.1.i) #4
  %arrayidx.i = getelementptr i8, ptr %42, i32 8544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %43) #4, !srcloc !142
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.body14.i, %do.body.i.if.end17.i_crit_edge
  %44 = ptrtoint ptr %hw_addr51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %hw_addr51, align 4
  %tobool27.not.i = icmp eq ptr %45, null
  br i1 %tobool27.not.i, label %if.end17.i.out_crit_edge, label %do.body37.i, !prof !140

if.end17.i.out_crit_edge:                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body37.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !159
  call void @arm_heavy_mb() #4
  %46 = call i32 @llvm.bswap.i32(i32 %fcrth.0.i) #4
  %arrayidx40.i = getelementptr i8, ptr %45, i32 8552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx40.i, i32 %46) #4, !srcloc !142
  br label %out

out:                                              ; preds = %do.body37.i, %if.end17.i.out_crit_edge, %do.end21.out_crit_edge, %igb_set_default_fc.exit, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call.i, %igb_set_default_fc.exit ], [ %call22, %do.end21.out_crit_edge ], [ 0, %if.end17.i.out_crit_edge ], [ 0, %do.body37.i ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_reset_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_force_mac_fc(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_force_mac_fc.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_force_mac_fc, %if.then)) #4
          to label %do.end7 [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_force_mac_fc.__UNIQUE_ID_ddebug410, ptr noundef %call5, ptr noundef nonnull @.str.14, i32 noundef %1) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %current_mode9 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %current_mode9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_mode9, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %3, label %do.body18 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb12
    i32 3, label %sw.bb15
  ]

sw.bb:                                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, -402653185
  br label %do.body37

sw.bb10:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %and11 = and i32 %call, -402653185
  %or = or i32 %and11, 134217728
  br label %do.body37

sw.bb12:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %and13 = and i32 %call, -402653185
  %or14 = or i32 %and13, 268435456
  br label %do.body37

sw.bb15:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %or16 = or i32 %call, 402653184
  br label %do.body37

do.body18:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_force_mac_fc.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_force_mac_fc, %if.then30)) #4
          to label %out [label %if.then30], !srcloc !143

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_force_mac_fc.__UNIQUE_ID_ddebug411, ptr noundef %call31, ptr noundef nonnull @.str.15) #4
  br label %out

do.body37:                                        ; preds = %sw.bb15, %sw.bb12, %sw.bb10, %sw.bb
  %ctrl.0 = phi i32 [ %or16, %sw.bb15 ], [ %or14, %sw.bb12 ], [ %or, %sw.bb10 ], [ %and, %sw.bb ]
  %hw_addr42 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %hw_addr42 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr42, align 4
  %tobool43.not = icmp eq ptr %6, null
  br i1 %tobool43.not, label %do.body37.out_crit_edge, label %do.body53, !prof !140

do.body37.out_crit_edge:                          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body53:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %7) #4, !srcloc !142
  br label %out

out:                                              ; preds = %do.body53, %do.body37.out_crit_edge, %if.then30, %do.body18
  %ret_val.0 = phi i32 [ -3, %if.then30 ], [ 0, %do.body53 ], [ 0, %do.body37.out_crit_edge ], [ -3, %do.body18 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_speed_and_duplex_copper(ptr noundef %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %and = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1000, ptr %speed, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_speed_and_duplex_copper, %if.then6)) #4
          to label %if.end55 [label %if.then6], !srcloc !143

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug431, ptr noundef %call7, ptr noundef nonnull @.str.28) #4
  br label %if.end55

if.else:                                          ; preds = %entry
  %and10 = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else33, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 100, ptr %speed, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_speed_and_duplex_copper, %if.then26)) #4
          to label %if.end55 [label %if.then26], !srcloc !143

if.then26:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug432, ptr noundef %call27, ptr noundef nonnull @.str.29) #4
  br label %if.end55

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 10, ptr %speed, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_speed_and_duplex_copper, %if.then47)) #4
          to label %if.end55 [label %if.then47], !srcloc !143

if.then47:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug433, ptr noundef %call48, ptr noundef nonnull @.str.30) #4
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %if.else33, %if.then26, %if.then12, %if.then6, %if.then
  %and56 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else79, label %if.then58

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2, ptr %duplex, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_speed_and_duplex_copper, %if.then72)) #4
          to label %if.end100 [label %if.then72], !srcloc !143

if.then72:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  %call73 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug434, ptr noundef %call73, ptr noundef nonnull @.str.31) #4
  br label %if.end100

if.else79:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %duplex, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_speed_and_duplex_copper, %if.then93)) #4
          to label %if.end100 [label %if.then93], !srcloc !143

if.then93:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #6
  %call94 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug435, ptr noundef %call94, ptr noundef nonnull @.str.32) #4
  br label %if.end100

if.end100:                                        ; preds = %if.then93, %if.else79, %if.then72, %if.then58
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_hw_semaphore(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %i.093 = phi i32 [ 0, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 10737400) #4
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond = icmp eq i32 %i.093, %conv
  br i1 %exitcond, label %if.end.do.body5_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.do.body5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.093, i32 %add)
  %cmp2 = icmp eq i32 %i.093, %add
  br i1 %cmp2, label %while.end.do.body5_crit_edge, label %for.cond.preheader

while.end.do.body5_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

for.cond.preheader:                               ; preds = %while.end
  %hw_addr24 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

do.body5:                                         ; preds = %while.end.do.body5_crit_edge, %if.end.do.body5_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_hw_semaphore.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_hw_semaphore, %if.then10)) #4
          to label %out [label %if.then10], !srcloc !143

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_hw_semaphore.__UNIQUE_ID_ddebug436, ptr noundef %call11, ptr noundef nonnull @.str.34) #4
  br label %out

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %for.cond.preheader
  %i.194 = phi i32 [ 0, %for.cond.preheader ], [ %inc46, %if.end45.for.body_crit_edge ]
  %call18 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %3 = ptrtoint ptr %hw_addr24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr24, align 4
  %tobool25.not = icmp eq ptr %4, null
  br i1 %tobool25.not, label %for.body.if.end38_crit_edge, label %do.body35, !prof !140

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

do.body35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  tail call void @arm_heavy_mb() #4
  %or = or i32 %call18, 2
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %4, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %5) #4, !srcloc !142
  br label %if.end38

if.end38:                                         ; preds = %do.body35, %for.body.if.end38_crit_edge
  %call41 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %and42 = and i32 %call41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end45, label %for.end

if.end45:                                         ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #4
  %inc46 = add nuw nsw i32 %i.194, 1
  %exitcond95 = icmp eq i32 %i.194, %conv
  br i1 %exitcond95, label %if.end45.if.then49_crit_edge, label %if.end45.for.body_crit_edge

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end45.if.then49_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49

for.end:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_cmp4(i32 %i.194, i32 %add)
  %cmp47 = icmp eq i32 %i.194, %add
  br i1 %cmp47, label %for.end.if.then49_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.end.if.then49_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49

if.then49:                                        ; preds = %for.end.if.then49_crit_edge, %if.end45.if.then49_crit_edge
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %7 = ptrtoint ptr %hw_addr24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr24, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then49.igb_put_hw_semaphore.exit_crit_edge, label %do.body6.i, !prof !140

if.then49.igb_put_hw_semaphore.exit_crit_edge:    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_put_hw_semaphore.exit

do.body6.i:                                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = and i32 %call.i, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !162
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  %arrayidx.i = getelementptr i8, ptr %8, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %9) #4, !srcloc !142
  br label %igb_put_hw_semaphore.exit

igb_put_hw_semaphore.exit:                        ; preds = %do.body6.i, %if.then49.igb_put_hw_semaphore.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_hw_semaphore.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_hw_semaphore, %if.then63)) #4
          to label %out [label %if.then63], !srcloc !143

if.then63:                                        ; preds = %igb_put_hw_semaphore.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call64 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_hw_semaphore.__UNIQUE_ID_ddebug438, ptr noundef %call64, ptr noundef nonnull @.str.35) #4
  br label %out

out:                                              ; preds = %if.then63, %igb_put_hw_semaphore.exit, %for.end.out_crit_edge, %if.then10, %do.body5
  %ret_val.0 = phi i32 [ 0, %for.end.out_crit_edge ], [ -1, %if.then10 ], [ -1, %if.then63 ], [ -1, %do.body5 ], [ -1, %igb_put_hw_semaphore.exit ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_put_hw_semaphore(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !140

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !162
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %1, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !142
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_auto_rd_done(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.1 = and i32 %call.1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.2 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.2 = and i32 %call.2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.out_crit_edge

if.end.1.out_crit_edge:                           ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.3 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.3 = and i32 %call.3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.out_crit_edge

if.end.2.out_crit_edge:                           ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.4 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.4 = and i32 %call.4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.out_crit_edge

if.end.3.out_crit_edge:                           ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.5 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.5 = and i32 %call.5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.out_crit_edge

if.end.4.out_crit_edge:                           ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.6 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.6 = and i32 %call.6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.out_crit_edge

if.end.5.out_crit_edge:                           ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.7 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.7 = and i32 %call.7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.out_crit_edge

if.end.6.out_crit_edge:                           ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.8 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.8 = and i32 %call.8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.out_crit_edge

if.end.7.out_crit_edge:                           ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.9 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.9 = and i32 %call.9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %do.body3, label %if.end.8.out_crit_edge

if.end.8.out_crit_edge:                           ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body3:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_auto_rd_done.__UNIQUE_ID_ddebug440, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_auto_rd_done, %if.then8)) #4
          to label %out [label %if.then8], !srcloc !143

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_auto_rd_done.__UNIQUE_ID_ddebug440, ptr noundef %call9, ptr noundef nonnull @.str.37) #4
  br label %out

out:                                              ; preds = %if.then8, %do.body3, %if.end.8.out_crit_edge, %if.end.7.out_crit_edge, %if.end.6.out_crit_edge, %if.end.5.out_crit_edge, %if.end.4.out_crit_edge, %if.end.3.out_crit_edge, %if.end.2.out_crit_edge, %if.end.1.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ -9, %if.then8 ], [ -9, %do.body3 ], [ 0, %if.end.8.out_crit_edge ], [ 0, %if.end.7.out_crit_edge ], [ 0, %if.end.6.out_crit_edge ], [ 0, %if.end.5.out_crit_edge ], [ 0, %if.end.4.out_crit_edge ], [ 0, %if.end.3.out_crit_edge ], [ 0, %if.end.2.out_crit_edge ], [ 0, %if.end.1.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_id_led_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !139
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %switch = icmp eq i32 %3, 6
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = call i32 @igb_valid_led_default_i210(ptr noundef %hw, ptr noundef nonnull %data) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %5(ptr noundef %hw, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %do.body1.i

do.body1.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_valid_led_default.__UNIQUE_ID_ddebug441, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_id_led_init, %if.end.thread99)) #4
          to label %if.end [label %if.end.thread99], !srcloc !143

if.end.thread99:                                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_valid_led_default.__UNIQUE_ID_ddebug441, ptr noundef %call7.i, ptr noundef nonnull @.str.6) #4
  br label %out

if.end10.i:                                       ; preds = %if.else
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %7, label %if.end10.i.if.end8_crit_edge [
    i16 0, label %if.end10.i.if.then15.i_crit_edge
    i16 -1, label %if.end10.i.if.then15.i_crit_edge136
  ]

if.end10.i.if.then15.i_crit_edge136:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

if.end10.i.if.then15.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

if.end10.i.if.end8_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then15.i:                                      ; preds = %if.end10.i.if.then15.i_crit_edge, %if.end10.i.if.then15.i_crit_edge136
  %media_type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %9 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cond.i = icmp eq i32 %10, 3
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4376, ptr %data, align 2
  br label %if.end8

sw.default.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -30447, ptr %data, align 2
  br label %if.end8

if.end:                                           ; preds = %do.body1.i, %if.then
  %ret_val.0 = phi i32 [ %call, %if.then ], [ %call.i, %do.body1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool.not = icmp eq i32 %ret_val.0, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %sw.default.i, %sw.bb.i, %if.end10.i.if.end8_crit_edge
  %call9 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3584) #4
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call9, ptr %ledctl_default, align 4
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call9, ptr %ledctl_mode1, align 4
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call9, ptr %ledctl_mode2, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data, align 2
  %conv14 = zext i16 %17 to i32
  %conv16 = and i32 %conv14, 15
  %18 = zext i32 %conv16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %conv16, label %if.end8.for.inc_crit_edge [
    i32 4, label %if.end8.sw.epilog_crit_edge
    i32 5, label %if.end8.sw.epilog_crit_edge137
    i32 6, label %if.end8.sw.epilog_crit_edge138
    i32 7, label %if.end8.sw.bb27_crit_edge
    i32 8, label %if.end8.sw.bb27_crit_edge139
    i32 9, label %if.end8.sw.bb27_crit_edge140
    i32 2, label %if.end8.for.inc.sink.split_crit_edge
    i32 3, label %sw.bb52
  ]

if.end8.for.inc.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

if.end8.sw.bb27_crit_edge140:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb27

if.end8.sw.bb27_crit_edge139:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb27

if.end8.sw.bb27_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb27

if.end8.sw.epilog_crit_edge138:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end8.sw.epilog_crit_edge137:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb27:                                          ; preds = %if.end8.sw.bb27_crit_edge, %if.end8.sw.bb27_crit_edge139, %if.end8.sw.bb27_crit_edge140
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb27, %if.end8.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge137, %if.end8.sw.epilog_crit_edge138
  %.sink = phi i32 [ 15, %sw.bb27 ], [ 14, %if.end8.sw.epilog_crit_edge ], [ 14, %if.end8.sw.epilog_crit_edge137 ], [ 14, %if.end8.sw.epilog_crit_edge138 ]
  %19 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ledctl_mode1, align 4
  %and33 = and i32 %20, -256
  %or38 = or i32 %and33, %.sink
  store i32 %or38, ptr %ledctl_mode1, align 4
  %switch.tableidx = add nsw i32 %conv16, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %21 = icmp ult i32 %switch.tableidx, 5
  br i1 %21, label %switch.hole_check, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb52:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %22 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %switch.lobit.not = icmp eq i8 %22, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc_crit_edge, label %switch.lookup

switch.hole_check.for.inc_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.igb_id_led_init, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %switch.lookup, %sw.bb52, %if.end8.for.inc.sink.split_crit_edge
  %.sink106 = phi i32 [ 15, %sw.bb52 ], [ 14, %if.end8.for.inc.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %24 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ledctl_mode2, align 4
  %and46 = and i32 %25, -256
  %or51 = or i32 %and46, %.sink106
  store i32 %or51, ptr %ledctl_mode2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %switch.hole_check.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge, %if.end8.for.inc_crit_edge
  %shr.1 = lshr i32 %conv14, 4
  %conv16.1 = and i32 %shr.1, 15
  %26 = zext i32 %conv16.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %conv16.1, label %for.inc.for.inc.1_crit_edge [
    i32 4, label %for.inc.sw.bb.1_crit_edge
    i32 5, label %for.inc.sw.bb.1_crit_edge141
    i32 6, label %for.inc.sw.bb.1_crit_edge142
    i32 7, label %for.inc.sw.epilog.1_crit_edge
    i32 8, label %for.inc.sw.epilog.1_crit_edge143
    i32 9, label %for.inc.sw.epilog.1_crit_edge144
    i32 2, label %for.inc.for.inc.1.sink.split_crit_edge
    i32 3, label %sw.bb52.1
  ]

for.inc.for.inc.1.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.sink.split

for.inc.sw.epilog.1_crit_edge144:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.1

for.inc.sw.epilog.1_crit_edge143:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.1

for.inc.sw.epilog.1_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.1

for.inc.sw.bb.1_crit_edge142:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge141:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc.sw.bb.1_crit_edge, %for.inc.sw.bb.1_crit_edge141, %for.inc.sw.bb.1_crit_edge142
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb.1, %for.inc.sw.epilog.1_crit_edge, %for.inc.sw.epilog.1_crit_edge143, %for.inc.sw.epilog.1_crit_edge144
  %.sink108 = phi i32 [ 3584, %sw.bb.1 ], [ 3840, %for.inc.sw.epilog.1_crit_edge ], [ 3840, %for.inc.sw.epilog.1_crit_edge143 ], [ 3840, %for.inc.sw.epilog.1_crit_edge144 ]
  %27 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ledctl_mode1, align 4
  %and22.1 = and i32 %28, -65281
  %or.1 = or i32 %and22.1, %.sink108
  store i32 %or.1, ptr %ledctl_mode1, align 4
  %switch.tableidx119 = add nsw i32 %conv16.1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx119)
  %29 = icmp ult i32 %switch.tableidx119, 5
  br i1 %29, label %switch.hole_check120, label %sw.epilog.1.for.inc.1_crit_edge

sw.epilog.1.for.inc.1_crit_edge:                  ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

sw.bb52.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.sink.split

switch.hole_check120:                             ; preds = %sw.epilog.1
  %switch.maskindex122 = trunc i32 %switch.tableidx119 to i8
  %switch.shifted123 = lshr i8 27, %switch.maskindex122
  %30 = and i8 %switch.shifted123, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.lobit124.not = icmp eq i8 %30, 0
  br i1 %switch.lobit124.not, label %switch.hole_check120.for.inc.1_crit_edge, label %switch.lookup121

switch.hole_check120.for.inc.1_crit_edge:         ; preds = %switch.hole_check120
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

switch.lookup121:                                 ; preds = %switch.hole_check120
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep125 = getelementptr inbounds [5 x i32], ptr @switch.table.igb_id_led_init.48, i32 0, i32 %switch.tableidx119
  %31 = ptrtoint ptr %switch.gep125 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load126 = load i32, ptr %switch.gep125, align 4
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %switch.lookup121, %sw.bb52.1, %for.inc.for.inc.1.sink.split_crit_edge
  %.sink110 = phi i32 [ 3840, %sw.bb52.1 ], [ 3584, %for.inc.for.inc.1.sink.split_crit_edge ], [ %switch.load126, %switch.lookup121 ]
  %32 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ledctl_mode2, align 4
  %and58.1 = and i32 %33, -65281
  %or63.1 = or i32 %and58.1, %.sink110
  store i32 %or63.1, ptr %ledctl_mode2, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %switch.hole_check120.for.inc.1_crit_edge, %sw.epilog.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %shr.2 = lshr i32 %conv14, 8
  %conv16.2 = and i32 %shr.2, 15
  %34 = zext i32 %conv16.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %conv16.2, label %for.inc.1.for.inc.2_crit_edge [
    i32 4, label %for.inc.1.sw.bb.2_crit_edge
    i32 5, label %for.inc.1.sw.bb.2_crit_edge145
    i32 6, label %for.inc.1.sw.bb.2_crit_edge146
    i32 7, label %for.inc.1.sw.epilog.2_crit_edge
    i32 8, label %for.inc.1.sw.epilog.2_crit_edge147
    i32 9, label %for.inc.1.sw.epilog.2_crit_edge148
    i32 2, label %for.inc.1.for.inc.2.sink.split_crit_edge
    i32 3, label %sw.bb52.2
  ]

for.inc.1.for.inc.2.sink.split_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.sink.split

for.inc.1.sw.epilog.2_crit_edge148:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.2

for.inc.1.sw.epilog.2_crit_edge147:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.2

for.inc.1.sw.epilog.2_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.2

for.inc.1.sw.bb.2_crit_edge146:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge145:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1.sw.bb.2_crit_edge, %for.inc.1.sw.bb.2_crit_edge145, %for.inc.1.sw.bb.2_crit_edge146
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.bb.2, %for.inc.1.sw.epilog.2_crit_edge, %for.inc.1.sw.epilog.2_crit_edge147, %for.inc.1.sw.epilog.2_crit_edge148
  %.sink112 = phi i32 [ 917504, %sw.bb.2 ], [ 983040, %for.inc.1.sw.epilog.2_crit_edge ], [ 983040, %for.inc.1.sw.epilog.2_crit_edge147 ], [ 983040, %for.inc.1.sw.epilog.2_crit_edge148 ]
  %35 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ledctl_mode1, align 4
  %and22.2 = and i32 %36, -16711681
  %or.2 = or i32 %and22.2, %.sink112
  store i32 %or.2, ptr %ledctl_mode1, align 4
  %switch.tableidx128 = add nsw i32 %conv16.2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx128)
  %37 = icmp ult i32 %switch.tableidx128, 5
  br i1 %37, label %switch.hole_check129, label %sw.epilog.2.for.inc.2_crit_edge

sw.epilog.2.for.inc.2_crit_edge:                  ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

sw.bb52.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.sink.split

switch.hole_check129:                             ; preds = %sw.epilog.2
  %switch.maskindex131 = trunc i32 %switch.tableidx128 to i8
  %switch.shifted132 = lshr i8 27, %switch.maskindex131
  %38 = and i8 %switch.shifted132, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %switch.lobit133.not = icmp eq i8 %38, 0
  br i1 %switch.lobit133.not, label %switch.hole_check129.for.inc.2_crit_edge, label %switch.lookup130

switch.hole_check129.for.inc.2_crit_edge:         ; preds = %switch.hole_check129
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

switch.lookup130:                                 ; preds = %switch.hole_check129
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep134 = getelementptr inbounds [5 x i32], ptr @switch.table.igb_id_led_init.49, i32 0, i32 %switch.tableidx128
  %39 = ptrtoint ptr %switch.gep134 to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load135 = load i32, ptr %switch.gep134, align 4
  br label %for.inc.2.sink.split

for.inc.2.sink.split:                             ; preds = %switch.lookup130, %sw.bb52.2, %for.inc.1.for.inc.2.sink.split_crit_edge
  %.sink114 = phi i32 [ 983040, %sw.bb52.2 ], [ 917504, %for.inc.1.for.inc.2.sink.split_crit_edge ], [ %switch.load135, %switch.lookup130 ]
  %40 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ledctl_mode2, align 4
  %and58.2 = and i32 %41, -16711681
  %or63.2 = or i32 %and58.2, %.sink114
  store i32 %or63.2, ptr %ledctl_mode2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2.sink.split, %switch.hole_check129.for.inc.2_crit_edge, %sw.epilog.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %shr.3 = lshr i32 %conv14, 12
  %42 = zext i32 %shr.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %shr.3, label %for.inc.2.out_crit_edge [
    i32 4, label %for.inc.2.sw.bb.3_crit_edge
    i32 5, label %for.inc.2.sw.bb.3_crit_edge149
    i32 6, label %for.inc.2.sw.bb.3_crit_edge150
    i32 7, label %for.inc.2.sw.epilog.3_crit_edge
    i32 8, label %for.inc.2.sw.epilog.3_crit_edge151
    i32 9, label %for.inc.2.sw.epilog.3_crit_edge152
    i32 2, label %for.inc.2.sw.bb40.3_crit_edge
    i32 3, label %for.inc.2.sw.bb52.3_crit_edge
  ]

for.inc.2.sw.bb52.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb52.3

for.inc.2.sw.bb40.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb40.3

for.inc.2.sw.epilog.3_crit_edge152:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.3

for.inc.2.sw.epilog.3_crit_edge151:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.3

for.inc.2.sw.epilog.3_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.3

for.inc.2.sw.bb.3_crit_edge150:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge149:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.3

for.inc.2.out_crit_edge:                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb.3:                                          ; preds = %for.inc.2.sw.bb.3_crit_edge, %for.inc.2.sw.bb.3_crit_edge149, %for.inc.2.sw.bb.3_crit_edge150
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.bb.3, %for.inc.2.sw.epilog.3_crit_edge, %for.inc.2.sw.epilog.3_crit_edge151, %for.inc.2.sw.epilog.3_crit_edge152
  %.sink116 = phi i32 [ 234881024, %sw.bb.3 ], [ 251658240, %for.inc.2.sw.epilog.3_crit_edge ], [ 251658240, %for.inc.2.sw.epilog.3_crit_edge151 ], [ 251658240, %for.inc.2.sw.epilog.3_crit_edge152 ]
  %43 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ledctl_mode1, align 4
  %and22.3 = and i32 %44, 16777215
  %or.3 = or i32 %and22.3, %.sink116
  store i32 %or.3, ptr %ledctl_mode1, align 4
  %45 = zext i32 %shr.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %shr.3, label %sw.epilog.3.out_crit_edge [
    i32 9, label %sw.epilog.3.sw.bb52.3_crit_edge
    i32 5, label %sw.epilog.3.sw.bb40.3_crit_edge
    i32 8, label %sw.epilog.3.sw.bb40.3_crit_edge153
    i32 6, label %sw.epilog.3.sw.bb52.3_crit_edge154
  ]

sw.epilog.3.sw.bb52.3_crit_edge154:               ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb52.3

sw.epilog.3.sw.bb40.3_crit_edge153:               ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb40.3

sw.epilog.3.sw.bb40.3_crit_edge:                  ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb40.3

sw.epilog.3.sw.bb52.3_crit_edge:                  ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb52.3

sw.epilog.3.out_crit_edge:                        ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb40.3:                                        ; preds = %sw.epilog.3.sw.bb40.3_crit_edge, %sw.epilog.3.sw.bb40.3_crit_edge153, %for.inc.2.sw.bb40.3_crit_edge
  %46 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ledctl_mode2, align 4
  %and46.3 = and i32 %47, 16777215
  %or51.3 = or i32 %and46.3, 234881024
  store i32 %or51.3, ptr %ledctl_mode2, align 4
  br label %out

sw.bb52.3:                                        ; preds = %sw.epilog.3.sw.bb52.3_crit_edge, %sw.epilog.3.sw.bb52.3_crit_edge154, %for.inc.2.sw.bb52.3_crit_edge
  %48 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ledctl_mode2, align 4
  %and58.3 = and i32 %49, 16777215
  %or63.3 = or i32 %and58.3, 251658240
  store i32 %or63.3, ptr %ledctl_mode2, align 4
  br label %out

out:                                              ; preds = %sw.bb52.3, %sw.bb40.3, %sw.epilog.3.out_crit_edge, %for.inc.2.out_crit_edge, %if.end.out_crit_edge, %if.end.thread99
  %ret_val.097 = phi i32 [ %ret_val.0, %if.end.out_crit_edge ], [ %call.i, %if.end.thread99 ], [ 0, %sw.bb52.3 ], [ 0, %sw.bb40.3 ], [ 0, %sw.epilog.3.out_crit_edge ], [ 0, %for.inc.2.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %ret_val.097
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_valid_led_default_i210(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_cleanup_led(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !140

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !163
  tail call void @arm_heavy_mb() #4
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ledctl_default, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx = getelementptr i8, ptr %1, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !142
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_blink_led(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.else:                                          ; preds = %entry
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %ledctl_mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ledctl_mode2, align 4
  %ledctl_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %ledctl_default to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ledctl_default, align 4
  %and = and i32 %3, 15
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and)
  %cmp7 = icmp eq i32 %and, 14
  %or.cond = select i1 %tobool.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.else.if.then12_crit_edge, label %lor.lhs.false

if.else.if.then12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.else
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp11 = icmp eq i32 %and, 15
  %or.cond43 = select i1 %tobool.not.not, i1 %cmp11, i1 false
  br i1 %or.cond43, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.else.if.then12_crit_edge
  %and13 = and i32 %3, -144
  %or = or i32 %and13, 142
  br label %if.end

if.end:                                           ; preds = %if.then12, %lor.lhs.false.if.end_crit_edge
  %ledctl_blink.1 = phi i32 [ %or, %if.then12 ], [ %3, %lor.lhs.false.if.end_crit_edge ]
  %shr.1 = lshr i32 %3, 8
  %and.1 = and i32 %shr.1, 15
  %7 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.1)
  %cmp7.1 = icmp eq i32 %and.1, 14
  %or.cond.1 = select i1 %tobool.not.1, i1 %cmp7.1, i1 false
  br i1 %or.cond.1, label %if.end.if.then12.1_crit_edge, label %lor.lhs.false.1

if.end.if.then12.1_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.1

lor.lhs.false.1:                                  ; preds = %if.end
  %tobool.not.not.1 = xor i1 %tobool.not.1, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.1)
  %cmp11.1 = icmp eq i32 %and.1, 15
  %or.cond43.1 = select i1 %tobool.not.not.1, i1 %cmp11.1, i1 false
  br i1 %or.cond43.1, label %lor.lhs.false.1.if.then12.1_crit_edge, label %lor.lhs.false.1.if.end.1_crit_edge

lor.lhs.false.1.if.end.1_crit_edge:               ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.1

lor.lhs.false.1.if.then12.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.1

if.then12.1:                                      ; preds = %lor.lhs.false.1.if.then12.1_crit_edge, %if.end.if.then12.1_crit_edge
  %and13.1 = and i32 %ledctl_blink.1, -36609
  %or.1 = or i32 %and13.1, 36352
  br label %if.end.1

if.end.1:                                         ; preds = %if.then12.1, %lor.lhs.false.1.if.end.1_crit_edge
  %ledctl_blink.1.1 = phi i32 [ %or.1, %if.then12.1 ], [ %ledctl_blink.1, %lor.lhs.false.1.if.end.1_crit_edge ]
  %shr.2 = lshr i32 %3, 16
  %and.2 = and i32 %shr.2, 15
  %8 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.2 = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.2)
  %cmp7.2 = icmp eq i32 %and.2, 14
  %or.cond.2 = select i1 %tobool.not.2, i1 %cmp7.2, i1 false
  br i1 %or.cond.2, label %if.end.1.if.then12.2_crit_edge, label %lor.lhs.false.2

if.end.1.if.then12.2_crit_edge:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.2

lor.lhs.false.2:                                  ; preds = %if.end.1
  %tobool.not.not.2 = xor i1 %tobool.not.2, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.2)
  %cmp11.2 = icmp eq i32 %and.2, 15
  %or.cond43.2 = select i1 %tobool.not.not.2, i1 %cmp11.2, i1 false
  br i1 %or.cond43.2, label %lor.lhs.false.2.if.then12.2_crit_edge, label %lor.lhs.false.2.if.end.2_crit_edge

lor.lhs.false.2.if.end.2_crit_edge:               ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.2

lor.lhs.false.2.if.then12.2_crit_edge:            ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.2

if.then12.2:                                      ; preds = %lor.lhs.false.2.if.then12.2_crit_edge, %if.end.1.if.then12.2_crit_edge
  %and13.2 = and i32 %ledctl_blink.1.1, -9371649
  %or.2 = or i32 %and13.2, 9306112
  br label %if.end.2

if.end.2:                                         ; preds = %if.then12.2, %lor.lhs.false.2.if.end.2_crit_edge
  %ledctl_blink.1.2 = phi i32 [ %or.2, %if.then12.2 ], [ %ledctl_blink.1.1, %lor.lhs.false.2.if.end.2_crit_edge ]
  %shr.3 = lshr i32 %3, 24
  %and.3 = and i32 %shr.3, 15
  %9 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.3 = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and.3)
  %cmp7.3 = icmp eq i32 %and.3, 14
  %or.cond.3 = select i1 %tobool.not.3, i1 %cmp7.3, i1 false
  br i1 %or.cond.3, label %if.end.2.if.then12.3_crit_edge, label %lor.lhs.false.3

if.end.2.if.then12.3_crit_edge:                   ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.3

lor.lhs.false.3:                                  ; preds = %if.end.2
  %tobool.not.not.3 = xor i1 %tobool.not.3, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.3)
  %cmp11.3 = icmp eq i32 %and.3, 15
  %or.cond43.3 = select i1 %tobool.not.not.3, i1 %cmp11.3, i1 false
  br i1 %or.cond43.3, label %lor.lhs.false.3.if.then12.3_crit_edge, label %lor.lhs.false.3.do.body_crit_edge

lor.lhs.false.3.do.body_crit_edge:                ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false.3.if.then12.3_crit_edge:            ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.3

if.then12.3:                                      ; preds = %lor.lhs.false.3.if.then12.3_crit_edge, %if.end.2.if.then12.3_crit_edge
  %and13.3 = and i32 %ledctl_blink.1.2, 1895825407
  %or.3 = or i32 %and13.3, -1912602624
  br label %do.body

do.body:                                          ; preds = %if.then12.3, %lor.lhs.false.3.do.body_crit_edge, %entry.do.body_crit_edge
  %ledctl_blink.2 = phi i32 [ 142, %entry.do.body_crit_edge ], [ %or.3, %if.then12.3 ], [ %ledctl_blink.1.2, %lor.lhs.false.3.do.body_crit_edge ]
  %hw_addr17 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %hw_addr17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw_addr17, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %do.body.if.end26_crit_edge, label %do.body23, !prof !140

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.body23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !164
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %ledctl_blink.2)
  %arrayidx = getelementptr i8, ptr %11, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %12) #4, !srcloc !142
  br label %if.end26

if.end26:                                         ; preds = %do.body23, %do.body.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_led_off(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %do.body, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.body6, !prof !140

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !165
  tail call void @arm_heavy_mb() #4
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %ledctl_mode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ledctl_mode1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %arrayidx = getelementptr i8, ptr %3, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %6) #4, !srcloc !142
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body6, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_disable_pcie_master(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 0) #4
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.while.body.preheader_crit_edge, label %do.body7, !prof !140

if.end.while.body.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.preheader

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %call, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !166
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %4) #4, !srcloc !142
  br label %while.body.preheader

while.body.preheader:                             ; preds = %do.body7, %if.end.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.preheader
  %timeout.048 = phi i32 [ %dec, %if.end17.while.body_crit_edge ], [ 800, %while.body.preheader ]
  %call14 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %and = and i32 %call14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %while.body.out_crit_edge, label %if.end17

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end17:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #4
  %dec = add nsw i32 %timeout.048, -1
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %do.body21.critedge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body21.critedge:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_disable_pcie_master.__UNIQUE_ID_ddebug446, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_disable_pcie_master, %if.then31)) #4
          to label %out [label %if.then31], !srcloc !143

if.then31:                                        ; preds = %do.body21.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_disable_pcie_master.__UNIQUE_ID_ddebug446, ptr noundef %call32, ptr noundef nonnull @.str.39) #4
  br label %out

out:                                              ; preds = %if.then31, %do.body21.critedge, %while.body.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %entry.out_crit_edge ], [ -10, %if.then31 ], [ -10, %do.body21.critedge ], [ 0, %while.body.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_validate_mdi_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 17
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 19
  %4 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mdix, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %5, label %land.lhs.true.out_crit_edge [
    i8 0, label %land.lhs.true.do.body10_crit_edge
    i8 3, label %land.lhs.true.do.body10_crit_edge28
  ]

land.lhs.true.do.body10_crit_edge28:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

land.lhs.true.do.body10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body10:                                        ; preds = %land.lhs.true.do.body10_crit_edge, %land.lhs.true.do.body10_crit_edge28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_validate_mdi_setting.__UNIQUE_ID_ddebug447, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_validate_mdi_setting, %if.then14)) #4
          to label %do.end18 [label %if.then14], !srcloc !143

if.then14:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_validate_mdi_setting.__UNIQUE_ID_ddebug447, ptr noundef %call15, ptr noundef nonnull @.str.41) #4
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body10
  %7 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mdix, align 2
  br label %out

out:                                              ; preds = %do.end18, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ -3, %do.end18 ], [ 0, %land.lhs.true.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef %reg, i32 noundef %offset, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %do.body6, !prof !140

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %data to i32
  %shl = shl i32 %offset, 8
  %or = or i32 %shl, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !167
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !142
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body6, %entry.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 640
  br i1 %exitcond.not, label %do.body19, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.049 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1073740) #4
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool12.not = icmp sgt i32 %call, -1
  br i1 %tobool12.not, label %for.cond, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body19:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_8bit_ctrl_reg.__UNIQUE_ID_ddebug449, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_8bit_ctrl_reg, %if.then29)) #4
          to label %out [label %if.then29], !srcloc !143

if.then29:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_8bit_ctrl_reg.__UNIQUE_ID_ddebug449, ptr noundef %call30, ptr noundef nonnull @.str.43, i32 noundef %reg) #4
  br label %out

out:                                              ; preds = %if.then29, %do.body19, %for.body.out_crit_edge
  %ret_val.0 = phi i32 [ -2, %if.then29 ], [ -2, %do.body19 ], [ 0, %for.body.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @igb_enable_mng_pass_thru(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %asf_firmware_present = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 16
  %0 = ptrtoint ptr %asf_firmware_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %asf_firmware_present, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 22560) #4
  %and = and i32 %call, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end3:                                          ; preds = %if.end
  %arc_subsystem_valid = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 15
  %2 = ptrtoint ptr %arc_subsystem_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arc_subsystem_valid, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23380) #4
  %call8 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23344) #4
  %and9 = and i32 %call8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and11 = and i32 %call7, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and11)
  %cmp = icmp eq i32 %and11, 4
  %or.cond = select i1 %tobool10.not, i1 %cmp, i1 false
  br label %out

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %4 = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br label %out

out:                                              ; preds = %if.else, %if.then6, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0.off0 = phi i1 [ false, %if.end.out_crit_edge ], [ false, %entry.out_crit_edge ], [ %or.cond, %if.then6 ], [ %5, %if.else ]
  ret i1 %ret_val.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !67, !69, !71, !72, !74, !75, !77, !79, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 113, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igb_init_rx_addrs.__UNIQUE_ID_ddebug386, !1, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 118, i32 2}
!8 = !{ptr @igb_init_rx_addrs.__UNIQUE_ID_ddebug387, !7, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 303, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @igb_check_alt_mac_addr.__UNIQUE_ID_ddebug390, !10, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!13 = !{ptr @igb_check_alt_mac_addr.__UNIQUE_ID_ddebug391, !14, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 323, i32 4}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 333, i32 3}
!17 = !{ptr @igb_check_alt_mac_addr.__UNIQUE_ID_ddebug392, !16, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 662, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @igb_check_for_copper_link.__UNIQUE_ID_ddebug399, !19, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 703, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @igb_setup_link.__UNIQUE_ID_ddebug400, !23, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 715, i32 2}
!28 = !{ptr @igb_setup_link.__UNIQUE_ID_ddebug401, !27, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 861, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @igb_force_mac_fc.__UNIQUE_ID_ddebug410, !30, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 879, i32 3}
!35 = !{ptr @igb_force_mac_fc.__UNIQUE_ID_ddebug411, !34, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 921, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug413, !37, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 945, i32 4}
!42 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug414, !41, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1007, i32 5}
!45 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug415, !44, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1010, i32 5}
!48 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug416, !47, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1025, i32 4}
!51 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug417, !50, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!52 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug418, !53, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1039, i32 4}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1065, i32 4}
!56 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug419, !55, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!57 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug420, !58, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1068, i32 4}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1077, i32 4}
!61 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug421, !60, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!62 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug422, !63, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1089, i32 4}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1106, i32 4}
!66 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug423, !65, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!67 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug424, !68, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1162, i32 5}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1165, i32 5}
!71 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug425, !70, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1180, i32 4}
!74 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug426, !73, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!75 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug427, !76, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1194, i32 4}
!77 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug428, !78, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1200, i32 4}
!79 = !{ptr @igb_config_fc_after_link_up.__UNIQUE_ID_ddebug430, !80, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1212, i32 4}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1238, i32 3}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug431, !82, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1241, i32 3}
!87 = !{ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug432, !86, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1244, i32 3}
!90 = !{ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug433, !89, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1249, i32 3}
!93 = !{ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug434, !92, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1252, i32 3}
!96 = !{ptr @igb_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug435, !95, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1282, i32 3}
!99 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @igb_get_hw_semaphore.__UNIQUE_ID_ddebug436, !98, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1302, i32 3}
!103 = !{ptr @igb_get_hw_semaphore.__UNIQUE_ID_ddebug438, !102, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1348, i32 3}
!106 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @igb_get_auto_rd_done.__UNIQUE_ID_ddebug440, !105, !"__UNIQUE_ID_ddebug440", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1571, i32 3}
!110 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @igb_disable_pcie_master.__UNIQUE_ID_ddebug446, !109, !"__UNIQUE_ID_ddebug446", i1 false, i1 false}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1596, i32 3}
!114 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @igb_validate_mdi_setting.__UNIQUE_ID_ddebug447, !113, !"__UNIQUE_ID_ddebug447", i1 false, i1 false}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1635, i32 3}
!118 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @igb_write_8bit_ctrl_reg.__UNIQUE_ID_ddebug449, !117, !"__UNIQUE_ID_ddebug449", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 509, i32 4}
!122 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @igb_i21x_hw_doublecheck.__UNIQUE_ID_ddebug397, !121, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 812, i32 3}
!126 = !{ptr @igb_set_default_fc.__UNIQUE_ID_ddebug409, !125, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/igb/e1000_mac.c", i32 1371, i32 3}
!129 = !{ptr @igb_valid_led_default.__UNIQUE_ID_ddebug441, !128, !"__UNIQUE_ID_ddebug441", i1 false, i1 false}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
!140 = !{!"branch_weights", i32 1, i32 2000}
!141 = !{i64 2158048960}
!142 = !{i64 6072094}
!143 = !{i64 2148878685, i64 2148878690, i64 2148878703, i64 2148878747, i64 2148878781, i64 2148878802}
!144 = !{i64 2158058000}
!145 = !{i64 2158061633}
!146 = !{i64 2158072692}
!147 = !{i64 2158076598}
!148 = !{i64 2158080509}
!149 = !{i64 2158090754}
!150 = !{i64 2158084304}
!151 = !{i8 0, i8 2}
!152 = !{i64 2158117654}
!153 = !{i64 2158183032}
!154 = !{i64 2158103488}
!155 = !{i64 2158107007}
!156 = !{i64 2158110538}
!157 = !{i64 2158114072}
!158 = !{i64 2158121220}
!159 = !{i64 2158124715}
!160 = !{i64 2158135695}
!161 = !{i64 2158203634}
!162 = !{i64 2158210231}
!163 = !{i64 2158219091}
!164 = !{i64 2158222735}
!165 = !{i64 2158226281}
!166 = !{i64 2158229870}
!167 = !{i64 2158238810}
