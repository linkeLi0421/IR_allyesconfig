; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_addr_filter_info, %struct.ixgbe_fc_info, %struct.ixgbe_phy_info, %struct.ixgbe_link_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_bus_info, %struct.ixgbe_mbx_info, ptr, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, i32, [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.ixgbe_thermal_sensor_data, i8, i8 }
%struct.ixgbe_thermal_sensor_data = type { [3 x %struct.ixgbe_thermal_diode_data] }
%struct.ixgbe_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.ixgbe_addr_filter_info = type { i32, i32, i32, i32, i8, i8 }
%struct.ixgbe_fc_info = type { [8 x i32], [8 x i32], i16, i8, i8, i8, i8, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.ixgbe_phy_operations, %struct.mdio_if_info, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ixgbe_link_info = type { %struct.ixgbe_link_operations, i8 }
%struct.ixgbe_link_operations = type { ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_info = type { %struct.ixgbe_eeprom_operations, i32, i32, i16, i16, i16, i16 }
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

@ixgbe_reset_hw_X540.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ixgbe\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ixgbe_reset_hw_X540\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"semaphore failed with %d\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ixgbe_reset_hw_X540.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Reset polling failed to complete.\0A\00", [61 x i8] zeroinitializer }, align 32
@ixgbe_init_eeprom_params_X540.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ixgbe_init_eeprom_params_X540\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Eeprom params: type = %d, size = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mac_ops_X540 = internal constant { %struct.ixgbe_mac_operations, [80 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbe_init_hw_generic, ptr @ixgbe_reset_hw_X540, ptr @ixgbe_start_hw_X540, ptr @ixgbe_clear_hw_cntrs_generic, ptr @ixgbe_get_media_type_X540, ptr @ixgbe_get_mac_addr_generic, ptr @ixgbe_get_san_mac_addr_generic, ptr @ixgbe_get_device_caps_generic, ptr @ixgbe_get_wwn_prefix_generic, ptr @ixgbe_stop_adapter_generic, ptr @ixgbe_get_bus_info_generic, ptr @ixgbe_set_lan_id_multi_port_pcie, ptr null, ptr null, ptr null, ptr @ixgbe_disable_rx_buff_generic, ptr @ixgbe_enable_rx_buff_generic, ptr @ixgbe_enable_rx_dma_generic, ptr @ixgbe_acquire_swfw_sync_X540, ptr @ixgbe_release_swfw_sync_X540, ptr @ixgbe_init_swfw_sync_X540, ptr @prot_autoc_read_generic, ptr @prot_autoc_write_generic, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_setup_mac_link_X540, ptr null, ptr @ixgbe_check_mac_link_generic, ptr @ixgbe_get_copper_link_capabilities_generic, ptr null, ptr @ixgbe_set_rxpba_generic, ptr @ixgbe_led_on_generic, ptr @ixgbe_led_off_generic, ptr @ixgbe_blink_led_start_X540, ptr @ixgbe_blink_led_stop_X540, ptr @ixgbe_init_led_link_act_generic, ptr @ixgbe_set_rar_generic, ptr @ixgbe_clear_rar_generic, ptr @ixgbe_set_vmdq_generic, ptr @ixgbe_set_vmdq_san_mac_generic, ptr @ixgbe_clear_vmdq_generic, ptr @ixgbe_init_rx_addrs_generic, ptr @ixgbe_update_mc_addr_list_generic, ptr @ixgbe_enable_mc_generic, ptr @ixgbe_disable_mc_generic, ptr @ixgbe_clear_vfta_generic, ptr @ixgbe_set_vfta_generic, ptr @ixgbe_init_uta_tables_generic, ptr @ixgbe_set_mac_anti_spoofing, ptr @ixgbe_set_vlan_anti_spoofing, ptr @ixgbe_fc_enable_generic, ptr @ixgbe_setup_fc_generic, ptr @ixgbe_fc_autoneg, ptr @ixgbe_set_fw_drv_ver_generic, ptr null, ptr null, ptr null, ptr @ixgbe_disable_rx_generic, ptr @ixgbe_enable_rx_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@eeprom_ops_X540 = internal constant { %struct.ixgbe_eeprom_operations, [32 x i8] } { %struct.ixgbe_eeprom_operations { ptr @ixgbe_init_eeprom_params_X540, ptr @ixgbe_read_eerd_X540, ptr @ixgbe_read_eerd_buffer_X540, ptr @ixgbe_write_eewr_X540, ptr @ixgbe_write_eewr_buffer_X540, ptr @ixgbe_validate_eeprom_checksum_X540, ptr @ixgbe_update_eeprom_checksum_X540, ptr @ixgbe_calc_eeprom_checksum_X540 }, [32 x i8] zeroinitializer }, align 32
@phy_ops_X540 = internal constant { %struct.ixgbe_phy_operations, [36 x i8] } { %struct.ixgbe_phy_operations { ptr @ixgbe_identify_phy_generic, ptr @ixgbe_identify_sfp_module_generic, ptr null, ptr null, ptr @ixgbe_read_phy_reg_generic, ptr @ixgbe_write_phy_reg_generic, ptr null, ptr null, ptr @ixgbe_setup_phy_link_generic, ptr null, ptr @ixgbe_setup_phy_link_speed_generic, ptr null, ptr @ixgbe_read_i2c_byte_generic, ptr @ixgbe_write_i2c_byte_generic, ptr @ixgbe_read_i2c_sff8472_generic, ptr @ixgbe_read_i2c_eeprom_generic, ptr @ixgbe_write_i2c_eeprom_generic, ptr @ixgbe_tn_check_overtemp, ptr @ixgbe_set_copper_phy_power, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mbx_ops_generic = external dso_local constant %struct.ixgbe_mbx_operations, align 4
@ixgbe_mvals_X540 = internal constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 65552, i32 65564, i32 66048, i32 65872, i32 65856, i32 65888, i32 65864, i32 2, i32 4, i32 8, i32 33554432, i32 67108864, i32 134217728, i32 69768, i32 69772, i32 1, i32 2, i32 4, i32 8, i32 0, i32 0, i32 0, i32 40], [36 x i8] zeroinitializer }, align 32
@ixgbe_X540_info = dso_local constant { %struct.ixgbe_info, [32 x i8] } { %struct.ixgbe_info { i32 3, ptr @ixgbe_get_invariants_X540, ptr @mac_ops_X540, ptr @eeprom_ops_X540, ptr @phy_ops_X540, ptr @mbx_ops_generic, ptr null, ptr @ixgbe_mvals_X540 }, [32 x i8] zeroinitializer }, align 32
@ixgbe_get_swfw_sync_semaphore.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ixgbe_get_swfw_sync_semaphore\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Software semaphore SMBI between device drivers not granted.\0A\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_get_swfw_sync_semaphore.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"REGSMP Software NVM semaphore not granted\0A\00", [53 x i8] zeroinitializer }, align 32
@ixgbe_validate_eeprom_checksum_X540.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ixgbe_validate_eeprom_checksum_X540\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EEPROM read failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_validate_eeprom_checksum_X540.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid EEPROM checksum\00", [40 x i8] zeroinitializer }, align 32
@ixgbe_update_eeprom_checksum_X540.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.11, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgbe_update_eeprom_checksum_X540\00", [62 x i8] zeroinitializer }, align 32
@ixgbe_update_flash_X540.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_update_flash_X540\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flash update time out\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_update_flash_X540.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flash update complete\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_update_flash_X540.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_update_flash_X540.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_update_flash_X540.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.11, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixgbe_calc_eeprom_checksum_X540\00", [32 x i8] zeroinitializer }, align 32
@ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.11, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.11, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.11, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 86, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 107, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 203, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"mac_ops_X540\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 824, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"eeprom_ops_X540\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 881, i32 45 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"phy_ops_X540\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 892, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"ixgbe_mvals_X540\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 910, i32 18 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"ixgbe_X540_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 914, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 681, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 698, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 395, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 420, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 453, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 494, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 503, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [49 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 326, i32 4 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mac_ops_X540, ptr @eeprom_ops_X540, ptr @phy_ops_X540, ptr @ixgbe_mvals_X540, ptr @ixgbe_X540_info, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_X540 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_ops_X540 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops_X540 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_mvals_X540 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_X540_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ixgbe_get_media_type_X540(ptr nocapture readnone %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_get_invariants_X540(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %set_phy_power = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 18
  %0 = ptrtoint ptr %set_phy_power to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ixgbe_set_copper_phy_power, ptr %set_phy_power, align 4
  %mcft_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 10
  %1 = ptrtoint ptr %mcft_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 128, ptr %mcft_size, align 4
  %vft_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %vft_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %vft_size, align 4
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %3 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %num_rar_entries, align 4
  %rx_pb_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 14
  %4 = ptrtoint ptr %rx_pb_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 384, ptr %rx_pb_size, align 4
  %max_rx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 16
  %5 = ptrtoint ptr %max_rx_queues to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %max_rx_queues, align 4
  %max_tx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 15
  %6 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 128, ptr %max_tx_queues, align 4
  %call = tail call zeroext i16 @ixgbe_get_pcie_msix_count_generic(ptr noundef %hw) #5
  %max_msix_vectors = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 7
  %7 = ptrtoint ptr %max_msix_vectors to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call, ptr %max_msix_vectors, align 2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_copper_phy_power(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ixgbe_get_pcie_msix_count_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_setup_mac_link_X540(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_link_speed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %0 = ptrtoint ptr %setup_link_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup_link_speed, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_reset_hw_X540(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_semaphore_mask = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %phy_semaphore_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_semaphore_mask, align 4
  %stop_adapter = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 9
  %2 = ptrtoint ptr %stop_adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_adapter, align 4
  %call = tail call i32 %3(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ixgbe_clear_tx_pending(ptr noundef %hw) #5
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %4 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire_swfw_sync, align 4
  %call3166 = tail call i32 %5(ptr noundef %hw, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3166)
  %tobool4.not167 = icmp eq i32 %call3166, 0
  br i1 %tobool4.not167, label %if.end15.lr.ph, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.end15.lr.ph:                                   ; preds = %if.end
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %back41 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %flags = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 21
  br label %if.end15

do.body6:                                         ; preds = %if.then52.do.body6_crit_edge, %if.end.do.body6_crit_edge
  %call3.lcssa = phi i32 [ %call3166, %if.end.do.body6_crit_edge ], [ %call3, %if.then52.do.body6_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_hw_X540.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_hw_X540, %if.then11)) #5
          to label %cleanup [label %if.then11], !srcloc !71

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_hw_X540.__UNIQUE_ID_ddebug357, ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %call3.lcssa) #5
  br label %cleanup

if.end15:                                         ; preds = %if.then52.if.end15_crit_edge, %if.end15.lr.ph
  %call16 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end15.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end15.ixgbe_write_reg.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call16, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %12) #5, !srcloc !73
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end15.ixgbe_write_reg.exit_crit_edge
  %call17 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #5
  %13 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %14(ptr noundef %hw, i32 noundef %1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #5
  %call20 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and = and i32 %call20, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %ixgbe_write_reg.exit.if.end48_crit_edge, label %if.end23

ixgbe_write_reg.exit.if.end48_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end23:                                         ; preds = %ixgbe_write_reg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #5
  %call20.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and.1 = and i32 %call20.1, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool21.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool21.not.1, label %if.end23.if.end48_crit_edge, label %if.end23.1

if.end23.if.end48_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end23.1:                                       ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %call20.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and.2 = and i32 %call20.2, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool21.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool21.not.2, label %if.end23.1.if.end48_crit_edge, label %if.end23.2

if.end23.1.if.end48_crit_edge:                    ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end23.2:                                       ; preds = %if.end23.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #5
  %call20.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and.3 = and i32 %call20.3, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool21.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool21.not.3, label %if.end23.2.if.end48_crit_edge, label %if.end23.3

if.end23.2.if.end48_crit_edge:                    ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end23.3:                                       ; preds = %if.end23.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #5
  %call20.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and.4 = and i32 %call20.4, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool21.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool21.not.4, label %if.end23.3.if.end48_crit_edge, label %if.end23.4

if.end23.3.if.end48_crit_edge:                    ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end23.4:                                       ; preds = %if.end23.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #5
  %call20.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and.5 = and i32 %call20.5, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool21.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool21.not.5, label %if.end23.4.if.end48_crit_edge, label %if.end23.5

if.end23.4.if.end48_crit_edge:                    ; preds = %if.end23.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end23.5:                                       ; preds = %if.end23.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #5
  %call20.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and.6 = and i32 %call20.6, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool21.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool21.not.6, label %if.end23.5.if.end48_crit_edge, label %if.end23.6

if.end23.5.if.end48_crit_edge:                    ; preds = %if.end23.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end23.6:                                       ; preds = %if.end23.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #5
  %call20.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and.7 = and i32 %call20.7, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool21.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool21.not.7, label %if.end23.6.if.end48_crit_edge, label %if.end23.7

if.end23.6.if.end48_crit_edge:                    ; preds = %if.end23.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end23.7:                                       ; preds = %if.end23.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #5
  %call20.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and.8 = and i32 %call20.8, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool21.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool21.not.8, label %if.end23.7.if.end48_crit_edge, label %if.end23.8

if.end23.7.if.end48_crit_edge:                    ; preds = %if.end23.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end23.8:                                       ; preds = %if.end23.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #5
  %call20.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #5
  %and.9 = and i32 %call20.9, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool21.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool21.not.9, label %if.end23.8.if.end48_crit_edge, label %if.then26

if.end23.8.if.end48_crit_edge:                    ; preds = %if.end23.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then26:                                        ; preds = %if.end23.8
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_hw_X540.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_hw_X540, %if.then40)) #5
          to label %if.end48 [label %if.then40], !srcloc !71

if.then40:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %back41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %back41, align 4
  %netdev42 = getelementptr inbounds %struct.ixgbe_adapter, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %netdev42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev42, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_hw_X540.__UNIQUE_ID_ddebug358, ptr noundef %28, ptr noundef nonnull @.str.4) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then40, %if.then26, %if.end23.8.if.end48_crit_edge, %if.end23.7.if.end48_crit_edge, %if.end23.6.if.end48_crit_edge, %if.end23.5.if.end48_crit_edge, %if.end23.4.if.end48_crit_edge, %if.end23.3.if.end48_crit_edge, %if.end23.2.if.end48_crit_edge, %if.end23.1.if.end48_crit_edge, %if.end23.if.end48_crit_edge, %ixgbe_write_reg.exit.if.end48_crit_edge
  %status.0 = phi i32 [ -15, %if.then40 ], [ -15, %if.then26 ], [ 0, %if.end23.8.if.end48_crit_edge ], [ 0, %if.end23.7.if.end48_crit_edge ], [ 0, %if.end23.6.if.end48_crit_edge ], [ 0, %if.end23.5.if.end48_crit_edge ], [ 0, %if.end23.4.if.end48_crit_edge ], [ 0, %if.end23.3.if.end48_crit_edge ], [ 0, %if.end23.2.if.end48_crit_edge ], [ 0, %if.end23.1.if.end48_crit_edge ], [ 0, %if.end23.if.end48_crit_edge ], [ 0, %ixgbe_write_reg.exit.if.end48_crit_edge ]
  tail call void @msleep(i32 noundef 100) #5
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 2
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool51.not = icmp eq i8 %31, 0
  br i1 %tobool51.not, label %if.end58, label %if.then52

if.then52:                                        ; preds = %if.end48
  %and56 = and i8 %30, -2
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %and56, ptr %flags, align 2
  %33 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %acquire_swfw_sync, align 4
  %call3 = tail call i32 %34(ptr noundef %hw, i32 noundef %1) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then52.if.end15_crit_edge, label %if.then52.do.body6_crit_edge

if.then52.do.body6_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.then52.if.end15_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end58:                                         ; preds = %if.end48
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i159 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i159, label %if.end58.ixgbe_write_reg.exit161_crit_edge, label %do.body1.i160

if.end58.ixgbe_write_reg.exit161_crit_edge:       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit161

do.body1.i160:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %36, i32 15360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1536) #5, !srcloc !73
  br label %ixgbe_write_reg.exit161

