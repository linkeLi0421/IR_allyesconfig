; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igb/e1000_82575.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_82575.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_info = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.igb_adapter = type { [128 x i32], ptr, ptr, i32, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x ptr], i32, [16 x ptr], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, ptr, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i32, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, i32, [28 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x ptr], i32, i32, i16, i16, i32, ptr, i32, i32, i32, ptr, ptr, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.140], [32 x i8], ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, ptr, i32, [128 x i8], i32, i32, %struct.e1000_info, i16, %struct.hlist_head, %struct.hlist_head, i32, %struct.spinlock, [3 x i8], ptr, %struct.vf_mac_filter, ptr, [60 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igb_ring = type { ptr, ptr, ptr, ptr, %union.anon.129, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.133, [88 x i8], %struct.xdp_rxq_info }
%union.anon.129 = type { ptr }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { %struct.igb_tx_queue_stats, %struct.u64_stats_sync, %struct.u64_stats_sync }
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
%struct.anon.140 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
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
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }

@igb_rx_fifo_flush_82575.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igb\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igb_rx_fifo_flush_82575\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/igb/e1000_82575.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Queue disable timed out after 10ms\0A\00", [60 x i8] zeroinitializer }, align 32
@e1000_82580_rxpbs_table = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 36, i16 72, i16 144, i16 1, i16 2, i16 4, i16 8, i16 16, i16 35, i16 70, i16 140], [42 x i8] zeroinitializer }, align 32
@igb_set_eee_i350.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 2, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igb_set_eee_i350\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LPI Clock Stop Bit should not be set!\0A\00", [57 x i8] zeroinitializer }, align 32
@e1000_mac_ops_82575 = internal global { %struct.e1000_mac_operations, [44 x i8] } { %struct.e1000_mac_operations { ptr @igb_check_for_link_82575, ptr null, ptr @igb_init_hw_82575, ptr null, ptr null, ptr @igb_rar_set, ptr @igb_read_mac_addr_82575, ptr @igb_get_link_up_info_82575, ptr null, ptr null, ptr @igb_get_thermal_sensor_data_generic, ptr @igb_init_thermal_sensor_thresh_generic, ptr null }, [44 x i8] zeroinitializer }, align 32
@e1000_phy_ops_82575 = internal constant { %struct.e1000_phy_operations, [36 x i8] } { %struct.e1000_phy_operations { ptr @igb_acquire_phy_82575, ptr null, ptr null, ptr null, ptr @igb_get_cfg_done_82575, ptr null, ptr null, ptr null, ptr @igb_release_phy_82575, ptr null, ptr null, ptr null, ptr null, ptr @igb_read_i2c_byte, ptr @igb_write_i2c_byte }, [36 x i8] zeroinitializer }, align 32
@e1000_nvm_ops_82575 = internal global { %struct.e1000_nvm_operations, [36 x i8] } { %struct.e1000_nvm_operations { ptr @igb_acquire_nvm_82575, ptr @igb_read_nvm_eerd, ptr @igb_release_nvm_82575, ptr @igb_write_nvm_spi, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@e1000_82575_info = dso_local constant { %struct.e1000_info, [16 x i8] } { %struct.e1000_info { ptr @igb_get_invariants_82575, ptr @e1000_mac_ops_82575, ptr @e1000_phy_ops_82575, ptr @e1000_nvm_ops_82575 }, [16 x i8] zeroinitializer }, align 32
@igb_set_sfp_media_type_82575.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"igb_set_sfp_media_type_82575\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PHY module has not been recognized\0A\00", [60 x i8] zeroinitializer }, align 32
@igb_reset_hw_82580.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 2, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"igb_reset_hw_82580\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@igb_reset_hw_82580.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 2, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Masking off all interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_reset_hw_82580.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 2, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Auto Read Done did not complete\0A\00", [63 x i8] zeroinitializer }, align 32
@igb_reset_hw_82580.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 2, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not reset MDICNFG based on EEPROM\0A\00", [55 x i8] zeroinitializer }, align 32
@igb_reset_mdicnfg_82580.__UNIQUE_ID_ddebug456 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 2, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igb_reset_mdicnfg_82580\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@igb_reset_hw_82575.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.9, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"igb_reset_hw_82575\00", [45 x i8] zeroinitializer }, align 32
@igb_reset_hw_82575.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PCI-E Set completion timeout has failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@igb_reset_hw_82575.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.10, i8 1, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_reset_hw_82575.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 1, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Issuing a global reset to MAC\0A\00", [33 x i8] zeroinitializer }, align 32
@igb_reset_hw_82575.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.11, i8 1, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_reset_init_script_82575.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"igb_reset_init_script_82575\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Running reset init script for 82575\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@igb_acquire_swfw_sync_82575.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"igb_acquire_swfw_sync_82575\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Driver can't access resource, SW_FW_SYNC timeout.\0A\00", [45 x i8] zeroinitializer }, align 32
@igb_setup_copper_link_82575.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"igb_setup_copper_link_82575\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error resetting the PHY.\0A\00", [38 x i8] zeroinitializer }, align 32
@igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"igb_setup_serdes_link_82575\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017NVM Read Error\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 1, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Configuring Autoneg:PCS_LCTL=0x%08X\0A\00", [59 x i8] zeroinitializer }, align 32
@igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 1, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Configuring Forced Link:PCS_LCTL=0x%08X\0A\00", [55 x i8] zeroinitializer }, align 32
@igb_validate_nvm_checksum_82580.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.14, i8 2, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"igb_validate_nvm_checksum_82580\00", [32 x i8] zeroinitializer }, align 32
@igb_validate_nvm_checksum_with_offset.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.14, i8 2, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"igb_validate_nvm_checksum_with_offset\00", [58 x i8] zeroinitializer }, align 32
@igb_validate_nvm_checksum_with_offset.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 2, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NVM Checksum Invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@igb_update_nvm_checksum_82580.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 2, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"igb_update_nvm_checksum_82580\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"NVM Read Error while updating checksum compatibility bit.\0A\00", [37 x i8] zeroinitializer }, align 32
@igb_update_nvm_checksum_82580.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 2, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"NVM Write Error while updating checksum compatibility bit.\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_update_nvm_checksum_with_offset.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 2, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"igb_update_nvm_checksum_with_offset\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVM Read Error while updating checksum.\0A\00", [55 x i8] zeroinitializer }, align 32
@igb_update_nvm_checksum_with_offset.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 2, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVM Write Error while updating checksum.\0A\00", [54 x i8] zeroinitializer }, align 32
@igb_phy_hw_reset_sgmii_82575.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"igb_phy_hw_reset_sgmii_82575\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Soft resetting SGMII attached PHY...\0A\00", [58 x i8] zeroinitializer }, align 32
@igb_read_phy_reg_sgmii_82575.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"igb_read_phy_reg_sgmii_82575\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PHY Address %u is out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@igb_write_phy_reg_sgmii_82575.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"igb_write_phy_reg_sgmii_82575\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PHY Address %d is out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@igb_get_phy_id_82575.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igb_get_phy_id_82575\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Vendor ID 0x%08X read at address %u\0A\00", [59 x i8] zeroinitializer }, align 32
@igb_get_phy_id_82575.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PHY address %u was unreadable\0A\00", [33 x i8] zeroinitializer }, align 32
@igb_check_for_link_82575.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 1, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igb_check_for_link_82575\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error configuring flow control\0A\00", [32 x i8] zeroinitializer }, align 32
@igb_get_pcs_speed_and_duplex_82575.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 1, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"igb_get_pcs_speed_and_duplex_82575\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500 Mbs, \00", [21 x i8] zeroinitializer }, align 32
@igb_get_pcs_speed_and_duplex_82575.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 1, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Full Duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@igb_init_hw_82575.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 1, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igb_init_hw_82575\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error initializing identification LED\0A\00", [57 x i8] zeroinitializer }, align 32
@igb_init_hw_82575.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 1, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Initializing the IEEE VLAN\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_init_hw_82575.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.54, i8 1, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Zeroing the MTA\0A\00", [47 x i8] zeroinitializer }, align 32
@igb_init_hw_82575.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.55, i8 1, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Zeroing the UTA\0A\00", [47 x i8] zeroinitializer }, align 32
@e1000_emc_temp_data = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01#*", [28 x i8] zeroinitializer }, align 32
@e1000_emc_therm_limit = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" \19\1A0", [28 x i8] zeroinitializer }, align 32
@igb_get_cfg_done_82575.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 1, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igb_get_cfg_done_82575\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MNG configuration cycle has not completed.\0A\00", [52 x i8] zeroinitializer }, align 32
@switch.table.igb_get_invariants_82575 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 32, i32 3588, i32 3588, i32 3588, i32 3588, i32 3588], [36 x i8] zeroinitializer }, align 32
@switch.table.igb_get_invariants_82575.58 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @igb_validate_nvm_checksum_82580, ptr @igb_validate_nvm_checksum_i350, ptr @igb_validate_nvm_checksum_i350], [20 x i8] zeroinitializer }, align 32
@switch.table.igb_get_invariants_82575.59 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @igb_update_nvm_checksum_82580, ptr @igb_update_nvm_checksum_i350, ptr @igb_update_nvm_checksum_i350], [20 x i8] zeroinitializer }, align 32
@switch.table.igb_get_invariants_82575.60 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 32, i32 3588, i32 3588, i32 3588, i32 3588, i32 3588], [36 x i8] zeroinitializer }, align 32
@switch.table.igb_get_phy_id_82575 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 32, i32 3588, i32 3588, i32 3588, i32 3588, i32 3588], [36 x i8] zeroinitializer }, align 32
@switch.table.igb_get_phy_id_82575.61 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 32, i32 3588, i32 3588, i32 3588, i32 3588, i32 3588], [36 x i8] zeroinitializer }, align 32
@switch.table.igb_acquire_phy_82575 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 4, i16 32, i16 64], [26 x i8] zeroinitializer }, align 32
@switch.table.igb_get_cfg_done_82575 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 524288, i32 1048576, i32 2097152], [20 x i8] zeroinitializer }, align 32
@switch.table.igb_release_phy_82575 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 4, i16 32, i16 64], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 21040592, i64 21040800]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 21040592, i64 21040800]
@__sancov_gen_cov_switch_values.65 = internal global [37 x i64] [i64 35, i64 16, i64 1080, i64 1082, i64 1084, i64 1088, i64 4263, i64 4265, i64 4297, i64 4310, i64 4326, i64 4327, i64 4328, i64 5386, i64 5389, i64 5390, i64 5391, i64 5392, i64 5393, i64 5398, i64 5400, i64 5409, i64 5410, i64 5411, i64 5412, i64 5414, i64 5415, i64 5427, i64 5430, i64 5431, i64 5432, i64 5433, i64 5499, i64 5500, i64 8000, i64 8001, i64 8005]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 4194304, i64 8388608, i64 12582912]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 16, i64 1080, i64 1082, i64 1084, i64 1088]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.71 = internal global [12 x i64] [i64 10, i64 32, i64 21040128, i64 21040272, i64 21040320, i64 21040576, i64 21040592, i64 21040800, i64 22283168, i64 22283184, i64 44565392, i64 56778000]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.73 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 6, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.74 = internal global [7 x i64] [i64 5, i64 32, i64 21040128, i64 21040272, i64 21040576, i64 21040592, i64 21040800]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 16, i64 3, i64 15, i64 47]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1976, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"e1000_82580_rxpbs_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 52, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2627, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"e1000_mac_ops_82575\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2894, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"e1000_phy_ops_82575\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2906, i32 42 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"e1000_nvm_ops_82575\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2914, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"e1000_82575_info\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2921, i32 25 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 541, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2274, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2276, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2308, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2320, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2229, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1461, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1466, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1479, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1811, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1184, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1603, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1713, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1768, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1776, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2438, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2371, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2378, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2477, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2487, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2406, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2415, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 927, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 768, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 800, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 884, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 892, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1312, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1402, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1403, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1527, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1532, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1539, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1544, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c"e1000_emc_temp_data\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2760, i32 17 }
@___asan_gen_.269 = private unnamed_addr constant [22 x i8] c"e1000_emc_therm_limit\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 2766, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [48 x i8] c"../drivers/net/ethernet/intel/igb/e1000_82575.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1249, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [38 x i8] c"switch.table.igb_get_invariants_82575\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [41 x i8] c"switch.table.igb_get_invariants_82575.58\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [41 x i8] c"switch.table.igb_get_invariants_82575.59\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [41 x i8] c"switch.table.igb_get_invariants_82575.60\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [34 x i8] c"switch.table.igb_get_phy_id_82575\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [37 x i8] c"switch.table.igb_get_phy_id_82575.61\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [35 x i8] c"switch.table.igb_acquire_phy_82575\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [36 x i8] c"switch.table.igb_get_cfg_done_82575\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [35 x i8] c"switch.table.igb_release_phy_82575\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @e1000_82580_rxpbs_table, ptr @.str.4, ptr @.str.5, ptr @e1000_mac_ops_82575, ptr @e1000_phy_ops_82575, ptr @e1000_nvm_ops_82575, ptr @e1000_82575_info, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @e1000_emc_temp_data, ptr @e1000_emc_therm_limit, ptr @.str.56, ptr @.str.57, ptr @switch.table.igb_get_invariants_82575, ptr @switch.table.igb_get_invariants_82575.58, ptr @switch.table.igb_get_invariants_82575.59, ptr @switch.table.igb_get_invariants_82575.60, ptr @switch.table.igb_get_phy_id_82575, ptr @switch.table.igb_get_phy_id_82575.61, ptr @switch.table.igb_acquire_phy_82575, ptr @switch.table.igb_get_cfg_done_82575, ptr @switch.table.igb_release_phy_82575], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_82580_rxpbs_table to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_mac_ops_82575 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_phy_ops_82575 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_nvm_ops_82575 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_82575_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_emc_temp_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_emc_therm_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_get_invariants_82575 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_get_invariants_82575.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_get_invariants_82575.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_get_invariants_82575.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_get_phy_id_82575 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_get_phy_id_82575.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_acquire_phy_82575 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_get_cfg_done_82575 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_release_phy_82575 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_power_up_serdes_link_82575(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dev_spec1.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %2 = ptrtoint ptr %dev_spec1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_spec1.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16896) #5
  %hw_addr3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %do.body8, !prof !160

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %5, i32 16896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %6) #5, !srcloc !162
  br label %if.end11

if.end11:                                         ; preds = %do.body8, %if.end.if.end11_crit_edge
  %call14 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 24) #5
  %7 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool22.not = icmp eq ptr %8, null
  br i1 %tobool22.not, label %if.end11.if.end36_crit_edge, label %do.body32, !prof !160

if.end11.if.end36_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

do.body32:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call14, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx35 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx35, i32 %9) #5, !srcloc !162
  br label %if.end36

if.end36:                                         ; preds = %do.body32, %if.end11.if.end36_crit_edge
  %call39 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_shutdown_serdes_link_82575(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dev_spec1.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %2 = ptrtoint ptr %dev_spec1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_spec1.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call zeroext i1 @igb_enable_mng_pass_thru(ptr noundef %hw) #5
  br i1 %call1, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16896) #5
  %hw_addr5 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr5, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then2.if.end13_crit_edge, label %do.body10, !prof !160

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.body10:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call3, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %5, i32 16896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %6) #5, !srcloc !162
  br label %if.end13

if.end13:                                         ; preds = %do.body10, %if.then2.if.end13_crit_edge
  %call16 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 24) #5
  %7 = ptrtoint ptr %hw_addr5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr5, align 4
  %tobool24.not = icmp eq ptr %8, null
  br i1 %tobool24.not, label %if.end13.if.end38_crit_edge, label %do.body34, !prof !160

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.body34:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call16, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx37 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx37, i32 %9) #5, !srcloc !162
  br label %if.end38

if.end38:                                         ; preds = %do.body34, %if.end13.if.end38_crit_edge
  %call41 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_enable_mng_pass_thru(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_power_down_phy_copper_82575(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @igb_enable_mng_pass_thru(ptr noundef %hw) #5
  br i1 %call, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @igb_check_reset_block(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @igb_power_down_phy_copper(ptr noundef %hw) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_reset_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_power_down_phy_copper(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_rx_fifo_flush_82575(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 20488) #5
  %or = or i32 %call, 65536
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %1, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #5, !srcloc !162
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call11 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 22560) #5
  %and = and i32 %call11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.lhs.false.cleanup_crit_edge, label %cond.end.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.end.preheader:                               ; preds = %lor.lhs.false
  %call19 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 10280) #5
  %5 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool28.not = icmp eq ptr %6, null
  br i1 %tobool28.not, label %cond.end.preheader.if.end53_crit_edge, label %do.body38, !prof !160

cond.end.preheader.if.end53_crit_edge:            ; preds = %cond.end.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.body38:                                        ; preds = %cond.end.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %and42 = and i32 %call19, -33554433
  %7 = tail call i32 @llvm.bswap.i32(i32 %and42)
  %arrayidx52 = getelementptr i8, ptr %6, i32 10280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx52, i32 %7) #5, !srcloc !162
  br label %if.end53

if.end53:                                         ; preds = %do.body38, %cond.end.preheader.if.end53_crit_edge
  %call19.1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 10536) #5
  %8 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool28.not.1 = icmp eq ptr %9, null
  br i1 %tobool28.not.1, label %if.end53.if.end53.1_crit_edge, label %do.body38.1, !prof !160

if.end53.if.end53.1_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.1

do.body38.1:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %and42.1 = and i32 %call19.1, -33554433
  %10 = tail call i32 @llvm.bswap.i32(i32 %and42.1)
  %arrayidx52.1 = getelementptr i8, ptr %9, i32 10536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx52.1, i32 %10) #5, !srcloc !162
  br label %if.end53.1

if.end53.1:                                       ; preds = %do.body38.1, %if.end53.if.end53.1_crit_edge
  %call19.2 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 10792) #5
  %11 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool28.not.2 = icmp eq ptr %12, null
  br i1 %tobool28.not.2, label %if.end53.1.if.end53.2_crit_edge, label %do.body38.2, !prof !160

if.end53.1.if.end53.2_crit_edge:                  ; preds = %if.end53.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.2

do.body38.2:                                      ; preds = %if.end53.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %and42.2 = and i32 %call19.2, -33554433
  %13 = tail call i32 @llvm.bswap.i32(i32 %and42.2)
  %arrayidx52.2 = getelementptr i8, ptr %12, i32 10792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx52.2, i32 %13) #5, !srcloc !162
  br label %if.end53.2

if.end53.2:                                       ; preds = %do.body38.2, %if.end53.1.if.end53.2_crit_edge
  %call19.3 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 11048) #5
  %14 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool28.not.3 = icmp eq ptr %15, null
  br i1 %tobool28.not.3, label %if.end53.2.for.body58.preheader_crit_edge, label %do.body38.3, !prof !160

if.end53.2.for.body58.preheader_crit_edge:        ; preds = %if.end53.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body58.preheader

do.body38.3:                                      ; preds = %if.end53.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %and42.3 = and i32 %call19.3, -33554433
  %16 = tail call i32 @llvm.bswap.i32(i32 %and42.3)
  %arrayidx52.3 = getelementptr i8, ptr %15, i32 11048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx52.3, i32 %16) #5, !srcloc !162
  br label %for.body58.preheader

for.body58.preheader:                             ; preds = %do.body38.3, %if.end53.2.for.body58.preheader_crit_edge
  br label %for.body58

for.body58:                                       ; preds = %for.inc80.for.body58_crit_edge, %for.body58.preheader
  %ms_wait.0395 = phi i32 [ %inc81, %for.inc80.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call71 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 10280) #5
  %call71.1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 10536) #5
  %or72.1 = or i32 %call71.1, %call71
  %call71.2 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 10792) #5
  %or72.2 = or i32 %call71.2, %or72.1
  %call71.3 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 11048) #5
  %or72.3 = or i32 %call71.3, %or72.2
  %and76 = and i32 %or72.3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %for.end82, label %for.inc80

for.inc80:                                        ; preds = %for.body58
  %inc81 = add nuw nsw i32 %ms_wait.0395, 1
  %exitcond.not = icmp eq i32 %inc81, 10
  br i1 %exitcond.not, label %for.inc80.do.body86_crit_edge, label %for.inc80.for.body58_crit_edge

for.inc80.for.body58_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body58

for.inc80.do.body86_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body86

for.end82:                                        ; preds = %for.body58
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %ms_wait.0395)
  %cmp83 = icmp eq i32 %ms_wait.0395, 10
  br i1 %cmp83, label %for.end82.do.body86_crit_edge, label %for.end82.do.body104_crit_edge

for.end82.do.body104_crit_edge:                   ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body104

for.end82.do.body86_crit_edge:                    ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body86

do.body86:                                        ; preds = %for.end82.do.body86_crit_edge, %for.inc80.do.body86_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_rx_fifo_flush_82575.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_rx_fifo_flush_82575, %if.then96)) #5
          to label %do.body104 [label %if.then96], !srcloc !168

if.then96:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #7
  %call97 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_rx_fifo_flush_82575.__UNIQUE_ID_ddebug442, ptr noundef %call97, ptr noundef nonnull @.str.3) #5
  br label %do.body104

do.body104:                                       ; preds = %if.then96, %do.body86, %for.end82.do.body104_crit_edge
  %17 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool111.not = icmp eq ptr %18, null
  br i1 %tobool111.not, label %do.body104.if.end126_crit_edge, label %do.body121, !prof !160

do.body104.if.end126_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

do.body121:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %and124 = and i32 %or, -262145
  %19 = tail call i32 @llvm.bswap.i32(i32 %and124)
  %arrayidx125 = getelementptr i8, ptr %18, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx125, i32 %19) #5, !srcloc !162
  br label %if.end126

if.end126:                                        ; preds = %do.body121, %do.body104.if.end126_crit_edge
  %call129 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 20484) #5
  %20 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool137.not = icmp eq ptr %21, null
  br i1 %tobool137.not, label %if.end126.if.end151_crit_edge, label %do.body147, !prof !160

if.end126.if.end151_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

do.body147:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %arrayidx150 = getelementptr i8, ptr %21, i32 20484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx150, i32 0) #5, !srcloc !162
  br label %if.end151

if.end151:                                        ; preds = %do.body147, %if.end126.if.end151_crit_edge
  %call154 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 256) #5
  %and155 = and i32 %call154, -39
  %22 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool164.not = icmp eq ptr %23, null
  br i1 %tobool164.not, label %if.end151.if.end178_crit_edge, label %do.body174, !prof !160

if.end151.if.end178_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end178

do.body174:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  %or156 = or i32 %and155, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %or156)
  %arrayidx177 = getelementptr i8, ptr %23, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx177, i32 %24) #5, !srcloc !162
  br label %if.end178

if.end178:                                        ; preds = %do.body174, %if.end151.if.end178_crit_edge
  %25 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool188.not = icmp eq ptr %26, null
  br i1 %tobool188.not, label %if.end178.if.end203_crit_edge, label %do.body198, !prof !160

if.end178.if.end203_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end203

do.body198:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %or201 = or i32 %and155, 34
  %27 = tail call i32 @llvm.bswap.i32(i32 %or201)
  %arrayidx202 = getelementptr i8, ptr %26, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx202, i32 %27) #5, !srcloc !162
  br label %if.end203

if.end203:                                        ; preds = %do.body198, %if.end178.if.end203_crit_edge
  %call206 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #5
  %28 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool217.not = icmp eq ptr %29, null
  br i1 %tobool217.not, label %if.end203.if.end241_crit_edge, label %do.body227, !prof !160

if.end203.if.end241_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241

do.body227:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %30 = tail call i32 @llvm.bswap.i32(i32 %call19)
  %arrayidx240 = getelementptr i8, ptr %29, i32 10280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx240, i32 %30) #5, !srcloc !162
  br label %if.end241

if.end241:                                        ; preds = %do.body227, %if.end203.if.end241_crit_edge
  %31 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool217.not.1 = icmp eq ptr %32, null
  br i1 %tobool217.not.1, label %if.end241.if.end241.1_crit_edge, label %do.body227.1, !prof !160

if.end241.if.end241.1_crit_edge:                  ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241.1

do.body227.1:                                     ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %call19.1)
  %arrayidx240.1 = getelementptr i8, ptr %32, i32 10536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx240.1, i32 %33) #5, !srcloc !162
  br label %if.end241.1

if.end241.1:                                      ; preds = %do.body227.1, %if.end241.if.end241.1_crit_edge
  %34 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool217.not.2 = icmp eq ptr %35, null
  br i1 %tobool217.not.2, label %if.end241.1.if.end241.2_crit_edge, label %do.body227.2, !prof !160

if.end241.1.if.end241.2_crit_edge:                ; preds = %if.end241.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241.2

do.body227.2:                                     ; preds = %if.end241.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %call19.2)
  %arrayidx240.2 = getelementptr i8, ptr %35, i32 10792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx240.2, i32 %36) #5, !srcloc !162
  br label %if.end241.2

if.end241.2:                                      ; preds = %do.body227.2, %if.end241.1.if.end241.2_crit_edge
  %37 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool217.not.3 = icmp eq ptr %38, null
  br i1 %tobool217.not.3, label %if.end241.2.if.end241.3_crit_edge, label %do.body227.3, !prof !160

if.end241.2.if.end241.3_crit_edge:                ; preds = %if.end241.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241.3

do.body227.3:                                     ; preds = %if.end241.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %call19.3)
  %arrayidx240.3 = getelementptr i8, ptr %38, i32 11048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx240.3, i32 %39) #5, !srcloc !162
  br label %if.end241.3

if.end241.3:                                      ; preds = %do.body227.3, %if.end241.2.if.end241.3_crit_edge
  %40 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool254.not = icmp eq ptr %41, null
  br i1 %tobool254.not, label %if.end241.3.if.end268_crit_edge, label %do.body264, !prof !160

if.end241.3.if.end268_crit_edge:                  ; preds = %if.end241.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end268

do.body264:                                       ; preds = %if.end241.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %42 = tail call i32 @llvm.bswap.i32(i32 %call154)
  %arrayidx267 = getelementptr i8, ptr %41, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx267, i32 %42) #5, !srcloc !162
  br label %if.end268

if.end268:                                        ; preds = %do.body264, %if.end241.3.if.end268_crit_edge
  %call271 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  %43 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool279.not = icmp eq ptr %44, null
  br i1 %tobool279.not, label %if.end268.if.end293_crit_edge, label %do.body289, !prof !160

if.end268.if.end293_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end293

do.body289:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %45 = tail call i32 @llvm.bswap.i32(i32 %call129)
  %arrayidx292 = getelementptr i8, ptr %44, i32 20484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx292, i32 %45) #5, !srcloc !162
  br label %if.end293

if.end293:                                        ; preds = %do.body289, %if.end268.if.end293_crit_edge
  %46 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool303.not = icmp eq ptr %47, null
  br i1 %tobool303.not, label %if.end293.if.end317_crit_edge, label %do.body313, !prof !160

if.end293.if.end317_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end317

do.body313:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %48 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx316 = getelementptr i8, ptr %47, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx316, i32 %48) #5, !srcloc !162
  br label %if.end317

if.end317:                                        ; preds = %do.body313, %if.end293.if.end317_crit_edge
  %call320 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16556) #5
  %call321 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16544) #5
  %call322 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16400) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end317, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igb_get_hw_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_vmdq_set_anti_spoofing_pf(ptr noundef %hw, i1 noundef zeroext %enable, i32 noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge26
  ]

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %reg_offset.0 = phi i32 [ 23244, %sw.bb1 ], [ 13568, %entry.sw.epilog_crit_edge ]
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %reg_offset.0) #5
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call, 65535
  %shl = shl nuw i32 1, %pf
  %add = add i32 %pf, 8
  %shl2 = shl nuw i32 1, %add
  %or3 = or i32 %shl2, %shl
  %xor = xor i32 %or, %or3
  br label %do.body

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call, -65536
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %reg_val.0 = phi i32 [ %xor, %if.then ], [ %and, %if.else ]
  %hw_addr5 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr5, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.body11, !prof !160

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0)
  %arrayidx = getelementptr i8, ptr %4, i32 %reg_offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %5) #5, !srcloc !162
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_vmdq_set_loopback_pf(ptr noundef %hw, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 5, label %entry.sw.bb14_crit_edge
    i32 4, label %entry.sw.bb14_crit_edge59
  ]

entry.sw.bb14_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 13568) #5
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %sw.bb.sw.epilog_crit_edge, label %do.body8, !prof !160

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call, 2147483647
  %masksel58 = select i1 %enable, i32 -2147483648, i32 0
  %dtxswc.0 = or i32 %and, %masksel58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %dtxswc.0)
  %arrayidx = getelementptr i8, ptr %4, i32 13568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %5) #5, !srcloc !162
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge59
  %call15 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23244) #5
  %hw_addr28 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr28, align 4
  %tobool29.not = icmp eq ptr %7, null
  br i1 %tobool29.not, label %sw.bb14.sw.epilog_crit_edge, label %do.body39, !prof !160

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body39:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  %and20 = and i32 %call15, 2147483647
  %masksel = select i1 %enable, i32 -2147483648, i32 0
  %dtxswc.1 = or i32 %and20, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %dtxswc.1)
  %arrayidx42 = getelementptr i8, ptr %7, i32 23244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx42, i32 %8) #5, !srcloc !162
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body39, %sw.bb14.sw.epilog_crit_edge, %do.body8, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_vmdq_set_replication_pf(ptr noundef %hw, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 22556) #5
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %entry.if.end11_crit_edge, label %do.body8, !prof !160

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call, -1073741825
  %masksel = select i1 %enable, i32 1073741824, i32 0
  %vt_ctl.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %vt_ctl.0)
  %arrayidx = getelementptr i8, ptr %1, i32 22556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #5, !srcloc !162
  br label %if.end11

if.end11:                                         ; preds = %do.body8, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_phy_reg_82580(ptr noundef %hw, i32 noundef %offset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @igb_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %offset, ptr noundef %data) #5
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 8
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_mdic(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_write_phy_reg_82580(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @igb_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) #5
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 8
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_phy_reg_mdic(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @igb_rxpbs_adjust_82580(i32 noundef %data) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %data)
  %cmp = icmp ult i32 %data, 11
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [11 x i16], ptr @e1000_82580_rxpbs_table, i32 0, i32 %data
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret_val.0 = phi i16 [ %1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i16 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_emi_reg(ptr noundef %hw, i16 noundef zeroext %addr, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %0 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %1(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then2.i, label %entry.__igb_access_emi_reg.exit_crit_edge

entry.__igb_access_emi_reg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__igb_access_emi_reg.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call5.i = tail call i32 %3(ptr noundef %hw, i32 noundef 17, ptr noundef %data) #5
  br label %__igb_access_emi_reg.exit

__igb_access_emi_reg.exit:                        ; preds = %if.then2.i, %entry.__igb_access_emi_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.then2.i ], [ %call.i, %entry.__igb_access_emi_reg.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_set_eee_i350(ptr noundef %hw, i1 noundef zeroext %adv1G, i1 noundef zeroext %adv100M) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.not = icmp eq i32 %3, 1
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3640) #5
  %call3 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3632) #5
  %eee_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 2
  %4 = ptrtoint ptr %eee_disable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eee_disable, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then4, label %if.else31

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3636) #5
  %and = and i32 %call, -13
  %masksel = select i1 %adv100M, i32 4, i32 0
  %masksel103 = select i1 %adv1G, i32 8, i32 0
  %ipcnfg.0 = or i32 %masksel, %masksel103
  %ipcnfg.1 = or i32 %ipcnfg.0, %and
  %or15 = or i32 %call3, 458752
  %and16 = and i32 %call5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then4.do.body35_crit_edge, label %do.body19

if.then4.do.body35_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body35

do.body19:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_set_eee_i350.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_set_eee_i350, %if.then25)) #5
          to label %do.body35 [label %if.then25], !srcloc !168

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_set_eee_i350.__UNIQUE_ID_ddebug475, ptr noundef %call26, ptr noundef nonnull @.str.5) #5
  br label %do.body35

if.else31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and32 = and i32 %call, -13
  %and33 = and i32 %call3, -458753
  br label %do.body35

do.body35:                                        ; preds = %if.else31, %if.then25, %do.body19, %if.then4.do.body35_crit_edge
  %eeer.0 = phi i32 [ %and33, %if.else31 ], [ %or15, %if.then25 ], [ %or15, %if.then4.do.body35_crit_edge ], [ %or15, %do.body19 ]
  %ipcnfg.2 = phi i32 [ %and32, %if.else31 ], [ %ipcnfg.1, %if.then25 ], [ %ipcnfg.1, %if.then4.do.body35_crit_edge ], [ %ipcnfg.1, %do.body19 ]
  %hw_addr40 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr40, align 4
  %tobool41.not = icmp eq ptr %7, null
  br i1 %tobool41.not, label %do.body35.if.end54_crit_edge, label %do.body51, !prof !160

do.body35.if.end54_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.body51:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %ipcnfg.2)
  %arrayidx = getelementptr i8, ptr %7, i32 3640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %8) #5, !srcloc !162
  br label %if.end54

if.end54:                                         ; preds = %do.body51, %do.body35.if.end54_crit_edge
  %9 = ptrtoint ptr %hw_addr40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr40, align 4
  %tobool64.not = icmp eq ptr %10, null
  br i1 %tobool64.not, label %if.end54.if.end78_crit_edge, label %do.body74, !prof !160

if.end54.if.end78_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

do.body74:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %eeer.0)
  %arrayidx77 = getelementptr i8, ptr %10, i32 3632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx77, i32 %11) #5, !srcloc !162
  br label %if.end78

if.end78:                                         ; preds = %do.body74, %if.end54.if.end78_crit_edge
  %call81 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3640) #5
  %call82 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3632) #5
  br label %out

out:                                              ; preds = %if.end78, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_set_eee_i354(ptr noundef %hw, i1 noundef zeroext %adv1G, i1 noundef zeroext %adv100M) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !183
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %1 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %4, label %lor.lhs.false.out_crit_edge [
    i32 21040800, label %lor.lhs.false.if.end_crit_edge
    i32 21040592, label %lor.lhs.false.if.end_crit_edge86
  ]

lor.lhs.false.if.end_crit_edge86:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge86
  %eee_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 2
  %6 = ptrtoint ptr %eee_disable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eee_disable, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then7, label %if.else52