ixgbe_write_reg.exit161:                          ; preds = %do.body1.i160, %if.end58.ixgbe_write_reg.exit161_crit_edge
  %get_mac_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 5
  %37 = ptrtoint ptr %get_mac_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_mac_addr, align 4
  %perm_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 3
  %call62 = tail call i32 %38(ptr noundef %hw, ptr noundef %perm_addr) #5
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %39 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 128, ptr %num_rar_entries, align 4
  %init_rx_addrs = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 43
  %40 = ptrtoint ptr %init_rx_addrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_rx_addrs, align 4
  %call66 = tail call i32 %41(ptr noundef %hw) #5
  %get_san_mac_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 6
  %42 = ptrtoint ptr %get_san_mac_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_san_mac_addr, align 4
  %san_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 4
  %call71 = tail call i32 %43(ptr noundef %hw, ptr noundef %san_addr) #5
  %44 = ptrtoint ptr %san_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %san_addr, align 4
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i = icmp eq i32 %46, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %ixgbe_write_reg.exit161.if.end98_crit_edge

ixgbe_write_reg.exit161.if.end98_crit_edge:       ; preds = %ixgbe_write_reg.exit161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

is_valid_ether_addr.exit:                         ; preds = %ixgbe_write_reg.exit161
  %add.ptr.i.i = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 4, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %48 to i32
  %or.i.i = or i32 %45, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end98_crit_edge, label %if.then76