if.then7:                                         ; preds = %if.end
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %8 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %9(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end10:                                         ; preds = %if.then7
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %10 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg, align 4
  %call12 = call i32 %11(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %phy_data, align 2
  %14 = or i16 %13, 1
  store i16 %14, ptr %phy_data, align 2
  %15 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg, align 4
  %call19 = call i32 %16(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end22:                                         ; preds = %if.end15
  %17 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg, align 4
  %call25 = call i32 %18(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end28:                                         ; preds = %if.end22
  %call29 = call i32 @igb_read_xmdio_reg(ptr noundef %hw, i16 noundef zeroext 60, i8 noundef zeroext 7, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %phy_data, align 2
  %21 = and i16 %20, -7
  %masksel85 = select i1 %adv100M, i16 2, i16 0
  %storemerge = or i16 %21, %masksel85
  %masksel = select i1 %adv1G, i16 4, i16 0
  %storemerge83 = or i16 %storemerge, %masksel
  br label %out.sink.split

if.else52:                                        ; preds = %if.end
  %call53 = call i32 @igb_read_xmdio_reg(ptr noundef %hw, i16 noundef zeroext 60, i8 noundef zeroext 7, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.else52.out_crit_edge

if.else52.out_crit_edge:                          ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end56:                                         ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %phy_data, align 2
  %24 = and i16 %23, -7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end56, %if.end32
  %storemerge84 = phi i16 [ %24, %if.end56 ], [ %storemerge83, %if.end32 ]
  %25 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %storemerge84, ptr %phy_data, align 2
  %call51 = call i32 @igb_write_xmdio_reg(ptr noundef %hw, i16 noundef zeroext 60, i8 noundef zeroext 7, i16 noundef zeroext %storemerge84) #5
  br label %out

out:                                              ; preds = %out.sink.split, %if.else52.out_crit_edge, %if.end28.out_crit_edge, %if.end22.out_crit_edge, %if.end15.out_crit_edge, %if.end10.out_crit_edge, %if.then7.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call53, %if.else52.out_crit_edge ], [ %call, %if.then7.out_crit_edge ], [ %call12, %if.end10.out_crit_edge ], [ %call19, %if.end15.out_crit_edge ], [ %call25, %if.end22.out_crit_edge ], [ %call29, %if.end28.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ %call51, %out.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_xmdio_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_xmdio_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_eee_status_i354(ptr noundef %hw, ptr nocapture noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !183
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %1 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %4, label %lor.lhs.false.out_crit_edge [
    i32 21040800, label %lor.lhs.false.if.end_crit_edge
    i32 21040592, label %lor.lhs.false.if.end_crit_edge14
  ]

lor.lhs.false.if.end_crit_edge14:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge14
  %call = call i32 @igb_read_xmdio_reg(ptr noundef %hw, i16 noundef zeroext 1, i8 noundef zeroext 3, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phy_data, align 2
  %8 = and i16 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool8 = icmp ne i16 %8, 0
  %frombool = zext i1 %tobool8 to i8
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %status, align 1
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call, %if.end.out_crit_edge ], [ 0, %if.end7 ], [ 0, %lor.lhs.false.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_invariants_82575(ptr noundef %hw) #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_spec2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %device_id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %1, label %entry.cleanup_crit_edge [
    i16 4263, label %entry.sw.epilog_crit_edge
    i16 4265, label %entry.sw.epilog_crit_edge151
    i16 4310, label %entry.sw.epilog_crit_edge152
    i16 4297, label %entry.sw.bb3_crit_edge
    i16 5386, label %entry.sw.bb3_crit_edge153
    i16 5400, label %entry.sw.bb3_crit_edge154
    i16 4326, label %entry.sw.bb3_crit_edge155
    i16 4327, label %entry.sw.bb3_crit_edge156
    i16 4328, label %entry.sw.bb3_crit_edge157
    i16 5414, label %entry.sw.bb3_crit_edge158
    i16 5389, label %entry.sw.bb3_crit_edge159
    i16 5390, label %entry.sw.bb5_crit_edge
    i16 5391, label %entry.sw.bb5_crit_edge160
    i16 5415, label %entry.sw.bb5_crit_edge161
    i16 5392, label %entry.sw.bb5_crit_edge162
    i16 5393, label %entry.sw.bb5_crit_edge163
    i16 5398, label %entry.sw.bb5_crit_edge164
    i16 1080, label %entry.sw.bb5_crit_edge165
    i16 1082, label %entry.sw.bb5_crit_edge166
    i16 1084, label %entry.sw.bb5_crit_edge167
    i16 1088, label %entry.sw.bb5_crit_edge168
    i16 5409, label %entry.sw.bb7_crit_edge
    i16 5410, label %entry.sw.bb7_crit_edge169
    i16 5411, label %entry.sw.bb7_crit_edge170
    i16 5412, label %entry.sw.bb7_crit_edge171
    i16 5427, label %entry.sw.bb9_crit_edge
    i16 5430, label %entry.sw.bb9_crit_edge172
    i16 5431, label %entry.sw.bb9_crit_edge173
    i16 5432, label %entry.sw.bb9_crit_edge174
    i16 5499, label %entry.sw.bb9_crit_edge175
    i16 5500, label %entry.sw.bb9_crit_edge176
    i16 5433, label %sw.bb11
    i16 8000, label %entry.sw.bb13_crit_edge
    i16 8001, label %entry.sw.bb13_crit_edge177
    i16 8005, label %entry.sw.bb13_crit_edge178
  ]

entry.sw.bb13_crit_edge178:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

entry.sw.bb13_crit_edge177:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

entry.sw.bb9_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

entry.sw.bb7_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.sw.bb7_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.sw.bb7_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

entry.sw.bb5_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb3_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.epilog_crit_edge152:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge151:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge153, %entry.sw.bb3_crit_edge154, %entry.sw.bb3_crit_edge155, %entry.sw.bb3_crit_edge156, %entry.sw.bb3_crit_edge157, %entry.sw.bb3_crit_edge158, %entry.sw.bb3_crit_edge159
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge160, %entry.sw.bb5_crit_edge161, %entry.sw.bb5_crit_edge162, %entry.sw.bb5_crit_edge163, %entry.sw.bb5_crit_edge164, %entry.sw.bb5_crit_edge165, %entry.sw.bb5_crit_edge166, %entry.sw.bb5_crit_edge167, %entry.sw.bb5_crit_edge168
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge169, %entry.sw.bb7_crit_edge170, %entry.sw.bb7_crit_edge171
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge172, %entry.sw.bb9_crit_edge173, %entry.sw.bb9_crit_edge174, %entry.sw.bb9_crit_edge175, %entry.sw.bb9_crit_edge176
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge177, %entry.sw.bb13_crit_edge178
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge151, %entry.sw.epilog_crit_edge152
  %.sink = phi i32 [ 5, %sw.bb13 ], [ 7, %sw.bb11 ], [ 6, %sw.bb9 ], [ 4, %sw.bb7 ], [ 3, %sw.bb5 ], [ 2, %sw.bb3 ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge151 ], [ 1, %entry.sw.epilog_crit_edge152 ]
  %type14 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %type14, align 4
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %4 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %media_type, align 4
  %5 = ptrtoint ptr %dev_spec2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %dev_spec2, align 1
  %module_plugged = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 5
  %6 = ptrtoint ptr %module_plugged to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %module_plugged, align 1
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 24) #5
  %and = and i32 %call, 12582912
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and, label %sw.epilog.sw.epilog60_crit_edge [
    i32 4194304, label %sw.bb15
    i32 8388608, label %sw.bb18
    i32 12582912, label %sw.epilog.sw.bb23_crit_edge
  ]

sw.epilog.sw.bb23_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23

sw.epilog.sw.epilog60_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog60

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %media_type, align 4
  br label %sw.epilog60

sw.bb18:                                          ; preds = %sw.epilog
  %type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  %switch.tableidx = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 7
  br i1 %11, label %switch.lookup, label %sw.bb18.sw.bb23_crit_edge

sw.bb18.sw.bb23_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23

switch.lookup:                                    ; preds = %sw.bb18
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.igb_get_invariants_82575, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call3.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %switch.load) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %extract.t.i = icmp slt i32 %call3.i, 0
  br i1 %extract.t.i, label %if.then, label %switch.lookup.sw.bb23_crit_edge

switch.lookup.sw.bb23_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %media_type, align 4
  %14 = ptrtoint ptr %dev_spec2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %dev_spec2, align 1
  br label %sw.epilog60

sw.bb23:                                          ; preds = %switch.lookup.sw.bb23_crit_edge, %sw.bb18.sw.bb23_crit_edge, %sw.epilog.sw.bb23_crit_edge
  %call24 = tail call fastcc i32 @igb_set_sfp_media_type_82575(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp.not = icmp eq i32 %call24, 0
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb23.if.then30_crit_edge

sw.bb23.if.then30_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

lor.lhs.false:                                    ; preds = %sw.bb23
  %15 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %lor.lhs.false.if.then30_crit_edge, label %if.end40

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %sw.bb23.if.then30_crit_edge
  %17 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %and)
  %cmp33 = icmp eq i32 %and, 8388608
  br i1 %cmp33, label %if.then35, label %if.then30.sw.epilog60_crit_edge

if.then30.sw.epilog60_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog60

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %media_type, align 4
  %19 = ptrtoint ptr %dev_spec2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %dev_spec2, align 1
  br label %sw.epilog60

if.end40:                                         ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %dev_spec2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dev_spec2, align 1, !range !159
  %hw_addr47 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %hw_addr47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw_addr47, align 4
  %tobool48.not = icmp eq ptr %23, null
  br i1 %tobool48.not, label %if.end40.sw.epilog60_crit_edge, label %do.body53, !prof !160

if.end40.sw.epilog60_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog60

do.body53:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  %or44 = or i32 %call, 12582912
  %and41 = and i32 %call, -12582913
  %or = or i32 %and41, 8388608
  %ctrl_ext.0 = select i1 %tobool.not, i32 %or44, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %ctrl_ext.0)
  %arrayidx = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %24) #5, !srcloc !162
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %do.body53, %if.end40.sw.epilog60_crit_edge, %if.then35, %if.then30.sw.epilog60_crit_edge, %if.then, %sw.bb15, %sw.epilog.sw.epilog60_crit_edge
  %mta_reg_count.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 9
  %25 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 128, ptr %mta_reg_count.i, align 4
  %type.i123 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %type.i123 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp eq i32 %27, 1
  %conv.i = select i1 %cmp.i, i16 0, i16 128
  %uta_reg_count.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 10
  %28 = ptrtoint ptr %uta_reg_count.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %uta_reg_count.i, align 2
  %29 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %27, label %sw.epilog.i [
    i32 2, label %sw.epilog.thread4.i
    i32 3, label %if.end26.i
    i32 4, label %sw.epilog60.if.then35.i_crit_edge
    i32 5, label %sw.epilog60.if.then35.i_crit_edge179
  ]

sw.epilog60.if.then35.i_crit_edge179:             ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

sw.epilog60.if.then35.i_crit_edge:                ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

sw.epilog.thread4.i:                              ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #7
  %rar_entry_count.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 12
  %30 = ptrtoint ptr %rar_entry_count.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 24, ptr %rar_entry_count.i, align 4
  br label %if.end40.i

sw.epilog.i:                                      ; preds = %sw.epilog60
  %rar_entry_count9.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 12
  %31 = ptrtoint ptr %rar_entry_count9.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16, ptr %rar_entry_count9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp11.i = icmp ugt i32 %27, 2
  br i1 %cmp11.i, label %if.end26.thread.i, label %sw.epilog.i.if.end40.i_crit_edge

sw.epilog.i.if.end40.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.end26.thread.i:                                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.end26.i:                                       ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #7
  %rar_entry_count6.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 12
  %32 = ptrtoint ptr %rar_entry_count6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 24, ptr %rar_entry_count6.i, align 4
  br label %if.end40.i

if.then35.i:                                      ; preds = %sw.epilog60.if.then35.i_crit_edge, %sw.epilog60.if.then35.i_crit_edge179
  %rar_entry_count8.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 12
  %33 = ptrtoint ptr %rar_entry_count8.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 32, ptr %rar_entry_count8.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %if.end26.i, %if.end26.thread.i, %sw.epilog.i.if.end40.i_crit_edge, %sw.epilog.thread4.i
  %igb_reset_hw_82580.sink.sink.i = phi ptr [ @igb_reset_hw_82580, %if.then35.i ], [ @igb_reset_hw_82580, %if.end26.i ], [ @igb_reset_hw_82580, %if.end26.thread.i ], [ @igb_reset_hw_82575, %sw.epilog.thread4.i ], [ @igb_reset_hw_82575, %sw.epilog.i.if.end40.i_crit_edge ]
  %igb_acquire_swfw_sync_82575.sink.sink.i = phi ptr [ @igb_acquire_swfw_sync_82575, %if.then35.i ], [ @igb_acquire_swfw_sync_82575, %if.end26.i ], [ @igb_acquire_swfw_sync_i210, %if.end26.thread.i ], [ @igb_acquire_swfw_sync_82575, %sw.epilog.thread4.i ], [ @igb_acquire_swfw_sync_82575, %sw.epilog.i.if.end40.i_crit_edge ]
  %igb_release_swfw_sync_82575.sink.sink.i = phi ptr [ @igb_release_swfw_sync_82575, %if.then35.i ], [ @igb_release_swfw_sync_82575, %if.end26.i ], [ @igb_release_swfw_sync_i210, %if.end26.thread.i ], [ @igb_release_swfw_sync_82575, %sw.epilog.thread4.i ], [ @igb_release_swfw_sync_82575, %sw.epilog.i.if.end40.i_crit_edge ]
  %igb_write_vfta.sink.i = phi ptr [ @igb_write_vfta_i350, %if.then35.i ], [ @igb_write_vfta, %if.end26.i ], [ @igb_write_vfta, %if.end26.thread.i ], [ @igb_write_vfta, %sw.epilog.thread4.i ], [ @igb_write_vfta, %sw.epilog.i.if.end40.i_crit_edge ]
  %reset_hw.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 1
  %34 = ptrtoint ptr %reset_hw.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %igb_reset_hw_82580.sink.sink.i, ptr %reset_hw.i, align 4
  %acquire_swfw_sync23.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 8
  %35 = ptrtoint ptr %acquire_swfw_sync23.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %igb_acquire_swfw_sync_82575.sink.sink.i, ptr %acquire_swfw_sync23.i, align 4
  %release_swfw_sync25.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 9
  %36 = ptrtoint ptr %release_swfw_sync25.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %igb_release_swfw_sync_82575.sink.sink.i, ptr %release_swfw_sync25.i, align 4
  %write_vfta39.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 12
  %37 = ptrtoint ptr %write_vfta39.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %igb_write_vfta.sink.i, ptr %write_vfta39.i, align 4
  %asf_firmware_present.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 16
  %38 = ptrtoint ptr %asf_firmware_present.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %asf_firmware_present.i, align 1
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23380) #5
  %and.i = and i32 %call.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %arc_subsystem_valid.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 15
  %frombool.i = zext i1 %tobool.i to i8
  %39 = ptrtoint ptr %arc_subsystem_valid.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool.i, ptr %arc_subsystem_valid.i, align 4
  %40 = ptrtoint ptr %type.i123 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp44.i = icmp ugt i32 %41, 3
  %eee_disable.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 2
  br i1 %cmp44.i, label %if.end49.i, label %if.end49.thread.i

if.end49.thread.i:                                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %eee_disable.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %eee_disable.i, align 1
  br label %if.end54.i

if.end49.i:                                       ; preds = %if.end40.i
  %43 = ptrtoint ptr %eee_disable.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %eee_disable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cmp51.i = icmp ugt i32 %41, 5
  br i1 %cmp51.i, label %if.end54.thread.i, label %if.end49.i.if.end54.i_crit_edge

if.end49.i.if.end54.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54.i

if.end54.thread.i:                                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  %clear_semaphore_once.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 3
  %44 = ptrtoint ptr %clear_semaphore_once.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %clear_semaphore_once.i, align 1
  %45 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp5525.i = icmp eq i32 %46, 1
  %cond5726.i = select i1 %cmp5525.i, ptr @igb_setup_copper_link_82575, ptr @igb_setup_serdes_link_82575
  %setup_physical_interface27.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 4
  %47 = ptrtoint ptr %setup_physical_interface27.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cond5726.i, ptr %setup_physical_interface27.i, align 4
  br label %igb_init_mac_params_82575.exit

if.end54.i:                                       ; preds = %if.end49.i.if.end54.i_crit_edge, %if.end49.thread.i
  %48 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp55.i = icmp eq i32 %49, 1
  %cond57.i = select i1 %cmp55.i, ptr @igb_setup_copper_link_82575, ptr @igb_setup_serdes_link_82575
  %setup_physical_interface.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 4
  %50 = ptrtoint ptr %setup_physical_interface.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %cond57.i, ptr %setup_physical_interface.i, align 4
  %.off1.i = add nsw i32 %41, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off1.i)
  %switch2.i = icmp ult i32 %.off1.i, 2
  br i1 %switch2.i, label %if.then66.i, label %if.end54.i.igb_init_mac_params_82575.exit_crit_edge

if.end54.i.igb_init_mac_params_82575.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %igb_init_mac_params_82575.exit

if.then66.i:                                      ; preds = %if.end54.i
  %51 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %device_id, align 2
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %52, label %sw.default69.i [
    i16 1080, label %if.then66.i.igb_init_mac_params_82575.exit_crit_edge
    i16 1082, label %if.then66.i.igb_init_mac_params_82575.exit_crit_edge180
    i16 1084, label %if.then66.i.igb_init_mac_params_82575.exit_crit_edge181
    i16 1088, label %if.then66.i.igb_init_mac_params_82575.exit_crit_edge182
  ]

if.then66.i.igb_init_mac_params_82575.exit_crit_edge182: ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %igb_init_mac_params_82575.exit

if.then66.i.igb_init_mac_params_82575.exit_crit_edge181: ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %igb_init_mac_params_82575.exit

if.then66.i.igb_init_mac_params_82575.exit_crit_edge180: ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %igb_init_mac_params_82575.exit

if.then66.i.igb_init_mac_params_82575.exit_crit_edge: ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %igb_init_mac_params_82575.exit

sw.default69.i:                                   ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #7
  %mas_capable.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 8
  %54 = ptrtoint ptr %mas_capable.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %mas_capable.i, align 4
  br label %igb_init_mac_params_82575.exit

igb_init_mac_params_82575.exit:                   ; preds = %sw.default69.i, %if.then66.i.igb_init_mac_params_82575.exit_crit_edge, %if.then66.i.igb_init_mac_params_82575.exit_crit_edge180, %if.then66.i.igb_init_mac_params_82575.exit_crit_edge181, %if.then66.i.igb_init_mac_params_82575.exit_crit_edge182, %if.end54.i.igb_init_mac_params_82575.exit_crit_edge, %if.end54.thread.i
  %nvm1.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %call.i124 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #5
  %55 = trunc i32 %call.i124 to i16
  %56 = lshr i16 %55, 11
  %57 = and i16 %56, 15
  %58 = tail call i16 @llvm.umin.i16(i16 %57, i16 9) #5
  %59 = add nuw nsw i16 %58, 6
  %conv6.i = zext i16 %59 to i32
  %shl.i = shl nuw nsw i32 1, %conv6.i
  %conv7.i = trunc i32 %shl.i to i16
  %word_size.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 5
  %60 = ptrtoint ptr %word_size.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv7.i, ptr %word_size.i, align 4
  %opcode_bits.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 8
  %61 = ptrtoint ptr %opcode_bits.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 8, ptr %opcode_bits.i, align 2
  %delay_usec.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 6
  %62 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %delay_usec.i, align 2
  %override.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 2
  %63 = ptrtoint ptr %override.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %override.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %64, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %igb_init_mac_params_82575.exit
  call void @__sanitizer_cov_trace_pc() #7
  %page_size.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 9
  %66 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 32, ptr %page_size.i, align 4
  br label %sw.epilog.i125

sw.bb8.i:                                         ; preds = %igb_init_mac_params_82575.exit
  call void @__sanitizer_cov_trace_pc() #7
  %page_size9.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 9
  %67 = ptrtoint ptr %page_size9.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 8, ptr %page_size9.i, align 4
  br label %sw.epilog.i125

sw.default.i:                                     ; preds = %igb_init_mac_params_82575.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and11.i = and i32 %call.i124, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  %conv12.i = select i1 %tobool.not.i, i16 8, i16 32
  %page_size13.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 9
  %68 = ptrtoint ptr %page_size13.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv12.i, ptr %page_size13.i, align 4
  %conv17.i = select i1 %tobool.not.i, i16 8, i16 16
  br label %sw.epilog.i125

sw.epilog.i125:                                   ; preds = %sw.default.i, %sw.bb8.i, %sw.bb.i
  %conv17.sink.i = phi i16 [ %conv17.i, %sw.default.i ], [ 8, %sw.bb8.i ], [ 16, %sw.bb.i ]
  %address_bits18.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 7
  %69 = ptrtoint ptr %address_bits18.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv17.sink.i, ptr %address_bits18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %conv7.i)
  %cmp21.i = icmp eq i16 %conv7.i, -32768
  br i1 %cmp21.i, label %if.then23.i, label %sw.epilog.i125.if.end25.i_crit_edge

sw.epilog.i125.if.end25.i_crit_edge:              ; preds = %sw.epilog.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.then23.i:                                      ; preds = %sw.epilog.i125
  call void @__sanitizer_cov_trace_pc() #7
  %page_size24.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 9
  %70 = ptrtoint ptr %page_size24.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 128, ptr %page_size24.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %sw.epilog.i125.if.end25.i_crit_edge
  %type.i126 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %71 = ptrtoint ptr %type.i126 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %type.i126, align 4
  %72 = ptrtoint ptr %nvm1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @igb_acquire_nvm_82575, ptr %nvm1.i, align 4
  %release.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 2
  %73 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @igb_release_nvm_82575, ptr %release.i, align 4
  %write.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 3
  %74 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @igb_write_nvm_spi, ptr %write.i, align 4
  %validate.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 5
  %75 = ptrtoint ptr %validate.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @igb_validate_nvm_checksum, ptr %validate.i, align 4
  %update.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 4
  %76 = ptrtoint ptr %update.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @igb_update_nvm_checksum, ptr %update.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv7.i)
  %cmp32.i = icmp sgt i16 %conv7.i, -1
  %spec.select.i = select i1 %cmp32.i, ptr @igb_read_nvm_eerd, ptr @igb_read_nvm_spi
  %77 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %spec.select.i, ptr %77, align 4
  %79 = ptrtoint ptr %type.i123 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %type.i123, align 4
  %switch.tableidx142 = add i32 %80, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx142)
  %81 = icmp ult i32 %switch.tableidx142, 3
  br i1 %81, label %switch.lookup141, label %igb_init_nvm_params_82575.exit

switch.lookup141:                                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep143 = getelementptr inbounds [3 x ptr], ptr @switch.table.igb_get_invariants_82575.58, i32 0, i32 %switch.tableidx142
  %82 = ptrtoint ptr %switch.gep143 to i32
  call void @__asan_load4_noabort(i32 %82)
  %switch.load144 = load ptr, ptr %switch.gep143, align 4
  %switch.gep145 = getelementptr inbounds [3 x ptr], ptr @switch.table.igb_get_invariants_82575.59, i32 0, i32 %switch.tableidx142
  %83 = ptrtoint ptr %switch.gep145 to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load146 = load ptr, ptr %switch.gep145, align 4
  %84 = ptrtoint ptr %validate.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %switch.load144, ptr %validate.i, align 4
  %85 = ptrtoint ptr %update.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %switch.load146, ptr %update.i, align 4
  br label %if.end74thread-pre-split

igb_init_nvm_params_82575.exit:                   ; preds = %if.end25.i
  %86 = and i32 %80, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %86)
  %switch = icmp eq i32 %86, 6
  br i1 %switch, label %sw.epilog71, label %igb_init_nvm_params_82575.exit.if.end74_crit_edge

igb_init_nvm_params_82575.exit.if.end74_crit_edge: ; preds = %igb_init_nvm_params_82575.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

sw.epilog71:                                      ; preds = %igb_init_nvm_params_82575.exit
  %call69 = tail call i32 @igb_init_nvm_params_i210(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool72.not = icmp eq i32 %call69, 0
  br i1 %tobool72.not, label %sw.epilog71.if.end74thread-pre-split_crit_edge, label %sw.epilog71.cleanup_crit_edge

sw.epilog71.cleanup_crit_edge:                    ; preds = %sw.epilog71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog71.if.end74thread-pre-split_crit_edge:   ; preds = %sw.epilog71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74thread-pre-split

if.end74thread-pre-split:                         ; preds = %sw.epilog71.if.end74thread-pre-split_crit_edge, %switch.lookup141
  %87 = ptrtoint ptr %type.i123 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr = load i32, ptr %type.i123, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.end74thread-pre-split, %igb_init_nvm_params_82575.exit.if.end74_crit_edge
  %88 = phi i32 [ %.pr, %if.end74thread-pre-split ], [ %80, %igb_init_nvm_params_82575.exit.if.end74_crit_edge ]
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %88, label %if.end74.sw.epilog79_crit_edge [
    i32 2, label %if.end74.sw.bb76_crit_edge
    i32 4, label %if.end74.sw.bb76_crit_edge183
  ]

if.end74.sw.bb76_crit_edge183:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb76

if.end74.sw.bb76_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb76

if.end74.sw.epilog79_crit_edge:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog79

sw.bb76:                                          ; preds = %if.end74.sw.bb76_crit_edge, %if.end74.sw.bb76_crit_edge183
  %call77 = tail call i32 @igb_init_mbx_params_pf(ptr noundef %hw) #5
  br label %sw.epilog79

sw.epilog79:                                      ; preds = %sw.bb76, %if.end74.sw.epilog79_crit_edge
  %90 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.not.i = icmp eq i32 %91, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog79
  call void @__sanitizer_cov_trace_pc() #7
  %type.i128 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %92 = ptrtoint ptr %type.i128 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %type.i128, align 4
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog79
  %autoneg_mask.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 14
  %93 = ptrtoint ptr %autoneg_mask.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 47, ptr %autoneg_mask.i, align 2
  %reset_delay_us.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 10
  %94 = ptrtoint ptr %reset_delay_us.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 100, ptr %reset_delay_us.i, align 4
  %call.i129 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 24) #5
  %95 = ptrtoint ptr %dev_spec2 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %dev_spec2, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.i.not.i = icmp eq i8 %96, 0
  %igb_phy_hw_reset_sgmii_82575.sink.i = select i1 %tobool.i.not.i, ptr @igb_phy_hw_reset, ptr @igb_phy_hw_reset_sgmii_82575
  %97 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 9
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %igb_phy_hw_reset_sgmii_82575.sink.i, ptr %97, align 4
  %hw_addr9.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %99 = ptrtoint ptr %hw_addr9.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %hw_addr9.i, align 4
  %tobool.not.i130 = icmp eq ptr %100, null
  br i1 %tobool.not.i130, label %if.end.i.if.end17.i_crit_edge, label %do.body14.i, !prof !160

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

do.body14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i131 = and i32 %call.i129, -33554433
  %masksel.i = select i1 %tobool.i.not.i, i32 0, i32 33554432
  %ctrl_ext.0.i = or i32 %masksel.i, %and.i131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %101 = tail call i32 @llvm.bswap.i32(i32 %ctrl_ext.0.i) #5
  %arrayidx.i = getelementptr i8, ptr %100, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %101) #5, !srcloc !162
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.body14.i, %if.end.i.if.end17.i_crit_edge
  %call20.i = tail call fastcc i32 @igb_reset_mdicnfg_82580(ptr noundef %hw) #5
  %102 = ptrtoint ptr %dev_spec2 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %dev_spec2, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.i223.not.i = icmp eq i8 %103, 0
  br i1 %tobool.i223.not.i, label %if.end17.i.if.else26.i_crit_edge, label %land.lhs.true.i

if.end17.i.if.else26.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else26.i

land.lhs.true.i:                                  ; preds = %if.end17.i
  %104 = ptrtoint ptr %type.i123 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %type.i123, align 4
  %switch.tableidx148 = add i32 %105, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx148)
  %106 = icmp ult i32 %switch.tableidx148, 7
  br i1 %106, label %switch.lookup147, label %land.lhs.true.i.if.then23.i132_crit_edge

land.lhs.true.i.if.then23.i132_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23.i132

switch.lookup147:                                 ; preds = %land.lhs.true.i
  %switch.gep149 = getelementptr inbounds [7 x i32], ptr @switch.table.igb_get_invariants_82575.60, i32 0, i32 %switch.tableidx148
  %107 = ptrtoint ptr %switch.gep149 to i32
  call void @__asan_load4_noabort(i32 %107)
  %switch.load150 = load i32, ptr %switch.gep149, align 4
  %call3.i.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %switch.load150) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %extract.t.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %extract.t.i.i, label %switch.lookup147.if.else26.i_crit_edge, label %switch.lookup147.if.then23.i132_crit_edge

switch.lookup147.if.then23.i132_crit_edge:        ; preds = %switch.lookup147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23.i132

switch.lookup147.if.else26.i_crit_edge:           ; preds = %switch.lookup147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else26.i

if.then23.i132:                                   ; preds = %switch.lookup147.if.then23.i132_crit_edge, %land.lhs.true.i.if.then23.i132_crit_edge
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %108 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @igb_read_phy_reg_sgmii_82575, ptr %read_reg.i, align 4
  br label %if.end36.i

if.else26.i:                                      ; preds = %switch.lookup147.if.else26.i_crit_edge, %if.end17.i.if.else26.i_crit_edge
  %109 = ptrtoint ptr %type.i123 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %type.i123, align 4
  %.off.i = add i32 %110, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 5
  %read_reg29.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  br i1 %switch.i, label %sw.bb.i133, label %sw.default.i134

sw.bb.i133:                                       ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %read_reg29.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @igb_read_phy_reg_82580, ptr %read_reg29.i, align 4
  br label %if.end36.i

sw.default.i134:                                  ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %read_reg29.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @igb_read_phy_reg_igp, ptr %read_reg29.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %sw.default.i134, %sw.bb.i133, %if.then23.i132
  %igb_write_phy_reg_82580.sink.i = phi ptr [ @igb_write_phy_reg_82580, %sw.bb.i133 ], [ @igb_write_phy_reg_igp, %sw.default.i134 ], [ @igb_write_phy_reg_sgmii_82575, %if.then23.i132 ]
  %write_reg31.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %113 = ptrtoint ptr %write_reg31.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %igb_write_phy_reg_82580.sink.i, ptr %write_reg31.i, align 4
  %call37.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  %114 = trunc i32 %call37.i to i16
  %115 = lshr i16 %114, 2
  %conv.i135 = and i16 %115, 3
  %func.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %116 = ptrtoint ptr %func.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.i135, ptr %func.i, align 4
  %call39.i = tail call fastcc i32 @igb_get_phy_id_82575(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end36.i.cleanup_crit_edge

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42.i:                                       ; preds = %if.end36.i
  %id.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %117 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id.i, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %118, label %if.end42.i.cleanup_crit_edge [
    i32 21040800, label %if.end42.i.sw.bb43.i_crit_edge
    i32 21040592, label %if.end42.i.sw.bb43.i_crit_edge184
    i32 21040576, label %if.end42.i.sw.bb43.i_crit_edge185
    i32 21040272, label %if.end42.i.sw.bb43.i_crit_edge186
    i32 21040320, label %if.end42.i.sw.bb43.i_crit_edge187
    i32 44565392, label %sw.bb106.i
    i32 22283168, label %if.end42.i.sw.bb116.i_crit_edge
    i32 22283184, label %if.end42.i.sw.bb116.i_crit_edge188
    i32 21040128, label %sw.bb128.i
    i32 56778000, label %sw.bb143.i
  ]

if.end42.i.sw.bb116.i_crit_edge188:               ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb116.i

if.end42.i.sw.bb116.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb116.i

if.end42.i.sw.bb43.i_crit_edge187:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43.i

if.end42.i.sw.bb43.i_crit_edge186:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43.i

if.end42.i.sw.bb43.i_crit_edge185:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43.i

if.end42.i.sw.bb43.i_crit_edge184:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43.i

if.end42.i.sw.bb43.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb43.i

if.end42.i.cleanup_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb43.i:                                        ; preds = %if.end42.i.sw.bb43.i_crit_edge, %if.end42.i.sw.bb43.i_crit_edge184, %if.end42.i.sw.bb43.i_crit_edge185, %if.end42.i.sw.bb43.i_crit_edge186, %if.end42.i.sw.bb43.i_crit_edge187
  %type44.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %120 = ptrtoint ptr %type44.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2, ptr %type44.i, align 4
  %check_polarity.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %121 = ptrtoint ptr %check_polarity.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @igb_check_polarity_m88, ptr %check_polarity.i, align 4
  %get_phy_info.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 6
  %122 = ptrtoint ptr %get_phy_info.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @igb_get_phy_info_m88, ptr %get_phy_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040320, i32 %118)
  %cmp48.not.i = icmp eq i32 %118, 21040320
  %get_cable_length54.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  br i1 %cmp48.not.i, label %if.end55.thread.i, label %if.end55.i