is_valid_ether_addr.exit.if.end98_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then76:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_rar_entries, align 4
  %51 = trunc i32 %50 to i8
  %conv79 = add i8 %51, -1
  %san_mac_rar_index = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 22
  %52 = ptrtoint ptr %san_mac_rar_index to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv79, ptr %san_mac_rar_index, align 1
  %set_rar = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 38
  %53 = ptrtoint ptr %set_rar to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_rar, align 4
  %conv85 = zext i8 %conv79 to i32
  %call89 = tail call i32 %54(ptr noundef %hw, i32 noundef %conv85, ptr noundef %san_addr, i32 noundef 0, i32 noundef -2147483648) #5
  %clear_vmdq = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 42
  %55 = ptrtoint ptr %clear_vmdq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clear_vmdq, align 4
  %57 = ptrtoint ptr %san_mac_rar_index to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %san_mac_rar_index, align 1
  %conv94 = zext i8 %58 to i32
  %call95 = tail call i32 %56(ptr noundef %hw, i32 noundef %conv94, i32 noundef -1) #5
  %59 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_rar_entries, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr %num_rar_entries, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then76, %is_valid_ether_addr.exit.if.end98_crit_edge, %ixgbe_write_reg.exit161.if.end98_crit_edge
  %get_wwn_prefix = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 8
  %61 = ptrtoint ptr %get_wwn_prefix to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %get_wwn_prefix, align 4
  %wwnn_prefix = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 5
  %wwpn_prefix = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 6
  %call103 = tail call i32 %62(ptr noundef %hw, ptr noundef %wwnn_prefix, ptr noundef %wwpn_prefix) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then11, %do.body6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end98 ], [ %call, %entry.cleanup_crit_edge ], [ -16, %if.then11 ], [ -16, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_clear_tx_pending(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_start_hw_X540(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_start_hw_generic(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @ixgbe_start_hw_gen2(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_start_hw_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_start_hw_gen2(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_eeprom_params_X540(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %semaphore_delay = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %semaphore_delay to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %semaphore_delay, align 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %type, align 4
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %7) #5
  %8 = lshr i32 %call, 11
  %conv = and i32 %8, 15
  %shl = shl nuw nsw i32 64, %conv
  %conv4 = trunc i32 %shl to i16
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  %9 = ptrtoint ptr %word_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv4, ptr %word_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_init_eeprom_params_X540.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_init_eeprom_params_X540, %if.then9)) #5
          to label %if.end15 [label %if.then9], !srcloc !71

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 128
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %word_size, align 4
  %conv12 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_init_eeprom_params_X540.__UNIQUE_ID_ddebug359, ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %15, i32 noundef %conv12) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.then, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_acquire_swfw_sync_X540(ptr noundef %hw, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i32 %mask, 6144
  %and = shl i32 %mask, 5
  %shl = and i32 %and, 480
  %and2 = shl i32 %mask, 4
  %0 = and i32 %and2, 16
  %or7 = and i32 %mask, 7183
  %shl8 = shl nuw nsw i32 %and1, 2
  %or9 = or i32 %shl, %shl8
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %or14 = or i32 %0, %or7
  %or15 = or i32 %or14, %or9
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %entry
  %i.094 = phi i32 [ 0, %entry ], [ %inc, %if.end22.for.body_crit_edge ]
  %call = tail call fastcc i32 @ixgbe_get_swfw_sync_semaphore(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %1 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 5
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %4) #5
  %and16 = and i32 %call13, %or15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end12
  %5 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvals, align 4
  %arrayidx21 = getelementptr i32, ptr %6, i32 5
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx21, align 4
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then18.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then18.ixgbe_write_reg.exit_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %or19 = or i32 %call13, %or7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %or19) #5
  %add.ptr.i = getelementptr i8, ptr %10, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #5, !srcloc !73
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then18.ixgbe_write_reg.exit_crit_edge
  tail call fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  tail call fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %for.end, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end22
  %call23 = tail call fastcc i32 @ixgbe_get_swfw_sync_semaphore(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %12 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvals, align 4
  %arrayidx28 = getelementptr i32, ptr %13, i32 5
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx28, align 4
  %call29 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %15) #5
  %or30 = or i32 %or9, %0
  %and31 = and i32 %call29, %or30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %if.end26
  %16 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvals, align 4
  %arrayidx36 = getelementptr i32, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx36, align 4
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i90 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i90, label %if.then33.ixgbe_write_reg.exit93_crit_edge, label %do.body1.i92

if.then33.ixgbe_write_reg.exit93_crit_edge:       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit93

do.body1.i92:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %or34 = or i32 %call29, %or7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or34) #5
  %add.ptr.i91 = getelementptr i8, ptr %21, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %22) #5, !srcloc !73
  br label %ixgbe_write_reg.exit93

ixgbe_write_reg.exit93:                           ; preds = %do.body1.i92, %if.then33.ixgbe_write_reg.exit93_crit_edge
  tail call fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  br label %cleanup

if.end37:                                         ; preds = %if.end26
  %and38 = and i32 %call29, %or7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool41.not = icmp eq i32 %and1, 0
  %spec.select89 = select i1 %tobool41.not, i32 1039, i32 7183
  tail call void @ixgbe_release_swfw_sync_X540(ptr noundef %hw, i32 noundef %spec.select89)
  tail call fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw)
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then40, %ixgbe_write_reg.exit93, %for.end.cleanup_crit_edge, %ixgbe_write_reg.exit, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit ], [ 0, %ixgbe_write_reg.exit93 ], [ -16, %if.then40 ], [ -16, %if.end45 ], [ -16, %for.end.cleanup_crit_edge ], [ -16, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_get_swfw_sync_semaphore(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.067 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #5
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #5
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %if.end.do.body3_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.do.body3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %i.067)
  %cmp1 = icmp eq i32 %i.067, 2000
  br i1 %cmp1, label %for.end.do.body3_crit_edge, label %for.end.for.body15_crit_edge

for.end.for.body15_crit_edge:                     ; preds = %for.end
  br label %for.body15

for.end.do.body3_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

do.body3:                                         ; preds = %for.end.do.body3_crit_edge, %if.end.do.body3_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_get_swfw_sync_semaphore.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_get_swfw_sync_semaphore, %if.then8)) #5
          to label %cleanup [label %if.then8], !srcloc !71

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_get_swfw_sync_semaphore.__UNIQUE_ID_ddebug372, ptr noundef %7, ptr noundef nonnull @.str.8) #5
  br label %cleanup

for.body15:                                       ; preds = %if.end22.for.body15_crit_edge, %for.end.for.body15_crit_edge
  %i.168 = phi i32 [ %inc24, %if.end22.for.body15_crit_edge ], [ 0, %for.end.for.body15_crit_edge ]
  %8 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mvals, align 4
  %arrayidx17 = getelementptr i32, ptr %9, i32 5
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx17, align 4
  %call18 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %tobool20.not = icmp sgt i32 %call18, -1
  br i1 %tobool20.not, label %for.body15.cleanup_crit_edge, label %if.end22

for.body15.cleanup_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %for.body15
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #5
  %inc24 = add nuw nsw i32 %i.168, 1
  %exitcond69.not = icmp eq i32 %inc24, 2000
  br i1 %exitcond69.not, label %do.body27, label %if.end22.for.body15_crit_edge

if.end22.for.body15_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15

do.body27:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_get_swfw_sync_semaphore.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_get_swfw_sync_semaphore, %if.then39)) #5
          to label %do.end46 [label %if.then39], !srcloc !71

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %back40 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %back40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %back40, align 4
  %netdev41 = getelementptr inbounds %struct.ixgbe_adapter, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %netdev41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev41, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_get_swfw_sync_semaphore.__UNIQUE_ID_ddebug373, ptr noundef %15, ptr noundef nonnull @.str.9) #5
  br label %do.end46

do.end46:                                         ; preds = %if.then39, %do.body27
  tail call fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %for.body15.cleanup_crit_edge, %if.then8, %do.body3
  %retval.0 = phi i32 [ -1, %do.end46 ], [ -1, %if.then8 ], [ -1, %do.body3 ], [ 0, %for.body15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #5
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %arrayidx2 = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #5, !srcloc !73
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %11 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mvals, align 4
  %arrayidx4 = getelementptr i32, ptr %12, i32 4
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4, align 4
  %call5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %14) #5
  %15 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mvals, align 4
  %arrayidx8 = getelementptr i32, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8, align 4
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i21 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i21, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit24_crit_edge, label %do.body1.i23

ixgbe_write_reg.exit.ixgbe_write_reg.exit24_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit24

do.body1.i23:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and6 = and i32 %call5, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %and6) #5
  %add.ptr.i22 = getelementptr i8, ptr %20, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %21) #5, !srcloc !73
  br label %ixgbe_write_reg.exit24

ixgbe_write_reg.exit24:                           ; preds = %do.body1.i23, %ixgbe_write_reg.exit.ixgbe_write_reg.exit24_crit_edge
  %call9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_release_swfw_sync_X540(ptr noundef %hw, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_get_swfw_sync_semaphore(ptr noundef %hw)
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #5
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %arrayidx6 = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and1 = and i32 %mask, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %spec.select.v = select i1 %tobool.not, i32 1039, i32 7183
  %spec.select = and i32 %spec.select.v, %mask
  %neg = xor i32 %spec.select, -1
  %and4 = and i32 %call3, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and4) #5
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #5, !srcloc !73
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  tail call fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw)
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_init_swfw_sync_X540(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_get_swfw_sync_semaphore(ptr noundef %hw)
  tail call fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw)
  %call1 = tail call i32 @ixgbe_acquire_swfw_sync_X540(ptr noundef %hw, i32 noundef 7183)
  %call.i = tail call fastcc i32 @ixgbe_get_swfw_sync_semaphore(ptr noundef %hw) #5
  %mvals.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals.i, align 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %call3.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #5
  %4 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %entry.ixgbe_release_swfw_sync_X540.exit_crit_edge, label %do.body1.i.i

entry.ixgbe_release_swfw_sync_X540.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_release_swfw_sync_X540.exit

do.body1.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and4.i = and i32 %call3.i, -7184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #5
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #5, !srcloc !73
  br label %ixgbe_release_swfw_sync_X540.exit