if.end55.thread.i:                                ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %get_cable_length54.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @igb_get_cable_length_m88, ptr %get_cable_length54.i, align 4
  %force_speed_duplex225.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 3
  %124 = ptrtoint ptr %force_speed_duplex225.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @igb_phy_force_speed_duplex_m88, ptr %force_speed_duplex225.i, align 4
  br label %if.end87.i

if.end55.i:                                       ; preds = %sw.bb43.i
  %125 = ptrtoint ptr %get_cable_length54.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @igb_get_cable_length_m88_gen2, ptr %get_cable_length54.i, align 4
  %force_speed_duplex.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 3
  %126 = ptrtoint ptr %force_speed_duplex.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @igb_phy_force_speed_duplex_m88, ptr %force_speed_duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040272, i32 %118)
  %cmp58.i = icmp eq i32 %118, 21040272
  br i1 %cmp58.i, label %if.then60.i, label %if.end55.i.if.end87.i_crit_edge

if.end55.i.if.end87.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

if.then60.i:                                      ; preds = %if.end55.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #5
  %127 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -1, ptr %data.i, align 2, !annotation !183
  %128 = ptrtoint ptr %write_reg31.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write_reg31.i, align 4
  %call63.i = tail call i32 %129(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %if.then60.i.cleanup.i_crit_edge

if.then60.i.cleanup.i_crit_edge:                  ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end66.i:                                       ; preds = %if.then60.i
  %read_reg68.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %130 = ptrtoint ptr %read_reg68.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read_reg68.i, align 4
  %call69.i = call i32 %131(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %if.end66.i.cleanup.i_crit_edge

if.end66.i.cleanup.i_crit_edge:                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end72.i:                                       ; preds = %if.end66.i
  %132 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %data.i, align 2
  %134 = and i16 %133, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %134)
  %switch221.i = icmp eq i16 %134, 256
  br i1 %switch221.i, label %if.then83.i, label %if.end72.i.cleanup.thread.i_crit_edge

if.end72.i.cleanup.thread.i_crit_edge:            ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

if.then83.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  %mac84.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4
  %135 = ptrtoint ptr %mac84.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @igb_check_for_link_media_swap, ptr %mac84.i, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then83.i, %if.end72.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  br label %if.end87.i

cleanup.i:                                        ; preds = %if.end66.i.cleanup.i_crit_edge, %if.then60.i.cleanup.i_crit_edge
  %ret_val.0.i = phi i32 [ %call63.i, %if.then60.i.cleanup.i_crit_edge ], [ %call69.i, %if.end66.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  br label %cleanup

if.end87.i:                                       ; preds = %cleanup.thread.i, %if.end55.i.if.end87.i_crit_edge, %if.end55.thread.i
  %136 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040592, i32 %137)
  %cmp89.i = icmp eq i32 %137, 21040592
  br i1 %cmp89.i, label %if.then91.i, label %if.end87.i.if.end96.i_crit_edge

if.end87.i.if.end96.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96.i

if.then91.i:                                      ; preds = %if.end87.i
  %call92.i = call i32 @igb_initialize_M88E1512_phy(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %tobool93.not.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.not.i, label %if.end96thread-pre-split.i, label %if.then91.i.cleanup_crit_edge

if.then91.i.cleanup_crit_edge:                    ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end96thread-pre-split.i:                       ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pr.i = load i32, ptr %id.i, align 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.end96thread-pre-split.i, %if.end87.i.if.end96.i_crit_edge
  %139 = phi i32 [ %.pr.i, %if.end96thread-pre-split.i ], [ %137, %if.end87.i.if.end96.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040800, i32 %139)
  %cmp98.i = icmp eq i32 %139, 21040800
  br i1 %cmp98.i, label %if.then100.i, label %if.end96.i.cleanup_crit_edge

if.end96.i.cleanup_crit_edge:                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then100.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #7
  %call101.i = call i32 @igb_initialize_M88E1543_phy(ptr noundef %hw) #5
  br label %cleanup

sw.bb106.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  %type107.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %140 = ptrtoint ptr %type107.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 6, ptr %type107.i, align 4
  %get_phy_info109.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 6
  %141 = ptrtoint ptr %get_phy_info109.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @igb_get_phy_info_igp, ptr %get_phy_info109.i, align 4
  %get_cable_length111.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %142 = ptrtoint ptr %get_cable_length111.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @igb_get_cable_length_igp_2, ptr %get_cable_length111.i, align 4
  %force_speed_duplex113.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 3
  %143 = ptrtoint ptr %force_speed_duplex113.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @igb_phy_force_speed_duplex_igp, ptr %force_speed_duplex113.i, align 4
  %set_d0_lplu_state.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 10
  %144 = ptrtoint ptr %set_d0_lplu_state.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @igb_set_d0_lplu_state_82575, ptr %set_d0_lplu_state.i, align 4
  %set_d3_lplu_state.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 11
  %145 = ptrtoint ptr %set_d3_lplu_state.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @igb_set_d3_lplu_state, ptr %set_d3_lplu_state.i, align 4
  br label %cleanup

sw.bb116.i:                                       ; preds = %if.end42.i.sw.bb116.i_crit_edge, %if.end42.i.sw.bb116.i_crit_edge188
  %type117.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %146 = ptrtoint ptr %type117.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 8, ptr %type117.i, align 4
  %force_speed_duplex119.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 3
  %147 = ptrtoint ptr %force_speed_duplex119.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @igb_phy_force_speed_duplex_82580, ptr %force_speed_duplex119.i, align 4
  %get_cable_length121.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %148 = ptrtoint ptr %get_cable_length121.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @igb_get_cable_length_82580, ptr %get_cable_length121.i, align 4
  %get_phy_info123.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 6
  %149 = ptrtoint ptr %get_phy_info123.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @igb_get_phy_info_82580, ptr %get_phy_info123.i, align 4
  %set_d0_lplu_state125.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 10
  %150 = ptrtoint ptr %set_d0_lplu_state125.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @igb_set_d0_lplu_state_82580, ptr %set_d0_lplu_state125.i, align 4
  %set_d3_lplu_state127.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 11
  %151 = ptrtoint ptr %set_d3_lplu_state127.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @igb_set_d3_lplu_state_82580, ptr %set_d3_lplu_state127.i, align 4
  br label %cleanup

sw.bb128.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  %type129.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %152 = ptrtoint ptr %type129.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 9, ptr %type129.i, align 4
  %check_polarity131.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %153 = ptrtoint ptr %check_polarity131.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @igb_check_polarity_m88, ptr %check_polarity131.i, align 4
  %get_cfg_done.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %154 = ptrtoint ptr %get_cfg_done.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @igb_get_cfg_done_i210, ptr %get_cfg_done.i, align 4
  %get_phy_info134.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 6
  %155 = ptrtoint ptr %get_phy_info134.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @igb_get_phy_info_m88, ptr %get_phy_info134.i, align 4
  %get_cable_length136.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %156 = ptrtoint ptr %get_cable_length136.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @igb_get_cable_length_m88_gen2, ptr %get_cable_length136.i, align 4
  %set_d0_lplu_state138.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 10
  %157 = ptrtoint ptr %set_d0_lplu_state138.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @igb_set_d0_lplu_state_82580, ptr %set_d0_lplu_state138.i, align 4
  %set_d3_lplu_state140.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 11
  %158 = ptrtoint ptr %set_d3_lplu_state140.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @igb_set_d3_lplu_state_82580, ptr %set_d3_lplu_state140.i, align 4
  %force_speed_duplex142.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 3
  %159 = ptrtoint ptr %force_speed_duplex142.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @igb_phy_force_speed_duplex_m88, ptr %force_speed_duplex142.i, align 4
  br label %cleanup

sw.bb143.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  %type144.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %160 = ptrtoint ptr %type144.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 10, ptr %type144.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb143.i, %sw.bb128.i, %sw.bb116.i, %sw.bb106.i, %if.then100.i, %if.end96.i.cleanup_crit_edge, %if.then91.i.cleanup_crit_edge, %cleanup.i, %if.end42.i.cleanup_crit_edge, %if.end36.i.cleanup_crit_edge, %if.then.i, %sw.epilog71.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call69, %sw.epilog71.cleanup_crit_edge ], [ %call39.i, %if.end36.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb143.i ], [ 0, %sw.bb128.i ], [ 0, %sw.bb116.i ], [ 0, %sw.bb106.i ], [ %ret_val.0.i, %cleanup.i ], [ %call92.i, %if.then91.i.cleanup_crit_edge ], [ %call101.i, %if.then100.i ], [ 0, %if.end96.i.cleanup_crit_edge ], [ -2, %if.end42.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_set_sfp_media_type_82575(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %tranceiver_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_spec1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %eth_flags2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tranceiver_type) #5
  %0 = ptrtoint ptr %tranceiver_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tranceiver_type, align 1
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 24) #5
  %and = and i32 %call, -129
  %hw_addr4 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %hw_addr4, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body8, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %or = or i32 %and, 33554432
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %3) #5, !srcloc !162
  br label %if.end

if.end:                                           ; preds = %do.body8, %entry.if.end_crit_edge
  %call13 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  %call15 = call i32 @igb_read_sfp_data_byte(ptr noundef %hw, i16 noundef zeroext 0, ptr noundef nonnull %tranceiver_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %if.end.if.end20_crit_edge, label %if.end17

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end17:                                         ; preds = %if.end
  call void @msleep(i32 noundef 100) #5
  %call15.1 = call i32 @igb_read_sfp_data_byte(ptr noundef %hw, i16 noundef zeroext 0, ptr noundef nonnull %tranceiver_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %cmp.1 = icmp eq i32 %call15.1, 0
  br i1 %cmp.1, label %if.end17.if.end20_crit_edge, label %if.end17.1

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end17.1:                                       ; preds = %if.end17
  call void @msleep(i32 noundef 100) #5
  %call15.2 = call i32 @igb_read_sfp_data_byte(ptr noundef %hw, i16 noundef zeroext 0, ptr noundef nonnull %tranceiver_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %cmp.2 = icmp eq i32 %call15.2, 0
  br i1 %cmp.2, label %if.end17.1.if.end20_crit_edge, label %if.end17.2

if.end17.1.if.end20_crit_edge:                    ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end17.2:                                       ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 100) #5
  br label %do.body90

if.end20:                                         ; preds = %if.end17.1.if.end20_crit_edge, %if.end17.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %call21 = call i32 @igb_read_sfp_data_byte(ptr noundef %hw, i16 noundef zeroext 6, ptr noundef %eth_flags2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end24, label %if.end20.do.body90_crit_edge

if.end20.do.body90_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

if.end24:                                         ; preds = %if.end20
  %4 = ptrtoint ptr %tranceiver_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tranceiver_type, align 1
  %6 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch = icmp eq i8 %6, 2
  br i1 %switch, label %if.then30, label %if.else86

if.then30:                                        ; preds = %if.end24
  %module_plugged = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 5
  %7 = ptrtoint ptr %module_plugged to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %module_plugged, align 1
  %8 = ptrtoint ptr %eth_flags2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %eth_flags2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %9 = icmp ult i8 %bf.load, 64
  br i1 %9, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %10 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %media_type, align 4
  br label %do.body90

if.else:                                          ; preds = %if.then30
  %11 = and i8 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %if.else53, label %if.then50

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev_spec1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %dev_spec1, align 1
  %media_type52 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %14 = ptrtoint ptr %media_type52 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %media_type52, align 4
  br label %do.body90

if.else53:                                        ; preds = %if.else
  %15 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool57.not = icmp eq i8 %15, 0
  br i1 %tobool57.not, label %if.else62, label %if.then58

if.then58:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev_spec1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %dev_spec1, align 1
  %media_type61 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %17 = ptrtoint ptr %media_type61 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %media_type61, align 4
  br label %do.body90

if.else62:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  %media_type64 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %18 = ptrtoint ptr %media_type64 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %media_type64, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_set_sfp_media_type_82575.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_set_sfp_media_type_82575, %if.then76)) #5
          to label %do.body90 [label %if.then76], !srcloc !168

if.then76:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #7
  %call77 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_set_sfp_media_type_82575.__UNIQUE_ID_ddebug388, ptr noundef %call77, ptr noundef nonnull @.str.7) #5
  br label %do.body90

if.else86:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %media_type88 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %19 = ptrtoint ptr %media_type88 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %media_type88, align 4
  br label %do.body90

do.body90:                                        ; preds = %if.else86, %if.then76, %if.else62, %if.then58, %if.then50, %if.then38, %if.end20.do.body90_crit_edge, %if.end17.2
  %ret_val.2 = phi i32 [ %call21, %if.end20.do.body90_crit_edge ], [ 0, %if.then76 ], [ 0, %if.then38 ], [ 0, %if.then58 ], [ 0, %if.then50 ], [ 0, %if.else86 ], [ 0, %if.else62 ], [ %call15.2, %if.end17.2 ]
  %20 = ptrtoint ptr %hw_addr4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw_addr4, align 4
  %tobool97.not = icmp eq ptr %21, null
  br i1 %tobool97.not, label %do.body90.if.end111_crit_edge, label %do.body107, !prof !160

do.body90.if.end111_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

do.body107:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  call void @arm_heavy_mb() #5
  %22 = call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx110 = getelementptr i8, ptr %21, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx110, i32 %22) #5, !srcloc !162
  br label %if.end111

if.end111:                                        ; preds = %do.body107, %do.body90.if.end111_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tranceiver_type) #5
  ret i32 %ret_val.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_init_nvm_params_i210(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_init_mbx_params_pf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_sfp_data_byte(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_reset_hw_82580(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %global_device_reset1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 1
  %0 = ptrtoint ptr %global_device_reset1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %global_device_reset1, align 1, !range !159
  store i8 0, ptr %global_device_reset1, align 1
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ne i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %extract.t = icmp ne i8 %1, 0
  %spec.select = select i1 %cmp, i1 %extract.t, i1 false
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 0) #5
  %call4 = tail call i32 @igb_disable_pcie_master(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %entry.do.body20_crit_edge, label %do.body7

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_hw_82580.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_hw_82580, %if.then13)) #5
          to label %do.body20 [label %if.then13], !srcloc !168

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_hw_82580.__UNIQUE_ID_ddebug458, ptr noundef %call14, ptr noundef nonnull @.str.9) #5
  br label %do.body20

do.body20:                                        ; preds = %if.then13, %do.body7, %entry.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_hw_82580.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_hw_82580, %if.then32)) #5
          to label %do.body39 [label %if.then32], !srcloc !168

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_hw_82580.__UNIQUE_ID_ddebug459, ptr noundef %call33, ptr noundef nonnull @.str.10) #5
  br label %do.body39

do.body39:                                        ; preds = %if.then32, %do.body20
  %hw_addr44 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr44 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr44, align 4
  %tobool45.not = icmp eq ptr %5, null
  br i1 %tobool45.not, label %do.body39.if.end58_crit_edge, label %do.body55, !prof !160

do.body39.if.end58_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.body55:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i8, ptr %5, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 -1) #5, !srcloc !162
  br label %if.end58

if.end58:                                         ; preds = %do.body55, %do.body39.if.end58_crit_edge
  %6 = ptrtoint ptr %hw_addr44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr44, align 4
  %tobool68.not = icmp eq ptr %7, null
  br i1 %tobool68.not, label %if.end58.if.end82_crit_edge, label %do.body78, !prof !160

if.end58.if.end82_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.body78:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %arrayidx81 = getelementptr i8, ptr %7, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx81, i32 0) #5, !srcloc !162
  br label %if.end82

if.end82:                                         ; preds = %do.body78, %if.end58.if.end82_crit_edge
  %8 = ptrtoint ptr %hw_addr44 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr44, align 4
  %tobool92.not = icmp eq ptr %9, null
  br i1 %tobool92.not, label %if.end82.if.end106_crit_edge, label %do.body102, !prof !160

if.end82.if.end106_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

do.body102:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %arrayidx105 = getelementptr i8, ptr %9, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx105, i32 134217728) #5, !srcloc !162
  br label %if.end106

if.end106:                                        ; preds = %do.body102, %if.end82.if.end106_crit_edge
  %call109 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  br i1 %spec.select, label %if.end115, label %if.end106.if.else_crit_edge

if.end106.if.else_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end115:                                        ; preds = %if.end106
  %acquire_swfw_sync = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 8
  %10 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acquire_swfw_sync, align 4
  %call112 = tail call i32 %11(ptr noundef %hw, i16 noundef zeroext 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %land.lhs.true117, label %if.end115.if.else_crit_edge

if.end115.if.else_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true117:                                 ; preds = %if.end115
  %call118 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  %and = and i32 %call118, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool119.not = icmp eq i32 %and, 0
  br i1 %tobool119.not, label %land.lhs.true117.do.body123_crit_edge, label %land.lhs.true117.if.else_crit_edge

land.lhs.true117.if.else_crit_edge:               ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true117.do.body123_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body123

if.else:                                          ; preds = %land.lhs.true117.if.else_crit_edge, %if.end115.if.else_crit_edge, %if.end106.if.else_crit_edge
  %global_device_reset.1.off0310 = phi i1 [ true, %land.lhs.true117.if.else_crit_edge ], [ false, %if.end115.if.else_crit_edge ], [ false, %if.end106.if.else_crit_edge ]
  br label %do.body123

do.body123:                                       ; preds = %if.else, %land.lhs.true117.do.body123_crit_edge
  %.sink = phi i32 [ 67108864, %if.else ], [ 536870912, %land.lhs.true117.do.body123_crit_edge ]
  %global_device_reset.1.off0309 = phi i1 [ %global_device_reset.1.off0310, %if.else ], [ true, %land.lhs.true117.do.body123_crit_edge ]
  %12 = ptrtoint ptr %hw_addr44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw_addr44, align 4
  %tobool130.not = icmp eq ptr %13, null
  br i1 %tobool130.not, label %do.body123.if.end144_crit_edge, label %do.body140, !prof !160

do.body123.if.end144_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

do.body140:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %14) #5, !srcloc !162
  br label %if.end144

if.end144:                                        ; preds = %do.body140, %do.body123.if.end144_crit_edge
  %call147 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  br i1 %global_device_reset.1.off0309, label %if.then149, label %if.end144.if.end150_crit_edge

if.end144.if.end150_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150

if.then149:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end144.if.end150_crit_edge
  %call151 = tail call i32 @igb_get_auto_rd_done(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end150.do.body175_crit_edge, label %do.body155

if.end150.do.body175_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body175

do.body155:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_hw_82580.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_hw_82580, %if.then167)) #5
          to label %do.body175 [label %if.then167], !srcloc !168

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #7
  %call168 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_hw_82580.__UNIQUE_ID_ddebug464, ptr noundef %call168, ptr noundef nonnull @.str.11) #5
  br label %do.body175

do.body175:                                       ; preds = %if.then167, %do.body155, %if.end150.do.body175_crit_edge
  %15 = ptrtoint ptr %hw_addr44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr44, align 4
  %tobool182.not = icmp eq ptr %16, null
  br i1 %tobool182.not, label %do.body175.if.end196_crit_edge, label %do.body192, !prof !160

do.body175.if.end196_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196

do.body192:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %arrayidx195 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx195, i32 4096) #5, !srcloc !162
  br label %if.end196

if.end196:                                        ; preds = %do.body192, %do.body175.if.end196_crit_edge
  %17 = ptrtoint ptr %hw_addr44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw_addr44, align 4
  %tobool206.not = icmp eq ptr %18, null
  br i1 %tobool206.not, label %if.end196.if.end220_crit_edge, label %do.body216, !prof !160

if.end196.if.end220_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220

do.body216:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %arrayidx219 = getelementptr i8, ptr %18, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx219, i32 -1) #5, !srcloc !162
  br label %if.end220

if.end220:                                        ; preds = %do.body216, %if.end196.if.end220_crit_edge
  %call223 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 192) #5
  %call224 = tail call fastcc i32 @igb_reset_mdicnfg_82580(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end220.if.end247_crit_edge, label %do.body228

if.end220.if.end247_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end247

do.body228:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_hw_82580.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_hw_82580, %if.then240)) #5
          to label %if.end247 [label %if.then240], !srcloc !168

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  %call241 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_hw_82580.__UNIQUE_ID_ddebug467, ptr noundef %call241, ptr noundef nonnull @.str.12) #5
  br label %if.end247

if.end247:                                        ; preds = %if.then240, %do.body228, %if.end220.if.end247_crit_edge
  %call248 = tail call i32 @igb_check_alt_mac_addr(ptr noundef %hw) #5
  br i1 %global_device_reset.1.off0309, label %if.then250, label %if.end247.if.end253_crit_edge

if.end247.if.end253_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end253

if.then250:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #7
  %release_swfw_sync = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 9
  %19 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %20(ptr noundef %hw, i16 noundef zeroext 256) #5
  br label %if.end253

if.end253:                                        ; preds = %if.then250, %if.end247.if.end253_crit_edge
  ret i32 %call248
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_reset_hw_82575(ptr noundef %hw) #0 align 64 {
entry:
  %pcie_devctl2.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_disable_pcie_master(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body1

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_hw_82575, %if.then6)) #5
          to label %if.end10 [label %if.then6], !srcloc !168

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_hw_82575.__UNIQUE_ID_ddebug411, ptr noundef %call7, ptr noundef nonnull @.str.9) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.body1, %entry.if.end10_crit_edge
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23296) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcie_devctl2.i) #5
  %0 = ptrtoint ptr %pcie_devctl2.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pcie_devctl2.i, align 2, !annotation !183
  %and.i = and i32 %call.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.out.i_crit_edge

if.end10.out.i_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.end.i:                                         ; preds = %if.end10
  %and1.i = and i32 %call.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %call.i, 4096
  br label %out.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @igb_read_pcie_cap_reg(ptr noundef %hw, i32 noundef 40, ptr noundef nonnull %pcie_devctl2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.out.i_crit_edge

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %pcie_devctl2.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %pcie_devctl2.i, align 2
  %3 = or i16 %2, 5
  store i16 %3, ptr %pcie_devctl2.i, align 2
  %call11.i = call i32 @igb_write_pcie_cap_reg(ptr noundef %hw, i32 noundef 40, ptr noundef nonnull %pcie_devctl2.i) #5
  br label %out.i

out.i:                                            ; preds = %if.end8.i, %if.end4.i.out.i_crit_edge, %if.then3.i, %if.end10.out.i_crit_edge
  %ret_val.0.i = phi i32 [ 0, %if.end10.out.i_crit_edge ], [ %call5.i, %if.end4.i.out.i_crit_edge ], [ %call11.i, %if.end8.i ], [ 0, %if.then3.i ]
  %gcr.0.i = phi i32 [ %call.i, %if.end10.out.i_crit_edge ], [ %call.i, %if.end4.i.out.i_crit_edge ], [ %call.i, %if.end8.i ], [ %or.i, %if.then3.i ]
  %hw_addr14.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr14.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr14.i, align 4
  %tobool15.not.i = icmp eq ptr %5, null
  br i1 %tobool15.not.i, label %out.i.igb_set_pcie_completion_timeout.exit_crit_edge, label %do.body20.i, !prof !160

out.i.igb_set_pcie_completion_timeout.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %igb_set_pcie_completion_timeout.exit

do.body20.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  %and12.i = and i32 %gcr.0.i, -65537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  call void @arm_heavy_mb() #5
  %6 = call i32 @llvm.bswap.i32(i32 %and12.i) #5
  %arrayidx.i = getelementptr i8, ptr %5, i32 23296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %6) #5, !srcloc !162
  br label %igb_set_pcie_completion_timeout.exit

igb_set_pcie_completion_timeout.exit:             ; preds = %do.body20.i, %out.i.igb_set_pcie_completion_timeout.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcie_devctl2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0.i)
  %tobool12.not = icmp eq i32 %ret_val.0.i, 0
  br i1 %tobool12.not, label %igb_set_pcie_completion_timeout.exit.do.body36_crit_edge, label %do.body15

igb_set_pcie_completion_timeout.exit.do.body36_crit_edge: ; preds = %igb_set_pcie_completion_timeout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

do.body15:                                        ; preds = %igb_set_pcie_completion_timeout.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_hw_82575, %if.then27)) #5
          to label %do.body36 [label %if.then27], !srcloc !168

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_hw_82575.__UNIQUE_ID_ddebug412, ptr noundef %call28, ptr noundef nonnull @.str.16) #5
  br label %do.body36

do.body36:                                        ; preds = %if.then27, %do.body15, %igb_set_pcie_completion_timeout.exit.do.body36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_hw_82575, %if.then48)) #5
          to label %do.body55 [label %if.then48], !srcloc !168

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  %call49 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_hw_82575.__UNIQUE_ID_ddebug413, ptr noundef %call49, ptr noundef nonnull @.str.10) #5
  br label %do.body55

do.body55:                                        ; preds = %if.then48, %do.body36
  %7 = ptrtoint ptr %hw_addr14.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr14.i, align 4
  %tobool61.not = icmp eq ptr %8, null
  br i1 %tobool61.not, label %do.body55.if.end74_crit_edge, label %do.body71, !prof !160

do.body55.if.end74_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

do.body71:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i8, ptr %8, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 -1) #5, !srcloc !162
  br label %if.end74

if.end74:                                         ; preds = %do.body71, %do.body55.if.end74_crit_edge
  %9 = ptrtoint ptr %hw_addr14.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr14.i, align 4
  %tobool84.not = icmp eq ptr %10, null
  br i1 %tobool84.not, label %if.end74.if.end98_crit_edge, label %do.body94, !prof !160

if.end74.if.end98_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

do.body94:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  call void @arm_heavy_mb() #5
  %arrayidx97 = getelementptr i8, ptr %10, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx97, i32 0) #5, !srcloc !162
  br label %if.end98

if.end98:                                         ; preds = %do.body94, %if.end74.if.end98_crit_edge
  %11 = ptrtoint ptr %hw_addr14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw_addr14.i, align 4
  %tobool108.not = icmp eq ptr %12, null
  br i1 %tobool108.not, label %if.end98.if.end122_crit_edge, label %do.body118, !prof !160

if.end98.if.end122_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

do.body118:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  call void @arm_heavy_mb() #5
  %arrayidx121 = getelementptr i8, ptr %12, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx121, i32 134217728) #5, !srcloc !162
  br label %if.end122

if.end122:                                        ; preds = %do.body118, %if.end98.if.end122_crit_edge
  %call125 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #5
  %call126 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_hw_82575, %if.then140)) #5
          to label %do.body147 [label %if.then140], !srcloc !168

if.then140:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  %call141 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_hw_82575.__UNIQUE_ID_ddebug417, ptr noundef %call141, ptr noundef nonnull @.str.17) #5
  br label %do.body147

do.body147:                                       ; preds = %if.then140, %if.end122
  %13 = ptrtoint ptr %hw_addr14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw_addr14.i, align 4
  %tobool154.not = icmp eq ptr %14, null
  br i1 %tobool154.not, label %do.body147.if.end168_crit_edge, label %do.body164, !prof !160

do.body147.if.end168_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

do.body164:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  call void @arm_heavy_mb() #5
  %or = or i32 %call126, 67108864
  %15 = call i32 @llvm.bswap.i32(i32 %or)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %15) #5, !srcloc !162
  br label %if.end168

if.end168:                                        ; preds = %do.body164, %do.body147.if.end168_crit_edge
  %call171 = call i32 @igb_get_auto_rd_done(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end168.if.end194_crit_edge, label %do.body175

if.end168.if.end194_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

do.body175:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_hw_82575, %if.then187)) #5
          to label %if.end194 [label %if.then187], !srcloc !168

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #7
  %call188 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_hw_82575.__UNIQUE_ID_ddebug419, ptr noundef %call188, ptr noundef nonnull @.str.11) #5
  br label %if.end194

if.end194:                                        ; preds = %if.then187, %do.body175, %if.end168.if.end194_crit_edge
  %call195 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #5
  %and = and i32 %call195, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then196, label %if.end194.do.body199_crit_edge

if.end194.do.body199_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body199

if.then196:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @igb_reset_init_script_82575(ptr noundef %hw)
  br label %do.body199

do.body199:                                       ; preds = %if.then196, %if.end194.do.body199_crit_edge
  %16 = ptrtoint ptr %hw_addr14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw_addr14.i, align 4
  %tobool206.not = icmp eq ptr %17, null
  br i1 %tobool206.not, label %do.body199.if.end220_crit_edge, label %do.body216, !prof !160

do.body199.if.end220_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220

do.body216:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  call void @arm_heavy_mb() #5
  %arrayidx219 = getelementptr i8, ptr %17, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx219, i32 -1) #5, !srcloc !162
  br label %if.end220

if.end220:                                        ; preds = %do.body216, %do.body199.if.end220_crit_edge
  %call223 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 192) #5
  %call224 = call i32 @igb_check_alt_mac_addr(ptr noundef %hw) #5
  ret i32 %call224
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_acquire_swfw_sync_i210(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_release_swfw_sync_i210(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_acquire_swfw_sync_82575(ptr noundef %hw, i16 noundef zeroext %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %mask to i32
  %or = mul nuw i32 %conv, 65537
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %entry
  %i.070 = phi i32 [ 0, %entry ], [ %inc, %if.end6.while.body_crit_edge ]
  %call = tail call i32 @igb_get_hw_semaphore(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %while.body
  %call3 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23388) #5
  %and = and i32 %call3, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end24, label %if.end6

if.end6:                                          ; preds = %if.end
  tail call void @igb_put_hw_semaphore(ptr noundef %hw) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #5
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.body14, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.body14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_acquire_swfw_sync_82575.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_acquire_swfw_sync_82575, %if.then19)) #5
          to label %out [label %if.then19], !srcloc !168

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_acquire_swfw_sync_82575.__UNIQUE_ID_ddebug400, ptr noundef %call20, ptr noundef nonnull @.str.21) #5
  br label %out

if.end24:                                         ; preds = %if.end
  %hw_addr31 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %hw_addr31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr31, align 4
  %tobool32.not = icmp eq ptr %6, null
  br i1 %tobool32.not, label %if.end24.if.end45_crit_edge, label %do.body42, !prof !160

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.body42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %or25 = or i32 %call3, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %arrayidx = getelementptr i8, ptr %6, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %7) #5, !srcloc !162
  br label %if.end45

if.end45:                                         ; preds = %do.body42, %if.end24.if.end45_crit_edge
  tail call void @igb_put_hw_semaphore(ptr noundef %hw) #5
  br label %out

out:                                              ; preds = %if.end45, %if.then19, %do.body14, %while.body.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.end45 ], [ -13, %if.then19 ], [ -13, %do.body14 ], [ -13, %while.body.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_release_swfw_sync_82575(ptr noundef %hw, i16 noundef zeroext %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %call = tail call i32 @igb_get_hw_semaphore(ptr noundef %hw) #5
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23388) #5
  %hw_addr3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %do.body7, !prof !160

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %mask to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %call1, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %1, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #5, !srcloc !162
  br label %if.end

if.end:                                           ; preds = %do.body7, %while.end.if.end_crit_edge
  tail call void @igb_put_hw_semaphore(ptr noundef %hw) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_write_vfta_i350(ptr noundef %hw, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %value)
  %shl = shl i32 %offset, 2
  %add = add i32 %shl, 22016
  %3 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %do.body7, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #5, !srcloc !162
  br label %if.end

if.end:                                           ; preds = %do.body7, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not.1 = icmp eq ptr %6, null
  br i1 %tobool3.not.1, label %if.end.if.end.1_crit_edge, label %do.body7.1, !prof !160

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

do.body7.1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx.1 = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.1, i32 %2) #5, !srcloc !162
  br label %if.end.1

if.end.1:                                         ; preds = %do.body7.1, %if.end.if.end.1_crit_edge
  %7 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not.2 = icmp eq ptr %8, null
  br i1 %tobool3.not.2, label %if.end.1.if.end.2_crit_edge, label %do.body7.2, !prof !160

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2

do.body7.2:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx.2 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.2, i32 %2) #5, !srcloc !162
  br label %if.end.2

if.end.2:                                         ; preds = %do.body7.2, %if.end.1.if.end.2_crit_edge
  %9 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not.3 = icmp eq ptr %10, null
  br i1 %tobool3.not.3, label %if.end.2.if.end.3_crit_edge, label %do.body7.3, !prof !160

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3

do.body7.3:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx.3 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.3, i32 %2) #5, !srcloc !162
  br label %if.end.3

if.end.3:                                         ; preds = %do.body7.3, %if.end.2.if.end.3_crit_edge
  %11 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not.4 = icmp eq ptr %12, null
  br i1 %tobool3.not.4, label %if.end.3.if.end.4_crit_edge, label %do.body7.4, !prof !160

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.4

do.body7.4:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx.4 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.4, i32 %2) #5, !srcloc !162
  br label %if.end.4

if.end.4:                                         ; preds = %do.body7.4, %if.end.3.if.end.4_crit_edge
  %13 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not.5 = icmp eq ptr %14, null
  br i1 %tobool3.not.5, label %if.end.4.if.end.5_crit_edge, label %do.body7.5, !prof !160

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.5

do.body7.5:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx.5 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.5, i32 %2) #5, !srcloc !162
  br label %if.end.5

if.end.5:                                         ; preds = %do.body7.5, %if.end.4.if.end.5_crit_edge
  %15 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not.6 = icmp eq ptr %16, null
  br i1 %tobool3.not.6, label %if.end.5.if.end.6_crit_edge, label %do.body7.6, !prof !160

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.6

do.body7.6:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx.6 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.6, i32 %2) #5, !srcloc !162
  br label %if.end.6

if.end.6:                                         ; preds = %do.body7.6, %if.end.5.if.end.6_crit_edge
  %17 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not.7 = icmp eq ptr %18, null
  br i1 %tobool3.not.7, label %if.end.6.if.end.7_crit_edge, label %do.body7.7, !prof !160

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.7

do.body7.7:                                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx.7 = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.7, i32 %2) #5, !srcloc !162
  br label %if.end.7

if.end.7:                                         ; preds = %do.body7.7, %if.end.6.if.end.7_crit_edge
  %19 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not.8 = icmp eq ptr %20, null
  br i1 %tobool3.not.8, label %if.end.7.if.end.8_crit_edge, label %do.body7.8, !prof !160

if.end.7.if.end.8_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.8

do.body7.8:                                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx.8 = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.8, i32 %2) #5, !srcloc !162
  br label %if.end.8

if.end.8:                                         ; preds = %do.body7.8, %if.end.7.if.end.8_crit_edge
  %21 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool3.not.9 = icmp eq ptr %22, null
  br i1 %tobool3.not.9, label %if.end.8.if.end.9_crit_edge, label %do.body7.9, !prof !160

if.end.8.if.end.9_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.9

do.body7.9:                                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %arrayidx.9 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.9, i32 %2) #5, !srcloc !162
  br label %if.end.9

if.end.9:                                         ; preds = %do.body7.9, %if.end.8.if.end.9_crit_edge
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  %shadow_vfta = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 55
  %23 = ptrtoint ptr %shadow_vfta to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shadow_vfta, align 4
  %arrayidx12 = getelementptr i32, ptr %24, i32 %offset
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %value, ptr %arrayidx12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_write_vfta(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_setup_copper_link_82575(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 0) #5
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = and i32 %call, -6209
  %and = or i32 %or, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 %2) #5, !srcloc !162
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge119
    i32 6, label %if.end.sw.bb_crit_edge120
    i32 7, label %if.end.sw.bb_crit_edge121
  ]

if.end.sw.bb_crit_edge121:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge120:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge119:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge119, %if.end.sw.bb_crit_edge120, %if.end.sw.bb_crit_edge121
  %call11 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3604) #5
  %6 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool20.not = icmp eq ptr %7, null
  br i1 %tobool20.not, label %sw.bb.sw.epilog_crit_edge, label %do.body30, !prof !160

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body30:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %and12 = and i32 %call11, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %and12)
  %arrayidx33 = getelementptr i8, ptr %7, i32 3604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx33, i32 %8) #5, !srcloc !162
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body30, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %call37 = tail call i32 @igb_setup_serdes_link_82575(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end40:                                         ; preds = %sw.epilog
  %dev_spec1.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %9 = ptrtoint ptr %dev_spec1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dev_spec1.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.not = icmp eq i8 %10, 0
  br i1 %tobool.i.not, label %if.end40.if.end67_crit_edge, label %land.lhs.true

if.end40.if.end67_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end40
  %reset_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 23
  %11 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reset_disable, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool42.not = icmp eq i8 %12, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true.if.end67_crit_edge

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then43:                                        ; preds = %land.lhs.true
  tail call void @msleep(i32 noundef 300) #5
  %reset = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 9
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset, align 4
  %call45 = tail call i32 %14(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then43.if.end67_crit_edge, label %do.body49

if.then43.if.end67_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

do.body49:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_copper_link_82575.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_copper_link_82575, %if.then59)) #5
          to label %out [label %if.then59], !srcloc !168

if.then59:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %call60 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_copper_link_82575.__UNIQUE_ID_ddebug429, ptr noundef %call60, ptr noundef nonnull @.str.23) #5
  br label %out

if.end67:                                         ; preds = %if.then43.if.end67_crit_edge, %land.lhs.true.if.end67_crit_edge, %if.end40.if.end67_crit_edge
  %type69 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %type69 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type69, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %16, label %if.end67.out_crit_edge [
    i32 9, label %if.end67.sw.bb70_crit_edge
    i32 2, label %if.end67.sw.bb70_crit_edge122
    i32 6, label %sw.bb77
    i32 8, label %sw.bb79
    i32 10, label %if.end67.if.end86_crit_edge
  ]

if.end67.if.end86_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.end67.sw.bb70_crit_edge122:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb70

if.end67.sw.bb70_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb70

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb70:                                          ; preds = %if.end67.sw.bb70_crit_edge, %if.end67.sw.bb70_crit_edge122
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %19, label %sw.default74 [
    i32 21040576, label %sw.bb70.sw.bb72_crit_edge
    i32 21040272, label %sw.bb70.sw.bb72_crit_edge123
    i32 21040800, label %sw.bb70.sw.bb72_crit_edge124
    i32 21040592, label %sw.bb70.sw.bb72_crit_edge125
    i32 21040128, label %sw.bb70.sw.bb72_crit_edge126
  ]

sw.bb70.sw.bb72_crit_edge126:                     ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

sw.bb70.sw.bb72_crit_edge125:                     ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

sw.bb70.sw.bb72_crit_edge124:                     ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

sw.bb70.sw.bb72_crit_edge123:                     ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

sw.bb70.sw.bb72_crit_edge:                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb72

sw.bb72:                                          ; preds = %sw.bb70.sw.bb72_crit_edge, %sw.bb70.sw.bb72_crit_edge123, %sw.bb70.sw.bb72_crit_edge124, %sw.bb70.sw.bb72_crit_edge125, %sw.bb70.sw.bb72_crit_edge126
  %call73 = tail call i32 @igb_copper_link_setup_m88_gen2(ptr noundef %hw) #5
  br label %sw.epilog83

sw.default74:                                     ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  %call75 = tail call i32 @igb_copper_link_setup_m88(ptr noundef %hw) #5
  br label %sw.epilog83

sw.bb77:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %call78 = tail call i32 @igb_copper_link_setup_igp(ptr noundef %hw) #5
  br label %sw.epilog83

sw.bb79:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %call80 = tail call i32 @igb_copper_link_setup_82580(ptr noundef %hw) #5
  br label %sw.epilog83

sw.epilog83:                                      ; preds = %sw.bb79, %sw.bb77, %sw.default74, %sw.bb72
  %ret_val.0 = phi i32 [ %call80, %sw.bb79 ], [ %call78, %sw.bb77 ], [ %call75, %sw.default74 ], [ %call73, %sw.bb72 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool84.not = icmp eq i32 %ret_val.0, 0
  br i1 %tobool84.not, label %sw.epilog83.if.end86_crit_edge, label %sw.epilog83.out_crit_edge

sw.epilog83.out_crit_edge:                        ; preds = %sw.epilog83
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.epilog83.if.end86_crit_edge:                   ; preds = %sw.epilog83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.end86:                                         ; preds = %sw.epilog83.if.end86_crit_edge, %if.end67.if.end86_crit_edge
  %call87 = tail call i32 @igb_setup_copper_link(ptr noundef %hw) #5
  br label %out

out:                                              ; preds = %if.end86, %sw.epilog83.out_crit_edge, %if.end67.out_crit_edge, %if.then59, %do.body49, %sw.epilog.out_crit_edge
  %ret_val.1 = phi i32 [ %call37, %sw.epilog.out_crit_edge ], [ %ret_val.0, %sw.epilog83.out_crit_edge ], [ %call87, %if.end86 ], [ %call45, %if.then59 ], [ %call45, %do.body49 ], [ -2, %if.end67.out_crit_edge ]
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_setup_serdes_link_82575(ptr noundef %hw) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !183
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %1 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not = icmp eq i32 %2, 3
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %dev_spec1.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %3 = ptrtoint ptr %dev_spec1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dev_spec1.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body.if.end10_crit_edge, label %do.body7, !prof !160

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 262144) #5, !srcloc !162
  br label %if.end10

if.end10:                                         ; preds = %do.body7, %do.body.if.end10_crit_edge
  %call13 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 24) #5
  %7 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool21.not = icmp eq ptr %8, null
  br i1 %tobool21.not, label %if.end10.if.end35_crit_edge, label %do.body31, !prof !160

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.body31:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call13, -33554561
  %or = or i32 %and, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx34 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx34, i32 %9) #5, !srcloc !162
  br label %if.end35

if.end35:                                         ; preds = %do.body31, %if.end10.if.end35_crit_edge
  %call38 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 0) #5
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %or39 = or i32 %call38, 64
  %.off318 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off318)
  %switch319 = icmp ult i32 %.off318, 2
  br i1 %switch319, label %if.then44, label %if.end35.if.end72_crit_edge

if.end35.if.end72_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then44:                                        ; preds = %if.end35
  %or45 = or i32 %call38, 786496
  %call46 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 52) #5
  %12 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool55.not = icmp eq ptr %13, null
  br i1 %tobool55.not, label %if.then44.if.end72_crit_edge, label %do.body65, !prof !160

if.then44.if.end72_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.body65:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %or47 = or i32 %call46, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %arrayidx68 = getelementptr i8, ptr %13, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx68, i32 %14) #5, !srcloc !162
  br label %if.end72

if.end72:                                         ; preds = %do.body65, %if.then44.if.end72_crit_edge, %if.end35.if.end72_crit_edge
  %ctrl_reg.0 = phi i32 [ %or39, %if.end35.if.end72_crit_edge ], [ %or45, %do.body65 ], [ %or45, %if.then44.if.end72_crit_edge ]
  %call73 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16904) #5
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 17
  %15 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %autoneg, align 2, !range !159
  %and76 = and i32 %call13, 12582912
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %extract.t317 = icmp ne i8 %16, 0
  %17 = zext i32 %and76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %and76, label %if.end72.sw.default_crit_edge [
    i32 8388608, label %sw.bb
    i32 4194304, label %sw.bb78
  ]

if.end72.sw.default_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.bb:                                            ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %and77 = and i32 %call73, -262145
  br label %do.body117

sw.bb78:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.default:                                       ; preds = %sw.bb78, %if.end72.sw.default_crit_edge
  %pcs_autoneg.0.off0 = phi i1 [ %extract.t317, %if.end72.sw.default_crit_edge ], [ false, %sw.bb78 ]
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %.off = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then86, label %sw.default.if.end114_crit_edge

sw.default.if.end114_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

if.then86:                                        ; preds = %sw.default
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read, align 4
  %call87 = call i32 %21(ptr noundef %hw, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end109, label %do.body91

do.body91:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_serdes_link_82575, %if.then102)) #5
          to label %cleanup [label %if.then102], !srcloc !168

if.then102:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  %call103 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug433, ptr noundef %call103, ptr noundef nonnull @.str.25) #5
  br label %cleanup

if.end109:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %data, align 2
  %24 = and i16 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool111.not = icmp eq i16 %24, 0
  %spec.select = select i1 %tobool111.not, i1 %pcs_autoneg.0.off0, i1 false
  br label %if.end114