ixgbe_release_swfw_sync_X540.exit:                ; preds = %do.body1.i.i, %entry.ixgbe_release_swfw_sync_X540.exit_crit_edge
  tail call fastcc void @ixgbe_release_swfw_sync_semaphore(ptr noundef %hw) #5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_blink_led_start_X540(ptr noundef %hw, i32 noundef %index) #1 align 64 {
entry:
  %speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #5
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #5
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link_up, align 1, !annotation !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp ugt i32 %index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %2 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_link, align 4
  %call = call i32 %3(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #5
  %4 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_up, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17200) #5
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then1.if.end3_crit_edge, label %do.body1.i

if.then1.if.end3_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

do.body1.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call2, 458753
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @arm_heavy_mb() #5
  %8 = call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %7, i32 17200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !73
  br label %if.end3

if.end3:                                          ; preds = %do.body1.i, %if.then1.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 512) #5
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i23 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i23, label %if.end3.ixgbe_write_reg.exit26_crit_edge, label %do.body1.i25

if.end3.ixgbe_write_reg.exit26_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit26

do.body1.i25:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl nuw nsw i32 %index, 3
  %shl = shl nuw nsw i32 15, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %call4, %neg
  %shl6 = shl nuw i32 128, %mul
  %or7 = or i32 %and, %shl6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  call void @arm_heavy_mb() #5
  %11 = call i32 @llvm.bswap.i32(i32 %or7) #5
  %add.ptr.i24 = getelementptr i8, ptr %10, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %11) #5, !srcloc !73
  br label %ixgbe_write_reg.exit26

ixgbe_write_reg.exit26:                           ; preds = %do.body1.i25, %if.end3.ixgbe_write_reg.exit26_crit_edge
  %call8 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #5
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit26 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_blink_led_stop_X540(ptr noundef %hw, i32 noundef %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp ugt i32 %index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 512) #5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end.ixgbe_write_reg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl nuw nsw i32 %index, 3
  %shl = shl nuw nsw i32 15, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %shl2 = shl nuw nsw i32 4, %mul
  %or = or i32 %and, %shl2
  %shl4 = shl nuw i32 128, %mul
  %neg5 = xor i32 %shl4, -1
  %and6 = and i32 %or, %neg5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %and6) #5
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !73
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end.ixgbe_write_reg.exit_crit_edge
  %call7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17200) #5
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i22 = icmp eq ptr %4, null
  br i1 %tobool.not.i.i22, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit25_crit_edge, label %do.body1.i24

ixgbe_write_reg.exit.ixgbe_write_reg.exit25_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ixgbe_write_reg.exit25

do.body1.i24:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and8 = and i32 %call7, -458754
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %and8) #5
  %add.ptr.i23 = getelementptr i8, ptr %4, i32 17200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %5) #5, !srcloc !73
  br label %ixgbe_write_reg.exit25