if.end114:                                        ; preds = %if.end109, %sw.default.if.end114_crit_edge
  %pcs_autoneg.1.off0 = phi i1 [ %pcs_autoneg.0.off0, %sw.default.if.end114_crit_edge ], [ %spec.select, %if.end109 ]
  %or115 = or i32 %ctrl_reg.0, 6657
  %or116 = or i32 %call73, 12
  br label %do.body117

do.body117:                                       ; preds = %if.end114, %sw.bb
  %pcs_autoneg.2.off0 = phi i1 [ %pcs_autoneg.1.off0, %if.end114 ], [ true, %sw.bb ]
  %reg.0 = phi i32 [ %or116, %if.end114 ], [ %and77, %sw.bb ]
  %ctrl_reg.1 = phi i32 [ %or115, %if.end114 ], [ %ctrl_reg.0, %sw.bb ]
  %25 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool124.not = icmp eq ptr %26, null
  br i1 %tobool124.not, label %do.body117.if.end138_crit_edge, label %do.body134, !prof !160

do.body117.if.end138_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138

do.body134:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  call void @arm_heavy_mb() #5
  %27 = call i32 @llvm.bswap.i32(i32 %ctrl_reg.1)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %27) #5, !srcloc !162
  br label %if.end138

if.end138:                                        ; preds = %do.body134, %do.body117.if.end138_crit_edge
  br i1 %pcs_autoneg.2.off0, label %if.then143, label %if.else

if.then143:                                       ; preds = %if.end138
  %or144 = and i32 %reg.0, -196786
  %and145 = or i32 %or144, 196608
  %call146 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16920) #5
  %and147 = and i32 %call146, -385
  %requested_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %28 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %requested_mode, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %29, label %if.then143.do.body155_crit_edge [
    i32 3, label %if.then143.sw.bb148_crit_edge
    i32 1, label %if.then143.sw.bb148_crit_edge331
    i32 2, label %sw.bb151
  ]

if.then143.sw.bb148_crit_edge331:                 ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb148

if.then143.sw.bb148_crit_edge:                    ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb148

if.then143.do.body155_crit_edge:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body155

sw.bb148:                                         ; preds = %if.then143.sw.bb148_crit_edge, %if.then143.sw.bb148_crit_edge331
  %or150 = or i32 %call146, 384
  br label %do.body155

sw.bb151:                                         ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #7
  %or152 = or i32 %and147, 256
  br label %do.body155

do.body155:                                       ; preds = %sw.bb151, %sw.bb148, %if.then143.do.body155_crit_edge
  %anadv_reg.0 = phi i32 [ %and147, %if.then143.do.body155_crit_edge ], [ %or152, %sw.bb151 ], [ %or150, %sw.bb148 ]
  %31 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool162.not = icmp eq ptr %32, null
  br i1 %tobool162.not, label %do.body155.if.end176_crit_edge, label %do.body172, !prof !160

do.body155.if.end176_crit_edge:                   ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176

do.body172:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  call void @arm_heavy_mb() #5
  %33 = call i32 @llvm.bswap.i32(i32 %anadv_reg.0)
  %arrayidx175 = getelementptr i8, ptr %32, i32 16920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx175, i32 %33) #5, !srcloc !162
  br label %if.end176

if.end176:                                        ; preds = %do.body172, %do.body155.if.end176_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_serdes_link_82575, %if.then192)) #5
          to label %do.body222 [label %if.then192], !srcloc !168

if.then192:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  %call193 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug436, ptr noundef %call193, ptr noundef nonnull @.str.26, i32 noundef %and145) #5
  br label %do.body222

if.else:                                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #7
  %and141 = and i32 %reg.0, -65714
  %or200 = or i32 %and141, 144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_serdes_link_82575, %if.then214)) #5
          to label %do.body222 [label %if.then214], !srcloc !168

if.then214:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call215 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug437, ptr noundef %call215, ptr noundef nonnull @.str.27, i32 noundef %or200) #5
  br label %do.body222

do.body222:                                       ; preds = %if.then214, %if.else, %if.then192, %if.end176
  %reg.1 = phi i32 [ %and145, %if.then192 ], [ %or200, %if.then214 ], [ %and145, %if.end176 ], [ %or200, %if.else ]
  %34 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool229.not = icmp eq ptr %35, null
  br i1 %tobool229.not, label %do.body222.if.end243_crit_edge, label %do.body239, !prof !160

do.body222.if.end243_crit_edge:                   ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end243

do.body239:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  call void @arm_heavy_mb() #5
  %36 = call i32 @llvm.bswap.i32(i32 %reg.1)
  %arrayidx242 = getelementptr i8, ptr %35, i32 16904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx242, i32 %36) #5, !srcloc !162
  br label %if.end243

if.end243:                                        ; preds = %do.body239, %do.body222.if.end243_crit_edge
  br i1 %pcs_autoneg.2.off0, label %if.end243.cleanup_crit_edge, label %land.lhs.true247

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true247:                                 ; preds = %if.end243
  %dev_spec1.i326 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %37 = ptrtoint ptr %dev_spec1.i326 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dev_spec1.i326, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i327.not = icmp eq i8 %38, 0
  br i1 %tobool.i327.not, label %if.then249, label %land.lhs.true247.cleanup_crit_edge

land.lhs.true247.cleanup_crit_edge:               ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then249:                                       ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #7
  %call250 = call i32 @igb_force_mac_fc(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then249, %land.lhs.true247.cleanup_crit_edge, %if.end243.cleanup_crit_edge, %if.then102, %do.body91, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call87, %if.then102 ], [ 0, %if.then249 ], [ 0, %land.lhs.true247.cleanup_crit_edge ], [ 0, %if.end243.cleanup_crit_edge ], [ %call87, %do.body91 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_disable_pcie_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_auto_rd_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_reset_mdicnfg_82580(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #5
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %nvm_data, align 2
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not = icmp eq i32 %2, 3
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %dev_spec1.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %3 = ptrtoint ptr %dev_spec1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dev_spec1.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end2:                                          ; preds = %if.end
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %5 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read, align 4
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %mul = shl i16 %8, 6
  %phi.bo = add i16 %mul, 100
  %cond = select i1 %tobool.not, i16 36, i16 %phi.bo
  %call8 = call i32 %6(ptr noundef %hw, i16 noundef zeroext %cond, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end21, label %do.body11

do.body11:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_mdicnfg_82580.__UNIQUE_ID_ddebug456, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_mdicnfg_82580, %if.then16)) #5
          to label %out [label %if.then16], !srcloc !168

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_mdicnfg_82580.__UNIQUE_ID_ddebug456, ptr noundef %call17, ptr noundef nonnull @.str.14) #5
  br label %out

if.end21:                                         ; preds = %if.end2
  %call22 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3588) #5
  %9 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nvm_data, align 2
  %hw_addr38 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %hw_addr38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw_addr38, align 4
  %tobool39.not = icmp eq ptr %12, null
  br i1 %tobool39.not, label %if.end21.out_crit_edge, label %do.body49, !prof !160

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body49:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %13 = and i16 %10, 4
  %14 = zext i16 %13 to i32
  %15 = shl nuw i32 %14, 29
  %16 = or i32 %15, %call22
  %17 = and i16 %10, 8
  %18 = zext i16 %17 to i32
  %19 = shl nuw nsw i32 %18, 27
  %20 = or i32 %16, %19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  call void @arm_heavy_mb() #5
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx = getelementptr i8, ptr %12, i32 3588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %21) #5, !srcloc !162
  br label %out

out:                                              ; preds = %do.body49, %if.end21.out_crit_edge, %if.then16, %do.body11, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call8, %if.then16 ], [ 0, %if.end.out_crit_edge ], [ 0, %do.body49 ], [ 0, %if.end21.out_crit_edge ], [ %call8, %do.body11 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #5
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_alt_mac_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igb_reset_init_script_82575(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.body1, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_reset_init_script_82575.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_reset_init_script_82575, %if.then4)) #5
          to label %do.end6 [label %if.then4], !srcloc !168

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_reset_init_script_82575.__UNIQUE_ID_ddebug439, ptr noundef %call5, ptr noundef nonnull @.str.19) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then4, %do.body1
  %call7 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 36, i32 noundef 0, i8 noundef zeroext 12) #5
  %call8 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 36, i32 noundef 1, i8 noundef zeroext 120) #5
  %call9 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 36, i32 noundef 27, i8 noundef zeroext 35) #5
  %call10 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 36, i32 noundef 35, i8 noundef zeroext 21) #5
  %call11 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 23368, i32 noundef 20, i8 noundef zeroext 0) #5
  %call12 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 23368, i32 noundef 16, i8 noundef zeroext 0) #5
  %call13 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 23364, i32 noundef 0, i8 noundef zeroext -20) #5
  %call14 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 23364, i32 noundef 97, i8 noundef zeroext -33) #5
  %call15 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 23364, i32 noundef 52, i8 noundef zeroext 5) #5
  %call16 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 23364, i32 noundef 47, i8 noundef zeroext -127) #5
  %call17 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 23372, i32 noundef 2, i8 noundef zeroext 71) #5
  %call18 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 23372, i32 noundef 20, i8 noundef zeroext 0) #5
  %call19 = tail call i32 @igb_write_8bit_ctrl_reg(ptr noundef %hw, i32 noundef 23372, i32 noundef 16, i8 noundef zeroext 0) #5
  br label %if.end20

if.end20:                                         ; preds = %do.end6, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_pcie_cap_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_pcie_cap_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_8bit_ctrl_reg(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_put_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_copper_link_setup_m88_gen2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_copper_link_setup_m88(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_copper_link_setup_igp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_copper_link_setup_82580(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_copper_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_force_mac_fc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_acquire_nvm_82575(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 8
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @igb_acquire_nvm(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.then3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %release_swfw_sync = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 9
  %2 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %3(ptr noundef %hw, i16 noundef zeroext 1) #5
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_release_nvm_82575(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @igb_release_nvm(ptr noundef %hw) #5
  %release_swfw_sync = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 9
  %0 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %1(ptr noundef %hw, i16 noundef zeroext 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_nvm_spi(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_validate_nvm_checksum(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_update_nvm_checksum(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_nvm_eerd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_nvm_spi(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_validate_nvm_checksum_82580(ptr noundef %hw) #0 align 64 {
entry:
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #5
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_data, align 2, !annotation !183
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call = call i32 %2(ptr noundef %hw, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_validate_nvm_checksum_82580.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_validate_nvm_checksum_82580, %if.then6)) #5
          to label %out [label %if.then6], !srcloc !168

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_validate_nvm_checksum_82580.__UNIQUE_ID_ddebug472, ptr noundef %call7, ptr noundef nonnull @.str.14) #5
  br label %out

if.end10:                                         ; preds = %entry
  %3 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nvm_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool11.not = icmp sgt i16 %4, -1
  %spec.select = select i1 %tobool11.not, i32 1, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %spec.select
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end10
  %indvars.iv = phi i32 [ 0, %if.end10 ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %tobool18.not = icmp eq i32 %indvars.iv, 0
  %indvars.iv.tr = trunc i32 %indvars.iv to i16
  %5 = shl i16 %indvars.iv.tr, 6
  %6 = add i16 %5, 64
  %cond = select i1 %tobool18.not, i16 0, i16 %6
  %call21 = call fastcc i32 @igb_validate_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %for.cond, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.out_crit_edge, %if.then6, %do.body1
  %ret_val.1 = phi i32 [ %call, %if.then6 ], [ %call, %do.body1 ], [ 0, %for.cond.out_crit_edge ], [ %call21, %for.body.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #5
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_update_nvm_checksum_82580(ptr noundef %hw) #0 align 64 {
entry:
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #5
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_data, align 2, !annotation !183
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call = call i32 %2(ptr noundef %hw, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_nvm_checksum_82580.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_nvm_checksum_82580, %if.then6)) #5
          to label %out [label %if.then6], !srcloc !168

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_nvm_checksum_82580.__UNIQUE_ID_ddebug473, ptr noundef %call7, ptr noundef nonnull @.str.32) #5
  br label %out

if.end10:                                         ; preds = %entry
  %3 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nvm_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp = icmp sgt i16 %4, -1
  br i1 %cmp, label %if.then12, label %if.end10.if.end41_crit_edge

if.end10.if.end41_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then12:                                        ; preds = %if.end10
  %or = or i16 %4, -32768
  %5 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %or, ptr %nvm_data, align 2
  %write = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 3
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %call17 = call i32 %7(ptr noundef %hw, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then12.if.end41_crit_edge, label %do.body21

if.then12.if.end41_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.body21:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_nvm_checksum_82580.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_nvm_checksum_82580, %if.then33)) #5
          to label %out [label %if.then33], !srcloc !168

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_nvm_checksum_82580.__UNIQUE_ID_ddebug474, ptr noundef %call34, ptr noundef nonnull @.str.33) #5
  br label %out

if.end41:                                         ; preds = %if.then12.if.end41_crit_edge, %if.end10.if.end41_crit_edge
  %call49 = call fastcc i32 @igb_update_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %for.cond, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond:                                         ; preds = %if.end41
  %call49.1 = call fastcc i32 @igb_update_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.1)
  %tobool50.not.1 = icmp eq i32 %call49.1, 0
  br i1 %tobool50.not.1, label %for.cond.1, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.1:                                       ; preds = %for.cond
  %call49.2 = call fastcc i32 @igb_update_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.2)
  %tobool50.not.2 = icmp eq i32 %call49.2, 0
  br i1 %tobool50.not.2, label %for.cond.2, label %for.cond.1.out_crit_edge

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  %call49.3 = call fastcc i32 @igb_update_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 256)
  br label %out

out:                                              ; preds = %for.cond.2, %for.cond.1.out_crit_edge, %for.cond.out_crit_edge, %if.end41.out_crit_edge, %if.then33, %do.body21, %if.then6, %do.body1
  %ret_val.2 = phi i32 [ %call, %if.then6 ], [ %call17, %if.then33 ], [ %call, %do.body1 ], [ %call17, %do.body21 ], [ %call49, %if.end41.out_crit_edge ], [ %call49.1, %for.cond.out_crit_edge ], [ %call49.2, %for.cond.1.out_crit_edge ], [ %call49.3, %for.cond.2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #5
  ret i32 %ret_val.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_validate_nvm_checksum_i350(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @igb_validate_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %for.cond, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @igb_validate_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp5.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp5.not.1, label %for.cond.1, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call fastcc i32 @igb_validate_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp5.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp5.not.2, label %for.cond.2, label %for.cond.1.out_crit_edge

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.3 = tail call fastcc i32 @igb_validate_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 256)
  br label %out

out:                                              ; preds = %for.cond.2, %for.cond.1.out_crit_edge, %for.cond.out_crit_edge, %entry.out_crit_edge
  %ret_val.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %call.1, %for.cond.out_crit_edge ], [ %call.2, %for.cond.1.out_crit_edge ], [ %call.3, %for.cond.2 ]
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_update_nvm_checksum_i350(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @igb_update_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %for.cond, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @igb_update_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp5.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp5.not.1, label %for.cond.1, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call fastcc i32 @igb_update_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp5.not.2 = icmp eq i32 %call.2, 0
  br i1 %cmp5.not.2, label %for.cond.2, label %for.cond.1.out_crit_edge

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.3 = tail call fastcc i32 @igb_update_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext 256)
  br label %out

out:                                              ; preds = %for.cond.2, %for.cond.1.out_crit_edge, %for.cond.out_crit_edge, %entry.out_crit_edge
  %ret_val.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %call.1, %for.cond.out_crit_edge ], [ %call.2, %for.cond.1.out_crit_edge ], [ %call.3, %for.cond.2 ]
  ret i32 %ret_val.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_acquire_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_release_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_validate_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext %offset) unnamed_addr #0 align 64 {
for.body.lr.ph:
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #5
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_data, align 2, !annotation !183
  %conv1 = zext i16 %offset to i32
  %add2 = add nuw nsw i32 %conv1, 64
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.lr.ph
  %checksum.060 = phi i32 [ 0, %for.body.lr.ph ], [ %phi.cast, %if.end13.for.body_crit_edge ]
  %i.059 = phi i16 [ %offset, %for.body.lr.ph ], [ %inc, %if.end13.for.body_crit_edge ]
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call = call i32 %2(ptr noundef %hw, i16 noundef zeroext %i.059, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end13, label %do.body4

do.body4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_validate_nvm_checksum_with_offset.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_validate_nvm_checksum_with_offset, %if.then9)) #5
          to label %out [label %if.then9], !srcloc !168

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_validate_nvm_checksum_with_offset.__UNIQUE_ID_ddebug468, ptr noundef %call10, ptr noundef nonnull @.str.14) #5
  br label %out

if.end13:                                         ; preds = %for.body
  %3 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nvm_data, align 2
  %conv14 = zext i16 %4 to i32
  %add16 = add nuw nsw i32 %checksum.060, %conv14
  %inc = add i16 %i.059, 1
  %phi.cast = and i32 %add16, 65535
  %conv = zext i16 %inc to i32
  %cmp = icmp ugt i32 %add2, %conv
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %for.end

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 47802, i32 %phi.cast)
  %phi.cmp = icmp eq i32 %phi.cast, 47802
  br i1 %phi.cmp, label %for.end.out_crit_edge, label %do.body23

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_validate_nvm_checksum_with_offset.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_validate_nvm_checksum_with_offset, %if.then35)) #5
          to label %out [label %if.then35], !srcloc !168

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_validate_nvm_checksum_with_offset.__UNIQUE_ID_ddebug469, ptr noundef %call36, ptr noundef nonnull @.str.30) #5
  br label %out

out:                                              ; preds = %if.then35, %do.body23, %for.end.out_crit_edge, %if.then9, %do.body4
  %ret_val.1 = phi i32 [ %call, %if.then9 ], [ 0, %for.end.out_crit_edge ], [ -1, %if.then35 ], [ %call, %do.body4 ], [ -1, %do.body23 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #5
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_update_nvm_checksum_with_offset(ptr noundef %hw, i16 noundef zeroext %offset) unnamed_addr #0 align 64 {
for.body.lr.ph:
  %checksum = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #5
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %checksum, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #5
  %1 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %nvm_data, align 2, !annotation !183
  %conv1 = zext i16 %offset to i32
  %add = add nuw nsw i32 %conv1, 63
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i16 [ %offset, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = call i32 %3(ptr noundef %hw, i16 noundef zeroext %i.067, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12, label %do.body3

do.body3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_nvm_checksum_with_offset.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_nvm_checksum_with_offset, %if.then8)) #5
          to label %out [label %if.then8], !srcloc !168

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_nvm_checksum_with_offset.__UNIQUE_ID_ddebug470, ptr noundef %call9, ptr noundef nonnull @.str.35) #5
  br label %out

if.end12:                                         ; preds = %for.body
  %4 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nvm_data, align 2
  %6 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %checksum, align 2
  %add15 = add i16 %7, %5
  store i16 %add15, ptr %checksum, align 2
  %inc = add i16 %i.067, 1
  %conv = zext i16 %inc to i32
  %cmp = icmp ugt i32 %add, %conv
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end12
  %8 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %checksum, align 2
  %sub = sub i16 -17734, %9
  store i16 %sub, ptr %checksum, align 2
  %write = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 3
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %conv23 = trunc i32 %add to i16
  %call24 = call i32 %11(ptr noundef %hw, i16 noundef zeroext %conv23, i16 noundef zeroext 1, ptr noundef nonnull %checksum) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.end.out_crit_edge, label %do.body28

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_nvm_checksum_with_offset.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_nvm_checksum_with_offset, %if.then40)) #5
          to label %out [label %if.then40], !srcloc !168

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_nvm_checksum_with_offset.__UNIQUE_ID_ddebug471, ptr noundef %call41, ptr noundef nonnull @.str.36) #5
  br label %out

out:                                              ; preds = %if.then40, %do.body28, %for.end.out_crit_edge, %if.then8, %do.body3
  %ret_val.0 = phi i32 [ %call, %if.then8 ], [ %call24, %if.then40 ], [ 0, %for.end.out_crit_edge ], [ %call, %do.body3 ], [ %call24, %do.body28 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #5
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_phy_hw_reset_sgmii_82575(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_hw_reset_sgmii_82575.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_hw_reset_sgmii_82575, %if.then)) #5
          to label %do.end7 [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_hw_reset_sgmii_82575.__UNIQUE_ID_ddebug397, ptr noundef %call5, ptr noundef nonnull @.str.38) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg, align 4
  %call9 = tail call i32 %1(ptr noundef %hw, i32 noundef 27, i16 noundef zeroext -32636) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end7.out_crit_edge

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12:                                         ; preds = %do.end7
  %call13 = tail call i32 @igb_phy_sw_reset(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end16:                                         ; preds = %if.end12
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040592, i32 %3)
  %cmp = icmp eq i32 %3, 21040592
  br i1 %cmp, label %if.then17, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 @igb_initialize_M88E1512_phy(ptr noundef %hw) #5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %id, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end16.if.end19_crit_edge
  %5 = phi i32 [ %.pr, %if.then17 ], [ %3, %if.end16.if.end19_crit_edge ]
  %ret_val.0 = phi i32 [ %call18, %if.then17 ], [ 0, %if.end16.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040800, i32 %5)
  %cmp21 = icmp eq i32 %5, 21040800
  br i1 %cmp21, label %if.then22, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 @igb_initialize_M88E1543_phy(ptr noundef %hw) #5
  br label %out

out:                                              ; preds = %if.then22, %if.end19.out_crit_edge, %if.end12.out_crit_edge, %do.end7.out_crit_edge
  %ret_val.1 = phi i32 [ %call9, %do.end7.out_crit_edge ], [ %call13, %if.end12.out_crit_edge ], [ %call23, %if.then22 ], [ %ret_val.0, %if.end19.out_crit_edge ]
  ret i32 %ret_val.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_hw_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_read_phy_reg_sgmii_82575(ptr noundef %hw, i32 noundef %offset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp = icmp ugt i32 %offset, 255
  br i1 %cmp, label %do.body1, label %if.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_phy_reg_sgmii_82575.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_phy_reg_sgmii_82575, %if.then4)) #5
          to label %out [label %if.then4], !srcloc !168

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_phy_reg_sgmii_82575.__UNIQUE_ID_ddebug391, ptr noundef %call5, ptr noundef nonnull @.str.40, i32 noundef %offset) #5
  br label %out

if.end8:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call9 = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @igb_read_phy_reg_i2c(ptr noundef %hw, i32 noundef %offset, ptr noundef %data) #5
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 8
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %out

out:                                              ; preds = %if.end12, %if.end8.out_crit_edge, %if.then4, %do.body1
  %ret_val.0 = phi i32 [ -4, %if.then4 ], [ %call9, %if.end8.out_crit_edge ], [ %call13, %if.end12 ], [ -4, %do.body1 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_write_phy_reg_sgmii_82575(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %offset)
  %cmp = icmp ugt i32 %offset, 255
  br i1 %cmp, label %do.body1, label %if.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_phy_reg_sgmii_82575.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_phy_reg_sgmii_82575, %if.then4)) #5
          to label %out [label %if.then4], !srcloc !168

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_phy_reg_sgmii_82575.__UNIQUE_ID_ddebug392, ptr noundef %call5, ptr noundef nonnull @.str.42, i32 noundef %offset) #5
  br label %out

if.end8:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call9 = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @igb_write_phy_reg_i2c(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) #5
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 8
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %out

out:                                              ; preds = %if.end12, %if.end8.out_crit_edge, %if.then4, %do.body1
  %ret_val.0 = phi i32 [ -4, %if.then4 ], [ %call9, %if.end8.out_crit_edge ], [ %call13, %if.end12 ], [ -4, %do.body1 ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_igp(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_phy_reg_igp(ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_get_phy_id_82575(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %phy_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_id) #5
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_id, align 2, !annotation !183
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @igb_get_phy_id(ptr noundef %hw) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev_spec1.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %3 = ptrtoint ptr %dev_spec1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dev_spec1.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 8
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %addr, align 4
  %call4 = tail call i32 @igb_get_phy_id(ptr noundef %hw) #5
  br label %out

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 7
  br i1 %8, label %switch.lookup, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

switch.lookup:                                    ; preds = %if.end5
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.igb_get_phy_id_82575, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call3.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %switch.load) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %extract.t.i = icmp slt i32 %call3.i, 0
  br i1 %extract.t.i, label %if.then7, label %switch.lookup.if.end18_crit_edge

switch.lookup.if.end18_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then7:                                         ; preds = %switch.lookup
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %switch.tableidx162 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx162)
  %12 = icmp ult i32 %switch.tableidx162, 7
  br i1 %12, label %switch.lookup161, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

switch.lookup161:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep163 = getelementptr inbounds [7 x i32], ptr @switch.table.igb_get_phy_id_82575.61, i32 0, i32 %switch.tableidx162
  %13 = ptrtoint ptr %switch.gep163 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load164 = load i32, ptr %switch.gep163, align 4
  %call13 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %switch.load164) #5
  %and14 = lshr i32 %call13, 21
  %shr15 = and i32 %and14, 31
  %addr16 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 8
  %14 = ptrtoint ptr %addr16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr15, ptr %addr16, align 4
  %call17 = tail call i32 @igb_get_phy_id(ptr noundef %hw) #5
  br label %out

if.end18:                                         ; preds = %switch.lookup.if.end18_crit_edge, %if.end5.if.end18_crit_edge
  %call19 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 24) #5
  %hw_addr21 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %hw_addr21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr21, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end18.if.end30_crit_edge, label %do.body26, !prof !160

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  tail call void @arm_heavy_mb() #5
  %and29 = and i32 %call19, -129
  %17 = tail call i32 @llvm.bswap.i32(i32 %and29)
  %arrayidx = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %17) #5, !srcloc !162
  br label %if.end30

if.end30:                                         ; preds = %do.body26, %if.end18.if.end30_crit_edge
  %call33 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  tail call void @msleep(i32 noundef 300) #5
  %addr34 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 8
  %phy.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %18 = ptrtoint ptr %addr34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %addr34, align 4
  %release.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30
  %19 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy.i, align 4
  %call9.i = call i32 %20(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %igb_read_phy_reg_sgmii_82575.exit, label %for.body.do.body65_crit_edge

for.body.do.body65_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

igb_read_phy_reg_sgmii_82575.exit:                ; preds = %for.body
  %call13.i = call i32 @igb_read_phy_reg_i2c(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %phy_id) #5
  %21 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release.i, align 4
  call void %22(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp38 = icmp eq i32 %call13.i, 0
  br i1 %cmp38, label %do.body41, label %igb_read_phy_reg_sgmii_82575.exit.do.body65_crit_edge

igb_read_phy_reg_sgmii_82575.exit.do.body65_crit_edge: ; preds = %igb_read_phy_reg_sgmii_82575.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

do.body41:                                        ; preds = %igb_read_phy_reg_sgmii_82575.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_phy_id_82575.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_phy_id_82575, %if.then51)) #5
          to label %do.end58 [label %if.then51], !srcloc !168

if.then51:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  %23 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %phy_id, align 2
  %conv = zext i16 %24 to i32
  %25 = ptrtoint ptr %addr34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr34, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_phy_id_82575.__UNIQUE_ID_ddebug394, ptr noundef %call52, ptr noundef nonnull @.str.44, i32 noundef %conv, i32 noundef %26) #5
  br label %do.end58

do.end58:                                         ; preds = %if.then51, %do.body41
  %27 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %phy_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 321, i16 %28)
  %cmp60 = icmp eq i16 %28, 321
  br i1 %cmp60, label %for.endthread-pre-split, label %do.end58.for.inc_crit_edge

do.end58.for.inc_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body65:                                        ; preds = %igb_read_phy_reg_sgmii_82575.exit.do.body65_crit_edge, %for.body.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_phy_id_82575.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_phy_id_82575, %if.then77)) #5
          to label %for.inc [label %if.then77], !srcloc !168

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  %call78 = call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  %29 = ptrtoint ptr %addr34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr34, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_phy_id_82575.__UNIQUE_ID_ddebug395, ptr noundef %call78, ptr noundef nonnull @.str.45, i32 noundef %30) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then77, %do.body65, %do.end58.for.inc_crit_edge
  %31 = ptrtoint ptr %addr34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr34, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %addr34, align 4
  %cmp36 = icmp ult i32 %inc, 8
  br i1 %cmp36, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.endthread-pre-split:                          ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %addr34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %addr34, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %for.inc.for.end_crit_edge
  %34 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %inc, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %34)
  %cmp88 = icmp eq i32 %34, 8
  br i1 %cmp88, label %if.then90, label %if.else92

if.then90:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %addr34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %addr34, align 4
  br label %out

if.else92:                                        ; preds = %for.end
  %call93 = call i32 @igb_get_phy_id(ptr noundef %hw) #5
  %36 = ptrtoint ptr %hw_addr21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %hw_addr21, align 4
  %tobool102.not = icmp eq ptr %37, null
  br i1 %tobool102.not, label %if.else92.out_crit_edge, label %do.body112, !prof !160

if.else92.out_crit_edge:                          ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body112:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  call void @arm_heavy_mb() #5
  %38 = call i32 @llvm.bswap.i32(i32 %call19)
  %arrayidx115 = getelementptr i8, ptr %37, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx115, i32 %38) #5, !srcloc !162
  br label %out

out:                                              ; preds = %do.body112, %if.else92.out_crit_edge, %if.then90, %switch.lookup161, %if.then7.out_crit_edge, %if.then3
  %ret_val.0 = phi i32 [ %call17, %switch.lookup161 ], [ -2, %if.then90 ], [ %call4, %if.then3 ], [ -2, %if.then7.out_crit_edge ], [ %call93, %do.body112 ], [ %call93, %if.else92.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id) #5
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_polarity_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_phy_info_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cable_length_m88_gen2(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cable_length_m88(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_force_speed_duplex_m88(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_check_for_link_media_swap(ptr noundef %hw) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !183
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %1 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %2(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call3 = call i32 %4(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data, align 2
  %7 = trunc i16 %6 to i8
  %8 = lshr i8 %7, 2
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  %call12 = call i32 %11(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 4
  %call18 = call i32 %13(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data, align 2
  %16 = and i16 %15, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool24.not = icmp eq i16 %16, 0
  %spec.select89 = select i1 %tobool24.not, i8 %9, i8 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select89)
  %cond = icmp eq i8 %spec.select89, 0
  br i1 %cond, label %if.end21.if.else_crit_edge, label %land.lhs.true

if.end21.if.else_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end21
  %media_port = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 6
  %17 = ptrtoint ptr %media_port to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %media_port, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %spec.select89)
  %cmp.not = icmp eq i8 %18, %spec.select89
  br i1 %cmp.not, label %land.lhs.true.if.end36_crit_edge, label %if.then32

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %media_port to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select89, ptr %media_port, align 2
  %media_changed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 7
  %20 = ptrtoint ptr %media_changed to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %media_changed, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %land.lhs.true.if.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %spec.select89)
  %cmp38 = icmp eq i8 %spec.select89, 1
  br i1 %cmp38, label %if.then40, label %if.end36.if.else_crit_edge

if.end36.if.else_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then40:                                        ; preds = %if.end36
  %21 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg, align 4
  %call43 = call i32 %22(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = call i32 @igb_check_for_link_82575(ptr noundef %hw)
  br label %if.end55

if.else:                                          ; preds = %if.end36.if.else_crit_edge, %if.end21.if.else_crit_edge
  %call48 = call i32 @igb_check_for_link_82575(ptr noundef %hw)
  %23 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg, align 4
  %call51 = call i32 %24(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.else.if.end55_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.end55:                                         ; preds = %if.else.if.end55_crit_edge, %if.end46
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.else.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call12, %if.end6.cleanup_crit_edge ], [ %call18, %if.end15.cleanup_crit_edge ], [ %call43, %if.then40.cleanup_crit_edge ], [ %call51, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_initialize_M88E1512_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_initialize_M88E1543_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_phy_info_igp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cable_length_igp_2(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_force_speed_duplex_igp(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_d0_lplu_state_82575(ptr noundef %hw, i1 noundef zeroext %active) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !183
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 25, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  br i1 %active, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = or i16 %4, 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %data, align 2
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %call6 = call i32 %8(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then3.out_crit_edge

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg, align 4
  %call12 = call i32 %10(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data, align 2
  %13 = and i16 %12, -129
  store i16 %13, ptr %data, align 2
  br label %out.sink.split

if.else:                                          ; preds = %if.end
  %14 = and i16 %4, -3
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %data, align 2
  %write_reg25 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %16 = ptrtoint ptr %write_reg25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg25, align 4
  %call26 = call i32 %17(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext %14) #5
  %smart_speed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 7
  %18 = ptrtoint ptr %smart_speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smart_speed, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %19, label %if.else.out_crit_edge [
    i32 1, label %if.then28
    i32 2, label %if.then48
  ]

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then28:                                        ; preds = %if.else
  %21 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg, align 4
  %call31 = call i32 %22(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data, align 2
  %25 = or i16 %24, 128
  store i16 %25, ptr %data, align 2
  br label %out.sink.split

if.then48:                                        ; preds = %if.else
  %26 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg, align 4
  %call51 = call i32 %27(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then48.out_crit_edge

if.then48.out_crit_edge:                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end54:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data, align 2
  %30 = and i16 %29, -129
  store i16 %30, ptr %data, align 2
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end54, %if.end34, %if.end9
  %write_reg25.sink = phi ptr [ %write_reg25, %if.end54 ], [ %write_reg25, %if.end34 ], [ %write_reg, %if.end9 ]
  %.sink = phi i16 [ %30, %if.end54 ], [ %25, %if.end34 ], [ %13, %if.end9 ]
  %31 = ptrtoint ptr %write_reg25.sink to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg25.sink, align 4
  %call60 = call i32 %32(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %.sink) #5
  br label %out

out:                                              ; preds = %out.sink.split, %if.then48.out_crit_edge, %if.then28.out_crit_edge, %if.else.out_crit_edge, %if.then3.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call6, %if.then3.out_crit_edge ], [ %call31, %if.then28.out_crit_edge ], [ %call51, %if.then48.out_crit_edge ], [ %call26, %if.else.out_crit_edge ], [ %call60, %out.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_set_d3_lplu_state(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_force_speed_duplex_82580(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cable_length_82580(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_phy_info_82580(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_d0_lplu_state_82580(ptr noundef %hw, i1 noundef zeroext %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3604) #5
  %0 = trunc i32 %call to i16
  br i1 %active, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = and i16 %0, -4
  %conv5 = or i16 %1, 2
  br label %do.body

if.else:                                          ; preds = %entry
  %conv8 = and i16 %0, -3
  %smart_speed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %smart_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smart_speed, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %3, label %if.else.do.body_crit_edge [
    i32 1, label %if.then10
    i32 2, label %if.then18
  ]

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %5 = or i16 %conv8, 1
  br label %do.body

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv21 = and i16 %0, -4
  br label %do.body

do.body:                                          ; preds = %if.then18, %if.then10, %if.else.do.body_crit_edge, %if.then
  %data.0 = phi i16 [ %conv5, %if.then ], [ %5, %if.then10 ], [ %conv21, %if.then18 ], [ %conv8, %if.else.do.body_crit_edge ]
  %hw_addr25 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr25, align 4
  %tobool26.not = icmp eq ptr %7, null
  br i1 %tobool26.not, label %do.body.if.end35_crit_edge, label %do.body31, !prof !160

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.body31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void @arm_heavy_mb() #5
  %conv34 = zext i16 %data.0 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv34)
  %arrayidx = getelementptr i8, ptr %7, i32 3604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %8) #5, !srcloc !162
  br label %if.end35

if.end35:                                         ; preds = %do.body31, %do.body.if.end35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_set_d3_lplu_state_82580(ptr noundef %hw, i1 noundef zeroext %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3604) #5
  %conv = trunc i32 %call to i16
  br i1 %active, label %if.else16, label %if.then

if.then:                                          ; preds = %entry
  %conv3 = and i16 %conv, -5
  %smart_speed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 7
  %0 = ptrtoint ptr %smart_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smart_speed, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %1, label %if.then.do.body_crit_edge [
    i32 1, label %if.then5
    i32 2, label %if.then11
  ]

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %3 = or i16 %conv3, 1
  br label %do.body

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %conv14 = and i16 %conv, -6
  br label %do.body

if.else16:                                        ; preds = %entry
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 13
  %4 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %autoneg_advertised, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %5, label %if.else16.do.body_crit_edge [
    i16 47, label %if.else16.if.then29_crit_edge
    i16 15, label %if.else16.if.then29_crit_edge64
    i16 3, label %if.else16.if.then29_crit_edge65
  ]

if.else16.if.then29_crit_edge65:                  ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.else16.if.then29_crit_edge64:                  ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.else16.if.then29_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.else16.do.body_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then29:                                        ; preds = %if.else16.if.then29_crit_edge, %if.else16.if.then29_crit_edge64, %if.else16.if.then29_crit_edge65
  %7 = and i16 %conv, -6
  %conv35 = or i16 %7, 4
  br label %do.body

do.body:                                          ; preds = %if.then29, %if.else16.do.body_crit_edge, %if.then11, %if.then5, %if.then.do.body_crit_edge
  %data.0 = phi i16 [ %conv35, %if.then29 ], [ %3, %if.then5 ], [ %conv14, %if.then11 ], [ %conv3, %if.then.do.body_crit_edge ], [ %conv, %if.else16.do.body_crit_edge ]
  %hw_addr39 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %hw_addr39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr39, align 4
  %tobool40.not = icmp eq ptr %9, null
  br i1 %tobool40.not, label %do.body.if.end49_crit_edge, label %do.body45, !prof !160

do.body.if.end49_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.body45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %conv48 = zext i16 %data.0 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv48)
  %arrayidx = getelementptr i8, ptr %9, i32 3604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %10) #5, !srcloc !162
  br label %if.end49

if.end49:                                         ; preds = %do.body45, %do.body.if.end49_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_cfg_done_i210(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_sw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_i2c(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_phy_reg_i2c(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_phy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_check_for_link_82575(ptr noundef %hw) #0 align 64 {
entry:
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #5
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @igb_get_pcs_speed_and_duplex_82575(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %duplex)
  %serdes_has_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 24
  %2 = ptrtoint ptr %serdes_has_link to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %serdes_has_link, align 1, !range !159
  %get_link_status = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 20
  %4 = xor i8 %3, 1
  %5 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %get_link_status, align 1
  %call2 = tail call i32 @igb_config_fc_after_link_up(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end18_crit_edge, label %do.body5

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_check_for_link_82575.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_check_for_link_82575, %if.then12)) #5
          to label %if.end18 [label %if.then12], !srcloc !168

if.then12:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_check_for_link_82575.__UNIQUE_ID_ddebug404, ptr noundef %call13, ptr noundef nonnull @.str.47) #5
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 @igb_check_for_copper_link(ptr noundef %hw) #5
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then12, %do.body5, %if.then.if.end18_crit_edge
  %ret_val.0 = phi i32 [ %call2, %if.then12 ], [ 0, %if.then.if.end18_crit_edge ], [ %call17, %if.else ], [ %call2, %do.body5 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #5
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igb_get_pcs_speed_and_duplex_82575(ptr noundef %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %duplex) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %serdes_has_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 24
  %0 = ptrtoint ptr %serdes_has_link to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %serdes_has_link, align 1
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %speed, align 2
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %duplex, align 2
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16908) #5
  %3 = and i32 %call, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %.not = icmp eq i32 %3, 17
  br i1 %.not, label %if.then, label %entry.if.end58_crit_edge

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %serdes_has_link to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %serdes_has_link, align 1
  %and5 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and8 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %.7 = select i1 %tobool9.not, i16 10, i16 100
  %.sink = select i1 %tobool6.not, i16 %.7, i16 1000
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %.sink, ptr %speed, align 2
  %and13 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %. = select i1 %tobool14.not, i16 1, i16 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %., ptr %duplex, align 2
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp = icmp eq i32 %8, 5
  br i1 %cmp, label %if.then18, label %if.then.if.end58_crit_edge

if.then.if.end58_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then18:                                        ; preds = %if.then
  %call19 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #5
  %9 = and i32 %call19, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %9)
  %10 = icmp eq i32 %9, 4096
  br i1 %10, label %if.then25, label %if.then18.if.end58_crit_edge

if.then18.if.end58_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then25:                                        ; preds = %if.then18
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2500, ptr %speed, align 2
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %duplex, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_pcs_speed_and_duplex_82575.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_pcs_speed_and_duplex_82575, %if.then31)) #5
          to label %do.body37 [label %if.then31], !srcloc !168

if.then31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_pcs_speed_and_duplex_82575.__UNIQUE_ID_ddebug407, ptr noundef %call32, ptr noundef nonnull @.str.49) #5
  br label %do.body37

do.body37:                                        ; preds = %if.then31, %if.then25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_pcs_speed_and_duplex_82575.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_pcs_speed_and_duplex_82575, %if.then49)) #5
          to label %if.end58 [label %if.then49], !srcloc !168

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_pcs_speed_and_duplex_82575.__UNIQUE_ID_ddebug408, ptr noundef %call50, ptr noundef nonnull @.str.50) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %do.body37, %if.then18.if.end58_crit_edge, %if.then.if.end58_crit_edge, %entry.if.end58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_config_fc_after_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_for_copper_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_init_hw_82575(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 12
  %0 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rar_entry_count, align 4
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ugt i32 %3, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @igb_get_flash_presence_i210(ptr noundef %hw) #5
  br i1 %call, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @igb_pll_workaround_i210(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @igb_id_led_init(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.do.body21_crit_edge, label %do.body9

if.end5.do.body21_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

do.body9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_init_hw_82575.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_init_hw_82575, %if.then14)) #5
          to label %do.body21 [label %if.then14], !srcloc !168

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_init_hw_82575.__UNIQUE_ID_ddebug421, ptr noundef %call15, ptr noundef nonnull @.str.52) #5
  br label %do.body21

do.body21:                                        ; preds = %if.then14, %do.body9, %if.end5.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_init_hw_82575.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_init_hw_82575, %if.then33)) #5
          to label %do.end39 [label %if.then33], !srcloc !168

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_init_hw_82575.__UNIQUE_ID_ddebug422, ptr noundef %call34, ptr noundef nonnull @.str.53) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %do.body21
  tail call void @igb_clear_vfta(ptr noundef %hw) #5
  tail call void @igb_init_rx_addrs(ptr noundef %hw, i16 noundef zeroext %1) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_init_hw_82575.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_init_hw_82575, %if.then53)) #5
          to label %do.end59 [label %if.then53], !srcloc !168

if.then53:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  %call54 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_init_hw_82575.__UNIQUE_ID_ddebug423, ptr noundef %call54, ptr noundef nonnull @.str.54) #5
  br label %do.end59

do.end59:                                         ; preds = %if.then53, %do.end39
  %mta_reg_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 9
  %4 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mta_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp61185.not = icmp eq i16 %5, 0
  br i1 %cmp61185.not, label %do.end59.do.body87_crit_edge, label %do.body63.lr.ph

do.end59.do.body87_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

do.body63.lr.ph:                                  ; preds = %do.end59
  %hw_addr68 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %do.body63

do.body63:                                        ; preds = %if.end83.do.body63_crit_edge, %do.body63.lr.ph
  %indvars.iv = phi i32 [ 0, %do.body63.lr.ph ], [ %indvars.iv.next, %if.end83.do.body63_crit_edge ]
  %6 = ptrtoint ptr %hw_addr68 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr68, align 4
  %tobool69.not = icmp eq ptr %7, null
  br i1 %tobool69.not, label %do.body63.if.end83_crit_edge, label %do.body79, !prof !160

do.body63.if.end83_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

do.body79:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  tail call void @arm_heavy_mb() #5
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %shl, 20992
  %arrayidx = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #5, !srcloc !162
  br label %if.end83

if.end83:                                         ; preds = %do.body79, %do.body63.if.end83_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %8 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mta_reg_count, align 4
  %10 = zext i16 %9 to i32
  %cmp61 = icmp ult i32 %indvars.iv.next, %10
  br i1 %cmp61, label %if.end83.do.body63_crit_edge, label %if.end83.do.body87_crit_edge

if.end83.do.body87_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

if.end83.do.body63_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body63

do.body87:                                        ; preds = %if.end83.do.body87_crit_edge, %do.end59.do.body87_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_init_hw_82575.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_init_hw_82575, %if.then99)) #5
          to label %do.end105 [label %if.then99], !srcloc !168

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %call100 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_init_hw_82575.__UNIQUE_ID_ddebug425, ptr noundef %call100, ptr noundef nonnull @.str.55) #5
  br label %do.end105