ixgbe_write_reg.exit25:                           ; preds = %do.body1.i24, %ixgbe_write_reg.exit.ixgbe_write_reg.exit25_crit_edge
  %call9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #5
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ixgbe_write_reg.exit25 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_hw_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_hw_cntrs_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_mac_addr_generic(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_san_mac_addr_generic(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_device_caps_generic(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_wwn_prefix_generic(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_stop_adapter_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_bus_info_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_lan_id_multi_port_pcie(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_disable_rx_buff_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_enable_rx_buff_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_enable_rx_dma_generic(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prot_autoc_read_generic(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prot_autoc_write_generic(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_check_mac_link_generic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_copper_link_capabilities_generic(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_rxpba_generic(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_led_on_generic(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_led_off_generic(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_led_link_act_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_rar_generic(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_rar_generic(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_vmdq_generic(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_vmdq_san_mac_generic(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_vmdq_generic(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_rx_addrs_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_update_mc_addr_list_generic(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_enable_mc_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_disable_mc_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_vfta_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_vfta_generic(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_uta_tables_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_mac_anti_spoofing(ptr noundef, i1 noundef zeroext, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_vlan_anti_spoofing(ptr noundef, i1 noundef zeroext, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_fc_enable_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_fc_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_fc_autoneg(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_fw_drv_ver_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_disable_rx_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_enable_rx_generic(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_eerd_X540(ptr noundef %hw, i16 noundef zeroext %offset, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @ixgbe_read_eerd_generic(ptr noundef %hw, i16 noundef zeroext %offset, ptr noundef %data) #5
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %2 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %3(ptr noundef %hw, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_eerd_buffer_X540(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @ixgbe_read_eerd_buffer_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #5
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %2 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %3(ptr noundef %hw, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_eewr_X540(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @ixgbe_write_eewr_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %data) #5
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %2 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %3(ptr noundef %hw, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_eewr_buffer_X540(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @ixgbe_write_eewr_buffer_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #5
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %2 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %3(ptr noundef %hw, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_validate_eeprom_checksum_X540(ptr noundef %hw, ptr noundef writeonly %checksum_val) #1 align 64 {
entry:
  %checksum = alloca i16, align 2
  %read_checksum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #5
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %checksum, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_checksum) #5
  %1 = ptrtoint ptr %read_checksum to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %read_checksum, align 2
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = call i32 %3(ptr noundef %hw, i16 noundef zeroext 0, ptr noundef nonnull %checksum) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_validate_eeprom_checksum_X540.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_validate_eeprom_checksum_X540, %if.then6)) #5
          to label %cleanup [label %if.then6], !srcloc !71

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_validate_eeprom_checksum_X540.__UNIQUE_ID_ddebug364, ptr noundef %7, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end9:                                          ; preds = %entry
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %8 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acquire_swfw_sync, align 4
  %call11 = call i32 %9(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %calc_checksum = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 7
  %10 = ptrtoint ptr %calc_checksum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %calc_checksum, align 4
  %call17 = call i32 %11(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end14.out_crit_edge, label %if.end19

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end19:                                         ; preds = %if.end14
  %conv = trunc i32 %call17 to i16
  %12 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %checksum, align 2
  %call20 = call i32 @ixgbe_read_eerd_generic(ptr noundef %hw, i16 noundef zeroext 63, ptr noundef nonnull %read_checksum) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end23:                                         ; preds = %if.end19
  %13 = ptrtoint ptr %read_checksum to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %read_checksum, align 2
  %15 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %checksum, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp26.not = icmp eq i16 %14, %16
  br i1 %cmp26.not, label %if.end23.if.end50_crit_edge, label %do.body30

if.end23.if.end50_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.body30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_validate_eeprom_checksum_X540.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_validate_eeprom_checksum_X540, %if.then42)) #5
          to label %if.end50 [label %if.then42], !srcloc !71

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %back43 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %back43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %back43, align 4
  %netdev44 = getelementptr inbounds %struct.ixgbe_adapter, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %netdev44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev44, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_validate_eeprom_checksum_X540.__UNIQUE_ID_ddebug365, ptr noundef %20, ptr noundef nonnull @.str.12) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then42, %do.body30, %if.end23.if.end50_crit_edge
  %status.0 = phi i32 [ 0, %if.end23.if.end50_crit_edge ], [ -2, %if.then42 ], [ -2, %do.body30 ]
  %tobool51.not = icmp eq ptr %checksum_val, null
  br i1 %tobool51.not, label %if.end50.out_crit_edge, label %if.then52

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %checksum, align 2
  %23 = ptrtoint ptr %checksum_val to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %checksum_val, align 2
  br label %out

out:                                              ; preds = %if.then52, %if.end50.out_crit_edge, %if.end19.out_crit_edge, %if.end14.out_crit_edge
  %status.1 = phi i32 [ %call17, %if.end14.out_crit_edge ], [ %call20, %if.end19.out_crit_edge ], [ %status.0, %if.then52 ], [ %status.0, %if.end50.out_crit_edge ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %24 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release_swfw_sync, align 4
  call void %25(ptr noundef %hw, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ %status.1, %out ], [ %call, %if.then6 ], [ -16, %if.end9.cleanup_crit_edge ], [ %call, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_checksum) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_update_eeprom_checksum_X540(ptr noundef %hw) #1 align 64 {
entry:
  %checksum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #5
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %checksum, align 2, !annotation !74
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call = call i32 %2(ptr noundef %hw, i16 noundef zeroext 0, ptr noundef nonnull %checksum) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_eeprom_checksum_X540.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_eeprom_checksum_X540, %if.then6)) #5
          to label %cleanup [label %if.then6], !srcloc !71

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_eeprom_checksum_X540.__UNIQUE_ID_ddebug366, ptr noundef %6, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end9:                                          ; preds = %entry
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %7 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acquire_swfw_sync, align 4
  %call11 = call i32 %8(ptr noundef %hw, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %calc_checksum = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 7
  %9 = ptrtoint ptr %calc_checksum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %calc_checksum, align 4
  %call17 = call i32 %10(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end14.out_crit_edge, label %if.end19

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end19:                                         ; preds = %if.end14
  %conv = trunc i32 %call17 to i16
  %11 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %checksum, align 2
  %call20 = call i32 @ixgbe_write_eewr_generic(ptr noundef %hw, i16 noundef zeroext 63, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = call fastcc i32 @ixgbe_update_flash_X540(ptr noundef %hw)
  br label %out

out:                                              ; preds = %if.end23, %if.end19.out_crit_edge, %if.end14.out_crit_edge
  %status.0 = phi i32 [ %call17, %if.end14.out_crit_edge ], [ %call20, %if.end19.out_crit_edge ], [ %call24, %if.end23 ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %12 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_swfw_sync, align 4
  call void %13(ptr noundef %hw, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ %status.0, %out ], [ %call, %if.then6 ], [ -16, %if.end9.cleanup_crit_edge ], [ %call, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_calc_eeprom_checksum_X540(ptr noundef %hw) #1 align 64 {
entry:
  %length = alloca i16, align 2
  %pointer = alloca i16, align 2
  %word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length) #5
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %length, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pointer) #5
  %1 = ptrtoint ptr %pointer to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %pointer, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word) #5
  %2 = ptrtoint ptr %word to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %word, align 2
  br label %for.body

for.cond15.preheader:                             ; preds = %if.end11
  %word_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 3
  br label %for.body19

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry
  %i.0207 = phi i16 [ 0, %entry ], [ %inc, %if.end11.for.body_crit_edge ]
  %checksum.0206 = phi i16 [ 0, %entry ], [ %add, %if.end11.for.body_crit_edge ]
  %call = call i32 @ixgbe_read_eerd_generic(ptr noundef %hw, i16 noundef zeroext %i.0207, ptr noundef nonnull %word) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %do.body3

do.body3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_calc_eeprom_checksum_X540, %if.then8)) #5
          to label %cleanup [label %if.then8], !srcloc !71

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug360, ptr noundef %6, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %7 = ptrtoint ptr %word to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %word, align 2
  %add = add i16 %8, %checksum.0206
  %inc = add nuw nsw i16 %i.0207, 1
  %cmp = icmp ult i16 %i.0207, 62
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %for.cond15.preheader

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body19:                                       ; preds = %for.inc153.for.body19_crit_edge, %for.cond15.preheader
  %i.1217 = phi i16 [ 3, %for.cond15.preheader ], [ %inc154, %for.inc153.for.body19_crit_edge ]
  %checksum.1216 = phi i16 [ %add, %for.cond15.preheader ], [ %checksum.3, %for.inc153.for.body19_crit_edge ]
  %9 = and i16 %i.1217, 32766
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %switch = icmp eq i16 %9, 4
  br i1 %switch, label %for.body19.for.inc153_crit_edge, label %if.end27

for.body19.for.inc153_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

if.end27:                                         ; preds = %for.body19
  %call28 = call i32 @ixgbe_read_eerd_generic(ptr noundef %hw, i16 noundef zeroext %i.1217, ptr noundef nonnull %pointer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end52, label %do.body32

do.body32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_calc_eeprom_checksum_X540, %if.then44)) #5
          to label %for.end155 [label %if.then44], !srcloc !71

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  %back45 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %back45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back45, align 4
  %netdev46 = getelementptr inbounds %struct.ixgbe_adapter, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %netdev46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev46, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug361, ptr noundef %13, ptr noundef nonnull @.str.11) #5
  br label %for.end155

if.end52:                                         ; preds = %if.end27
  %14 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pointer, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %lor.lhs.false60 [
    i16 -1, label %if.end52.for.inc153_crit_edge
    i16 0, label %if.end52.for.inc153_crit_edge234
  ]

if.end52.for.inc153_crit_edge234:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

if.end52.for.inc153_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

lor.lhs.false60:                                  ; preds = %if.end52
  %17 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %18)
  %cmp63.not = icmp ult i16 %15, %18
  br i1 %cmp63.not, label %if.end66, label %lor.lhs.false60.for.inc153_crit_edge

lor.lhs.false60.for.inc153_crit_edge:             ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

if.end66:                                         ; preds = %lor.lhs.false60
  %call67 = call i32 @ixgbe_read_eerd_generic(ptr noundef %hw, i16 noundef zeroext %15, ptr noundef nonnull %length) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end91, label %do.body71

do.body71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_calc_eeprom_checksum_X540, %if.then83)) #5
          to label %cleanup [label %if.then83], !srcloc !71

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  %back84 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %19 = ptrtoint ptr %back84 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %back84, align 4
  %netdev85 = getelementptr inbounds %struct.ixgbe_adapter, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %netdev85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev85, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug362, ptr noundef %22, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end91:                                         ; preds = %if.end66
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %length, align 2
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %24, label %lor.lhs.false99 [
    i16 -1, label %if.end91.for.inc153_crit_edge
    i16 0, label %if.end91.for.inc153_crit_edge235
  ]

if.end91.for.inc153_crit_edge235:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

if.end91.for.inc153_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

lor.lhs.false99:                                  ; preds = %if.end91
  %conv92 = zext i16 %24 to i32
  %26 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pointer, align 2
  %conv100 = zext i16 %27 to i32
  %add102 = add nuw nsw i32 %conv100, %conv92
  %28 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %word_size, align 4
  %conv105 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add102, i32 %conv105)
  %cmp106.not = icmp ult i32 %add102, %conv105
  br i1 %cmp106.not, label %for.cond113.preheader, label %lor.lhs.false99.for.inc153_crit_edge

lor.lhs.false99.for.inc153_crit_edge:             ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

for.cond113.preheader:                            ; preds = %lor.lhs.false99
  %j.0208 = add i16 %27, 1
  %conv114209 = zext i16 %j.0208 to i32
  %30 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pointer, align 2
  %conv115210 = zext i16 %31 to i32
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %length, align 2
  %conv116211 = zext i16 %33 to i32
  %add117212 = add nuw nsw i32 %conv116211, %conv115210
  call void @__sanitizer_cov_trace_cmp4(i32 %add117212, i32 %conv114209)
  %cmp118.not213 = icmp ult i32 %add117212, %conv114209
  br i1 %cmp118.not213, label %for.cond113.preheader.for.inc153_crit_edge, label %for.cond113.preheader.for.body120_crit_edge

for.cond113.preheader.for.body120_crit_edge:      ; preds = %for.cond113.preheader
  br label %for.body120

for.cond113.preheader.for.inc153_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

for.body120:                                      ; preds = %if.end145.for.body120_crit_edge, %for.cond113.preheader.for.body120_crit_edge
  %j.0215 = phi i16 [ %j.0, %if.end145.for.body120_crit_edge ], [ %j.0208, %for.cond113.preheader.for.body120_crit_edge ]
  %checksum.2214 = phi i16 [ %add148, %if.end145.for.body120_crit_edge ], [ %checksum.1216, %for.cond113.preheader.for.body120_crit_edge ]
  %call121 = call i32 @ixgbe_read_eerd_generic(ptr noundef %hw, i16 noundef zeroext %j.0215, ptr noundef nonnull %word) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end145, label %do.body125

do.body125:                                       ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_calc_eeprom_checksum_X540, %if.then137)) #5
          to label %cleanup [label %if.then137], !srcloc !71

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  %back138 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %34 = ptrtoint ptr %back138 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %back138, align 4
  %netdev139 = getelementptr inbounds %struct.ixgbe_adapter, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %netdev139 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev139, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug363, ptr noundef %37, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end145:                                        ; preds = %for.body120
  %38 = ptrtoint ptr %word to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %word, align 2
  %add148 = add i16 %39, %checksum.2214
  %j.0 = add i16 %j.0215, 1
  %conv114 = zext i16 %j.0 to i32
  %40 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pointer, align 2
  %conv115 = zext i16 %41 to i32
  %42 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %length, align 2
  %conv116 = zext i16 %43 to i32
  %add117 = add nuw nsw i32 %conv116, %conv115
  %cmp118.not = icmp ult i32 %add117, %conv114
  br i1 %cmp118.not, label %if.end145.for.inc153_crit_edge, label %if.end145.for.body120_crit_edge

if.end145.for.body120_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body120

if.end145.for.inc153_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

for.inc153:                                       ; preds = %if.end145.for.inc153_crit_edge, %for.cond113.preheader.for.inc153_crit_edge, %lor.lhs.false99.for.inc153_crit_edge, %if.end91.for.inc153_crit_edge, %if.end91.for.inc153_crit_edge235, %lor.lhs.false60.for.inc153_crit_edge, %if.end52.for.inc153_crit_edge, %if.end52.for.inc153_crit_edge234, %for.body19.for.inc153_crit_edge
  %checksum.3 = phi i16 [ %checksum.1216, %if.end52.for.inc153_crit_edge ], [ %checksum.1216, %lor.lhs.false60.for.inc153_crit_edge ], [ %checksum.1216, %if.end91.for.inc153_crit_edge ], [ %checksum.1216, %lor.lhs.false99.for.inc153_crit_edge ], [ %checksum.1216, %for.body19.for.inc153_crit_edge ], [ %checksum.1216, %if.end52.for.inc153_crit_edge234 ], [ %checksum.1216, %if.end91.for.inc153_crit_edge235 ], [ %checksum.1216, %for.cond113.preheader.for.inc153_crit_edge ], [ %add148, %if.end145.for.inc153_crit_edge ]
  %inc154 = add nuw nsw i16 %i.1217, 1
  %cmp17 = icmp ult i16 %i.1217, 14
  br i1 %cmp17, label %for.inc153.for.body19_crit_edge, label %for.inc153.for.end155_crit_edge

for.inc153.for.end155_crit_edge:                  ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end155

for.inc153.for.body19_crit_edge:                  ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

for.end155:                                       ; preds = %for.inc153.for.end155_crit_edge, %if.then44, %do.body32
  %checksum.1204 = phi i16 [ %checksum.1216, %do.body32 ], [ %checksum.1216, %if.then44 ], [ %checksum.3, %for.inc153.for.end155_crit_edge ]
  %sub = sub i16 -17734, %checksum.1204
  %conv158 = zext i16 %sub to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end155, %if.then137, %do.body125, %if.then83, %do.body71, %if.then8, %do.body3
  %retval.0 = phi i32 [ %conv158, %for.end155 ], [ -1, %if.then8 ], [ -1, %if.then83 ], [ -1, %if.then137 ], [ -1, %do.body3 ], [ -1, %do.body71 ], [ -1, %do.body125 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pointer) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_eerd_generic(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_eerd_buffer_generic(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_eewr_generic(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_eewr_buffer_generic(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_update_flash_X540(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.04.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #5
  %and.i = and i32 %call.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1073740) #5
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %do.body1, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body1:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_flash_X540, %if.then5)) #5
          to label %cleanup [label %if.then5], !srcloc !71

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug367, ptr noundef %8, ptr noundef nonnull @.str.15) #5
  br label %cleanup

if.end8:                                          ; preds = %for.body.i
  %9 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mvals.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %12) #5
  %13 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mvals.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end8.for.body.i161.preheader_crit_edge, label %do.body1.i

if.end8.for.body.i161.preheader_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i161.preheader

do.body1.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %call9, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %18, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #5, !srcloc !73
  br label %for.body.i161.preheader

for.body.i161.preheader:                          ; preds = %do.body1.i, %if.end8.for.body.i161.preheader_crit_edge
  br label %for.body.i161

for.body.i161:                                    ; preds = %if.end.i164.for.body.i161_crit_edge, %for.body.i161.preheader
  %i.04.i157 = phi i32 [ %inc.i162, %if.end.i164.for.body.i161_crit_edge ], [ 0, %for.body.i161.preheader ]
  %20 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvals.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %call.i158 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %23) #5
  %and.i159 = and i32 %call.i158, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool.not.i160, label %if.end.i164, label %do.body16

if.end.i164:                                      ; preds = %for.body.i161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #5
  %inc.i162 = add nuw nsw i32 %i.04.i157, 1
  %exitcond.not.i163 = icmp eq i32 %inc.i162, 20000
  br i1 %exitcond.not.i163, label %do.body37, label %if.end.i164.for.body.i161_crit_edge

if.end.i164.for.body.i161_crit_edge:              ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i161

do.body16:                                        ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_flash_X540, %if.then28)) #5
          to label %if.end57 [label %if.then28], !srcloc !71

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %back29 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %25 = ptrtoint ptr %back29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %back29, align 4
  %netdev30 = getelementptr inbounds %struct.ixgbe_adapter, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev30, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug368, ptr noundef %28, ptr noundef nonnull @.str.16) #5
  br label %if.end57

do.body37:                                        ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_flash_X540, %if.then49)) #5
          to label %if.end57 [label %if.then49], !srcloc !71

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %back50 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %29 = ptrtoint ptr %back50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %back50, align 4
  %netdev51 = getelementptr inbounds %struct.ixgbe_adapter, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %netdev51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev51, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug369, ptr noundef %32, ptr noundef nonnull @.str.15) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %do.body37, %if.then28, %do.body16
  %retval.0.i165187 = phi i32 [ -1, %if.then49 ], [ 0, %if.then28 ], [ 0, %do.body16 ], [ -1, %do.body37 ]
  %revision_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 15
  %33 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %revision_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp58 = icmp eq i8 %34, 0
  br i1 %cmp58, label %if.then60, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then60:                                        ; preds = %if.end57
  %35 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mvals.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %call63 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %38) #5
  %and = and i32 %call63, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %if.then60.for.body.i176.preheader_crit_edge, label %if.then65

if.then60.for.body.i176.preheader_crit_edge:      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i176.preheader

if.then65:                                        ; preds = %if.then60
  %39 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mvals.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i167 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i167, label %if.then65.for.body.i176.preheader_crit_edge, label %do.body1.i169

if.then65.for.body.i176.preheader_crit_edge:      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i176.preheader

do.body1.i169:                                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  %or66 = or i32 %call63, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %45 = tail call i32 @llvm.bswap.i32(i32 %or66) #5
  %add.ptr.i168 = getelementptr i8, ptr %44, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %45) #5, !srcloc !73
  br label %for.body.i176.preheader

for.body.i176.preheader:                          ; preds = %do.body1.i169, %if.then65.for.body.i176.preheader_crit_edge, %if.then60.for.body.i176.preheader_crit_edge
  br label %for.body.i176

for.body.i176:                                    ; preds = %if.end.i179.for.body.i176_crit_edge, %for.body.i176.preheader
  %i.04.i172 = phi i32 [ %inc.i177, %if.end.i179.for.body.i176_crit_edge ], [ 0, %for.body.i176.preheader ]
  %46 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mvals.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %call.i173 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %49) #5
  %and.i174 = and i32 %call.i173, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  br i1 %tobool.not.i175, label %if.end.i179, label %do.body75

if.end.i179:                                      ; preds = %for.body.i176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 1073740) #5
  %inc.i177 = add nuw nsw i32 %i.04.i172, 1
  %exitcond.not.i178 = icmp eq i32 %inc.i177, 20000
  br i1 %exitcond.not.i178, label %do.body97, label %if.end.i179.for.body.i176_crit_edge

if.end.i179.for.body.i176_crit_edge:              ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i176

do.body75:                                        ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_flash_X540, %if.then87)) #5
          to label %cleanup [label %if.then87], !srcloc !71

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  %back88 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %51 = ptrtoint ptr %back88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %back88, align 4
  %netdev89 = getelementptr inbounds %struct.ixgbe_adapter, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %netdev89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %netdev89, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug370, ptr noundef %54, ptr noundef nonnull @.str.16) #5
  br label %cleanup

do.body97:                                        ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_update_flash_X540, %if.then109)) #5
          to label %cleanup [label %if.then109], !srcloc !71

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #7
  %back110 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %55 = ptrtoint ptr %back110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %back110, align 4
  %netdev111 = getelementptr inbounds %struct.ixgbe_adapter, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %netdev111 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %netdev111, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug371, ptr noundef %58, ptr noundef nonnull @.str.15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %do.body97, %if.then87, %do.body75, %if.end57.cleanup_crit_edge, %if.then5, %do.body1
  %retval.0 = phi i32 [ -1, %if.then5 ], [ 0, %if.then87 ], [ -1, %if.then109 ], [ %retval.0.i165187, %if.end57.cleanup_crit_edge ], [ -1, %do.body1 ], [ 0, %do.body75 ], [ -1, %do.body97 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_identify_phy_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_identify_sfp_module_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_phy_reg_generic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_phy_reg_generic(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_phy_link_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_phy_link_speed_generic(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_i2c_byte_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_i2c_byte_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_i2c_sff8472_generic(ptr noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_i2c_eeprom_generic(ptr noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_i2c_eeprom_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_tn_check_overtemp(ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !17, !18, !19, !21, !22, !24, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 86, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ixgbe_reset_hw_X540.__UNIQUE_ID_ddebug357, !1, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 107, i32 3}
!8 = !{ptr @ixgbe_reset_hw_X540.__UNIQUE_ID_ddebug358, !7, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 203, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ixgbe_init_eeprom_params_X540.__UNIQUE_ID_ddebug359, !10, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!13 = !{ptr @ixgbe_X540_info, !14, !"ixgbe_X540_info", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 914, i32 25}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 681, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ixgbe_get_swfw_sync_semaphore.__UNIQUE_ID_ddebug372, !16, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 698, i32 2}
!21 = !{ptr @ixgbe_get_swfw_sync_semaphore.__UNIQUE_ID_ddebug373, !20, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!22 = !{ptr @mac_ops_X540, !23, !"mac_ops_X540", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 824, i32 42}
!24 = !{ptr @eeprom_ops_X540, !25, !"eeprom_ops_X540", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 881, i32 45}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 395, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ixgbe_validate_eeprom_checksum_X540.__UNIQUE_ID_ddebug364, !27, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 420, i32 3}
!32 = !{ptr @ixgbe_validate_eeprom_checksum_X540.__UNIQUE_ID_ddebug365, !31, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 453, i32 3}
!35 = !{ptr @ixgbe_update_eeprom_checksum_X540.__UNIQUE_ID_ddebug366, !34, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 494, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug367, !37, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 503, i32 3}
!42 = !{ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug368, !41, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!43 = !{ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug369, !44, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 505, i32 3}
!45 = !{ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug370, !46, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 517, i32 4}
!47 = !{ptr @ixgbe_update_flash_X540.__UNIQUE_ID_ddebug371, !48, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 519, i32 4}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 326, i32 4}
!51 = !{ptr @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug360, !50, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!52 = !{ptr @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug361, !53, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 341, i32 4}
!54 = !{ptr @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug362, !55, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 351, i32 4}
!56 = !{ptr @ixgbe_calc_eeprom_checksum_X540.__UNIQUE_ID_ddebug363, !57, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 362, i32 5}
!58 = !{ptr @phy_ops_X540, !59, !"phy_ops_X540", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 892, i32 42}
!60 = !{ptr @ixgbe_mvals_X540, !61, !"ixgbe_mvals_X540", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c", i32 910, i32 18}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2148510840, i64 2148510845, i64 2148510858, i64 2148510902, i64 2148510936, i64 2148510957}
!72 = !{i64 2157281564}
!73 = !{i64 5005437}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