do.end105:                                        ; preds = %if.then99, %do.body87
  %uta_reg_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 10
  %11 = ptrtoint ptr %uta_reg_count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %uta_reg_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp109188.not = icmp eq i16 %12, 0
  br i1 %cmp109188.not, label %do.end105.for.end141_crit_edge, label %do.body112.lr.ph

do.end105.for.end141_crit_edge:                   ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end141

do.body112.lr.ph:                                 ; preds = %do.end105
  %hw_addr118 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %do.body112

do.body112:                                       ; preds = %if.end136.do.body112_crit_edge, %do.body112.lr.ph
  %indvars.iv191 = phi i32 [ 0, %do.body112.lr.ph ], [ %indvars.iv.next192, %if.end136.do.body112_crit_edge ]
  %13 = ptrtoint ptr %hw_addr118 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw_addr118, align 4
  %tobool119.not = icmp eq ptr %14, null
  br i1 %tobool119.not, label %do.body112.if.end136_crit_edge, label %do.body129, !prof !160

do.body112.if.end136_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

do.body129:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  tail call void @arm_heavy_mb() #5
  %shl133 = shl nuw nsw i32 %indvars.iv191, 2
  %add134 = add nuw nsw i32 %shl133, 40960
  %arrayidx135 = getelementptr i8, ptr %14, i32 %add134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx135, i32 0) #5, !srcloc !162
  br label %if.end136

if.end136:                                        ; preds = %do.body129, %do.body112.if.end136_crit_edge
  %indvars.iv.next192 = add nuw nsw i32 %indvars.iv191, 1
  %15 = ptrtoint ptr %uta_reg_count to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %uta_reg_count, align 2
  %17 = zext i16 %16 to i32
  %cmp109 = icmp ult i32 %indvars.iv.next192, %17
  br i1 %cmp109, label %if.end136.do.body112_crit_edge, label %if.end136.for.end141_crit_edge

if.end136.for.end141_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end141

if.end136.do.body112_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body112

for.end141:                                       ; preds = %if.end136.for.end141_crit_edge, %do.end105.for.end141_crit_edge
  %call142 = tail call i32 @igb_setup_link(ptr noundef %hw) #5
  tail call void @igb_clear_hw_cntrs_base(ptr noundef %hw) #5
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16476) #5
  %call1.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16480) #5
  %call2.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16484) #5
  %call3.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16488) #5
  %call4.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16492) #5
  %call5.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16496) #5
  %call6.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16600) #5
  %call7.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16604) #5
  %call8.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16608) #5
  %call9.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16612) #5
  %call10.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16616) #5
  %call11.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16620) #5
  %call12.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16388) #5
  %call13.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16396) #5
  %call14.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16436) #5
  %call15.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16444) #5
  %call16.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16632) #5
  %call17.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16636) #5
  %call18.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16564) #5
  %call19.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16568) #5
  %call20.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16572) #5
  %call21.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16640) #5
  %call22.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16676) #5
  %call23.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16644) #5
  %call24.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16648) #5
  %call25.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16652) #5
  %call26.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16656) #5
  %call27.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16664) #5
  %call28.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16668) #5
  %call29.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16672) #5
  %call30.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16428) #5
  %call31.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16444) #5
  %call32.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16636) #5
  %call33.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16644) #5
  %call34.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16664) #5
  %call35.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16676) #5
  %call36.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16680) #5
  %call37.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16684) #5
  %call38.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16688) #5
  %call39.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16692) #5
  %call40.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16696) #5
  %media_type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %18 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp.i = icmp eq i32 %19, 3
  br i1 %cmp.i, label %for.end141.if.then.i_crit_edge, label %lor.lhs.false.i

for.end141.if.then.i_crit_edge:                   ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.end141
  %dev_spec1.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11
  %20 = ptrtoint ptr %dev_spec1.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dev_spec1.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i.not.i = icmp eq i8 %21, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.end141.if.then.i_crit_edge
  %call42.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16936) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.lhs.false.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then.cleanup_crit_edge ], [ %call142, %lor.lhs.false.i.cleanup_crit_edge ], [ %call142, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_rar_set(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_read_mac_addr_82575(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_check_alt_mac_addr(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @igb_read_mac_addr(ptr noundef %hw) #5
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_link_up_info_82575(ptr noundef %hw, ptr noundef %speed, ptr noundef %duplex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @igb_get_pcs_speed_and_duplex_82575(ptr noundef %hw, ptr noundef %speed, ptr noundef %duplex)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @igb_get_speed_and_duplex_copper(ptr noundef %hw, ptr noundef %speed, ptr noundef %duplex) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret_val.0 = phi i32 [ 0, %if.then ], [ %call1, %if.else ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_thermal_sensor_data_generic(ptr noundef %hw) #0 align 64 {
entry:
  %ets_offset = alloca i16, align 2
  %ets_cfg = alloca i16, align 2
  %ets_sensor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_offset) #5
  %0 = ptrtoint ptr %ets_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ets_offset, align 2, !annotation !183
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_cfg) #5
  %1 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ets_cfg, align 2, !annotation !183
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_sensor) #5
  %2 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ets_sensor, align 2, !annotation !183
  %thermal_sensor_data = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 26
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.not = icmp eq i32 %4, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %5 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp2.not = icmp eq i16 %6, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 33024) #5
  %conv4 = trunc i32 %call to i8
  %temp = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 26, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %temp, align 1
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %call5 = call i32 %9(ptr noundef %hw, i16 noundef zeroext 62, i16 noundef zeroext 1, ptr noundef nonnull %ets_offset) #5
  %10 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ets_offset, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %11, label %if.end14 [
    i16 0, label %if.end.cleanup_crit_edge
    i16 -1, label %if.end.cleanup_crit_edge90
  ]

if.end.cleanup_crit_edge90:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %13 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read, align 4
  %call18 = call i32 %14(ptr noundef %hw, i16 noundef zeroext %11, i16 noundef zeroext 1, ptr noundef nonnull %ets_cfg) #5
  %15 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ets_cfg, align 2
  %17 = and i16 %16, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp21.not = icmp eq i16 %17, 0
  br i1 %cmp21.not, label %if.end24, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %18 = trunc i16 %16 to i8
  %conv27 = and i8 %18, 7
  %19 = call i8 @llvm.umin.i8(i8 %conv27, i8 3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp3587 = icmp ugt i8 %19, 1
  br i1 %cmp3587, label %for.body.lr.ph, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end24
  %read_i2c_byte = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 13
  %wide.trip.count = zext i8 %19 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read, align 4
  %22 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ets_offset, align 2
  %24 = trunc i32 %indvars.iv to i16
  %conv42 = add i16 %23, %24
  %call43 = call i32 %21(ptr noundef %hw, i16 noundef zeroext %conv42, i16 noundef zeroext 1, ptr noundef nonnull %ets_sensor) #5
  %25 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ets_sensor, align 2
  %27 = and i16 %26, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp53.not = icmp eq i16 %27, 0
  br i1 %cmp53.not, label %for.body.for.inc_crit_edge, label %if.then55

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then55:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and45 = lshr i16 %26, 8
  %28 = and i16 %and45, 3
  %conv47 = zext i16 %28 to i32
  %29 = ptrtoint ptr %read_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_i2c_byte, align 4
  %arrayidx57 = getelementptr [4 x i8], ptr @e1000_emc_temp_data, i32 0, i32 %conv47
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx57, align 1
  %temp61 = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %thermal_sensor_data, i32 0, i32 %indvars.iv, i32 1
  %call62 = call i32 %30(ptr noundef %hw, i8 noundef zeroext %32, i8 noundef zeroext -8, ptr noundef %temp61) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge90, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 14, %lor.lhs.false.cleanup_crit_edge ], [ 14, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge90 ], [ 14, %if.end14.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_sensor) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_cfg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_offset) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_init_thermal_sensor_thresh_generic(ptr noundef %hw) #0 align 64 {
entry:
  %ets_offset = alloca i16, align 2
  %ets_cfg = alloca i16, align 2
  %ets_sensor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_offset) #5
  %0 = ptrtoint ptr %ets_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ets_offset, align 2, !annotation !183
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_cfg) #5
  %1 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ets_cfg, align 2, !annotation !183
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ets_sensor) #5
  %2 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ets_sensor, align 2, !annotation !183
  %thermal_sensor_data = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 26
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.not = icmp eq i32 %4, 4
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %5 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp2.not = icmp eq i16 %6, 0
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 26, i32 0, i32 0, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 11)
  %9 = ptrtoint ptr %thermal_sensor_data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %thermal_sensor_data, align 1
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 33036) #5
  %conv4 = trunc i32 %call to i8
  %caution_thresh = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 26, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %caution_thresh to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4, ptr %caution_thresh, align 1
  %call7 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 33028) #5
  %conv9 = trunc i32 %call7 to i8
  %max_op_thresh = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 26, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %max_op_thresh to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %max_op_thresh, align 1
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read, align 4
  %call12 = call i32 %13(ptr noundef %hw, i16 noundef zeroext 62, i16 noundef zeroext 1, ptr noundef nonnull %ets_offset) #5
  %14 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ets_offset, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %15, label %if.end21 [
    i16 0, label %if.end.cleanup_crit_edge
    i16 -1, label %if.end.cleanup_crit_edge126
  ]

if.end.cleanup_crit_edge126:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %17 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read, align 4
  %call25 = call i32 %18(ptr noundef %hw, i16 noundef zeroext %15, i16 noundef zeroext 1, ptr noundef nonnull %ets_cfg) #5
  %19 = ptrtoint ptr %ets_cfg to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ets_cfg, align 2
  %21 = and i16 %20, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp28.not = icmp eq i16 %21, 0
  br i1 %cmp28.not, label %if.end31, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %and33 = lshr i16 %20, 6
  %22 = trunc i16 %and33 to i8
  %conv35 = and i8 %22, 31
  %23 = and i16 %20, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp41.not123 = icmp eq i16 %23, 0
  br i1 %cmp41.not123, label %if.end31.cleanup_crit_edge, label %for.body.lr.ph

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end31
  %write_i2c_byte = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 14
  %24 = add nuw nsw i16 %23, 1
  %wide.trip.count = zext i16 %24 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %25 = phi i16 [ 1, %for.body.lr.ph ], [ %41, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read, align 4
  %28 = ptrtoint ptr %ets_offset to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ets_offset, align 2
  %conv48 = add i16 %29, %25
  %call49 = call i32 %27(ptr noundef %hw, i16 noundef zeroext %conv48, i16 noundef zeroext 1, ptr noundef nonnull %ets_sensor) #5
  %30 = ptrtoint ptr %ets_sensor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ets_sensor, align 2
  %and51 = lshr i16 %31, 8
  %32 = and i16 %and51, 3
  %conv53 = zext i16 %32 to i32
  %and55 = lshr i16 %31, 10
  %33 = trunc i16 %and55 to i8
  %conv57 = and i8 %33, 15
  %conv60 = trunc i16 %31 to i8
  %34 = ptrtoint ptr %write_i2c_byte to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_i2c_byte, align 4
  %arrayidx62 = getelementptr [4 x i8], ptr @e1000_emc_therm_limit, i32 0, i32 %conv53
  %36 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx62, align 1
  %call63 = call i32 %35(ptr noundef %hw, i8 noundef zeroext %37, i8 noundef zeroext -8, i8 noundef zeroext %conv60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp65 = icmp ugt i32 %indvars.iv, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv57)
  %cmp68.not = icmp eq i8 %conv57, 0
  %or.cond = select i1 %cmp65, i1 true, i1 %cmp68.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then70

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then70:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx73 = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %thermal_sensor_data, i32 0, i32 %indvars.iv
  %38 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv57, ptr %arrayidx73, align 1
  %caution_thresh78 = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %thermal_sensor_data, i32 0, i32 %indvars.iv, i32 2
  %39 = ptrtoint ptr %caution_thresh78 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv60, ptr %caution_thresh78, align 1
  %sub = sub i8 %conv60, %conv35
  %max_op_thresh85 = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %thermal_sensor_data, i32 0, i32 %indvars.iv, i32 3
  %40 = ptrtoint ptr %max_op_thresh85 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %sub, ptr %max_op_thresh85, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then70, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %41 = trunc i32 %indvars.iv.next to i16
  %exitcond = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge126, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 14, %lor.lhs.false.cleanup_crit_edge ], [ 14, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge126 ], [ 14, %if.end21.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_sensor) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_cfg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ets_offset) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_get_flash_presence_i210(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_pll_workaround_i210(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_id_led_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_clear_vfta(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_init_rx_addrs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_clear_hw_cntrs_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_mac_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_speed_and_duplex_copper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_acquire_phy_82575(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func, align 4
  %switch.tableidx = add i16 %1, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %2 = icmp ult i16 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.igb_acquire_phy_82575, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %if.end16

if.end16:                                         ; preds = %switch.lookup, %entry.if.end16_crit_edge
  %mask.0 = phi i16 [ %switch.load, %switch.lookup ], [ 2, %entry.if.end16_crit_edge ]
  %acquire_swfw_sync = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 8
  %5 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %6(ptr noundef %hw, i16 noundef zeroext %mask.0) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_get_cfg_done_82575(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func, align 4
  %switch.tableidx = add i16 %1, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %2 = icmp ult i16 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.igb_get_cfg_done_82575, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end16

if.end16:                                         ; preds = %switch.lookup, %entry.if.end16_crit_edge
  %mask.0 = phi i32 [ %switch.load, %switch.lookup ], [ 262144, %entry.if.end16_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %if.end16
  %timeout.052 = phi i32 [ 100, %if.end16 ], [ %dec, %if.end19.while.body_crit_edge ]
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 4112) #5
  %and = and i32 %call, %mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end19, label %while.body.if.end32_crit_edge

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end19:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %dec = add nsw i32 %timeout.052, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body22.critedge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.body22.critedge:                               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_cfg_done_82575.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_cfg_done_82575, %if.then27)) #5
          to label %if.end32 [label %if.then27], !srcloc !168

if.then27:                                        ; preds = %do.body22.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_cfg_done_82575.__UNIQUE_ID_ddebug403, ptr noundef %call28, ptr noundef nonnull @.str.57) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %do.body22.critedge, %while.body.if.end32_crit_edge
  %call33 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #5
  %and34 = and i32 %call33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35 = icmp eq i32 %and34, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end32
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp37 = icmp eq i32 %6, 6
  br i1 %cmp37, label %if.then39, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 @igb_phy_init_script_igp3(ptr noundef %hw) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_release_phy_82575(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func, align 4
  %switch.tableidx = add i16 %1, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %2 = icmp ult i16 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.igb_release_phy_82575, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %if.end16

if.end16:                                         ; preds = %switch.lookup, %entry.if.end16_crit_edge
  %mask.0 = phi i16 [ %switch.load, %switch.lookup ], [ 2, %entry.if.end16_crit_edge ]
  %release_swfw_sync = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 9
  %5 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %6(ptr noundef %hw, i16 noundef zeroext %mask.0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_i2c_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_i2c_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_init_script_igp3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !127, !128, !129, !131, !132, !134, !135, !137, !138, !140, !142, !144, !146, !147, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1976, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igb_rx_fifo_flush_82575.__UNIQUE_ID_ddebug442, !1, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2627, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @igb_set_eee_i350.__UNIQUE_ID_ddebug475, !7, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!10 = !{ptr @e1000_82575_info, !11, !"e1000_82575_info", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2921, i32 25}
!12 = !{ptr @e1000_82580_rxpbs_table, !13, !"e1000_82580_rxpbs_table", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 52, i32 18}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 541, i32 4}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @igb_set_sfp_media_type_82575.__UNIQUE_ID_ddebug388, !15, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2274, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @igb_reset_hw_82580.__UNIQUE_ID_ddebug458, !19, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2276, i32 2}
!24 = !{ptr @igb_reset_hw_82580.__UNIQUE_ID_ddebug459, !23, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2308, i32 3}
!27 = !{ptr @igb_reset_hw_82580.__UNIQUE_ID_ddebug464, !26, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2320, i32 3}
!30 = !{ptr @igb_reset_hw_82580.__UNIQUE_ID_ddebug467, !29, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2229, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @igb_reset_mdicnfg_82580.__UNIQUE_ID_ddebug456, !32, !"__UNIQUE_ID_ddebug456", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1461, i32 3}
!37 = !{ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug411, !36, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1466, i32 3}
!40 = !{ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug412, !39, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!41 = !{ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug413, !42, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1468, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1479, i32 2}
!45 = !{ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug417, !44, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!46 = !{ptr @igb_reset_hw_82575.__UNIQUE_ID_ddebug419, !47, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1488, i32 3}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1811, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @igb_reset_init_script_82575.__UNIQUE_ID_ddebug439, !49, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1184, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @igb_acquire_swfw_sync_82575.__UNIQUE_ID_ddebug400, !53, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1603, i32 4}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @igb_setup_copper_link_82575.__UNIQUE_ID_ddebug429, !57, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1713, i32 5}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug433, !61, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1768, i32 3}
!66 = !{ptr @igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug436, !65, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1776, i32 3}
!69 = !{ptr @igb_setup_serdes_link_82575.__UNIQUE_ID_ddebug437, !68, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2438, i32 3}
!72 = !{ptr @igb_validate_nvm_checksum_82580.__UNIQUE_ID_ddebug472, !71, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2371, i32 4}
!75 = !{ptr @igb_validate_nvm_checksum_with_offset.__UNIQUE_ID_ddebug468, !74, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2378, i32 3}
!78 = !{ptr @igb_validate_nvm_checksum_with_offset.__UNIQUE_ID_ddebug469, !77, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2477, i32 3}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @igb_update_nvm_checksum_82580.__UNIQUE_ID_ddebug473, !80, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2487, i32 4}
!85 = !{ptr @igb_update_nvm_checksum_82580.__UNIQUE_ID_ddebug474, !84, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2406, i32 4}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @igb_update_nvm_checksum_with_offset.__UNIQUE_ID_ddebug470, !87, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2415, i32 3}
!92 = !{ptr @igb_update_nvm_checksum_with_offset.__UNIQUE_ID_ddebug471, !91, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 927, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @igb_phy_hw_reset_sgmii_82575.__UNIQUE_ID_ddebug397, !94, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 768, i32 3}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @igb_read_phy_reg_sgmii_82575.__UNIQUE_ID_ddebug391, !98, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 800, i32 3}
!103 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @igb_write_phy_reg_sgmii_82575.__UNIQUE_ID_ddebug392, !102, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 884, i32 4}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @igb_get_phy_id_82575.__UNIQUE_ID_ddebug394, !106, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 892, i32 4}
!111 = !{ptr @igb_get_phy_id_82575.__UNIQUE_ID_ddebug395, !110, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1312, i32 4}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @igb_check_for_link_82575.__UNIQUE_ID_ddebug404, !113, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1402, i32 5}
!118 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @igb_get_pcs_speed_and_duplex_82575.__UNIQUE_ID_ddebug407, !117, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1403, i32 5}
!122 = !{ptr @igb_get_pcs_speed_and_duplex_82575.__UNIQUE_ID_ddebug408, !121, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!123 = !{ptr @e1000_mac_ops_82575, !124, !"e1000_mac_ops_82575", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2894, i32 36}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1527, i32 3}
!127 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @igb_init_hw_82575.__UNIQUE_ID_ddebug421, !126, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1532, i32 2}
!131 = !{ptr @igb_init_hw_82575.__UNIQUE_ID_ddebug422, !130, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1539, i32 2}
!134 = !{ptr @igb_init_hw_82575.__UNIQUE_ID_ddebug423, !133, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1544, i32 2}
!137 = !{ptr @igb_init_hw_82575.__UNIQUE_ID_ddebug425, !136, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!138 = !{ptr @e1000_emc_temp_data, !139, !"e1000_emc_temp_data", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2760, i32 17}
!140 = !{ptr @e1000_emc_therm_limit, !141, !"e1000_emc_therm_limit", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2766, i32 17}
!142 = !{ptr @e1000_phy_ops_82575, !143, !"e1000_phy_ops_82575", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2906, i32 42}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 1249, i32 3}
!146 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @igb_get_cfg_done_82575.__UNIQUE_ID_ddebug403, !145, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!148 = !{ptr @e1000_nvm_ops_82575, !149, !"e1000_nvm_ops_82575", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/intel/igb/e1000_82575.c", i32 2914, i32 36}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i8 0, i8 2}
!160 = !{!"branch_weights", i32 1, i32 2000}
!161 = !{i64 2158145206}
!162 = !{i64 6102811}
!163 = !{i64 2158148738}
!164 = !{i64 2158156981}
!165 = !{i64 2158160513}
!166 = !{i64 2158257847}
!167 = !{i64 2158261845}
!168 = !{i64 2148909310, i64 2148909315, i64 2148909328, i64 2148909372, i64 2148909406, i64 2148909427}
!169 = !{i64 2158268191}
!170 = !{i64 2158271759}
!171 = !{i64 2158275319}
!172 = !{i64 2158278871}
!173 = !{i64 2158282710}
!174 = !{i64 2158286288}
!175 = !{i64 2158289843}
!176 = !{i64 2158293338}
!177 = !{i64 2158300774}
!178 = !{i64 2158304484}
!179 = !{i64 2158308188}
!180 = !{i64 2158311892}
!181 = !{i64 2158377570}
!182 = !{i64 2158381062}
!183 = !{!"auto-init"}
!184 = !{i64 2158098041}
!185 = !{i64 2158083760}
!186 = !{i64 2158087972}
!187 = !{i64 2158094127}
!188 = !{i64 2158326341}
!189 = !{i64 2158329843}
!190 = !{i64 2158333347}
!191 = !{i64 2158336987}
!192 = !{i64 2158343020}
!193 = !{i64 2158346540}
!194 = !{i64 2158297034}
!195 = !{i64 2158171563}
!196 = !{i64 2158175065}
!197 = !{i64 2158178569}
!198 = !{i64 2158184652}
!199 = !{i64 2158190697}
!200 = !{i64 2158132983}
!201 = !{i64 2158136534}
!202 = !{i64 2158079773}
!203 = !{i64 2158215126}
!204 = !{i64 2158218657}
!205 = !{i64 2158224619}
!206 = !{i64 2158228181}
!207 = !{i64 2158231790}
!208 = !{i64 2158237975}
!209 = !{i64 2158241619}
!210 = !{i64 2158250202}
!211 = !{i64 2158317833}
!212 = !{i64 2158106762}
!213 = !{i64 2158115472}
!214 = !{i64 2158121638}
!215 = !{i64 2158125524}
!216 = !{i64 2158205629}
!217 = !{i64 2158211545}
