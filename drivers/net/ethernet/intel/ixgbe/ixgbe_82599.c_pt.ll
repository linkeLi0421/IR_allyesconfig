; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@ixgbe_reinit_fdir_tables_82599.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ixgbe\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ixgbe_reinit_fdir_tables_82599\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Flow Director previous command did not complete, aborting table re-initialization.\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_reinit_fdir_tables_82599.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Flow Director Signature poll time exceeded!\0A\00", [51 x i8] zeroinitializer }, align 32
@ixgbe_fdir_add_signature_filter_82599.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ixgbe_fdir_add_signature_filter_82599\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" Error on flow type input\0A\00", [37 x i8] zeroinitializer }, align 32
@ixgbe_fdir_add_signature_filter_82599.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 1, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx Queue=%x hash=%x\0A\00", [43 x i8] zeroinitializer }, align 32
@ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 1, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixgbe_fdir_set_input_mask_82599\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" bucket hash should always be 0 in mask\0A\00", [55 x i8] zeroinitializer }, align 32
@ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 1, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" Error on vm pool mask\0A\00", [40 x i8] zeroinitializer }, align 32
@ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 1, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" Error on src/dst port mask\0A\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 1, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" Error on flow type mask\0A\00", [38 x i8] zeroinitializer }, align 32
@ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 1, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" Error on VLAN mask\0A\00", [43 x i8] zeroinitializer }, align 32
@ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.14, i8 1, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c" Error on flexible byte mask\0A\00", [34 x i8] zeroinitializer }, align 32
@ixgbe_fdir_write_perfect_filter_82599.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ixgbe_fdir_write_perfect_filter_82599\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Flow Director command did not complete!\0A\00", [55 x i8] zeroinitializer }, align 32
@ixgbe_fdir_erase_perfect_filter_82599.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.16, i8 1, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ixgbe_fdir_erase_perfect_filter_82599\00", [58 x i8] zeroinitializer }, align 32
@mac_ops_82599 = internal constant { %struct.ixgbe_mac_operations, [80 x i8] } { %struct.ixgbe_mac_operations { ptr @ixgbe_init_hw_generic, ptr @ixgbe_reset_hw_82599, ptr @ixgbe_start_hw_82599, ptr @ixgbe_clear_hw_cntrs_generic, ptr @ixgbe_get_media_type_82599, ptr @ixgbe_get_mac_addr_generic, ptr @ixgbe_get_san_mac_addr_generic, ptr @ixgbe_get_device_caps_generic, ptr @ixgbe_get_wwn_prefix_generic, ptr @ixgbe_stop_adapter_generic, ptr @ixgbe_get_bus_info_generic, ptr @ixgbe_set_lan_id_multi_port_pcie, ptr @ixgbe_read_analog_reg8_82599, ptr @ixgbe_write_analog_reg8_82599, ptr @ixgbe_setup_sfp_modules_82599, ptr @ixgbe_disable_rx_buff_generic, ptr @ixgbe_enable_rx_buff_generic, ptr @ixgbe_enable_rx_dma_82599, ptr @ixgbe_acquire_swfw_sync, ptr @ixgbe_release_swfw_sync, ptr null, ptr @prot_autoc_read_82599, ptr @prot_autoc_write_82599, ptr null, ptr null, ptr null, ptr @ixgbe_stop_mac_link_on_d3_82599, ptr @ixgbe_setup_mac_link_82599, ptr null, ptr @ixgbe_check_mac_link_generic, ptr @ixgbe_get_link_capabilities_82599, ptr null, ptr @ixgbe_set_rxpba_generic, ptr @ixgbe_led_on_generic, ptr @ixgbe_led_off_generic, ptr @ixgbe_blink_led_start_generic, ptr @ixgbe_blink_led_stop_generic, ptr @ixgbe_init_led_link_act_generic, ptr @ixgbe_set_rar_generic, ptr @ixgbe_clear_rar_generic, ptr @ixgbe_set_vmdq_generic, ptr @ixgbe_set_vmdq_san_mac_generic, ptr @ixgbe_clear_vmdq_generic, ptr @ixgbe_init_rx_addrs_generic, ptr @ixgbe_update_mc_addr_list_generic, ptr @ixgbe_enable_mc_generic, ptr @ixgbe_disable_mc_generic, ptr @ixgbe_clear_vfta_generic, ptr @ixgbe_set_vfta_generic, ptr @ixgbe_init_uta_tables_generic, ptr @ixgbe_set_mac_anti_spoofing, ptr @ixgbe_set_vlan_anti_spoofing, ptr @ixgbe_fc_enable_generic, ptr @ixgbe_setup_fc_generic, ptr @ixgbe_fc_autoneg, ptr @ixgbe_set_fw_drv_ver_generic, ptr @ixgbe_get_thermal_sensor_data_generic, ptr @ixgbe_init_thermal_sensor_thresh_generic, ptr null, ptr @ixgbe_disable_rx_generic, ptr @ixgbe_enable_rx_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@eeprom_ops_82599 = internal constant { %struct.ixgbe_eeprom_operations, [32 x i8] } { %struct.ixgbe_eeprom_operations { ptr @ixgbe_init_eeprom_params_generic, ptr @ixgbe_read_eeprom_82599, ptr @ixgbe_read_eeprom_buffer_82599, ptr @ixgbe_write_eeprom_generic, ptr @ixgbe_write_eeprom_buffer_bit_bang_generic, ptr @ixgbe_validate_eeprom_checksum_generic, ptr @ixgbe_update_eeprom_checksum_generic, ptr @ixgbe_calc_eeprom_checksum_generic }, [32 x i8] zeroinitializer }, align 32
@phy_ops_82599 = internal constant { %struct.ixgbe_phy_operations, [36 x i8] } { %struct.ixgbe_phy_operations { ptr @ixgbe_identify_phy_82599, ptr @ixgbe_identify_module_generic, ptr @ixgbe_init_phy_ops_82599, ptr @ixgbe_reset_phy_generic, ptr @ixgbe_read_phy_reg_generic, ptr @ixgbe_write_phy_reg_generic, ptr null, ptr null, ptr @ixgbe_setup_phy_link_generic, ptr null, ptr @ixgbe_setup_phy_link_speed_generic, ptr null, ptr @ixgbe_read_i2c_byte_generic, ptr @ixgbe_write_i2c_byte_generic, ptr @ixgbe_read_i2c_sff8472_generic, ptr @ixgbe_read_i2c_eeprom_generic, ptr @ixgbe_write_i2c_eeprom_generic, ptr @ixgbe_tn_check_overtemp, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mbx_ops_generic = external dso_local constant %struct.ixgbe_mbx_operations, align 4
@ixgbe_mvals_8259X = external dso_local constant [23 x i32], align 4
@ixgbe_82599_info = dso_local constant { %struct.ixgbe_info, [32 x i8] } { %struct.ixgbe_info { i32 2, ptr @ixgbe_get_invariants_82599, ptr @mac_ops_82599, ptr @eeprom_ops_82599, ptr @phy_ops_82599, ptr @mbx_ops_generic, ptr null, ptr @ixgbe_mvals_8259X }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ixgbe_fdir_enable_82599.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_fdir_enable_82599\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Flow Director poll time exceeded!\0A\00", [61 x i8] zeroinitializer }, align 32
@ixgbe_setup_mac_link_82599.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgbe_setup_mac_link_82599\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Autoneg did not complete.\0A\00", [37 x i8] zeroinitializer }, align 32
@ixgbe_set_hard_rate_select_speed.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ixgbe_set_hard_rate_select_speed\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid fixed module speed\0A\00", [36 x i8] zeroinitializer }, align 32
@ixgbe_setup_mac_link_smartspeed.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixgbe_setup_mac_link_smartspeed\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Smartspeed has downgraded the link speed from the maximum advertised\0A\00", [58 x i8] zeroinitializer }, align 32
@ixgbe_reset_hw_82599.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgbe_reset_hw_82599\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Reset polling failed to complete.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"eeprom read at offset %d failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ixgbe_setup_sfp_modules_82599.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ixgbe_setup_sfp_modules_82599\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" sfp module setup not complete\0A\00", [32 x i8] zeroinitializer }, align 32
@ixgbe_reset_pipeline_82599.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgbe_reset_pipeline_82599\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"auto negotiation not completed\0A\00", [32 x i8] zeroinitializer }, align 32
@ixgbe_read_i2c_byte_82599.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 2, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ixgbe_read_i2c_byte_82599\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Driver can't access resource, acquiring I2C bus timeout.\0A\00", [38 x i8] zeroinitializer }, align 32
@ixgbe_write_i2c_byte_82599.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.34, i8 2, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgbe_write_i2c_byte_82599\00", [37 x i8] zeroinitializer }, align 32
@ixgbe_start_mac_link_82599.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.21, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgbe_start_mac_link_82599\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 127]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 4095, i64 57344, i64 61439]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 16, i64 32768, i64 49152, i64 57344]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 16384]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 16, i64 32768, i64 49152, i64 57344]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 9]
@__sancov_gen_cov_switch_values.50 = internal global [18 x i64] [i64 16, i64 16, i64 4343, i64 4344, i64 4345, i64 4347, i64 4348, i64 5383, i64 5396, i64 5399, i64 5404, i64 5417, i64 5418, i64 5450, i64 5453, i64 5455, i64 5463, i64 5464]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.55 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 16, i64 32768, i64 49152, i64 57344]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1118, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1157, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1389, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1409, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1538, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1548, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1557, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1564, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1585, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1597, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1687, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1715, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"mac_ops_82599\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 2163, i32 42 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"eeprom_ops_82599\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 2221, i32 45 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"phy_ops_82599\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 2232, i32 42 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"ixgbe_82599_info\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 2249, i32 25 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1207, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 866, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 644, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 758, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 978, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1907, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 146, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 2040, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 2089, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 2143, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [50 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 545, i32 5 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @mac_ops_82599, ptr @eeprom_ops_82599, ptr @phy_ops_82599, ptr @ixgbe_82599_info, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_82599 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_ops_82599 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops_82599 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_82599_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgbe_mng_enabled(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mvals = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvals, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %3) #7
  %and = and i32 %call, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp.not = icmp eq i32 %and, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 22560) #7
  %and2 = and i32 %call1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %mvals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvals, align 4
  %arrayidx6 = getelementptr i32, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %7) #7
  %and8 = and i32 %call7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %tobool9.not, %if.end4 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_reinit_fdir_tables_82599(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %fdircmd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fdircmd) #7
  %0 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fdircmd, align 4, !annotation !99
  %call1 = call fastcc i32 @ixgbe_fdir_check_cmd_complete(ptr noundef %hw, ptr noundef nonnull %fdircmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end10, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reinit_fdir_tables_82599.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reinit_fdir_tables_82599, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !100

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reinit_fdir_tables_82599.__UNIQUE_ID_ddebug363, ptr noundef %4, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end10:                                         ; preds = %entry
  %and = and i32 %call, -9
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end10.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end10.ixgbe_write_reg.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %6, i32 60984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end10.ixgbe_write_reg.exit_crit_edge
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %call12 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i84 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i84, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit87_crit_edge, label %do.body1.i86

ixgbe_write_reg.exit.ixgbe_write_reg.exit87_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit87

do.body1.i86:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call12, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i85 = getelementptr i8, ptr %8, i32 60972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %9) #7, !srcloc !102
  br label %ixgbe_write_reg.exit87

ixgbe_write_reg.exit87:                           ; preds = %do.body1.i86, %ixgbe_write_reg.exit.ixgbe_write_reg.exit87_crit_edge
  %call13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %call14 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i88 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i88, label %ixgbe_write_reg.exit87.ixgbe_write_reg.exit91_crit_edge, label %do.body1.i90

ixgbe_write_reg.exit87.ixgbe_write_reg.exit91_crit_edge: ; preds = %ixgbe_write_reg.exit87
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit91

do.body1.i90:                                     ; preds = %ixgbe_write_reg.exit87
  call void @__sanitizer_cov_trace_pc() #9
  %and15 = and i32 %call14, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %and15) #7
  %add.ptr.i89 = getelementptr i8, ptr %11, i32 60972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %12) #7, !srcloc !102
  br label %ixgbe_write_reg.exit91

ixgbe_write_reg.exit91:                           ; preds = %do.body1.i90, %ixgbe_write_reg.exit87.ixgbe_write_reg.exit91_crit_edge
  %call16 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i92 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i92, label %ixgbe_write_reg.exit91.ixgbe_write_reg.exit95_crit_edge, label %do.body1.i94

ixgbe_write_reg.exit91.ixgbe_write_reg.exit95_crit_edge: ; preds = %ixgbe_write_reg.exit91
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit95

do.body1.i94:                                     ; preds = %ixgbe_write_reg.exit91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i93 = getelementptr i8, ptr %14, i32 60968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 0) #7, !srcloc !102
  br label %ixgbe_write_reg.exit95

ixgbe_write_reg.exit95:                           ; preds = %do.body1.i94, %ixgbe_write_reg.exit91.ixgbe_write_reg.exit95_crit_edge
  %call17 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i96 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i96, label %ixgbe_write_reg.exit95.ixgbe_write_reg.exit99_crit_edge, label %do.body1.i98

ixgbe_write_reg.exit95.ixgbe_write_reg.exit99_crit_edge: ; preds = %ixgbe_write_reg.exit95
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit99

do.body1.i98:                                     ; preds = %ixgbe_write_reg.exit95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i97 = getelementptr i8, ptr %16, i32 60928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %17) #7, !srcloc !102
  br label %ixgbe_write_reg.exit99

ixgbe_write_reg.exit99:                           ; preds = %do.body1.i98, %ixgbe_write_reg.exit95.ixgbe_write_reg.exit99_crit_edge
  %call18 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %call19 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20 = and i32 %call19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end23, label %ixgbe_write_reg.exit99.if.end47_crit_edge

ixgbe_write_reg.exit99.if.end47_crit_edge:        ; preds = %ixgbe_write_reg.exit99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23:                                         ; preds = %ixgbe_write_reg.exit99
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call19.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20.1 = and i32 %call19.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.1)
  %tobool21.not.1 = icmp eq i32 %and20.1, 0
  br i1 %tobool21.not.1, label %if.end23.1, label %if.end23.if.end47_crit_edge

if.end23.if.end47_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23.1:                                       ; preds = %if.end23
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call19.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20.2 = and i32 %call19.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.2)
  %tobool21.not.2 = icmp eq i32 %and20.2, 0
  br i1 %tobool21.not.2, label %if.end23.2, label %if.end23.1.if.end47_crit_edge

if.end23.1.if.end47_crit_edge:                    ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23.2:                                       ; preds = %if.end23.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call19.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20.3 = and i32 %call19.3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.3)
  %tobool21.not.3 = icmp eq i32 %and20.3, 0
  br i1 %tobool21.not.3, label %if.end23.3, label %if.end23.2.if.end47_crit_edge

if.end23.2.if.end47_crit_edge:                    ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23.3:                                       ; preds = %if.end23.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call19.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20.4 = and i32 %call19.4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.4)
  %tobool21.not.4 = icmp eq i32 %and20.4, 0
  br i1 %tobool21.not.4, label %if.end23.4, label %if.end23.3.if.end47_crit_edge

if.end23.3.if.end47_crit_edge:                    ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23.4:                                       ; preds = %if.end23.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call19.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20.5 = and i32 %call19.5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.5)
  %tobool21.not.5 = icmp eq i32 %and20.5, 0
  br i1 %tobool21.not.5, label %if.end23.5, label %if.end23.4.if.end47_crit_edge

if.end23.4.if.end47_crit_edge:                    ; preds = %if.end23.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23.5:                                       ; preds = %if.end23.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call19.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20.6 = and i32 %call19.6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.6)
  %tobool21.not.6 = icmp eq i32 %and20.6, 0
  br i1 %tobool21.not.6, label %if.end23.6, label %if.end23.5.if.end47_crit_edge

if.end23.5.if.end47_crit_edge:                    ; preds = %if.end23.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23.6:                                       ; preds = %if.end23.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call19.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20.7 = and i32 %call19.7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.7)
  %tobool21.not.7 = icmp eq i32 %and20.7, 0
  br i1 %tobool21.not.7, label %if.end23.7, label %if.end23.6.if.end47_crit_edge

if.end23.6.if.end47_crit_edge:                    ; preds = %if.end23.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23.7:                                       ; preds = %if.end23.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call19.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20.8 = and i32 %call19.8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.8)
  %tobool21.not.8 = icmp eq i32 %and20.8, 0
  br i1 %tobool21.not.8, label %if.end23.8, label %if.end23.7.if.end47_crit_edge

if.end23.7.if.end47_crit_edge:                    ; preds = %if.end23.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23.8:                                       ; preds = %if.end23.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call19.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and20.9 = and i32 %call19.9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.9)
  %tobool21.not.9 = icmp eq i32 %and20.9, 0
  br i1 %tobool21.not.9, label %if.end23.9, label %if.end23.8.if.end47_crit_edge

if.end23.8.if.end47_crit_edge:                    ; preds = %if.end23.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end23.9:                                       ; preds = %if.end23.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reinit_fdir_tables_82599.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reinit_fdir_tables_82599, %if.then39)) #7
          to label %cleanup [label %if.then39], !srcloc !100

if.then39:                                        ; preds = %if.end23.9
  call void @__sanitizer_cov_trace_pc() #9
  %back40 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %back40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %back40, align 4
  %netdev41 = getelementptr inbounds %struct.ixgbe_adapter, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %netdev41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev41, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reinit_fdir_tables_82599.__UNIQUE_ID_ddebug364, ptr noundef %21, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end47:                                         ; preds = %if.end23.8.if.end47_crit_edge, %if.end23.7.if.end47_crit_edge, %if.end23.6.if.end47_crit_edge, %if.end23.5.if.end47_crit_edge, %if.end23.4.if.end47_crit_edge, %if.end23.3.if.end47_crit_edge, %if.end23.2.if.end47_crit_edge, %if.end23.1.if.end47_crit_edge, %if.end23.if.end47_crit_edge, %ixgbe_write_reg.exit99.if.end47_crit_edge
  %call48 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 61008) #7
  %call49 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 61012) #7
  %call50 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 61016) #7
  %call51 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 61020) #7
  %call52 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 61004) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then39, %if.end23.9, %if.then7, %do.body2
  %retval.0 = phi i32 [ 0, %if.end47 ], [ %call1, %if.then7 ], [ -23, %if.then39 ], [ %call1, %do.body2 ], [ -23, %if.end23.9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fdircmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_fdir_check_cmd_complete(ptr noundef %hw, ptr nocapture noundef writeonly %fdircmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %0 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %fdircmd, align 4
  %and = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #7
  %call.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %2 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.1, ptr %fdircmd, align 4
  %and.1 = and i32 %call.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #7
  %call.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %4 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.2, ptr %fdircmd, align 4
  %and.2 = and i32 %call.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #7
  %call.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %6 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.3, ptr %fdircmd, align 4
  %and.3 = and i32 %call.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #7
  %call.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %8 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.4, ptr %fdircmd, align 4
  %and.4 = and i32 %call.4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #7
  %call.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %10 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.5, ptr %fdircmd, align 4
  %and.5 = and i32 %call.5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #7
  %call.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %12 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.6, ptr %fdircmd, align 4
  %and.6 = and i32 %call.6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #7
  %call.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %14 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.7, ptr %fdircmd, align 4
  %and.7 = and i32 %call.7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #7
  %call.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %16 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.8, ptr %fdircmd, align 4
  %and.8 = and i32 %call.8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #7
  %call.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60972) #7
  %18 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.9, ptr %fdircmd, align 4
  %and.9 = and i32 %call.9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.8.cleanup_crit_edge ], [ -38, %if.end.9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_fdir_signature_82599(ptr noundef %hw, i32 noundef %fdirctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %fdirctrl, 1241907200
  tail call fastcc void @ixgbe_fdir_enable_82599(ptr noundef %hw, i32 noundef %or)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_fdir_enable_82599(ptr noundef %hw, i32 noundef %fdirctrl) unnamed_addr #0 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 61032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -501961411) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i21 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i21, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit24_crit_edge, label %do.body1.i23

ixgbe_write_reg.exit.ixgbe_write_reg.exit24_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit24

do.body1.i23:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i22 = getelementptr i8, ptr %3, i32 61036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 339102999) #7, !srcloc !102
  br label %ixgbe_write_reg.exit24

ixgbe_write_reg.exit24:                           ; preds = %do.body1.i23, %ixgbe_write_reg.exit.ixgbe_write_reg.exit24_crit_edge
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i25 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i25, label %ixgbe_write_reg.exit24.ixgbe_write_reg.exit28_crit_edge, label %do.body1.i27

ixgbe_write_reg.exit24.ixgbe_write_reg.exit28_crit_edge: ; preds = %ixgbe_write_reg.exit24
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit28

do.body1.i27:                                     ; preds = %ixgbe_write_reg.exit24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %fdirctrl) #7
  %add.ptr.i26 = getelementptr i8, ptr %5, i32 60928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %6) #7, !srcloc !102
  br label %ixgbe_write_reg.exit28

ixgbe_write_reg.exit28:                           ; preds = %do.body1.i27, %ixgbe_write_reg.exit24.ixgbe_write_reg.exit28_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and = and i32 %call1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %ixgbe_write_reg.exit28.if.end13_crit_edge

ixgbe_write_reg.exit28.if.end13_crit_edge:        ; preds = %ixgbe_write_reg.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end:                                           ; preds = %ixgbe_write_reg.exit28
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call1.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and.1 = and i32 %call1.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call1.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and.2 = and i32 %call1.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.if.end13_crit_edge

if.end.1.if.end13_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call1.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and.3 = and i32 %call1.3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.if.end13_crit_edge

if.end.2.if.end13_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call1.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and.4 = and i32 %call1.4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.if.end13_crit_edge

if.end.3.if.end13_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call1.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and.5 = and i32 %call1.5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.if.end13_crit_edge

if.end.4.if.end13_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call1.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and.6 = and i32 %call1.6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.if.end13_crit_edge

if.end.5.if.end13_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call1.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and.7 = and i32 %call1.7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.if.end13_crit_edge

if.end.6.if.end13_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call1.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and.8 = and i32 %call1.8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.if.end13_crit_edge

if.end.7.if.end13_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %call1.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 60928) #7
  %and.9 = and i32 %call1.9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %if.end.9, label %if.end.8.if.end13_crit_edge

if.end.8.if.end13_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_enable_82599.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_enable_82599, %if.then9)) #7
          to label %if.end13 [label %if.then9], !srcloc !100

if.then9:                                         ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_enable_82599.__UNIQUE_ID_ddebug365, ptr noundef %10, ptr noundef nonnull @.str.19) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.9, %if.end.8.if.end13_crit_edge, %if.end.7.if.end13_crit_edge, %if.end.6.if.end13_crit_edge, %if.end.5.if.end13_crit_edge, %if.end.4.if.end13_crit_edge, %if.end.3.if.end13_crit_edge, %if.end.2.if.end13_crit_edge, %if.end.1.if.end13_crit_edge, %if.end.if.end13_crit_edge, %ixgbe_write_reg.exit28.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_fdir_perfect_82599(ptr noundef %hw, i32 noundef %fdirctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %fdirctrl, 1241939728
  tail call fastcc void @ixgbe_fdir_enable_82599(ptr noundef %hw, i32 noundef %or)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fdir_add_signature_filter_82599(ptr noundef %hw, [1 x i32] %input.coerce, [1 x i32] %common.coerce, i8 noundef zeroext %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %input.coerce.fca.0.extract = extractvalue [1 x i32] %input.coerce, 0
  %input.sroa.2.0.extract.shift = lshr i32 %input.coerce.fca.0.extract, 16
  %conv7 = and i32 %input.sroa.2.0.extract.shift, 15
  %0 = zext i32 %conv7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv7, label %do.body9 [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge74
    i32 3, label %entry.sw.epilog_crit_edge75
    i32 6, label %entry.sw.epilog_crit_edge76
    i32 5, label %entry.sw.epilog_crit_edge77
    i32 7, label %entry.sw.epilog_crit_edge78
  ]

entry.sw.epilog_crit_edge78:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge77:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge76:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge75:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge74:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_add_signature_filter_82599.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_add_signature_filter_82599, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !100

if.then:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_add_signature_filter_82599.__UNIQUE_ID_ddebug366, ptr noundef %4, ptr noundef nonnull @.str.6) #7
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge74, %entry.sw.epilog_crit_edge75, %entry.sw.epilog_crit_edge76, %entry.sw.epilog_crit_edge77, %entry.sw.epilog_crit_edge78
  %conv18 = zext i8 %queue to i32
  %common.coerce.fca.0.extract.i = extractvalue [1 x i32] %common.coerce, 0
  %or.i = tail call i32 @llvm.fshl.i32(i32 %common.coerce.fca.0.extract.i, i32 %common.coerce.fca.0.extract.i, i32 16) #7
  %shl48.i = shl i32 %input.coerce.fca.0.extract, 16
  %xor49.i = xor i32 %shl48.i, %input.coerce.fca.0.extract
  %xor50.i = xor i32 %xor49.i, %or.i
  %shr64.i = lshr i32 %xor50.i, 1
  %shr284.i = lshr i32 %xor50.i, 5
  %xor285.i = xor i32 %shr64.i, %shr284.i
  %xor.i = xor i32 %input.sroa.2.0.extract.shift, %input.coerce.fca.0.extract
  %xor3.i = xor i32 %xor.i, %common.coerce.fca.0.extract.i
  %shr310.i = lshr i32 %xor3.i, 5
  %xor311.i = xor i32 %xor285.i, %shr310.i
  %shr339.i = lshr i32 %xor50.i, 6
  %xor340.i = xor i32 %xor311.i, %shr339.i
  %shr394.i = lshr i32 %xor50.i, 7
  %xor395.i = xor i32 %xor340.i, %shr394.i
  %shr420.i = lshr i32 %xor3.i, 7
  %xor421.i = xor i32 %xor395.i, %shr420.i
  %shr640.i = lshr i32 %xor3.i, 11
  %xor641.i = xor i32 %xor421.i, %shr640.i
  %shr750.i = lshr i32 %xor3.i, 13
  %xor751.i = xor i32 %xor641.i, %shr750.i
  %shl127.i = shl i32 %xor50.i, 14
  %shl237.i = shl i32 %xor50.i, 12
  %xor238.i = xor i32 %shl127.i, %shl237.i
  %shl374.i = shl i32 %xor3.i, 10
  %xor375.i = xor i32 %xor238.i, %shl374.i
  %shl512.i = shl i32 %xor50.i, 7
  %xor513.i = xor i32 %xor375.i, %shl512.i
  %shl539.i = shl i32 %xor3.i, 7
  %xor540.i = xor i32 %xor513.i, %shl539.i
  %shl732.i = shl i32 %xor50.i, 3
  %xor733.i = xor i32 %xor540.i, %shl732.i
  %shr137.i = lshr i32 %xor3.i, 2
  %xor138.i = xor i32 %shr137.i, %xor3.i
  %shr192.i = lshr i32 %xor3.i, 3
  %xor193.i = xor i32 %xor138.i, %shr192.i
  %shr467.i = lshr i32 %xor3.i, 8
  %xor468.i = xor i32 %xor193.i, %shr467.i
  %shr552.i = lshr i32 %xor50.i, 10
  %xor553.i = xor i32 %xor468.i, %shr552.i
  %shr577.i = lshr i32 %xor3.i, 10
  %xor578.i = xor i32 %xor553.i, %shr577.i
  %shr662.i = lshr i32 %xor50.i, 12
  %xor663.i = xor i32 %xor578.i, %shr662.i
  %shr687.i = lshr i32 %xor3.i, 12
  %xor688.i = xor i32 %xor663.i, %shr687.i
  %xor876.i = xor i32 %xor751.i, %xor688.i
  %and877.i = and i32 %xor876.i, 32767
  %shl878.i = shl i32 %xor688.i, 16
  %xor879.i = xor i32 %xor733.i, %shl878.i
  %and880.i = and i32 %xor879.i, 2147418112
  %xor8811260.i = or i32 %and880.i, %and877.i
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %sw.epilog.ixgbe_write_reg64.exit_crit_edge, label %if.end.i

sw.epilog.ixgbe_write_reg64.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg64.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %conv7, 5
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or = or i32 %shl, %shl19
  %7 = and i32 %input.coerce.fca.0.extract, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %spec.select.v = select i1 %tobool.not, i32 34825, i32 8423433
  %spec.select = or i32 %or, %spec.select.v
  %add.ptr.i = getelementptr i8, ptr %6, i32 60968
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %xor8811260.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #7
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 60972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #7, !srcloc !102
  br label %ixgbe_write_reg64.exit

ixgbe_write_reg64.exit:                           ; preds = %if.end.i, %sw.epilog.ixgbe_write_reg64.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_add_signature_filter_82599.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_add_signature_filter_82599, %if.then45)) #7
          to label %cleanup [label %if.then45], !srcloc !100

if.then45:                                        ; preds = %ixgbe_write_reg64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %back46 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %back46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back46, align 4
  %netdev47 = getelementptr inbounds %struct.ixgbe_adapter, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %netdev47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev47, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_add_signature_filter_82599.__UNIQUE_ID_ddebug367, ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %conv18, i32 noundef %xor8811260.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %ixgbe_write_reg64.exit, %if.then, %do.body9
  %retval.0 = phi i32 [ -4, %if.then ], [ 0, %if.then45 ], [ -4, %do.body9 ], [ 0, %ixgbe_write_reg64.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_atr_compute_perfect_hash_82599(ptr nocapture noundef %input, ptr nocapture noundef readonly %input_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input_mask, align 4
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %and = and i32 %3, %1
  store i32 %and, ptr %input, align 4
  %arrayidx.1 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr [11 x i32], ptr %input, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.1, align 4
  %and.1 = and i32 %7, %5
  store i32 %and.1, ptr %arrayidx1.1, align 4
  %arrayidx.2 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %arrayidx1.2 = getelementptr [11 x i32], ptr %input, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.2, align 4
  %and.2 = and i32 %11, %9
  store i32 %and.2, ptr %arrayidx1.2, align 4
  %arrayidx.3 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  %arrayidx1.3 = getelementptr [11 x i32], ptr %input, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.3, align 4
  %and.3 = and i32 %15, %13
  store i32 %and.3, ptr %arrayidx1.3, align 4
  %arrayidx.4 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4, align 4
  %arrayidx1.4 = getelementptr [11 x i32], ptr %input, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.4, align 4
  %and.4 = and i32 %19, %17
  store i32 %and.4, ptr %arrayidx1.4, align 4
  %arrayidx.5 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5, align 4
  %arrayidx1.5 = getelementptr [11 x i32], ptr %input, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.5, align 4
  %and.5 = and i32 %23, %21
  store i32 %and.5, ptr %arrayidx1.5, align 4
  %arrayidx.6 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.6, align 4
  %arrayidx1.6 = getelementptr [11 x i32], ptr %input, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx1.6, align 4
  %and.6 = and i32 %27, %25
  store i32 %and.6, ptr %arrayidx1.6, align 4
  %arrayidx.7 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.7, align 4
  %arrayidx1.7 = getelementptr [11 x i32], ptr %input, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx1.7, align 4
  %and.7 = and i32 %31, %29
  store i32 %and.7, ptr %arrayidx1.7, align 4
  %arrayidx.8 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.8, align 4
  %arrayidx1.8 = getelementptr [11 x i32], ptr %input, i32 0, i32 8
  %34 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx1.8, align 4
  %and.8 = and i32 %35, %33
  store i32 %and.8, ptr %arrayidx1.8, align 4
  %arrayidx.9 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.9, align 4
  %arrayidx1.9 = getelementptr [11 x i32], ptr %input, i32 0, i32 9
  %38 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx1.9, align 4
  %and.9 = and i32 %39, %37
  store i32 %and.9, ptr %arrayidx1.9, align 4
  %arrayidx.10 = getelementptr [11 x i32], ptr %input_mask, i32 0, i32 10
  %40 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.10, align 4
  %arrayidx1.10 = getelementptr [11 x i32], ptr %input, i32 0, i32 10
  %42 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx1.10, align 4
  %and.10 = and i32 %43, %41
  store i32 %and.10, ptr %arrayidx1.10, align 4
  %xor.1 = xor i32 %and.2, %and.1
  %xor.2 = xor i32 %and.3, %xor.1
  %xor.3 = xor i32 %and.4, %xor.2
  %xor.4 = xor i32 %and.5, %xor.3
  %xor.5 = xor i32 %and.6, %xor.4
  %xor.6 = xor i32 %and.7, %xor.5
  %xor.7 = xor i32 %and.8, %xor.6
  %xor.8 = xor i32 %and.9, %xor.7
  %xor.9 = xor i32 %and.10, %xor.8
  %or = tail call i32 @llvm.fshl.i32(i32 %xor.9, i32 %xor.9, i32 16)
  %shr10 = lshr i32 %and, 16
  %xor11 = xor i32 %shr10, %and
  %xor12 = xor i32 %xor11, %xor.9
  %shl24 = shl i32 %and, 16
  %xor25 = xor i32 %shl24, %and
  %xor26 = xor i32 %xor25, %or
  br label %do.body30

do.body30:                                        ; preds = %do.body30.do.body30_crit_edge, %entry
  %i.289 = phi i32 [ 1, %entry ], [ %inc50, %do.body30.do.body30_crit_edge ]
  %bucket_hash.288 = phi i32 [ %xor12, %entry ], [ %bucket_hash.4, %do.body30.do.body30_crit_edge ]
  %shl32 = shl nuw nsw i32 1, %i.289
  %and33 = and i32 %shl32, 1034753250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %shr36 = lshr i32 %xor26, %i.289
  %xor37 = select i1 %tobool34.not, i32 0, i32 %shr36
  %bucket_hash.3 = xor i32 %xor37, %bucket_hash.288
  %shl40 = shl i32 65536, %i.289
  %and41 = and i32 %shl40, 1034747904
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %shr44 = lshr i32 %xor12, %i.289
  %xor45 = select i1 %tobool42.not, i32 0, i32 %shr44
  %bucket_hash.4 = xor i32 %bucket_hash.3, %xor45
  %inc50 = add nuw nsw i32 %i.289, 1
  %exitcond.not = icmp eq i32 %inc50, 16
  br i1 %exitcond.not, label %for.end51, label %do.body30.do.body30_crit_edge

do.body30.do.body30_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

for.end51:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %44 = trunc i32 %bucket_hash.4 to i16
  %conv = and i16 %44, 8191
  %bkt_hash = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 8
  %45 = ptrtoint ptr %bkt_hash to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv, ptr %bkt_hash, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fdir_set_input_mask_82599(ptr noundef %hw, ptr nocapture noundef readonly %input_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bkt_hash = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 8
  %0 = ptrtoint ptr %bkt_hash to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bkt_hash, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body1

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_set_input_mask_82599, %if.then5)) #7
          to label %if.end8 [label %if.then5], !srcloc !100

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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug368, ptr noundef %5, ptr noundef nonnull @.str.9) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.body1, %entry.if.end8_crit_edge
  %6 = ptrtoint ptr %input_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %input_mask, align 4
  %8 = and i8 %7, 127
  %and = zext i8 %8 to i32
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and, label %do.body10 [
    i32 0, label %sw.bb
    i32 127, label %if.end8.sw.epilog_crit_edge
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_set_input_mask_82599, %if.then22)) #7
          to label %cleanup [label %if.then22], !srcloc !100

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %back23 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %back23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back23, align 4
  %netdev24 = getelementptr inbounds %struct.ixgbe_adapter, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %netdev24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev24, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug369, ptr noundef %13, ptr noundef nonnull @.str.10) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.end8.sw.epilog_crit_edge
  %fdirm.0 = phi i32 [ 32, %if.end8.sw.epilog_crit_edge ], [ 36, %sw.bb ]
  %flow_type = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 1
  %14 = ptrtoint ptr %flow_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flow_type, align 1
  %16 = and i8 %15, 3
  %and31 = zext i8 %16 to i32
  %17 = zext i32 %and31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and31, label %do.body63 [
    i32 0, label %sw.bb32
    i32 3, label %sw.epilog.sw.epilog83_crit_edge
  ]

sw.epilog.sw.epilog83_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog83

sw.bb32:                                          ; preds = %sw.epilog
  %dst_port = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 6
  %18 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dst_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool35.not = icmp eq i16 %19, 0
  br i1 %tobool35.not, label %lor.lhs.false, label %sw.bb32.do.body40_crit_edge

sw.bb32.do.body40_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

lor.lhs.false:                                    ; preds = %sw.bb32
  %or33 = or i32 %fdirm.0, 8
  %src_port = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 5
  %20 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %src_port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool37.not = icmp eq i16 %21, 0
  br i1 %tobool37.not, label %lor.lhs.false.sw.epilog83_crit_edge, label %lor.lhs.false.do.body40_crit_edge

lor.lhs.false.do.body40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

lor.lhs.false.sw.epilog83_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog83

do.body40:                                        ; preds = %lor.lhs.false.do.body40_crit_edge, %sw.bb32.do.body40_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_set_input_mask_82599, %if.then52)) #7
          to label %cleanup [label %if.then52], !srcloc !100

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %back53 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %22 = ptrtoint ptr %back53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %back53, align 4
  %netdev54 = getelementptr inbounds %struct.ixgbe_adapter, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %netdev54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev54, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug370, ptr noundef %25, ptr noundef nonnull @.str.11) #7
  br label %cleanup

do.body63:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_set_input_mask_82599, %if.then75)) #7
          to label %cleanup [label %if.then75], !srcloc !100

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %back76 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %back76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %back76, align 4
  %netdev77 = getelementptr inbounds %struct.ixgbe_adapter, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %netdev77 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev77, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug371, ptr noundef %29, ptr noundef nonnull @.str.12) #7
  br label %cleanup

sw.epilog83:                                      ; preds = %lor.lhs.false.sw.epilog83_crit_edge, %sw.epilog.sw.epilog83_crit_edge
  %fdirm.1 = phi i32 [ %fdirm.0, %sw.epilog.sw.epilog83_crit_edge ], [ %or33, %lor.lhs.false.sw.epilog83_crit_edge ]
  %vlan_id = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 2
  %30 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vlan_id, align 2
  %32 = and i16 %31, -4097
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %32, label %do.body94 [
    i16 0, label %sw.bb86
    i16 4095, label %sw.epilog83.sw.bb88_crit_edge
    i16 -8192, label %sw.bb90
    i16 -4097, label %sw.epilog83.sw.epilog114_crit_edge
  ]

sw.epilog83.sw.epilog114_crit_edge:               ; preds = %sw.epilog83
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog114

sw.epilog83.sw.bb88_crit_edge:                    ; preds = %sw.epilog83
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb88

sw.bb86:                                          ; preds = %sw.epilog83
  call void @__sanitizer_cov_trace_pc() #9
  %or87 = or i32 %fdirm.1, 1
  br label %sw.bb88

sw.bb88:                                          ; preds = %sw.bb86, %sw.epilog83.sw.bb88_crit_edge
  %fdirm.2 = phi i32 [ %fdirm.1, %sw.epilog83.sw.bb88_crit_edge ], [ %or87, %sw.bb86 ]
  %or89 = or i32 %fdirm.2, 2
  br label %sw.epilog114

sw.bb90:                                          ; preds = %sw.epilog83
  call void @__sanitizer_cov_trace_pc() #9
  %or91 = or i32 %fdirm.1, 1
  br label %sw.epilog114

do.body94:                                        ; preds = %sw.epilog83
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_set_input_mask_82599, %if.then106)) #7
          to label %cleanup [label %if.then106], !srcloc !100

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %back107 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %34 = ptrtoint ptr %back107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %back107, align 4
  %netdev108 = getelementptr inbounds %struct.ixgbe_adapter, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %netdev108 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev108, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug372, ptr noundef %37, ptr noundef nonnull @.str.13) #7
  br label %cleanup

sw.epilog114:                                     ; preds = %sw.bb90, %sw.bb88, %sw.epilog83.sw.epilog114_crit_edge
  %fdirm.3 = phi i32 [ %fdirm.1, %sw.epilog83.sw.epilog114_crit_edge ], [ %or91, %sw.bb90 ], [ %or89, %sw.bb88 ]
  %flex_bytes = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 7
  %38 = ptrtoint ptr %flex_bytes to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flex_bytes, align 4
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %39, label %do.body121 [
    i16 0, label %sw.bb117
    i16 -1, label %sw.epilog114.sw.epilog141_crit_edge
  ]

sw.epilog114.sw.epilog141_crit_edge:              ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog141

sw.bb117:                                         ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #9
  %or118 = or i32 %fdirm.3, 16
  br label %sw.epilog141

do.body121:                                       ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_set_input_mask_82599, %if.then133)) #7
          to label %cleanup [label %if.then133], !srcloc !100

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  %back134 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %41 = ptrtoint ptr %back134 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %back134, align 4
  %netdev135 = getelementptr inbounds %struct.ixgbe_adapter, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %netdev135 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev135, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug373, ptr noundef %44, ptr noundef nonnull @.str.14) #7
  br label %cleanup

sw.epilog141:                                     ; preds = %sw.bb117, %sw.epilog114.sw.epilog141_crit_edge
  %fdirm.4 = phi i32 [ %fdirm.3, %sw.epilog114.sw.epilog141_crit_edge ], [ %or118, %sw.bb117 ]
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %sw.epilog141.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

sw.epilog141.ixgbe_write_reg.exit_crit_edge:      ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %fdirm.4) #7
  %add.ptr.i = getelementptr i8, ptr %46, i32 61040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %47) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %sw.epilog141.ixgbe_write_reg.exit_crit_edge
  %dst_port.i = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 6
  %48 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dst_port.i, align 2
  %conv.i = zext i16 %49 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %src_port.i = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 5
  %50 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %src_port.i, align 4
  %conv1.i = zext i16 %51 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %and.i = shl i32 %or.i, 1
  %shl2.i = and i32 %and.i, -1431655766
  %and3.i = lshr i32 %or.i, 1
  %shr.i = and i32 %and3.i, 1431655765
  %or4.i = or i32 %shl2.i, %shr.i
  %and5.i = shl i32 %or4.i, 2
  %shl6.i = and i32 %and5.i, -858993460
  %and7.i = lshr i32 %or4.i, 2
  %shr8.i = and i32 %and7.i, 858993459
  %or9.i = or i32 %shl6.i, %shr8.i
  %and10.i = shl i32 %or9.i, 4
  %shl11.i = and i32 %and10.i, -252645136
  %and12.i = lshr i32 %or9.i, 4
  %shr13.i = and i32 %and12.i, 252645135
  %or14.i = or i32 %shl11.i, %shr13.i
  %and15.i = shl i32 %or14.i, 8
  %shl16.i = and i32 %and15.i, -16711936
  %and17.i = lshr i32 %or14.i, 8
  %shr18.i = and i32 %and17.i, 16711935
  %or19.i = or i32 %shl16.i, %shr18.i
  %neg = xor i32 %or19.i, -1
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i236 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i236, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit239_crit_edge, label %do.body1.i238

ixgbe_write_reg.exit.ixgbe_write_reg.exit239_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit239

do.body1.i238:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %neg) #7
  %add.ptr.i237 = getelementptr i8, ptr %53, i32 60996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 %54) #7, !srcloc !102
  br label %ixgbe_write_reg.exit239

ixgbe_write_reg.exit239:                          ; preds = %do.body1.i238, %ixgbe_write_reg.exit.ixgbe_write_reg.exit239_crit_edge
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i240 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i240, label %ixgbe_write_reg.exit239.ixgbe_write_reg.exit243_crit_edge, label %do.body1.i242

ixgbe_write_reg.exit239.ixgbe_write_reg.exit243_crit_edge: ; preds = %ixgbe_write_reg.exit239
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit243

do.body1.i242:                                    ; preds = %ixgbe_write_reg.exit239
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %neg) #7
  %add.ptr.i241 = getelementptr i8, ptr %56, i32 61000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241, i32 %57) #7, !srcloc !102
  br label %ixgbe_write_reg.exit243

ixgbe_write_reg.exit243:                          ; preds = %do.body1.i242, %ixgbe_write_reg.exit239.ixgbe_write_reg.exit243_crit_edge
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type, align 4
  %.off = add i32 %59, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb144, label %ixgbe_write_reg.exit243.sw.epilog147_crit_edge

ixgbe_write_reg.exit243.sw.epilog147_crit_edge:   ; preds = %ixgbe_write_reg.exit243
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog147

sw.bb144:                                         ; preds = %ixgbe_write_reg.exit243
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i244 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i244, label %sw.bb144.sw.epilog147_crit_edge, label %do.body1.i246

sw.bb144.sw.epilog147_crit_edge:                  ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog147

do.body1.i246:                                    ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %neg) #7
  %add.ptr.i245 = getelementptr i8, ptr %61, i32 61048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245, i32 %62) #7, !srcloc !102
  br label %sw.epilog147

sw.epilog147:                                     ; preds = %do.body1.i246, %sw.bb144.sw.epilog147_crit_edge, %ixgbe_write_reg.exit243.sw.epilog147_crit_edge
  %src_ip = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 4
  %63 = ptrtoint ptr %src_ip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_ip, align 4
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i248 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i248, label %sw.epilog147.ixgbe_write_reg.exit251_crit_edge, label %do.body1.i250

sw.epilog147.ixgbe_write_reg.exit251_crit_edge:   ; preds = %sw.epilog147
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit251

do.body1.i250:                                    ; preds = %sw.epilog147
  call void @__sanitizer_cov_trace_pc() #9
  %neg148 = xor i32 %64, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i249 = getelementptr i8, ptr %66, i32 60992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249, i32 %neg148) #7, !srcloc !102
  br label %ixgbe_write_reg.exit251

ixgbe_write_reg.exit251:                          ; preds = %do.body1.i250, %sw.epilog147.ixgbe_write_reg.exit251_crit_edge
  %dst_ip = getelementptr inbounds %struct.anon.133, ptr %input_mask, i32 0, i32 3
  %67 = ptrtoint ptr %dst_ip to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dst_ip, align 4
  %69 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i252 = icmp eq ptr %70, null
  br i1 %tobool.not.i.i252, label %ixgbe_write_reg.exit251.cleanup_crit_edge, label %do.body1.i254

ixgbe_write_reg.exit251.cleanup_crit_edge:        ; preds = %ixgbe_write_reg.exit251
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i254:                                    ; preds = %ixgbe_write_reg.exit251
  call void @__sanitizer_cov_trace_pc() #9
  %neg166 = xor i32 %68, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i253 = getelementptr i8, ptr %70, i32 60988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253, i32 %neg166) #7, !srcloc !102
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i254, %ixgbe_write_reg.exit251.cleanup_crit_edge, %if.then133, %do.body121, %if.then106, %do.body94, %if.then75, %do.body63, %if.then52, %do.body40, %if.then22, %do.body10
  %retval.0 = phi i32 [ -4, %if.then22 ], [ -4, %if.then52 ], [ -4, %if.then75 ], [ -4, %if.then106 ], [ -4, %if.then133 ], [ -4, %do.body10 ], [ -4, %do.body40 ], [ -4, %do.body63 ], [ -4, %do.body94 ], [ -4, %do.body121 ], [ 0, %ixgbe_write_reg.exit251.cleanup_crit_edge ], [ 0, %do.body1.i254 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fdir_write_perfect_filter_82599(ptr noundef %hw, ptr nocapture noundef readonly %input, i16 noundef zeroext %soft_id, i8 noundef zeroext %queue) local_unnamed_addr #0 align 64 {
entry:
  %fdircmd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fdircmd) #7
  %0 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fdircmd, align 4, !annotation !99
  %src_ip = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 4
  %1 = ptrtoint ptr %src_ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src_ip, align 4
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %4, i32 60940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %arrayidx13 = getelementptr %struct.anon.133, ptr %input, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx13, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i162 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i162, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit165_crit_edge, label %do.body1.i164

ixgbe_write_reg.exit.ixgbe_write_reg.exit165_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit165

do.body1.i164:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i163 = getelementptr i8, ptr %8, i32 60944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %6) #7, !srcloc !102
  br label %ixgbe_write_reg.exit165

ixgbe_write_reg.exit165:                          ; preds = %do.body1.i164, %ixgbe_write_reg.exit.ixgbe_write_reg.exit165_crit_edge
  %arrayidx30 = getelementptr %struct.anon.133, ptr %input, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx30, align 4
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i166 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i166, label %ixgbe_write_reg.exit165.ixgbe_write_reg.exit169_crit_edge, label %do.body1.i168

ixgbe_write_reg.exit165.ixgbe_write_reg.exit169_crit_edge: ; preds = %ixgbe_write_reg.exit165
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit169

do.body1.i168:                                    ; preds = %ixgbe_write_reg.exit165
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i167 = getelementptr i8, ptr %12, i32 60948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167, i32 %10) #7, !srcloc !102
  br label %ixgbe_write_reg.exit169

ixgbe_write_reg.exit169:                          ; preds = %do.body1.i168, %ixgbe_write_reg.exit165.ixgbe_write_reg.exit169_crit_edge
  %13 = ptrtoint ptr %src_ip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_ip, align 4
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i170 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i170, label %ixgbe_write_reg.exit169.ixgbe_write_reg.exit173_crit_edge, label %do.body1.i172

ixgbe_write_reg.exit169.ixgbe_write_reg.exit173_crit_edge: ; preds = %ixgbe_write_reg.exit169
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit173

do.body1.i172:                                    ; preds = %ixgbe_write_reg.exit169
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i171 = getelementptr i8, ptr %16, i32 60952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %14) #7, !srcloc !102
  br label %ixgbe_write_reg.exit173

ixgbe_write_reg.exit173:                          ; preds = %do.body1.i172, %ixgbe_write_reg.exit169.ixgbe_write_reg.exit173_crit_edge
  %dst_ip = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 3
  %17 = ptrtoint ptr %dst_ip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_ip, align 4
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i174 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i174, label %ixgbe_write_reg.exit173.ixgbe_write_reg.exit177_crit_edge, label %do.body1.i176

ixgbe_write_reg.exit173.ixgbe_write_reg.exit177_crit_edge: ; preds = %ixgbe_write_reg.exit173
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit177

do.body1.i176:                                    ; preds = %ixgbe_write_reg.exit173
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i175 = getelementptr i8, ptr %20, i32 60956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 %18) #7, !srcloc !102
  br label %ixgbe_write_reg.exit177

ixgbe_write_reg.exit177:                          ; preds = %do.body1.i176, %ixgbe_write_reg.exit173.ixgbe_write_reg.exit177_crit_edge
  %dst_port = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 6
  %21 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dst_port, align 2
  %src_port = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 5
  %23 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %src_port, align 4
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i178 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i178, label %ixgbe_write_reg.exit177.ixgbe_write_reg.exit181_crit_edge, label %do.body1.i180

ixgbe_write_reg.exit177.ixgbe_write_reg.exit181_crit_edge: ; preds = %ixgbe_write_reg.exit177
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit181

do.body1.i180:                                    ; preds = %ixgbe_write_reg.exit177
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %22 to i32
  %shl79 = shl nuw i32 %conv, 16
  %conv80 = zext i16 %24 to i32
  %or81 = or i32 %shl79, %conv80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %or81) #7
  %add.ptr.i179 = getelementptr i8, ptr %26, i32 60960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 %27) #7, !srcloc !102
  br label %ixgbe_write_reg.exit181

ixgbe_write_reg.exit181:                          ; preds = %do.body1.i180, %ixgbe_write_reg.exit177.ixgbe_write_reg.exit181_crit_edge
  %flex_bytes = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 7
  %28 = ptrtoint ptr %flex_bytes to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flex_bytes, align 4
  %vlan_id = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 2
  %30 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vlan_id, align 2
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i182 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i182, label %ixgbe_write_reg.exit181.ixgbe_write_reg.exit185_crit_edge, label %do.body1.i184

ixgbe_write_reg.exit181.ixgbe_write_reg.exit185_crit_edge: ; preds = %ixgbe_write_reg.exit181
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit185

do.body1.i184:                                    ; preds = %ixgbe_write_reg.exit181
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv82 = zext i16 %34 to i32
  %shl83 = shl nuw i32 %conv82, 16
  %conv84 = zext i16 %31 to i32
  %or85 = or i32 %shl83, %conv84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %or85) #7
  %add.ptr.i183 = getelementptr i8, ptr %33, i32 60964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %35) #7, !srcloc !102
  br label %ixgbe_write_reg.exit185

ixgbe_write_reg.exit185:                          ; preds = %do.body1.i184, %ixgbe_write_reg.exit181.ixgbe_write_reg.exit185_crit_edge
  %bkt_hash = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 8
  %36 = ptrtoint ptr %bkt_hash to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bkt_hash, align 2
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i186 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i186, label %ixgbe_write_reg.exit185.ixgbe_write_reg.exit189_crit_edge, label %do.body1.i188

ixgbe_write_reg.exit185.ixgbe_write_reg.exit189_crit_edge: ; preds = %ixgbe_write_reg.exit185
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit189

do.body1.i188:                                    ; preds = %ixgbe_write_reg.exit185
  call void @__sanitizer_cov_trace_pc() #9
  %conv87 = zext i16 %soft_id to i32
  %shl88 = shl nuw i32 %conv87, 16
  %conv86 = zext i16 %37 to i32
  %or89 = or i32 %shl88, %conv86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %or89) #7
  %add.ptr.i187 = getelementptr i8, ptr %39, i32 60968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %40) #7, !srcloc !102
  br label %ixgbe_write_reg.exit189

ixgbe_write_reg.exit189:                          ; preds = %do.body1.i188, %ixgbe_write_reg.exit185.ixgbe_write_reg.exit189_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %flow_type = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 1
  %41 = ptrtoint ptr %flow_type to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flow_type, align 1
  %43 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %input, align 4
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i190 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i190, label %ixgbe_write_reg.exit189.ixgbe_write_reg.exit193_crit_edge, label %do.body1.i192

ixgbe_write_reg.exit189.ixgbe_write_reg.exit193_crit_edge: ; preds = %ixgbe_write_reg.exit189
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit193

do.body1.i192:                                    ; preds = %ixgbe_write_reg.exit189
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %queue)
  %cmp = icmp eq i8 %queue, 127
  %spec.select = select i1 %cmp, i32 35337, i32 34825
  %conv93 = zext i8 %42 to i32
  %shl94 = shl nuw nsw i32 %conv93, 5
  %or95 = or i32 %spec.select, %shl94
  %conv90 = zext i8 %queue to i32
  %shl97 = shl nuw nsw i32 %conv90, 16
  %or98 = or i32 %or95, %shl97
  %conv99 = zext i8 %44 to i32
  %shl100 = shl nuw i32 %conv99, 24
  %or101 = or i32 %or98, %shl100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %or101) #7
  %add.ptr.i191 = getelementptr i8, ptr %46, i32 60972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 %47) #7, !srcloc !102
  br label %ixgbe_write_reg.exit193

ixgbe_write_reg.exit193:                          ; preds = %do.body1.i192, %ixgbe_write_reg.exit189.ixgbe_write_reg.exit193_crit_edge
  %call102 = call fastcc i32 @ixgbe_fdir_check_cmd_complete(ptr noundef %hw, ptr noundef nonnull %fdircmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool.not = icmp eq i32 %call102, 0
  br i1 %tobool.not, label %ixgbe_write_reg.exit193.cleanup_crit_edge, label %do.body104

ixgbe_write_reg.exit193.cleanup_crit_edge:        ; preds = %ixgbe_write_reg.exit193
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body104:                                       ; preds = %ixgbe_write_reg.exit193
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_write_perfect_filter_82599.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_write_perfect_filter_82599, %if.then109)) #7
          to label %cleanup [label %if.then109], !srcloc !100

if.then109:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %48 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_write_perfect_filter_82599.__UNIQUE_ID_ddebug374, ptr noundef %51, ptr noundef nonnull @.str.16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %do.body104, %ixgbe_write_reg.exit193.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fdircmd) #7
  ret i32 %call102
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fdir_erase_perfect_filter_82599(ptr noundef %hw, ptr nocapture noundef readonly %input, i16 noundef zeroext %soft_id) local_unnamed_addr #0 align 64 {
entry:
  %fdircmd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fdircmd) #7
  %0 = ptrtoint ptr %fdircmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fdircmd, align 4, !annotation !99
  %bkt_hash = getelementptr inbounds %struct.anon.133, ptr %input, i32 0, i32 8
  %1 = ptrtoint ptr %bkt_hash to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bkt_hash, align 2
  %conv = zext i16 %2 to i32
  %conv1 = zext i16 %soft_id to i32
  %shl = shl nuw i32 %conv1, 16
  %or = or i32 %shl, %conv
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %4, i32 60968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i28 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i28, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit31_crit_edge, label %do.body1.i30

ixgbe_write_reg.exit.ixgbe_write_reg.exit31_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit31

do.body1.i30:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i29 = getelementptr i8, ptr %7, i32 60972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 50331648) #7, !srcloc !102
  br label %ixgbe_write_reg.exit31

ixgbe_write_reg.exit31:                           ; preds = %do.body1.i30, %ixgbe_write_reg.exit.ixgbe_write_reg.exit31_crit_edge
  %call2 = call fastcc i32 @ixgbe_fdir_check_cmd_complete(ptr noundef %hw, ptr noundef nonnull %fdircmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end11, label %do.body3

do.body3:                                         ; preds = %ixgbe_write_reg.exit31
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_fdir_erase_perfect_filter_82599.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_fdir_erase_perfect_filter_82599, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !100

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_fdir_erase_perfect_filter_82599.__UNIQUE_ID_ddebug375, ptr noundef %11, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end11:                                         ; preds = %ixgbe_write_reg.exit31
  %12 = ptrtoint ptr %fdircmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fdircmd, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i32 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i32, label %if.then13.ixgbe_write_reg.exit35_crit_edge, label %do.body1.i34

if.then13.ixgbe_write_reg.exit35_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit35

do.body1.i34:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i33 = getelementptr i8, ptr %15, i32 60968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %16) #7, !srcloc !102
  br label %ixgbe_write_reg.exit35

ixgbe_write_reg.exit35:                           ; preds = %do.body1.i34, %if.then13.ixgbe_write_reg.exit35_crit_edge
  %call14 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i36 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i36, label %ixgbe_write_reg.exit35.cleanup_crit_edge, label %do.body1.i38

ixgbe_write_reg.exit35.cleanup_crit_edge:         ; preds = %ixgbe_write_reg.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i38:                                     ; preds = %ixgbe_write_reg.exit35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr.i37 = getelementptr i8, ptr %18, i32 60972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 33554432) #7, !srcloc !102
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i38, %ixgbe_write_reg.exit35.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %do.body3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fdircmd) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_invariants_82599(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ixgbe_init_mac_link_ops_82599(ptr noundef %hw)
  %mcft_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 10
  %0 = ptrtoint ptr %mcft_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 128, ptr %mcft_size, align 4
  %vft_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 11
  %1 = ptrtoint ptr %vft_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 128, ptr %vft_size, align 4
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %2 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %num_rar_entries, align 4
  %rx_pb_size = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 14
  %3 = ptrtoint ptr %rx_pb_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 512, ptr %rx_pb_size, align 4
  %max_rx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 16
  %4 = ptrtoint ptr %max_rx_queues to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %max_rx_queues, align 4
  %max_tx_queues = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 15
  %5 = ptrtoint ptr %max_tx_queues to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %max_tx_queues, align 4
  %call = tail call zeroext i16 @ixgbe_get_pcie_msix_count_generic(ptr noundef %hw) #7
  %max_msix_vectors = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %max_msix_vectors to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call, ptr %max_msix_vectors, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_init_mac_link_ops_82599(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %fw_offset.i = alloca i16, align 2
  %fw_lesm_param_offset.i = alloca i16, align 2
  %fw_lesm_state.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %0 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_media_type, align 4
  %call = tail call i32 %1(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %mvals.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvals.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %5) #7
  %and.i = and i32 %call.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true
  %call1.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 22560) #7
  %and2.i = and i32 %call1.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %ixgbe_mng_enabled.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ixgbe_mng_enabled.exit:                           ; preds = %if.end.i
  %6 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvals.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i, align 4
  %call7.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %9) #7
  %and8.i = and i32 %call7.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %ixgbe_mng_enabled.exit.if.else_crit_edge, label %ixgbe_mng_enabled.exit.if.end_crit_edge

ixgbe_mng_enabled.exit.if.end_crit_edge:          ; preds = %ixgbe_mng_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ixgbe_mng_enabled.exit.if.else_crit_edge:         ; preds = %ixgbe_mng_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %ixgbe_mng_enabled.exit.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %ixgbe_mng_enabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %.sink63 = phi ptr [ null, %if.else ], [ @ixgbe_disable_tx_laser_multispeed_fiber, %if.end.i.if.end_crit_edge ], [ @ixgbe_disable_tx_laser_multispeed_fiber, %land.lhs.true.if.end_crit_edge ], [ @ixgbe_disable_tx_laser_multispeed_fiber, %ixgbe_mng_enabled.exit.if.end_crit_edge ]
  %.sink62 = phi ptr [ null, %if.else ], [ @ixgbe_enable_tx_laser_multispeed_fiber, %if.end.i.if.end_crit_edge ], [ @ixgbe_enable_tx_laser_multispeed_fiber, %land.lhs.true.if.end_crit_edge ], [ @ixgbe_enable_tx_laser_multispeed_fiber, %ixgbe_mng_enabled.exit.if.end_crit_edge ]
  %.sink = phi ptr [ null, %if.else ], [ @ixgbe_flap_tx_laser_multispeed_fiber, %if.end.i.if.end_crit_edge ], [ @ixgbe_flap_tx_laser_multispeed_fiber, %land.lhs.true.if.end_crit_edge ], [ @ixgbe_flap_tx_laser_multispeed_fiber, %ixgbe_mng_enabled.exit.if.end_crit_edge ]
  %disable_tx_laser7 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 23
  %10 = ptrtoint ptr %disable_tx_laser7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.sink63, ptr %disable_tx_laser7, align 4
  %enable_tx_laser9 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 24
  %11 = ptrtoint ptr %enable_tx_laser9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.sink62, ptr %enable_tx_laser9, align 4
  %flap_tx_laser11 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 25
  %12 = ptrtoint ptr %flap_tx_laser11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.sink, ptr %flap_tx_laser11, align 4
  %multispeed_fiber = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 16
  %13 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %multispeed_fiber, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %15 = ptrtoint ptr %setup_link to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ixgbe_setup_mac_link_multispeed_fiber, ptr %setup_link, align 4
  %setup_mac_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 28
  %16 = ptrtoint ptr %setup_mac_link to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ixgbe_setup_mac_link_82599, ptr %setup_mac_link, align 4
  %set_rate_select_speed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 31
  %17 = ptrtoint ptr %set_rate_select_speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ixgbe_set_hard_rate_select_speed, ptr %set_rate_select_speed, align 4
  br label %if.end36

if.else16:                                        ; preds = %if.end
  %18 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_media_type, align 4
  %call19 = tail call i32 %19(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 5
  br i1 %cmp20, label %land.lhs.true21, label %if.else16.if.else32_crit_edge

if.else16.if.else32_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else32

land.lhs.true21:                                  ; preds = %if.else16
  %smart_speed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 14
  %20 = ptrtoint ptr %smart_speed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smart_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %switch = icmp ult i32 %21, 2
  br i1 %switch, label %land.lhs.true27, label %land.lhs.true21.if.else32_crit_edge

land.lhs.true21.if.else32_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else32

land.lhs.true27:                                  ; preds = %land.lhs.true21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %22 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %fw_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  %23 = ptrtoint ptr %fw_lesm_param_offset.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %fw_lesm_param_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  %24 = ptrtoint ptr %fw_lesm_state.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %fw_lesm_state.i, align 2, !annotation !99
  %read.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %25 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i, align 4
  %call.i56 = call i32 %26(ptr noundef %hw, i16 noundef zeroext 15, ptr noundef nonnull %fw_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %lor.lhs.false.i, label %land.lhs.true27.if.then29_crit_edge

land.lhs.true27.if.then29_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

lor.lhs.false.i:                                  ; preds = %land.lhs.true27
  %27 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fw_offset.i, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %28, label %if.end.i58 [
    i16 0, label %lor.lhs.false.i.if.then29_crit_edge
    i16 -1, label %lor.lhs.false.i.if.then29_crit_edge64
  ]

lor.lhs.false.i.if.then29_crit_edge64:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

lor.lhs.false.i.if.then29_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.end.i58:                                       ; preds = %lor.lhs.false.i
  %30 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i, align 4
  %add.i = add i16 %28, 2
  %call11.i = call i32 %31(ptr noundef %hw, i16 noundef zeroext %add.i, ptr noundef nonnull %fw_lesm_param_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %if.end.i58.if.then29_crit_edge

if.end.i58.if.then29_crit_edge:                   ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

lor.lhs.false13.i:                                ; preds = %if.end.i58
  %32 = ptrtoint ptr %fw_lesm_param_offset.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fw_lesm_param_offset.i, align 2
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %33, label %if.end22.i [
    i16 0, label %lor.lhs.false13.i.if.then29_crit_edge
    i16 -1, label %lor.lhs.false13.i.if.then29_crit_edge65
  ]

lor.lhs.false13.i.if.then29_crit_edge65:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

lor.lhs.false13.i.if.then29_crit_edge:            ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.end22.i:                                       ; preds = %lor.lhs.false13.i
  %35 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read.i, align 4
  %add27.i = add nuw i16 %33, 1
  %call29.i = call i32 %36(ptr noundef %hw, i16 noundef zeroext %add27.i, ptr noundef nonnull %fw_lesm_state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i, label %if.end22.i.if.then29_crit_edge

if.end22.i.if.then29_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

land.lhs.true.i:                                  ; preds = %if.end22.i
  %37 = ptrtoint ptr %fw_lesm_state.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fw_lesm_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %38)
  %tobool32.not.i = icmp sgt i16 %38, -1
  br i1 %tobool32.not.i, label %land.lhs.true.i.if.then29_crit_edge, label %ixgbe_verify_lesm_fw_enabled_82599.exit

land.lhs.true.i.if.then29_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

ixgbe_verify_lesm_fw_enabled_82599.exit:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_offset.i) #7
  br label %if.else32

if.then29:                                        ; preds = %land.lhs.true.i.if.then29_crit_edge, %if.end22.i.if.then29_crit_edge, %lor.lhs.false13.i.if.then29_crit_edge, %lor.lhs.false13.i.if.then29_crit_edge65, %if.end.i58.if.then29_crit_edge, %lor.lhs.false.i.if.then29_crit_edge, %lor.lhs.false.i.if.then29_crit_edge64, %land.lhs.true27.if.then29_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %setup_link31 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %39 = ptrtoint ptr %setup_link31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ixgbe_setup_mac_link_smartspeed, ptr %setup_link31, align 4
  br label %if.end36

if.else32:                                        ; preds = %ixgbe_verify_lesm_fw_enabled_82599.exit, %land.lhs.true21.if.else32_crit_edge, %if.else16.if.else32_crit_edge
  %setup_link34 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %40 = ptrtoint ptr %setup_link34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ixgbe_setup_mac_link_82599, ptr %setup_link34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then29, %if.then12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ixgbe_get_pcie_msix_count_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_disable_tx_laser_multispeed_fiber(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %call1 = tail call zeroext i1 @ixgbe_check_reset_blocked(ptr noundef %hw) #7
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

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
  %or = or i32 %call, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end.ixgbe_write_reg.exit_crit_edge
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 21474800) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_enable_tx_laser_multispeed_fiber(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
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
  %and = and i32 %call, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  tail call void @msleep(i32 noundef 100) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_flap_tx_laser_multispeed_fiber(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ixgbe_check_reset_blocked(ptr noundef %hw) #7
  br i1 %call, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end:                                           ; preds = %entry
  %autotry_restart = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 20
  %0 = ptrtoint ptr %autotry_restart to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autotry_restart, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then1:                                         ; preds = %if.end
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %call1.i = tail call zeroext i1 @ixgbe_check_reset_blocked(ptr noundef %hw) #7
  br i1 %call1.i, label %if.then1.ixgbe_disable_tx_laser_multispeed_fiber.exit_crit_edge, label %if.end.i

if.then1.ixgbe_disable_tx_laser_multispeed_fiber.exit_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_disable_tx_laser_multispeed_fiber.exit

if.end.i:                                         ; preds = %if.then1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %if.end.i.ixgbe_write_reg.exit.i_crit_edge, label %do.body1.i.i

if.end.i.ixgbe_write_reg.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit.i

do.body1.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %call.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !102
  br label %ixgbe_write_reg.exit.i

ixgbe_write_reg.exit.i:                           ; preds = %do.body1.i.i, %if.end.i.ixgbe_write_reg.exit.i_crit_edge
  %call2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #7
  br label %ixgbe_disable_tx_laser_multispeed_fiber.exit

ixgbe_disable_tx_laser_multispeed_fiber.exit:     ; preds = %ixgbe_write_reg.exit.i, %if.then1.ixgbe_disable_tx_laser_multispeed_fiber.exit_crit_edge
  %call.i9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i.i10 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i10, label %ixgbe_disable_tx_laser_multispeed_fiber.exit.ixgbe_enable_tx_laser_multispeed_fiber.exit_crit_edge, label %do.body1.i.i12

ixgbe_disable_tx_laser_multispeed_fiber.exit.ixgbe_enable_tx_laser_multispeed_fiber.exit_crit_edge: ; preds = %ixgbe_disable_tx_laser_multispeed_fiber.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_enable_tx_laser_multispeed_fiber.exit

do.body1.i.i12:                                   ; preds = %ixgbe_disable_tx_laser_multispeed_fiber.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i9, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %add.ptr.i.i11 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 %8) #7, !srcloc !102
  br label %ixgbe_enable_tx_laser_multispeed_fiber.exit

ixgbe_enable_tx_laser_multispeed_fiber.exit:      ; preds = %do.body1.i.i12, %ixgbe_disable_tx_laser_multispeed_fiber.exit.ixgbe_enable_tx_laser_multispeed_fiber.exit_crit_edge
  %call1.i13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  tail call void @msleep(i32 noundef 100) #7
  %9 = ptrtoint ptr %autotry_restart to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %autotry_restart, align 1
  br label %if.end4

if.end4:                                          ; preds = %ixgbe_enable_tx_laser_multispeed_fiber.exit, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_mac_link_multispeed_fiber(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_mac_link_82599(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  %autoneg = alloca i8, align 1
  %link_capabilities = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %autoneg) #7
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %autoneg, align 1
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17064) #7
  %and = and i32 %call, 196608
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_capabilities) #7
  %1 = ptrtoint ptr %link_capabilities to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %link_capabilities, align 4
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %get_link_capabilities = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 30
  %2 = ptrtoint ptr %get_link_capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_link_capabilities, align 4
  %call2 = call i32 %3(ptr noundef %hw, ptr noundef nonnull %link_capabilities, ptr noundef nonnull %autoneg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %link_capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_capabilities, align 4
  %and3 = and i32 %5, %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %orig_link_settings_stored = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 19
  %6 = ptrtoint ptr %orig_link_settings_stored to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %orig_link_settings_stored, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.end5.if.end11_crit_edge, label %if.then8

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %orig_autoc10 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 17
  %8 = ptrtoint ptr %orig_autoc10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_autoc10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5.if.end11_crit_edge
  %orig_autoc.0 = phi i32 [ %9, %if.then8 ], [ %call1, %if.end5.if.end11_crit_edge ]
  %and12 = and i32 %call1, 57344
  %trunc = trunc i32 %and12 to i16
  %10 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %trunc, label %if.else41 [
    i16 -8192, label %if.end11.if.then18_crit_edge
    i16 -16384, label %if.end11.if.then18_crit_edge203
    i16 -32768, label %if.end11.if.then18_crit_edge204
  ]

if.end11.if.then18_crit_edge204:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end11.if.then18_crit_edge203:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end11.if.then18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %if.end11.if.then18_crit_edge, %if.end11.if.then18_crit_edge203, %if.end11.if.then18_crit_edge204
  %and19 = and i32 %call1, 1073676287
  %and20 = and i32 %and3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then18.if.end35_crit_edge, label %if.then22

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then22:                                        ; preds = %if.then18
  %or = or i32 %and19, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %orig_autoc.0)
  %tobool24.not199 = icmp slt i32 %orig_autoc.0, 0
  %spec.select = select i1 %tobool24.not199, i32 %or, i32 %and19
  %and27 = and i32 %orig_autoc.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then22.if.end35_crit_edge, label %land.lhs.true

if.then22.if.end35_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %smart_speed_active = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 15
  %11 = ptrtoint ptr %smart_speed_active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %smart_speed_active, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp30 = icmp eq i8 %12, 0
  %or33 = or i32 %spec.select, 65536
  %spec.select186 = select i1 %cmp30, i32 %or33, i32 %spec.select
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.then22.if.end35_crit_edge, %if.then18.if.end35_crit_edge
  %autoc.1 = phi i32 [ %spec.select, %if.then22.if.end35_crit_edge ], [ %and19, %if.then18.if.end35_crit_edge ], [ %spec.select186, %land.lhs.true ]
  %and36 = shl i32 %and3, 25
  %13 = and i32 %and36, 1073741824
  %14 = or i32 %autoc.1, %13
  br label %if.end83

if.else41:                                        ; preds = %if.end11
  %and13 = and i32 %call1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp42 = icmp eq i32 %and13, 0
  br i1 %cmp42, label %land.lhs.true44, label %if.else41.if.else60_crit_edge

if.else41.if.else60_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else60

land.lhs.true44:                                  ; preds = %if.else41
  %15 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %trunc, label %land.lhs.true44.if.else60_crit_edge [
    i16 0, label %land.lhs.true44.if.then50_crit_edge
    i16 16384, label %land.lhs.true44.if.then50_crit_edge205
  ]

land.lhs.true44.if.then50_crit_edge205:           ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

land.lhs.true44.if.then50_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

land.lhs.true44.if.else60_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else60

if.then50:                                        ; preds = %land.lhs.true44.if.then50_crit_edge, %land.lhs.true44.if.then50_crit_edge205
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and3)
  %cmp51 = icmp eq i32 %and3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and)
  %cmp54 = icmp eq i32 %and, 131072
  %or.cond188 = select i1 %cmp51, i1 %cmp54, i1 false
  br i1 %or.cond188, label %if.then56, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %and57 = and i32 %call1, -57345
  %or58 = or i32 %and57, 24576
  br label %if.end83

if.else60:                                        ; preds = %land.lhs.true44.if.else60_crit_edge, %if.else41.if.else60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and)
  %cmp61 = icmp ne i32 %and, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %and12)
  %cmp64 = icmp ne i32 %and12, 24576
  %or.cond189 = select i1 %cmp61, i1 true, i1 %cmp64
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and3)
  %cmp67 = icmp ne i32 %and3, 32
  %or.cond190 = select i1 %or.cond189, i1 true, i1 %cmp67
  %cmp42.not = xor i1 %cmp42, true
  %brmerge = select i1 %or.cond190, i1 true, i1 %cmp42.not
  br i1 %brmerge, label %if.else60.cleanup_crit_edge, label %if.then72

if.else60.cleanup_crit_edge:                      ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then72:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  %and73 = and i32 %call1, -57345
  %16 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %autoneg, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool74.not = icmp eq i8 %17, 0
  %or76 = or i32 %and73, 16384
  %spec.select193 = select i1 %tobool74.not, i32 %and73, i32 %or76
  br label %if.end83

if.end83:                                         ; preds = %if.then72, %if.then56, %if.end35
  %autoc.2 = phi i32 [ %or58, %if.then56 ], [ %14, %if.end35 ], [ %spec.select193, %if.then72 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %autoc.2, i32 %call1)
  %cmp84.not = icmp eq i32 %autoc.2, %call1
  br i1 %cmp84.not, label %if.end83.cleanup_crit_edge, label %if.then86

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then86:                                        ; preds = %if.end83
  %prot_autoc_write = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 22
  %18 = ptrtoint ptr %prot_autoc_write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prot_autoc_write, align 4
  %call89 = call i32 %19(ptr noundef %hw, i32 noundef %autoc.2, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.then86.cleanup_crit_edge

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end92:                                         ; preds = %if.then86
  br i1 %autoneg_wait_to_complete, label %if.then94, label %if.end92.if.end126_crit_edge

if.end92.if.end126_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then94:                                        ; preds = %if.end92
  %20 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %trunc, label %if.then94.if.end126_crit_edge [
    i16 -8192, label %if.then94.for.body.preheader_crit_edge
    i16 -16384, label %if.then94.for.body.preheader_crit_edge206
    i16 -32768, label %if.then94.for.body.preheader_crit_edge207
  ]

if.then94.for.body.preheader_crit_edge207:        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then94.for.body.preheader_crit_edge206:        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then94.for.body.preheader_crit_edge:           ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then94.if.end126_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

for.body.preheader:                               ; preds = %if.then94.for.body.preheader_crit_edge, %if.then94.for.body.preheader_crit_edge206, %if.then94.for.body.preheader_crit_edge207
  br label %for.body

for.body:                                         ; preds = %if.end110.for.body_crit_edge, %for.body.preheader
  %i.0202 = phi i32 [ %inc, %if.end110.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call106 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call106)
  %tobool108.not = icmp sgt i32 %call106, -1
  br i1 %tobool108.not, label %if.end110, label %for.body.if.end126_crit_edge

for.body.if.end126_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.end110:                                        ; preds = %for.body
  call void @msleep(i32 noundef 100) #7
  %inc = add nuw nsw i32 %i.0202, 1
  %exitcond.not = icmp eq i32 %inc, 45
  br i1 %exitcond.not, label %if.then113, label %if.end110.for.body_crit_edge

if.end110.for.body_crit_edge:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_mac_link_82599.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_mac_link_82599, %if.then120)) #7
          to label %if.end126 [label %if.then120], !srcloc !100

if.then120:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %21 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_mac_link_82599.__UNIQUE_ID_ddebug361, ptr noundef %24, ptr noundef nonnull @.str.21) #7
  br label %if.end126

if.end126:                                        ; preds = %if.then120, %if.then113, %for.body.if.end126_crit_edge, %if.then94.if.end126_crit_edge, %if.end92.if.end126_crit_edge
  %status.0 = phi i32 [ -14, %if.then120 ], [ 0, %if.end92.if.end126_crit_edge ], [ 0, %if.then94.if.end126_crit_edge ], [ -14, %if.then113 ], [ 0, %for.body.if.end126_crit_edge ]
  call void @msleep(i32 noundef 50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %if.then86.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.else60.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -8, %if.end.cleanup_crit_edge ], [ %call89, %if.then86.cleanup_crit_edge ], [ %status.0, %if.end126 ], [ 0, %if.end83.cleanup_crit_edge ], [ 0, %if.then50.cleanup_crit_edge ], [ 0, %if.else60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_capabilities) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %autoneg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_set_hard_rate_select_speed(ptr noundef %hw, i32 noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %0 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %speed, label %do.body3 [
    i32 128, label %sw.bb
    i32 32, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call, 8224
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call, -8225
  %or2 = or i32 %and, 8192
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_set_hard_rate_select_speed.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_set_hard_rate_select_speed, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !100

if.then:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_set_hard_rate_select_speed.__UNIQUE_ID_ddebug359, ptr noundef %4, ptr noundef nonnull @.str.23) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %esdp_reg.0 = phi i32 [ %or2, %sw.bb1 ], [ %or, %sw.bb ]
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %sw.epilog.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

sw.epilog.ixgbe_write_reg.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %esdp_reg.0) #7
  %add.ptr.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %sw.epilog.ixgbe_write_reg.exit_crit_edge
  %call9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit, %if.then, %do.body3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_mac_link_smartspeed(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  %link_speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed) #7
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %link_speed, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %link_up, align 1
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %autoneg_advertised = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 10
  %2 = and i32 %speed, 160
  %3 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %autoneg_advertised, align 4
  %and10 = and i32 %speed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %entry.if.end16_crit_edge, label %if.then12

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg_advertised, align 4
  %or15 = or i32 %5, 8
  store i32 %or15, ptr %autoneg_advertised, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %entry.if.end16_crit_edge
  %smart_speed_active = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 15
  %6 = ptrtoint ptr %smart_speed_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %smart_speed_active, align 4
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.cond23.4.for.body_crit_edge, %if.end16
  %j.0135 = phi i32 [ 0, %if.end16 ], [ %inc35, %for.cond23.4.for.body_crit_edge ]
  %call19 = call i32 @ixgbe_setup_mac_link_82599(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %for.body.while.body_crit_edge, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

while.body.1:                                     ; preds = %if.end30.while.body.1_crit_edge, %while.body.1.while.body.1_crit_edge
  %__ms.0133.1 = phi i32 [ %dec.1, %while.body.1.while.body.1_crit_edge ], [ 100, %if.end30.while.body.1_crit_edge ]
  %dec.1 = add nsw i32 %__ms.0133.1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #7
  %tobool26.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool26.not.1, label %while.end.1, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.1

while.end.1:                                      ; preds = %while.body.1
  %8 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %check_link, align 4
  %call27.1 = call i32 %9(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.1)
  %cmp28.not.1 = icmp eq i32 %call27.1, 0
  br i1 %cmp28.not.1, label %if.end30.1, label %while.end.1.out_crit_edge

while.end.1.out_crit_edge:                        ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end30.1:                                       ; preds = %while.end.1
  %10 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool31.not.1 = icmp eq i8 %11, 0
  br i1 %tobool31.not.1, label %if.end30.1.while.body.2_crit_edge, label %if.end30.1.land.lhs.true_crit_edge

if.end30.1.land.lhs.true_crit_edge:               ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end30.1.while.body.2_crit_edge:                ; preds = %if.end30.1
  br label %while.body.2

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %if.end30.1.while.body.2_crit_edge
  %__ms.0133.2 = phi i32 [ %dec.2, %while.body.2.while.body.2_crit_edge ], [ 100, %if.end30.1.while.body.2_crit_edge ]
  %dec.2 = add nsw i32 %__ms.0133.2, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #7
  %tobool26.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool26.not.2, label %while.end.2, label %while.body.2.while.body.2_crit_edge

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.2

while.end.2:                                      ; preds = %while.body.2
  %13 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %check_link, align 4
  %call27.2 = call i32 %14(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.2)
  %cmp28.not.2 = icmp eq i32 %call27.2, 0
  br i1 %cmp28.not.2, label %if.end30.2, label %while.end.2.out_crit_edge

while.end.2.out_crit_edge:                        ; preds = %while.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end30.2:                                       ; preds = %while.end.2
  %15 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not.2 = icmp eq i8 %16, 0
  br i1 %tobool31.not.2, label %if.end30.2.while.body.3_crit_edge, label %if.end30.2.land.lhs.true_crit_edge

if.end30.2.land.lhs.true_crit_edge:               ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end30.2.while.body.3_crit_edge:                ; preds = %if.end30.2
  br label %while.body.3

while.body.3:                                     ; preds = %while.body.3.while.body.3_crit_edge, %if.end30.2.while.body.3_crit_edge
  %__ms.0133.3 = phi i32 [ %dec.3, %while.body.3.while.body.3_crit_edge ], [ 100, %if.end30.2.while.body.3_crit_edge ]
  %dec.3 = add nsw i32 %__ms.0133.3, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #7
  %tobool26.not.3 = icmp eq i32 %dec.3, 0
  br i1 %tobool26.not.3, label %while.end.3, label %while.body.3.while.body.3_crit_edge

while.body.3.while.body.3_crit_edge:              ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.3

while.end.3:                                      ; preds = %while.body.3
  %18 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %check_link, align 4
  %call27.3 = call i32 %19(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.3)
  %cmp28.not.3 = icmp eq i32 %call27.3, 0
  br i1 %cmp28.not.3, label %if.end30.3, label %while.end.3.out_crit_edge

while.end.3.out_crit_edge:                        ; preds = %while.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end30.3:                                       ; preds = %while.end.3
  %20 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool31.not.3 = icmp eq i8 %21, 0
  br i1 %tobool31.not.3, label %if.end30.3.while.body.4_crit_edge, label %if.end30.3.land.lhs.true_crit_edge

if.end30.3.land.lhs.true_crit_edge:               ; preds = %if.end30.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end30.3.while.body.4_crit_edge:                ; preds = %if.end30.3
  br label %while.body.4

while.body.4:                                     ; preds = %while.body.4.while.body.4_crit_edge, %if.end30.3.while.body.4_crit_edge
  %__ms.0133.4 = phi i32 [ %dec.4, %while.body.4.while.body.4_crit_edge ], [ 100, %if.end30.3.while.body.4_crit_edge ]
  %dec.4 = add nsw i32 %__ms.0133.4, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #7
  %tobool26.not.4 = icmp eq i32 %dec.4, 0
  br i1 %tobool26.not.4, label %while.end.4, label %while.body.4.while.body.4_crit_edge

while.body.4.while.body.4_crit_edge:              ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.4

while.end.4:                                      ; preds = %while.body.4
  %23 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %check_link, align 4
  %call27.4 = call i32 %24(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.4)
  %cmp28.not.4 = icmp eq i32 %call27.4, 0
  br i1 %cmp28.not.4, label %if.end30.4, label %while.end.4.out_crit_edge

while.end.4.out_crit_edge:                        ; preds = %while.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end30.4:                                       ; preds = %while.end.4
  %25 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not.4 = icmp eq i8 %26, 0
  br i1 %tobool31.not.4, label %for.cond23.4, label %if.end30.4.land.lhs.true_crit_edge

if.end30.4.land.lhs.true_crit_edge:               ; preds = %if.end30.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.cond23.4:                                     ; preds = %if.end30.4
  %inc35 = add nuw nsw i32 %j.0135, 1
  %exitcond.not = icmp eq i32 %inc35, 3
  br i1 %exitcond.not, label %for.end36, label %for.cond23.4.for.body_crit_edge

for.cond23.4.for.body_crit_edge:                  ; preds = %for.cond23.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %__ms.0133 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %for.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0133, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #7
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  %28 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %check_link, align 4
  %call27 = call i32 %29(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end30, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end30:                                         ; preds = %while.end
  %30 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not = icmp eq i8 %31, 0
  br i1 %tobool31.not, label %if.end30.while.body.1_crit_edge, label %if.end30.land.lhs.true_crit_edge

if.end30.land.lhs.true_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end30.while.body.1_crit_edge:                  ; preds = %if.end30
  br label %while.body.1

for.end36:                                        ; preds = %for.cond23.4
  %and37 = and i32 %call, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call)
  %cmp40 = icmp ult i32 %call, 1073741824
  %or.cond = or i1 %cmp40, %cmp38
  br i1 %or.cond, label %for.end36.out_crit_edge, label %if.end42

for.end36.out_crit_edge:                          ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end42:                                         ; preds = %for.end36
  %32 = ptrtoint ptr %smart_speed_active to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %smart_speed_active, align 4
  %call46 = call i32 @ixgbe_setup_mac_link_82599(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end42.while.body57_crit_edge, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end42.while.body57_crit_edge:                  ; preds = %if.end42
  br label %while.body57

while.body57.1:                                   ; preds = %if.end65.while.body57.1_crit_edge, %while.body57.1.while.body57.1_crit_edge
  %__ms53.0136.1 = phi i32 [ %dec55.1, %while.body57.1.while.body57.1_crit_edge ], [ 100, %if.end65.while.body57.1_crit_edge ]
  %dec55.1 = add nsw i32 %__ms53.0136.1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #7
  %tobool56.not.1 = icmp eq i32 %dec55.1, 0
  br i1 %tobool56.not.1, label %while.end58.1, label %while.body57.1.while.body57.1_crit_edge

while.body57.1.while.body57.1_crit_edge:          ; preds = %while.body57.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body57.1

while.end58.1:                                    ; preds = %while.body57.1
  %34 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %check_link, align 4
  %call62.1 = call i32 %35(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.1)
  %cmp63.not.1 = icmp eq i32 %call62.1, 0
  br i1 %cmp63.not.1, label %if.end65.1, label %while.end58.1.out_crit_edge

while.end58.1.out_crit_edge:                      ; preds = %while.end58.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end65.1:                                       ; preds = %while.end58.1
  %36 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool66.not.1 = icmp eq i8 %37, 0
  br i1 %tobool66.not.1, label %if.end65.1.while.body57.2_crit_edge, label %if.end65.1.land.lhs.true_crit_edge

if.end65.1.land.lhs.true_crit_edge:               ; preds = %if.end65.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end65.1.while.body57.2_crit_edge:              ; preds = %if.end65.1
  br label %while.body57.2

while.body57.2:                                   ; preds = %while.body57.2.while.body57.2_crit_edge, %if.end65.1.while.body57.2_crit_edge
  %__ms53.0136.2 = phi i32 [ %dec55.2, %while.body57.2.while.body57.2_crit_edge ], [ 100, %if.end65.1.while.body57.2_crit_edge ]
  %dec55.2 = add nsw i32 %__ms53.0136.2, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #7
  %tobool56.not.2 = icmp eq i32 %dec55.2, 0
  br i1 %tobool56.not.2, label %while.end58.2, label %while.body57.2.while.body57.2_crit_edge

while.body57.2.while.body57.2_crit_edge:          ; preds = %while.body57.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body57.2

while.end58.2:                                    ; preds = %while.body57.2
  %39 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %check_link, align 4
  %call62.2 = call i32 %40(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.2)
  %cmp63.not.2 = icmp eq i32 %call62.2, 0
  br i1 %cmp63.not.2, label %if.end65.2, label %while.end58.2.out_crit_edge

while.end58.2.out_crit_edge:                      ; preds = %while.end58.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end65.2:                                       ; preds = %while.end58.2
  %41 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool66.not.2 = icmp eq i8 %42, 0
  br i1 %tobool66.not.2, label %if.end65.2.while.body57.3_crit_edge, label %if.end65.2.land.lhs.true_crit_edge

if.end65.2.land.lhs.true_crit_edge:               ; preds = %if.end65.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end65.2.while.body57.3_crit_edge:              ; preds = %if.end65.2
  br label %while.body57.3

while.body57.3:                                   ; preds = %while.body57.3.while.body57.3_crit_edge, %if.end65.2.while.body57.3_crit_edge
  %__ms53.0136.3 = phi i32 [ %dec55.3, %while.body57.3.while.body57.3_crit_edge ], [ 100, %if.end65.2.while.body57.3_crit_edge ]
  %dec55.3 = add nsw i32 %__ms53.0136.3, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748000) #7
  %tobool56.not.3 = icmp eq i32 %dec55.3, 0
  br i1 %tobool56.not.3, label %while.end58.3, label %while.body57.3.while.body57.3_crit_edge

while.body57.3.while.body57.3_crit_edge:          ; preds = %while.body57.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body57.3

while.end58.3:                                    ; preds = %while.body57.3
  %44 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %check_link, align 4
  %call62.3 = call i32 %45(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.3)
  %cmp63.not.3 = icmp eq i32 %call62.3, 0
  br i1 %cmp63.not.3, label %if.end65.3, label %while.end58.3.out_crit_edge

while.end58.3.out_crit_edge:                      ; preds = %while.end58.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end65.3:                                       ; preds = %while.end58.3
  %46 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool66.not.3 = icmp eq i8 %47, 0
  br i1 %tobool66.not.3, label %if.end65.3.while.body57.4_crit_edge, label %if.end65.3.land.lhs.true_crit_edge

if.end65.3.land.lhs.true_crit_edge:               ; preds = %if.end65.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end65.3.while.body57.4_crit_edge:              ; preds = %if.end65.3
  br label %while.body57.4

while.body57.4:                                   ; preds = %while.body57.4.while.body57.4_crit_edge, %if.end65.3.while.body57.4_crit_edge
  %__ms53.0136.4 = phi i32 [ %dec55.4, %while.body57.4.while.body57.4_crit_edge ], [ 100, %if.end65.3.while.body57.4_crit_edge ]
  %dec55.4 = add nsw i32 %__ms53.0136.4, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #7
  %tobool56.not.4 = icmp eq i32 %dec55.4, 0
  br i1 %tobool56.not.4, label %while.end58.4, label %while.body57.4.while.body57.4_crit_edge

while.body57.4.while.body57.4_crit_edge:          ; preds = %while.body57.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body57.4

while.end58.4:                                    ; preds = %while.body57.4
  %49 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %check_link, align 4
  %call62.4 = call i32 %50(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.4)
  %cmp63.not.4 = icmp eq i32 %call62.4, 0
  br i1 %cmp63.not.4, label %if.end65.4, label %while.end58.4.out_crit_edge

while.end58.4.out_crit_edge:                      ; preds = %while.end58.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end65.4:                                       ; preds = %while.end58.4
  %51 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool66.not.4 = icmp eq i8 %52, 0
  br i1 %tobool66.not.4, label %if.end65.4.while.body57.5_crit_edge, label %if.end65.4.land.lhs.true_crit_edge

if.end65.4.land.lhs.true_crit_edge:               ; preds = %if.end65.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end65.4.while.body57.5_crit_edge:              ; preds = %if.end65.4
  br label %while.body57.5

while.body57.5:                                   ; preds = %while.body57.5.while.body57.5_crit_edge, %if.end65.4.while.body57.5_crit_edge
  %__ms53.0136.5 = phi i32 [ %dec55.5, %while.body57.5.while.body57.5_crit_edge ], [ 100, %if.end65.4.while.body57.5_crit_edge ]
  %dec55.5 = add nsw i32 %__ms53.0136.5, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #7
  %tobool56.not.5 = icmp eq i32 %dec55.5, 0
  br i1 %tobool56.not.5, label %while.end58.5, label %while.body57.5.while.body57.5_crit_edge

while.body57.5.while.body57.5_crit_edge:          ; preds = %while.body57.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body57.5

while.end58.5:                                    ; preds = %while.body57.5
  %54 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %check_link, align 4
  %call62.5 = call i32 %55(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.5)
  %cmp63.not.5 = icmp eq i32 %call62.5, 0
  br i1 %cmp63.not.5, label %if.end65.5, label %while.end58.5.out_crit_edge

while.end58.5.out_crit_edge:                      ; preds = %while.end58.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end65.5:                                       ; preds = %while.end58.5
  %56 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool66.not.5 = icmp eq i8 %57, 0
  br i1 %tobool66.not.5, label %for.cond50.5, label %if.end65.5.land.lhs.true_crit_edge

if.end65.5.land.lhs.true_crit_edge:               ; preds = %if.end65.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.cond50.5:                                     ; preds = %if.end65.5
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %smart_speed_active to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %smart_speed_active, align 4
  %call75 = call i32 @ixgbe_setup_mac_link_82599(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete)
  br label %out

while.body57:                                     ; preds = %while.body57.while.body57_crit_edge, %if.end42.while.body57_crit_edge
  %__ms53.0136 = phi i32 [ %dec55, %while.body57.while.body57_crit_edge ], [ 100, %if.end42.while.body57_crit_edge ]
  %dec55 = add nsw i32 %__ms53.0136, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748000) #7
  %tobool56.not = icmp eq i32 %dec55, 0
  br i1 %tobool56.not, label %while.end58, label %while.body57.while.body57_crit_edge

while.body57.while.body57_crit_edge:              ; preds = %while.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body57

while.end58:                                      ; preds = %while.body57
  %60 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %check_link, align 4
  %call62 = call i32 %61(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %if.end65, label %while.end58.out_crit_edge

while.end58.out_crit_edge:                        ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end65:                                         ; preds = %while.end58
  %62 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool66.not = icmp eq i8 %63, 0
  br i1 %tobool66.not, label %if.end65.while.body57.1_crit_edge, label %if.end65.land.lhs.true_crit_edge

if.end65.land.lhs.true_crit_edge:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end65.while.body57.1_crit_edge:                ; preds = %if.end65
  br label %while.body57.1

out:                                              ; preds = %while.end58.out_crit_edge, %for.cond50.5, %while.end58.5.out_crit_edge, %while.end58.4.out_crit_edge, %while.end58.3.out_crit_edge, %while.end58.2.out_crit_edge, %while.end58.1.out_crit_edge, %if.end42.out_crit_edge, %for.end36.out_crit_edge, %while.end.out_crit_edge, %while.end.4.out_crit_edge, %while.end.3.out_crit_edge, %while.end.2.out_crit_edge, %while.end.1.out_crit_edge, %for.body.out_crit_edge
  %status.2.ph = phi i32 [ %call75, %for.cond50.5 ], [ %call46, %if.end42.out_crit_edge ], [ 0, %for.end36.out_crit_edge ], [ %call62, %while.end58.out_crit_edge ], [ %call62.1, %while.end58.1.out_crit_edge ], [ %call62.2, %while.end58.2.out_crit_edge ], [ %call62.3, %while.end58.3.out_crit_edge ], [ %call62.4, %while.end58.4.out_crit_edge ], [ %call62.5, %while.end58.5.out_crit_edge ], [ %call19, %for.body.out_crit_edge ], [ %call27.4, %while.end.4.out_crit_edge ], [ %call27.3, %while.end.3.out_crit_edge ], [ %call27.2, %while.end.2.out_crit_edge ], [ %call27.1, %while.end.1.out_crit_edge ], [ %call27, %while.end.out_crit_edge ]
  %64 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %64)
  %.pr = load i8, ptr %link_up, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool76.not = icmp eq i8 %.pr, 0
  br i1 %tobool76.not, label %out.if.end89_crit_edge, label %out.land.lhs.true_crit_edge

out.land.lhs.true_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

out.if.end89_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

land.lhs.true:                                    ; preds = %out.land.lhs.true_crit_edge, %if.end65.land.lhs.true_crit_edge, %if.end65.5.land.lhs.true_crit_edge, %if.end65.4.land.lhs.true_crit_edge, %if.end65.3.land.lhs.true_crit_edge, %if.end65.2.land.lhs.true_crit_edge, %if.end65.1.land.lhs.true_crit_edge, %if.end30.land.lhs.true_crit_edge, %if.end30.4.land.lhs.true_crit_edge, %if.end30.3.land.lhs.true_crit_edge, %if.end30.2.land.lhs.true_crit_edge, %if.end30.1.land.lhs.true_crit_edge
  %status.2123 = phi i32 [ %status.2.ph, %out.land.lhs.true_crit_edge ], [ 0, %if.end65.5.land.lhs.true_crit_edge ], [ 0, %if.end65.4.land.lhs.true_crit_edge ], [ 0, %if.end65.3.land.lhs.true_crit_edge ], [ 0, %if.end65.2.land.lhs.true_crit_edge ], [ 0, %if.end65.1.land.lhs.true_crit_edge ], [ 0, %if.end65.land.lhs.true_crit_edge ], [ 0, %if.end30.4.land.lhs.true_crit_edge ], [ 0, %if.end30.3.land.lhs.true_crit_edge ], [ 0, %if.end30.2.land.lhs.true_crit_edge ], [ 0, %if.end30.1.land.lhs.true_crit_edge ], [ 0, %if.end30.land.lhs.true_crit_edge ]
  %65 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %66)
  %cmp77 = icmp eq i32 %66, 32
  br i1 %cmp77, label %do.body79, label %land.lhs.true.if.end89_crit_edge

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

do.body79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_mac_link_smartspeed.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_mac_link_smartspeed, %if.then85)) #7
          to label %if.end89 [label %if.then85], !srcloc !100

if.then85:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %67 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_mac_link_smartspeed.__UNIQUE_ID_ddebug360, ptr noundef %70, ptr noundef nonnull @.str.25) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %do.body79, %land.lhs.true.if.end89_crit_edge, %out.if.end89_crit_edge
  %status.2124 = phi i32 [ %status.2123, %if.then85 ], [ %status.2123, %land.lhs.true.if.end89_crit_edge ], [ %status.2.ph, %out.if.end89_crit_edge ], [ %status.2123, %do.body79 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed) #7
  ret i32 %status.2124
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgbe_check_reset_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_hw_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_reset_hw_82599(ptr noundef %hw) #0 align 64 {
entry:
  %link_speed = alloca i32, align 4
  %link_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed) #7
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_speed, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up) #7
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %link_up, align 1
  %stop_adapter = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 9
  %2 = ptrtoint ptr %stop_adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_adapter, align 4
  %call = tail call i32 %3(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ixgbe_clear_tx_pending(ptr noundef %hw) #7
  %init = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 4
  %call2 = tail call i32 %5(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call2)
  %cmp = icmp eq i32 %call2, -19
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sfp_setup_needed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 5
  %6 = ptrtoint ptr %sfp_setup_needed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sfp_setup_needed, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end4.if.end16_crit_edge, label %if.end13

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end13:                                         ; preds = %if.end4
  %setup_sfp = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 14
  %8 = ptrtoint ptr %setup_sfp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setup_sfp, align 4
  %call10 = tail call i32 %9(ptr noundef %hw) #7
  %10 = ptrtoint ptr %sfp_setup_needed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sfp_setup_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call10)
  %cmp14 = icmp eq i32 %call10, -19
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end13.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %status.0286 = phi i32 [ %call10, %if.end13.if.end16_crit_edge ], [ %call2, %if.end4.if.end16_crit_edge ]
  %reset_disable = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 9
  %11 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reset_disable, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp19 = icmp eq i8 %12, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end16.if.end30_crit_edge

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end16
  %reset = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset, align 4
  %cmp23.not = icmp eq ptr %14, null
  br i1 %cmp23.not, label %land.lhs.true.if.end30_crit_edge, label %if.then25

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 %14(ptr noundef %hw) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %land.lhs.true.if.end30_crit_edge, %if.end16.if.end30_crit_edge
  %call31 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %force_full_reset = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 17
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 29
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %flags = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 21
  br label %mac_reset_top

mac_reset_top:                                    ; preds = %if.then67, %if.end30
  %status.1 = phi i32 [ %status.0286, %if.end30 ], [ %status.2, %if.then67 ]
  %15 = ptrtoint ptr %force_full_reset to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %force_full_reset, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool32.not = icmp eq i8 %16, 0
  br i1 %tobool32.not, label %if.then33, label %mac_reset_top.if.end40_crit_edge

mac_reset_top.if.end40_crit_edge:                 ; preds = %mac_reset_top
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then33:                                        ; preds = %mac_reset_top
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %check_link to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %check_link, align 4
  %call36 = call i32 %18(ptr noundef %hw, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_up, i1 noundef zeroext false) #7
  %19 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %link_up, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool37.not = icmp eq i8 %20, 0
  %spec.select = select i1 %tobool37.not, i32 8, i32 67108864
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %mac_reset_top.if.end40_crit_edge
  %ctrl.0 = phi i32 [ 8, %mac_reset_top.if.end40_crit_edge ], [ %spec.select, %if.then33 ]
  %call41 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end40.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end40.ixgbe_write_reg.exit_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call41, %ctrl.0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %23 = call i32 @llvm.bswap.i32(i32 %or) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %23) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end40.ixgbe_write_reg.exit_crit_edge
  %call42 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #7
  %call45 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46 = and i32 %call45, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %ixgbe_write_reg.exit.if.end62_crit_edge, label %if.end49

ixgbe_write_reg.exit.if.end62_crit_edge:          ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end49:                                         ; preds = %ixgbe_write_reg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748) #7
  %call45.1 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46.1 = and i32 %call45.1, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.1)
  %tobool47.not.1 = icmp eq i32 %and46.1, 0
  br i1 %tobool47.not.1, label %if.end49.if.end62_crit_edge, label %if.end49.1

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end49.1:                                       ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748) #7
  %call45.2 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46.2 = and i32 %call45.2, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.2)
  %tobool47.not.2 = icmp eq i32 %and46.2, 0
  br i1 %tobool47.not.2, label %if.end49.1.if.end62_crit_edge, label %if.end49.2

if.end49.1.if.end62_crit_edge:                    ; preds = %if.end49.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end49.2:                                       ; preds = %if.end49.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748) #7
  %call45.3 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46.3 = and i32 %call45.3, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.3)
  %tobool47.not.3 = icmp eq i32 %and46.3, 0
  br i1 %tobool47.not.3, label %if.end49.2.if.end62_crit_edge, label %if.end49.3

if.end49.2.if.end62_crit_edge:                    ; preds = %if.end49.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end49.3:                                       ; preds = %if.end49.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748) #7
  %call45.4 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46.4 = and i32 %call45.4, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.4)
  %tobool47.not.4 = icmp eq i32 %and46.4, 0
  br i1 %tobool47.not.4, label %if.end49.3.if.end62_crit_edge, label %if.end49.4

if.end49.3.if.end62_crit_edge:                    ; preds = %if.end49.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end49.4:                                       ; preds = %if.end49.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748) #7
  %call45.5 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46.5 = and i32 %call45.5, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.5)
  %tobool47.not.5 = icmp eq i32 %and46.5, 0
  br i1 %tobool47.not.5, label %if.end49.4.if.end62_crit_edge, label %if.end49.5

if.end49.4.if.end62_crit_edge:                    ; preds = %if.end49.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end49.5:                                       ; preds = %if.end49.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748) #7
  %call45.6 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46.6 = and i32 %call45.6, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.6)
  %tobool47.not.6 = icmp eq i32 %and46.6, 0
  br i1 %tobool47.not.6, label %if.end49.5.if.end62_crit_edge, label %if.end49.6

if.end49.5.if.end62_crit_edge:                    ; preds = %if.end49.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end49.6:                                       ; preds = %if.end49.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748) #7
  %call45.7 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46.7 = and i32 %call45.7, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.7)
  %tobool47.not.7 = icmp eq i32 %and46.7, 0
  br i1 %tobool47.not.7, label %if.end49.6.if.end62_crit_edge, label %if.end49.7

if.end49.6.if.end62_crit_edge:                    ; preds = %if.end49.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end49.7:                                       ; preds = %if.end49.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748) #7
  %call45.8 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46.8 = and i32 %call45.8, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.8)
  %tobool47.not.8 = icmp eq i32 %and46.8, 0
  br i1 %tobool47.not.8, label %if.end49.7.if.end62_crit_edge, label %if.end49.8

if.end49.7.if.end62_crit_edge:                    ; preds = %if.end49.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end49.8:                                       ; preds = %if.end49.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748) #7
  %call45.9 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 0) #7
  %and46.9 = and i32 %call45.9, 67108872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.9)
  %tobool47.not.9 = icmp eq i32 %and46.9, 0
  br i1 %tobool47.not.9, label %if.end49.8.if.end62_crit_edge, label %if.then52

if.end49.8.if.end62_crit_edge:                    ; preds = %if.end49.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then52:                                        ; preds = %if.end49.8
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_hw_82599.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_hw_82599, %if.then58)) #7
          to label %if.end62 [label %if.then58], !srcloc !100

if.then58:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_hw_82599.__UNIQUE_ID_ddebug362, ptr noundef %37, ptr noundef nonnull @.str.27) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.then52, %if.end49.8.if.end62_crit_edge, %if.end49.7.if.end62_crit_edge, %if.end49.6.if.end62_crit_edge, %if.end49.5.if.end62_crit_edge, %if.end49.4.if.end62_crit_edge, %if.end49.3.if.end62_crit_edge, %if.end49.2.if.end62_crit_edge, %if.end49.1.if.end62_crit_edge, %if.end49.if.end62_crit_edge, %ixgbe_write_reg.exit.if.end62_crit_edge
  %status.2 = phi i32 [ -15, %if.then58 ], [ -15, %if.then52 ], [ %status.1, %if.end49.8.if.end62_crit_edge ], [ %status.1, %if.end49.7.if.end62_crit_edge ], [ %status.1, %if.end49.6.if.end62_crit_edge ], [ %status.1, %if.end49.5.if.end62_crit_edge ], [ %status.1, %if.end49.4.if.end62_crit_edge ], [ %status.1, %if.end49.3.if.end62_crit_edge ], [ %status.1, %if.end49.2.if.end62_crit_edge ], [ %status.1, %if.end49.1.if.end62_crit_edge ], [ %status.1, %if.end49.if.end62_crit_edge ], [ %status.1, %ixgbe_write_reg.exit.if.end62_crit_edge ]
  call void @msleep(i32 noundef 50) #7
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags, align 2
  %40 = and i8 %39, 1
  %tobool66.not = icmp eq i8 %40, 0
  br i1 %tobool66.not, label %if.end73, label %if.then67

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %and71 = and i8 %39, -2
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %and71, ptr %flags, align 2
  br label %mac_reset_top

if.end73:                                         ; preds = %if.end62
  %and = and i32 %call31, 57344
  %call74 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %call75 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17064) #7
  %and76 = and i32 %call75, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end73.if.end81_crit_edge, label %if.then78

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then78:                                        ; preds = %if.end73
  %and79 = and i32 %call75, -1879048193
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i276 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i276, label %if.then78.ixgbe_write_reg.exit278_crit_edge, label %do.body1.i277

if.then78.ixgbe_write_reg.exit278_crit_edge:      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit278

do.body1.i277:                                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %44 = call i32 @llvm.bswap.i32(i32 %and79) #7
  %add.ptr.i = getelementptr i8, ptr %43, i32 17064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %44) #7, !srcloc !102
  br label %ixgbe_write_reg.exit278

ixgbe_write_reg.exit278:                          ; preds = %do.body1.i277, %if.then78.ixgbe_write_reg.exit278_crit_edge
  %call80 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %if.end81

if.end81:                                         ; preds = %ixgbe_write_reg.exit278, %if.end73.if.end81_crit_edge
  %autoc2.0 = phi i32 [ %and79, %ixgbe_write_reg.exit278 ], [ %call75, %if.end73.if.end81_crit_edge ]
  %orig_link_settings_stored = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 19
  %45 = ptrtoint ptr %orig_link_settings_stored to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %orig_link_settings_stored, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp85 = icmp eq i8 %46, 0
  br i1 %cmp85, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %orig_autoc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 17
  %47 = ptrtoint ptr %orig_autoc to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call74, ptr %orig_autoc, align 4
  %orig_autoc2 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 18
  %48 = ptrtoint ptr %orig_autoc2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %autoc2.0, ptr %orig_autoc2, align 4
  %49 = ptrtoint ptr %orig_link_settings_stored to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %orig_link_settings_stored, align 4
  br label %if.end135

if.else:                                          ; preds = %if.end81
  %multispeed_fiber = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 16
  %50 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %multispeed_fiber, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool93.not = icmp eq i8 %51, 0
  br i1 %tobool93.not, label %if.else.lor.lhs.false_crit_edge, label %land.lhs.true95

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true95:                                  ; preds = %if.else
  %mvals.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 10
  %52 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mvals.i, align 4
  %arrayidx.i = getelementptr i32, ptr %53, i32 6
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %call.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %55) #7
  %and.i = and i32 %call.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true95.lor.lhs.false_crit_edge

land.lhs.true95.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end.i:                                         ; preds = %land.lhs.true95
  %call1.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 22560) #7
  %and2.i = and i32 %call1.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.end.i.lor.lhs.false_crit_edge, label %ixgbe_mng_enabled.exit

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

ixgbe_mng_enabled.exit:                           ; preds = %if.end.i
  %56 = ptrtoint ptr %mvals.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mvals.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %57, i32 3
  %58 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx6.i, align 4
  %call7.i = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef %59) #7
  %and8.i = and i32 %call7.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %ixgbe_mng_enabled.exit.if.then100_crit_edge, label %ixgbe_mng_enabled.exit.lor.lhs.false_crit_edge

ixgbe_mng_enabled.exit.lor.lhs.false_crit_edge:   ; preds = %ixgbe_mng_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

ixgbe_mng_enabled.exit.if.then100_crit_edge:      ; preds = %ixgbe_mng_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then100

lor.lhs.false:                                    ; preds = %ixgbe_mng_enabled.exit.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge, %land.lhs.true95.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge
  %wol_enabled = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 19
  %60 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %wol_enabled, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool98.not = icmp eq i8 %61, 0
  br i1 %tobool98.not, label %lor.lhs.false.if.end107_crit_edge, label %lor.lhs.false.if.then100_crit_edge

lor.lhs.false.if.then100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then100

lor.lhs.false.if.end107_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then100:                                       ; preds = %lor.lhs.false.if.then100_crit_edge, %ixgbe_mng_enabled.exit.if.then100_crit_edge
  %orig_autoc102 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 17
  %62 = ptrtoint ptr %orig_autoc102 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %orig_autoc102, align 4
  %and103 = and i32 %63, -57345
  %or104 = or i32 %and103, %and
  store i32 %or104, ptr %orig_autoc102, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then100, %lor.lhs.false.if.end107_crit_edge
  %orig_autoc109 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 17
  %64 = ptrtoint ptr %orig_autoc109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %orig_autoc109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call74, i32 %65)
  %cmp110.not = icmp eq i32 %call74, %65
  br i1 %cmp110.not, label %if.end107.if.end121_crit_edge, label %if.then112

if.end107.if.end121_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then112:                                       ; preds = %if.end107
  %prot_autoc_write = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 22
  %66 = ptrtoint ptr %prot_autoc_write to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prot_autoc_write, align 4
  %call117 = call i32 %67(ptr noundef %hw, i32 noundef %65, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then112.if.end121_crit_edge, label %if.then112.cleanup_crit_edge

if.then112.cleanup_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then112.if.end121_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.end121:                                        ; preds = %if.then112.if.end121_crit_edge, %if.end107.if.end121_crit_edge
  %status.3 = phi i32 [ 0, %if.then112.if.end121_crit_edge ], [ %status.2, %if.end107.if.end121_crit_edge ]
  %and122 = and i32 %autoc2.0, -65536
  %orig_autoc2124 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 18
  %68 = ptrtoint ptr %orig_autoc2124 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %orig_autoc2124, align 4
  %and125 = and i32 %69, -65536
  call void @__sanitizer_cov_trace_cmp4(i32 %and122, i32 %and125)
  %cmp126.not = icmp eq i32 %and122, %and125
  br i1 %cmp126.not, label %if.end121.if.end135_crit_edge, label %if.then128

if.end121.if.end135_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then128:                                       ; preds = %if.end121
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i280 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i280, label %if.then128.if.end135_crit_edge, label %do.body1.i282

if.then128.if.end135_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

do.body1.i282:                                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %and129 = and i32 %autoc2.0, 65535
  %or133 = or i32 %and125, %and129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %72 = call i32 @llvm.bswap.i32(i32 %or133) #7
  %add.ptr.i281 = getelementptr i8, ptr %71, i32 17064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %72) #7, !srcloc !102
  br label %if.end135

if.end135:                                        ; preds = %do.body1.i282, %if.then128.if.end135_crit_edge, %if.end121.if.end135_crit_edge, %if.then87
  %status.4 = phi i32 [ %status.2, %if.then87 ], [ %status.3, %if.end121.if.end135_crit_edge ], [ %status.3, %if.then128.if.end135_crit_edge ], [ %status.3, %do.body1.i282 ]
  %get_mac_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 5
  %73 = ptrtoint ptr %get_mac_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %get_mac_addr, align 4
  %perm_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 3
  %call139 = call i32 %74(ptr noundef %hw, ptr noundef %perm_addr) #7
  %num_rar_entries = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 12
  %75 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 128, ptr %num_rar_entries, align 4
  %init_rx_addrs = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 43
  %76 = ptrtoint ptr %init_rx_addrs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_rx_addrs, align 4
  %call143 = call i32 %77(ptr noundef %hw) #7
  %get_san_mac_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 6
  %78 = ptrtoint ptr %get_san_mac_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_san_mac_addr, align 4
  %san_addr = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 4
  %call148 = call i32 %79(ptr noundef %hw, ptr noundef %san_addr) #7
  %80 = ptrtoint ptr %san_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %san_addr, align 4
  %82 = and i32 %81, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.i.not.i = icmp eq i32 %82, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end135.if.end175_crit_edge

if.end135.if.end175_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

is_valid_ether_addr.exit:                         ; preds = %if.end135
  %add.ptr.i.i = getelementptr %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 4, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %84 to i32
  %or.i.i = or i32 %81, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end175_crit_edge, label %if.then153

is_valid_ether_addr.exit.if.end175_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

if.then153:                                       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_rar_entries, align 4
  %87 = trunc i32 %86 to i8
  %conv156 = add i8 %87, -1
  %san_mac_rar_index = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 22
  %88 = ptrtoint ptr %san_mac_rar_index to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv156, ptr %san_mac_rar_index, align 1
  %set_rar = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 38
  %89 = ptrtoint ptr %set_rar to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %set_rar, align 4
  %conv162 = zext i8 %conv156 to i32
  %call166 = call i32 %90(ptr noundef %hw, i32 noundef %conv162, ptr noundef %san_addr, i32 noundef 0, i32 noundef -2147483648) #7
  %clear_vmdq = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 42
  %91 = ptrtoint ptr %clear_vmdq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clear_vmdq, align 4
  %93 = ptrtoint ptr %san_mac_rar_index to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %san_mac_rar_index, align 1
  %conv171 = zext i8 %94 to i32
  %call172 = call i32 %92(ptr noundef %hw, i32 noundef %conv171, i32 noundef -1) #7
  %95 = ptrtoint ptr %num_rar_entries to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_rar_entries, align 4
  %dec = add i32 %96, -1
  store i32 %dec, ptr %num_rar_entries, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then153, %is_valid_ether_addr.exit.if.end175_crit_edge, %if.end135.if.end175_crit_edge
  %get_wwn_prefix = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 8
  %97 = ptrtoint ptr %get_wwn_prefix to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %get_wwn_prefix, align 4
  %wwnn_prefix = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 5
  %wwpn_prefix = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 6
  %call180 = call i32 %98(ptr noundef %hw, ptr noundef %wwnn_prefix, ptr noundef %wwpn_prefix) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end175, %if.then112.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.4, %if.end175 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ], [ %call117, %if.then112.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_start_hw_82599(ptr noundef %hw) #0 align 64 {
entry:
  %fw_offset.i = alloca i16, align 2
  %fw_ptp_cfg_offset.i = alloca i16, align 2
  %fw_version.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_start_hw_generic(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ixgbe_start_hw_gen2(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %autotry_restart = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 20
  %0 = ptrtoint ptr %autotry_restart to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %autotry_restart, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %1 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %fw_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_ptp_cfg_offset.i) #7
  %2 = ptrtoint ptr %fw_ptp_cfg_offset.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %fw_ptp_cfg_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_version.i) #7
  %3 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %fw_version.i, align 2
  %media_type.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 7
  %4 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end4.ixgbe_verify_fw_version_82599.exit_crit_edge

if.end4.ixgbe_verify_fw_version_82599.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_fw_version_82599.exit

if.end.i:                                         ; preds = %if.end4
  %read.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %7(ptr noundef %hw, i16 noundef zeroext 15, ptr noundef nonnull %fw_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.fw_version_err.i_crit_edge

if.end.i.fw_version_err.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fw_version_err.i

if.end2.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fw_offset.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %9, label %if.end9.i [
    i16 0, label %if.end2.i.ixgbe_verify_fw_version_82599.exit_crit_edge
    i16 -1, label %if.end2.i.ixgbe_verify_fw_version_82599.exit_crit_edge12
  ]

if.end2.i.ixgbe_verify_fw_version_82599.exit_crit_edge12: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_fw_version_82599.exit

if.end2.i.ixgbe_verify_fw_version_82599.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_fw_version_82599.exit

if.end9.i:                                        ; preds = %if.end2.i
  %add.i = add i16 %9, 4
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %call15.i = call i32 %12(ptr noundef %hw, i16 noundef zeroext %add.i, ptr noundef nonnull %fw_ptp_cfg_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end9.i.fw_version_err.i_crit_edge

if.end9.i.fw_version_err.i_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fw_version_err.i

if.end18.i:                                       ; preds = %if.end9.i
  %13 = ptrtoint ptr %fw_ptp_cfg_offset.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fw_ptp_cfg_offset.i, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %14, label %if.end27.i [
    i16 0, label %if.end18.i.ixgbe_verify_fw_version_82599.exit_crit_edge
    i16 -1, label %if.end18.i.ixgbe_verify_fw_version_82599.exit_crit_edge13
  ]

if.end18.i.ixgbe_verify_fw_version_82599.exit_crit_edge13: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_fw_version_82599.exit

if.end18.i.ixgbe_verify_fw_version_82599.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_fw_version_82599.exit

if.end27.i:                                       ; preds = %if.end18.i
  %add29.i = add i16 %14, 7
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %call34.i = call i32 %17(ptr noundef %hw, i16 noundef zeroext %add29.i, ptr noundef nonnull %fw_version.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end27.i.fw_version_err.i_crit_edge

if.end27.i.fw_version_err.i_crit_edge:            ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fw_version_err.i

if.end37.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fw_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %19)
  %cmp39.i = icmp ugt i16 %19, 5
  %spec.select.i = select i1 %cmp39.i, i32 0, i32 -24
  br label %ixgbe_verify_fw_version_82599.exit

fw_version_err.i:                                 ; preds = %if.end27.i.fw_version_err.i_crit_edge, %if.end9.i.fw_version_err.i_crit_edge, %if.end.i.fw_version_err.i_crit_edge
  %offset.0.i = phi i16 [ 15, %if.end.i.fw_version_err.i_crit_edge ], [ %add.i, %if.end9.i.fw_version_err.i_crit_edge ], [ %add29.i, %if.end27.i.fw_version_err.i_crit_edge ]
  %back.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %20 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %back.i, align 4
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev.i, align 128
  %conv43.i = zext i16 %offset.0.i to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.28, i32 noundef %conv43.i) #10
  br label %ixgbe_verify_fw_version_82599.exit

ixgbe_verify_fw_version_82599.exit:               ; preds = %fw_version_err.i, %if.end37.i, %if.end18.i.ixgbe_verify_fw_version_82599.exit_crit_edge, %if.end18.i.ixgbe_verify_fw_version_82599.exit_crit_edge13, %if.end2.i.ixgbe_verify_fw_version_82599.exit_crit_edge, %if.end2.i.ixgbe_verify_fw_version_82599.exit_crit_edge12, %if.end4.ixgbe_verify_fw_version_82599.exit_crit_edge
  %retval.0.i = phi i32 [ -24, %fw_version_err.i ], [ %spec.select.i, %if.end37.i ], [ 0, %if.end4.ixgbe_verify_fw_version_82599.exit_crit_edge ], [ -24, %if.end2.i.ixgbe_verify_fw_version_82599.exit_crit_edge ], [ -24, %if.end2.i.ixgbe_verify_fw_version_82599.exit_crit_edge12 ], [ -24, %if.end18.i.ixgbe_verify_fw_version_82599.exit_crit_edge ], [ -24, %if.end18.i.ixgbe_verify_fw_version_82599.exit_crit_edge13 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_version.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_ptp_cfg_offset.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_offset.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_verify_fw_version_82599.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ixgbe_verify_fw_version_82599.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_hw_cntrs_generic(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_get_media_type_82599(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %sw.epilog [
    i32 9, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge9
  ]

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device_id, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %4, label %sw.default7 [
    i16 4343, label %sw.epilog.return_crit_edge
    i16 5396, label %sw.epilog.return_crit_edge10
    i16 4344, label %sw.epilog.return_crit_edge11
    i16 5399, label %sw.epilog.return_crit_edge12
    i16 5418, label %sw.epilog.return_crit_edge13
    i16 4348, label %sw.epilog.return_crit_edge14
    i16 4347, label %sw.epilog.sw.bb2_crit_edge
    i16 5417, label %sw.epilog.sw.bb2_crit_edge15
    i16 5383, label %sw.epilog.sw.bb2_crit_edge16
    i16 5453, label %sw.epilog.sw.bb2_crit_edge17
    i16 5450, label %sw.epilog.sw.bb2_crit_edge18
    i16 5463, label %sw.epilog.sw.bb2_crit_edge19
    i16 4345, label %sw.bb3
    i16 5404, label %sw.bb4
    i16 5455, label %sw.bb5
    i16 5464, label %sw.bb6
  ]

sw.epilog.sw.bb2_crit_edge19:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge18:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge17:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge16:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge15:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.epilog.sw.bb2_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.epilog.return_crit_edge14:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog.return_crit_edge13:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog.return_crit_edge12:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog.return_crit_edge11:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog.return_crit_edge10:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %sw.epilog.sw.bb2_crit_edge, %sw.epilog.sw.bb2_crit_edge15, %sw.epilog.sw.bb2_crit_edge16, %sw.epilog.sw.bb2_crit_edge17, %sw.epilog.sw.bb2_crit_edge18, %sw.epilog.sw.bb2_crit_edge19
  br label %return

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb5:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default7:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.epilog.return_crit_edge, %sw.epilog.return_crit_edge10, %sw.epilog.return_crit_edge11, %sw.epilog.return_crit_edge12, %sw.epilog.return_crit_edge13, %sw.epilog.return_crit_edge14, %entry.return_crit_edge, %entry.return_crit_edge9
  %retval.0 = phi i32 [ 0, %sw.default7 ], [ 2, %sw.bb6 ], [ 3, %sw.bb5 ], [ 4, %sw.bb4 ], [ 6, %sw.bb3 ], [ 1, %sw.bb2 ], [ 4, %entry.return_crit_edge ], [ 4, %entry.return_crit_edge9 ], [ 5, %sw.epilog.return_crit_edge ], [ 5, %sw.epilog.return_crit_edge10 ], [ 5, %sw.epilog.return_crit_edge11 ], [ 5, %sw.epilog.return_crit_edge12 ], [ 5, %sw.epilog.return_crit_edge13 ], [ 5, %sw.epilog.return_crit_edge14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_mac_addr_generic(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_san_mac_addr_generic(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_device_caps_generic(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_wwn_prefix_generic(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_stop_adapter_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_bus_info_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_lan_id_multi_port_pcie(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_analog_reg8_82599(ptr noundef %hw, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
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
  %shl = shl i32 %reg, 8
  %or = or i32 %shl, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 85760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #7
  %call1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 85760) #7
  %conv = trunc i32 %call1 to i8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %val, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_analog_reg8_82599(ptr noundef %hw, i32 noundef %reg, i8 noundef zeroext %val) #0 align 64 {
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
  %shl = shl i32 %reg, 8
  %conv = zext i8 %val to i32
  %or = or i32 %shl, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 85760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_sfp_modules_82599(ptr noundef %hw) #0 align 64 {
entry:
  %list_offset = alloca i16, align 2
  %data_offset = alloca i16, align 2
  %data_value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %list_offset) #7
  %0 = ptrtoint ptr %list_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %list_offset, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #7
  %1 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %data_offset, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_value) #7
  %2 = ptrtoint ptr %data_value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_value, align 2, !annotation !99
  %sfp_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %3 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sfp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp.not = icmp eq i32 %4, 65535
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call fastcc void @ixgbe_init_mac_link_ops_82599(ptr noundef %hw)
  %reset = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %reset, align 4
  %call = call i32 @ixgbe_get_sfp_init_sequence_offsets(ptr noundef %hw, ptr noundef nonnull %list_offset, ptr noundef nonnull %data_offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %6 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acquire_swfw_sync, align 4
  %call4 = call i32 %7(ptr noundef %hw, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %inc = add i16 %11, 1
  store i16 %inc, ptr %data_offset, align 2
  %call9 = call i32 %9(ptr noundef %hw, i16 noundef zeroext %inc, ptr noundef nonnull %data_value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.while.cond_crit_edge, label %if.end7.setup_sfp_err_crit_edge

if.end7.setup_sfp_err_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_sfp_err

if.end7.while.cond_crit_edge:                     ; preds = %if.end7
  br label %while.cond

while.cond:                                       ; preds = %ixgbe_write_reg.exit.while.cond_crit_edge, %if.end7.while.cond_crit_edge
  %12 = ptrtoint ptr %data_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp13.not = icmp eq i16 %13, -1
  br i1 %cmp13.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %while.body.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

while.body.ixgbe_write_reg.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %13 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %16 = call i32 @llvm.bswap.i32(i32 %conv) #7
  %add.ptr.i = getelementptr i8, ptr %15, i32 85760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %while.body.ixgbe_write_reg.exit_crit_edge
  %call16 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %17 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read, align 4
  %19 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data_offset, align 2
  %inc20 = add i16 %20, 1
  store i16 %inc20, ptr %data_offset, align 2
  %call21 = call i32 %18(ptr noundef %hw, i16 noundef zeroext %inc20, ptr noundef nonnull %data_value) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %ixgbe_write_reg.exit.while.cond_crit_edge, label %ixgbe_write_reg.exit.setup_sfp_err_crit_edge

ixgbe_write_reg.exit.setup_sfp_err_crit_edge:     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_sfp_err

ixgbe_write_reg.exit.while.cond_crit_edge:        ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %21 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release_swfw_sync, align 4
  call void %22(ptr noundef %hw, i32 noundef 8) #7
  %semaphore_delay = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %semaphore_delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %semaphore_delay, align 4
  %mul = mul i32 %24, 1000
  %mul30 = mul i32 %24, 2000
  call void @usleep_range_state(i32 noundef %mul, i32 noundef %mul30, i32 noundef 2) #7
  %prot_autoc_write = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 22
  %25 = ptrtoint ptr %prot_autoc_write to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prot_autoc_write, align 4
  %orig_autoc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 17
  %27 = ptrtoint ptr %orig_autoc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %orig_autoc, align 4
  %or = or i32 %28, 24576
  %call34 = call i32 %26(ptr noundef %hw, i32 noundef %or, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %while.end.cleanup_crit_edge, label %do.body37

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_setup_sfp_modules_82599.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_setup_sfp_modules_82599, %if.then42)) #7
          to label %cleanup [label %if.then42], !srcloc !100

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %29 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_setup_sfp_modules_82599.__UNIQUE_ID_ddebug357, ptr noundef %32, ptr noundef nonnull @.str.30) #7
  br label %cleanup

setup_sfp_err:                                    ; preds = %ixgbe_write_reg.exit.setup_sfp_err_crit_edge, %if.end7.setup_sfp_err_crit_edge
  %release_swfw_sync50 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %33 = ptrtoint ptr %release_swfw_sync50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %release_swfw_sync50, align 4
  call void %34(ptr noundef %hw, i32 noundef 8) #7
  %semaphore_delay52 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %semaphore_delay52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %semaphore_delay52, align 4
  %mul53 = mul i32 %36, 1000
  %mul56 = mul i32 %36, 2000
  call void @usleep_range_state(i32 noundef %mul53, i32 noundef %mul56, i32 noundef 2) #7
  %back57 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %37 = ptrtoint ptr %back57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %back57, align 4
  %netdev58 = getelementptr inbounds %struct.ixgbe_adapter, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %netdev58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev58, align 128
  %41 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %data_offset, align 2
  %conv59 = zext i16 %42 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.28, i32 noundef %conv59) #10
  br label %cleanup

cleanup:                                          ; preds = %setup_sfp_err, %if.then42, %do.body37, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %setup_sfp_err ], [ %call, %if.then.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -30, %if.then42 ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -30, %do.body37 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_value) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %list_offset) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_disable_rx_buff_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_enable_rx_buff_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_enable_rx_dma_82599(ptr noundef %hw, i32 noundef %regval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_rx_buff = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 15
  %0 = ptrtoint ptr %disable_rx_buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disable_rx_buff, align 4
  %call = tail call i32 %1(ptr noundef %hw) #7
  %and = and i32 %regval, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %disable_rx = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 59
  %enable_rx = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 60
  %disable_rx.sink = select i1 %tobool.not, ptr %disable_rx, ptr %enable_rx
  %2 = ptrtoint ptr %disable_rx.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_rx.sink, align 4
  tail call void %3(ptr noundef %hw) #7
  %enable_rx_buff = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 16
  %4 = ptrtoint ptr %enable_rx_buff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_rx_buff, align 4
  %call7 = tail call i32 %5(ptr noundef %hw) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_acquire_swfw_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_release_swfw_sync(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prot_autoc_read_82599(ptr noundef %hw, ptr nocapture noundef writeonly %locked, ptr nocapture noundef writeonly %reg_val) #0 align 64 {
entry:
  %fw_offset.i = alloca i16, align 2
  %fw_lesm_param_offset.i = alloca i16, align 2
  %fw_lesm_state.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %locked, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %1 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %fw_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  %2 = ptrtoint ptr %fw_lesm_param_offset.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %fw_lesm_param_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  %3 = ptrtoint ptr %fw_lesm_state.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %fw_lesm_state.i, align 2, !annotation !99
  %read.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %5(ptr noundef %hw, i16 noundef zeroext 15, ptr noundef nonnull %fw_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge

entry.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fw_offset.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %7, label %if.end.i [
    i16 0, label %lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge
    i16 -1, label %lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge10
  ]

lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge10: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %add.i = add i16 %7, 2
  %call11.i = call i32 %10(ptr noundef %hw, i16 noundef zeroext %add.i, ptr noundef nonnull %fw_lesm_param_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %if.end.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge

if.end.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

lor.lhs.false13.i:                                ; preds = %if.end.i
  %11 = ptrtoint ptr %fw_lesm_param_offset.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fw_lesm_param_offset.i, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %12, label %if.end22.i [
    i16 0, label %lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge
    i16 -1, label %lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge11
  ]

lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge11: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

if.end22.i:                                       ; preds = %lor.lhs.false13.i
  %14 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read.i, align 4
  %add27.i = add nuw i16 %12, 1
  %call29.i = call i32 %15(ptr noundef %hw, i16 noundef zeroext %add27.i, ptr noundef nonnull %fw_lesm_state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i, label %if.end22.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge

if.end22.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

land.lhs.true.i:                                  ; preds = %if.end22.i
  %16 = ptrtoint ptr %fw_lesm_state.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fw_lesm_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %tobool32.not.i = icmp sgt i16 %17, -1
  br i1 %tobool32.not.i, label %land.lhs.true.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, label %if.then

land.lhs.true.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

ixgbe_verify_lesm_fw_enabled_82599.exit.thread:   ; preds = %land.lhs.true.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %if.end22.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge11, %if.end.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge10, %entry.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_offset.i) #7
  br label %if.end3

if.then:                                          ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %18 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %acquire_swfw_sync, align 4
  %call1 = call i32 %19(ptr noundef %hw, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %locked, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %ixgbe_verify_lesm_fw_enabled_82599.exit.thread
  %call4 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %21 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call4, ptr %reg_val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -16, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prot_autoc_write_82599(ptr noundef %hw, i32 noundef %autoc, i1 noundef zeroext %locked) #0 align 64 {
entry:
  %fw_offset.i = alloca i16, align 2
  %fw_lesm_param_offset.i = alloca i16, align 2
  %fw_lesm_state.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ixgbe_check_reset_blocked(ptr noundef %hw) #7
  br i1 %call, label %out, label %if.end

if.end:                                           ; preds = %entry
  br i1 %locked, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %0 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %fw_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  %1 = ptrtoint ptr %fw_lesm_param_offset.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %fw_lesm_param_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  %2 = ptrtoint ptr %fw_lesm_state.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %fw_lesm_state.i, align 2, !annotation !99
  %read.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %4(ptr noundef %hw, i16 noundef zeroext 15, ptr noundef nonnull %fw_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge

land.lhs.true.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %5 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fw_offset.i, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %6, label %if.end.i [
    i16 0, label %lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge
    i16 -1, label %lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge28
  ]

lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge28: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %add.i = add i16 %6, 2
  %call11.i = call i32 %9(ptr noundef %hw, i16 noundef zeroext %add.i, ptr noundef nonnull %fw_lesm_param_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %if.end.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge

if.end.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

lor.lhs.false13.i:                                ; preds = %if.end.i
  %10 = ptrtoint ptr %fw_lesm_param_offset.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fw_lesm_param_offset.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %11, label %if.end22.i [
    i16 0, label %lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge
    i16 -1, label %lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge29
  ]

lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge29: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

if.end22.i:                                       ; preds = %lor.lhs.false13.i
  %13 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i, align 4
  %add27.i = add nuw i16 %11, 1
  %call29.i = call i32 %14(ptr noundef %hw, i16 noundef zeroext %add27.i, ptr noundef nonnull %fw_lesm_state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i, label %if.end22.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge

if.end22.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

land.lhs.true.i:                                  ; preds = %if.end22.i
  %15 = ptrtoint ptr %fw_lesm_state.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fw_lesm_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %tobool32.not.i = icmp sgt i16 %16, -1
  br i1 %tobool32.not.i, label %land.lhs.true.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, label %if.then2

land.lhs.true.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_verify_lesm_fw_enabled_82599.exit.thread

ixgbe_verify_lesm_fw_enabled_82599.exit.thread:   ; preds = %land.lhs.true.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %if.end22.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %lor.lhs.false13.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge29, %if.end.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge, %lor.lhs.false.i.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge28, %land.lhs.true.ixgbe_verify_lesm_fw_enabled_82599.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_offset.i) #7
  br label %if.end7

if.then2:                                         ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %17 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %acquire_swfw_sync, align 4
  %call3 = call i32 %18(ptr noundef %hw, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %ixgbe_verify_lesm_fw_enabled_82599.exit.thread, %if.end.if.end7_crit_edge
  %locked.addr.0.off0 = phi i1 [ true, %if.end.if.end7_crit_edge ], [ true, %if.then2.if.end7_crit_edge ], [ false, %ixgbe_verify_lesm_fw_enabled_82599.exit.thread ]
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end7.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end7.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %21 = call i32 @llvm.bswap.i32(i32 %autoc) #7
  %add.ptr.i = getelementptr i8, ptr %20, i32 17056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end7.ixgbe_write_reg.exit_crit_edge
  %call8 = call fastcc i32 @ixgbe_reset_pipeline_82599(ptr noundef %hw)
  br i1 %locked.addr.0.off0, label %ixgbe_write_reg.exit.if.then10_crit_edge, label %ixgbe_write_reg.exit.cleanup_crit_edge

ixgbe_write_reg.exit.cleanup_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ixgbe_write_reg.exit.if.then10_crit_edge:         ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

out:                                              ; preds = %entry
  br i1 %locked, label %out.if.then10_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out.if.then10_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %out.if.then10_crit_edge, %ixgbe_write_reg.exit.if.then10_crit_edge
  %ret_val.027 = phi i32 [ %call8, %ixgbe_write_reg.exit.if.then10_crit_edge ], [ 0, %out.if.then10_crit_edge ]
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %22 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release_swfw_sync, align 4
  call void %23(ptr noundef %hw, i32 noundef 8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %out.cleanup_crit_edge, %ixgbe_write_reg.exit.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then2.cleanup_crit_edge ], [ %ret_val.027, %if.then10 ], [ 0, %out.cleanup_crit_edge ], [ %call8, %ixgbe_write_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_stop_mac_link_on_d3_82599(ptr noundef %hw) #0 align 64 {
entry:
  %ee_ctrl_2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ee_ctrl_2) #7
  %0 = ptrtoint ptr %ee_ctrl_2 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ee_ctrl_2, align 2
  %read = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call = call i32 %2(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef nonnull %ee_ctrl_2) #7
  %call1 = call zeroext i1 @ixgbe_mng_present(ptr noundef %hw) #7
  br i1 %call1, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %wol_enabled = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 19
  %3 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wol_enabled, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = ptrtoint ptr %ee_ctrl_2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ee_ctrl_2, align 2
  %7 = and i16 %6, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool3.not = icmp eq i16 %7, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %call4 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17064) #7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call4, 1342177280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @arm_heavy_mb() #7
  %10 = call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %9, i32 17064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !102
  br label %if.end

if.end:                                           ; preds = %do.body1.i, %if.then.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ee_ctrl_2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_check_mac_link_generic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_get_link_capabilities_82599(ptr noundef %hw, ptr nocapture noundef %speed, ptr nocapture noundef writeonly %autoneg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sfp_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %sfp_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sfp_type, align 4
  %.off = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off)
  %switch = icmp ult i32 %.off, 6
  br i1 %switch, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %speed, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %orig_link_settings_stored = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 19
  %3 = ptrtoint ptr %orig_link_settings_stored to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %orig_link_settings_stored, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %orig_autoc = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 17
  %5 = ptrtoint ptr %orig_autoc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %orig_autoc, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then20
  %autoc.0 = phi i32 [ %6, %if.then20 ], [ %call, %if.else ]
  %and = lshr i32 %autoc.0, 13
  %7 = and i32 %and, 7
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %7, label %if.end22.unreachabledefault [
    i32 0, label %if.end22.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb23
    i32 2, label %sw.bb24
    i32 3, label %sw.bb25
    i32 4, label %if.end22.sw.bb26_crit_edge
    i32 6, label %if.end22.sw.bb26_crit_edge111
    i32 7, label %sw.bb41
    i32 5, label %sw.bb57
  ]

if.end22.sw.bb26_crit_edge111:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end22.sw.bb26_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end22.sw.epilog.sink.split_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb24:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb26:                                          ; preds = %if.end22.sw.bb26_crit_edge, %if.end22.sw.bb26_crit_edge111
  %and27 = lshr i32 %autoc.0, 9
  %9 = and i32 %and27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %autoc.0)
  %tobool32.not = icmp sgt i32 %autoc.0, -1
  %spec.store.select = select i1 %tobool32.not, i32 %9, i32 128
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.store.select, ptr %speed, align 4
  %and36 = and i32 %autoc.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %sw.bb26.sw.epilog_crit_edge, label %if.then38

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then38:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed, align 4
  %or39 = or i32 %12, 32
  br label %sw.epilog.sink.split

sw.bb41:                                          ; preds = %if.end22
  %13 = and i32 %autoc.0, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %spec.store.select109 = select i1 %14, i32 8, i32 136
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select109, ptr %speed, align 4
  %and52 = and i32 %autoc.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %sw.bb41.sw.epilog_crit_edge, label %if.then54

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then54:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 4
  %or55 = or i32 %17, 32
  br label %sw.epilog.sink.split

sw.bb57:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end22.unreachabledefault:                      ; preds = %if.end22
  unreachable

sw.epilog.sink.split:                             ; preds = %sw.bb57, %if.then54, %if.then38, %sw.bb25, %sw.bb24, %sw.bb23, %if.end22.sw.epilog.sink.split_crit_edge
  %or55.sink = phi i32 [ %or55, %if.then54 ], [ %or39, %if.then38 ], [ 40, %sw.bb57 ], [ 128, %sw.bb25 ], [ 32, %sw.bb24 ], [ 128, %sw.bb23 ], [ 32, %if.end22.sw.epilog.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 1, %if.then54 ], [ 1, %if.then38 ], [ 0, %sw.bb57 ], [ 0, %sw.bb25 ], [ 1, %sw.bb24 ], [ 0, %sw.bb23 ], [ 0, %if.end22.sw.epilog.sink.split_crit_edge ]
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or55.sink, ptr %speed, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb41.sw.epilog_crit_edge, %sw.bb26.sw.epilog_crit_edge
  %.sink = phi i8 [ 1, %sw.bb26.sw.epilog_crit_edge ], [ 1, %sw.bb41.sw.epilog_crit_edge ], [ %.sink.ph, %sw.epilog.sink.split ]
  %19 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %autoneg, align 1
  %multispeed_fiber = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 16
  %20 = ptrtoint ptr %multispeed_fiber to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %multispeed_fiber, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool59.not = icmp eq i8 %21, 0
  br i1 %tobool59.not, label %sw.epilog.cleanup_crit_edge, label %if.then60

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speed, align 4
  %or61 = or i32 %23, 160
  store i32 %or61, ptr %speed, align 4
  %media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 7
  %24 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp63 = icmp ne i32 %25, 2
  %. = zext i1 %cmp63 to i8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then60, %if.then
  %.sink110 = phi i8 [ 1, %if.then ], [ %., %if.then60 ]
  %26 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink110, ptr %autoneg, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_rxpba_generic(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_led_on_generic(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_led_off_generic(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_blink_led_start_generic(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_blink_led_stop_generic(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_led_link_act_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_rar_generic(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_rar_generic(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_vmdq_generic(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_vmdq_san_mac_generic(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_vmdq_generic(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_rx_addrs_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_update_mc_addr_list_generic(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_enable_mc_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_disable_mc_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_clear_vfta_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_vfta_generic(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_uta_tables_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_mac_anti_spoofing(ptr noundef, i1 noundef zeroext, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_vlan_anti_spoofing(ptr noundef, i1 noundef zeroext, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_fc_enable_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_fc_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_fc_autoneg(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_set_fw_drv_ver_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_thermal_sensor_data_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_thermal_sensor_thresh_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_disable_rx_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_enable_rx_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_clear_tx_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_start_hw_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_start_hw_gen2(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_reset_pipeline_82599(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17064) #7
  %and = and i32 %call, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %and1 = and i32 %call, -1879048193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %and1) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 17064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then.ixgbe_write_reg.exit_crit_edge
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %if.end

if.end:                                           ; preds = %ixgbe_write_reg.exit, %entry.if.end_crit_edge
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %or = or i32 %call3, 4096
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i37 = icmp eq ptr %4, null
  br i1 %tobool.not.i.i37, label %if.end.ixgbe_write_reg.exit40_crit_edge, label %do.body1.i39

if.end.ixgbe_write_reg.exit40_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit40

do.body1.i39:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %xor = xor i32 %or, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %xor) #7
  %add.ptr.i38 = getelementptr i8, ptr %4, i32 17056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %5) #7, !srcloc !102
  br label %ixgbe_write_reg.exit40

ixgbe_write_reg.exit40:                           ; preds = %do.body1.i39, %if.end.ixgbe_write_reg.exit40_crit_edge
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %and5 = and i32 %call4, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %for.cond, label %ixgbe_write_reg.exit40.for.end_crit_edge

ixgbe_write_reg.exit40.for.end_crit_edge:         ; preds = %ixgbe_write_reg.exit40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %ixgbe_write_reg.exit40
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4.1 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %and5.1 = and i32 %call4.1, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.1)
  %tobool6.not.1 = icmp eq i32 %and5.1, 0
  br i1 %tobool6.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4.2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %and5.2 = and i32 %call4.2, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.2)
  %tobool6.not.2 = icmp eq i32 %and5.2, 0
  br i1 %tobool6.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4.3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %and5.3 = and i32 %call4.3, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.3)
  %tobool6.not.3 = icmp eq i32 %and5.3, 0
  br i1 %tobool6.not.3, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4.4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %and5.4 = and i32 %call4.4, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.4)
  %tobool6.not.4 = icmp eq i32 %and5.4, 0
  br i1 %tobool6.not.4, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4.5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %and5.5 = and i32 %call4.5, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.5)
  %tobool6.not.5 = icmp eq i32 %and5.5, 0
  br i1 %tobool6.not.5, label %for.cond.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4.6 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %and5.6 = and i32 %call4.6, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.6)
  %tobool6.not.6 = icmp eq i32 %and5.6, 0
  br i1 %tobool6.not.6, label %for.cond.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4.7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %and5.7 = and i32 %call4.7, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.7)
  %tobool6.not.7 = icmp eq i32 %and5.7, 0
  br i1 %tobool6.not.7, label %for.cond.7, label %for.cond.6.for.end_crit_edge

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4.8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  %and5.8 = and i32 %call4.8, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.8)
  %tobool6.not.8 = icmp eq i32 %and5.8, 0
  br i1 %tobool6.not.8, label %for.cond.8, label %for.cond.7.for.end_crit_edge

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 8000, i32 noundef 2) #7
  %call4.9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17072) #7
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %ixgbe_write_reg.exit40.for.end_crit_edge
  %call4.lcssa = phi i32 [ %call4, %ixgbe_write_reg.exit40.for.end_crit_edge ], [ %call4.1, %for.cond.for.end_crit_edge ], [ %call4.2, %for.cond.1.for.end_crit_edge ], [ %call4.3, %for.cond.2.for.end_crit_edge ], [ %call4.4, %for.cond.3.for.end_crit_edge ], [ %call4.5, %for.cond.4.for.end_crit_edge ], [ %call4.6, %for.cond.5.for.end_crit_edge ], [ %call4.7, %for.cond.6.for.end_crit_edge ], [ %call4.8, %for.cond.7.for.end_crit_edge ], [ %call4.9, %for.cond.8 ]
  %and9 = and i32 %call4.lcssa, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body12, label %for.end.reset_pipeline_out_crit_edge

for.end.reset_pipeline_out_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_pipeline_out

do.body12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_reset_pipeline_82599.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_reset_pipeline_82599, %if.then17)) #7
          to label %reset_pipeline_out [label %if.then17], !srcloc !100

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_reset_pipeline_82599.__UNIQUE_ID_ddebug376, ptr noundef %9, ptr noundef nonnull @.str.32) #7
  br label %reset_pipeline_out

reset_pipeline_out:                               ; preds = %if.then17, %do.body12, %for.end.reset_pipeline_out_crit_edge
  %ret_val.0 = phi i32 [ -15, %if.then17 ], [ 0, %for.end.reset_pipeline_out_crit_edge ], [ -15, %do.body12 ]
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i41 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i41, label %reset_pipeline_out.ixgbe_write_reg.exit44_crit_edge, label %do.body1.i43

reset_pipeline_out.ixgbe_write_reg.exit44_crit_edge: ; preds = %reset_pipeline_out
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit44

do.body1.i43:                                     ; preds = %reset_pipeline_out
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i42 = getelementptr i8, ptr %11, i32 17056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %12) #7, !srcloc !102
  br label %ixgbe_write_reg.exit44

ixgbe_write_reg.exit44:                           ; preds = %do.body1.i43, %reset_pipeline_out.ixgbe_write_reg.exit44_crit_edge
  %call22 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgbe_mng_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_eeprom_params_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_eeprom_82599(ptr noundef %hw, i16 noundef zeroext %offset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %offset)
  %cmp2 = icmp ult i16 %offset, 16384
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @ixgbe_read_eerd_generic(ptr noundef %hw, i16 noundef zeroext %offset, ptr noundef %data) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @ixgbe_read_eeprom_bit_bang_generic(ptr noundef %hw, i16 noundef zeroext %offset, ptr noundef %data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_eeprom_buffer_82599(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv = zext i16 %offset to i32
  %conv2 = zext i16 %words to i32
  %sub = add nsw i32 %conv, -1
  %add = add nsw i32 %sub, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %cmp3 = icmp slt i32 %add, 16384
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @ixgbe_read_eerd_buffer_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = tail call i32 @ixgbe_read_eeprom_buffer_bit_bang_generic(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_eeprom_generic(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_eeprom_buffer_bit_bang_generic(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_validate_eeprom_checksum_generic(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_update_eeprom_checksum_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_calc_eeprom_checksum_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_eerd_generic(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_eeprom_bit_bang_generic(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_eerd_buffer_generic(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_eeprom_buffer_bit_bang_generic(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_identify_phy_82599(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ixgbe_identify_phy_generic(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %0 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_media_type, align 4
  %call1 = tail call i32 %1(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp = icmp eq i32 %call1, 4
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @ixgbe_identify_module_generic(ptr noundef %hw) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %status.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.if.end4_crit_edge ]
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %if.then6, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %status.1 = phi i32 [ 0, %if.then6 ], [ %status.0, %if.end4.if.end9_crit_edge ]
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %6)
  %cmp12 = icmp eq i32 %6, 25
  %.status.1 = select i1 %cmp12, i32 -19, i32 %status.1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %.status.1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_identify_module_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_init_phy_ops_82599(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy2 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5
  %device_id = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5464, i16 %1)
  %cmp = icmp eq i16 %1, 5464
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %qsfp_shared_i2c_bus = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 18
  %2 = ptrtoint ptr %qsfp_shared_i2c_bus to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %qsfp_shared_i2c_bus, align 1
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.then.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or = and i32 %call, -197378
  %and = or i32 %or, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then.ixgbe_write_reg.exit_crit_edge
  %call8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  %read_i2c_byte = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 12
  %6 = ptrtoint ptr %read_i2c_byte to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ixgbe_read_i2c_byte_82599, ptr %read_i2c_byte, align 4
  %write_i2c_byte = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %7 = ptrtoint ptr %write_i2c_byte to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ixgbe_write_i2c_byte_82599, ptr %write_i2c_byte, align 4
  br label %if.end

if.end:                                           ; preds = %ixgbe_write_reg.exit, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy2, align 4
  %call11 = tail call i32 %9(ptr noundef %hw) #7
  tail call fastcc void @ixgbe_init_mac_link_ops_82599(ptr noundef %hw)
  %get_media_type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 4
  %10 = ptrtoint ptr %get_media_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_media_type, align 4
  %call13 = tail call i32 %11(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 4
  br i1 %cmp14, label %if.then16, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %setup_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 27
  %12 = ptrtoint ptr %setup_link to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ixgbe_setup_copper_link_82599, ptr %setup_link, align 4
  %get_link_capabilities = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 30
  %13 = ptrtoint ptr %get_link_capabilities to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ixgbe_get_copper_link_capabilities_generic, ptr %get_link_capabilities, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end.if.end19_crit_edge
  %type = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cond = icmp eq i32 %15, 2
  br i1 %cond, label %sw.bb, label %if.end19.sw.epilog_crit_edge

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %check_link = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 11
  %16 = ptrtoint ptr %check_link to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ixgbe_check_phy_link_tnx, ptr %check_link, align 4
  %setup_link23 = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 8
  %17 = ptrtoint ptr %setup_link23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ixgbe_setup_phy_link_tnx, ptr %setup_link23, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end19.sw.epilog_crit_edge
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_reset_phy_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_phy_reg_generic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_phy_reg_generic(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_phy_link_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_phy_link_speed_generic(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_i2c_byte_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_i2c_byte_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_i2c_sff8472_generic(ptr noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_i2c_eeprom_generic(ptr noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_write_i2c_eeprom_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_tn_check_overtemp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_identify_phy_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_read_i2c_byte_82599(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qsfp_shared_i2c_bus = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 18
  %0 = ptrtoint ptr %qsfp_shared_i2c_bus to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qsfp_shared_i2c_bus, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then.ixgbe_write_reg.exit_crit_edge
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %ixgbe_write_reg.exit
  %timeout.053 = phi i32 [ 200, %ixgbe_write_reg.exit ], [ %dec, %if.end.while.body_crit_edge ]
  %call4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %and = and i32 %call4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end, label %while.body.if.end19_crit_edge

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %dec = add nsw i32 %timeout.053, -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %do.body9.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body9.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_read_i2c_byte_82599.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_read_i2c_byte_82599, %if.then14)) #7
          to label %release_i2c_access [label %if.then14], !srcloc !100

if.then14:                                        ; preds = %do.body9.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_read_i2c_byte_82599.__UNIQUE_ID_ddebug377, ptr noundef %8, ptr noundef nonnull @.str.34) #7
  br label %release_i2c_access

if.end19:                                         ; preds = %while.body.if.end19_crit_edge, %entry.if.end19_crit_edge
  %call20 = tail call i32 @ixgbe_read_i2c_byte_generic(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, ptr noundef %data) #7
  br label %release_i2c_access

release_i2c_access:                               ; preds = %if.end19, %if.then14, %do.body9.critedge
  %status.0 = phi i32 [ %call20, %if.end19 ], [ -18, %if.then14 ], [ -18, %do.body9.critedge ]
  %9 = ptrtoint ptr %qsfp_shared_i2c_bus to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %qsfp_shared_i2c_bus, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool23.not = icmp eq i8 %10, 0
  br i1 %tobool23.not, label %release_i2c_access.if.end31_crit_edge, label %if.then27

release_i2c_access.if.end31_crit_edge:            ; preds = %release_i2c_access
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then27:                                        ; preds = %release_i2c_access
  %call28 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i48 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i48, label %if.then27.ixgbe_write_reg.exit51_crit_edge, label %do.body1.i50

if.then27.ixgbe_write_reg.exit51_crit_edge:       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit51

do.body1.i50:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %and29 = and i32 %call28, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and29) #7
  %add.ptr.i49 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %13) #7, !srcloc !102
  br label %ixgbe_write_reg.exit51

ixgbe_write_reg.exit51:                           ; preds = %do.body1.i50, %if.then27.ixgbe_write_reg.exit51_crit_edge
  %call30 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %if.end31

if.end31:                                         ; preds = %ixgbe_write_reg.exit51, %release_i2c_access.if.end31_crit_edge
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_write_i2c_byte_82599(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qsfp_shared_i2c_bus = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 18
  %0 = ptrtoint ptr %qsfp_shared_i2c_bus to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qsfp_shared_i2c_bus, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !102
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then.ixgbe_write_reg.exit_crit_edge
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %ixgbe_write_reg.exit
  %timeout.053 = phi i32 [ 200, %ixgbe_write_reg.exit ], [ %dec, %if.end.while.body_crit_edge ]
  %call4 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %and = and i32 %call4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end, label %while.body.if.end19_crit_edge

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %dec = add nsw i32 %timeout.053, -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %do.body9.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body9.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_write_i2c_byte_82599.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_write_i2c_byte_82599, %if.then14)) #7
          to label %release_i2c_access [label %if.then14], !srcloc !100

if.then14:                                        ; preds = %do.body9.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_write_i2c_byte_82599.__UNIQUE_ID_ddebug378, ptr noundef %8, ptr noundef nonnull @.str.34) #7
  br label %release_i2c_access

if.end19:                                         ; preds = %while.body.if.end19_crit_edge, %entry.if.end19_crit_edge
  %call20 = tail call i32 @ixgbe_write_i2c_byte_generic(ptr noundef %hw, i8 noundef zeroext %byte_offset, i8 noundef zeroext %dev_addr, i8 noundef zeroext %data) #7
  br label %release_i2c_access

release_i2c_access:                               ; preds = %if.end19, %if.then14, %do.body9.critedge
  %status.0 = phi i32 [ %call20, %if.end19 ], [ -18, %if.then14 ], [ -18, %do.body9.critedge ]
  %9 = ptrtoint ptr %qsfp_shared_i2c_bus to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %qsfp_shared_i2c_bus, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool23.not = icmp eq i8 %10, 0
  br i1 %tobool23.not, label %release_i2c_access.if.end31_crit_edge, label %if.then27

release_i2c_access.if.end31_crit_edge:            ; preds = %release_i2c_access
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then27:                                        ; preds = %release_i2c_access
  %call28 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 32) #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 4
  %tobool.not.i.i48 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i48, label %if.then27.ixgbe_write_reg.exit51_crit_edge, label %do.body1.i50

if.then27.ixgbe_write_reg.exit51_crit_edge:       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %ixgbe_write_reg.exit51

do.body1.i50:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %and29 = and i32 %call28, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and29) #7
  %add.ptr.i49 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %13) #7, !srcloc !102
  br label %ixgbe_write_reg.exit51

ixgbe_write_reg.exit51:                           ; preds = %do.body1.i50, %if.then27.ixgbe_write_reg.exit51_crit_edge
  %call30 = tail call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 8) #7
  br label %if.end31

if.end31:                                         ; preds = %ixgbe_write_reg.exit51, %release_i2c_access.if.end31_crit_edge
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_setup_copper_link_82599(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_link_speed = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %0 = ptrtoint ptr %setup_link_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %setup_link_speed, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef %speed, i1 noundef zeroext %autoneg_wait_to_complete) #7
  tail call fastcc void @ixgbe_start_mac_link_82599(ptr noundef %hw, i1 noundef zeroext %autoneg_wait_to_complete)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_get_copper_link_capabilities_generic(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_check_phy_link_tnx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_phy_link_tnx(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_start_mac_link_82599(ptr noundef %hw, i1 noundef zeroext %autoneg_wait_to_complete) unnamed_addr #0 align 64 {
entry:
  %fw_offset.i = alloca i16, align 2
  %fw_lesm_param_offset.i = alloca i16, align 2
  %fw_lesm_state.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %0 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %fw_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  %1 = ptrtoint ptr %fw_lesm_param_offset.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %fw_lesm_param_offset.i, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  %2 = ptrtoint ptr %fw_lesm_state.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %fw_lesm_state.i, align 2, !annotation !99
  %read.i = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %4(ptr noundef %hw, i16 noundef zeroext 15, ptr noundef nonnull %fw_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end9.critedge_crit_edge

entry.if.end9.critedge_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.critedge

lor.lhs.false.i:                                  ; preds = %entry
  %5 = ptrtoint ptr %fw_offset.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fw_offset.i, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %6, label %if.end.i [
    i16 0, label %lor.lhs.false.i.if.end9.critedge_crit_edge
    i16 -1, label %lor.lhs.false.i.if.end9.critedge_crit_edge8
  ]

lor.lhs.false.i.if.end9.critedge_crit_edge8:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.critedge

lor.lhs.false.i.if.end9.critedge_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.critedge

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %add.i = add i16 %6, 2
  %call11.i = call i32 %9(ptr noundef %hw, i16 noundef zeroext %add.i, ptr noundef nonnull %fw_lesm_param_offset.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %if.end.i.if.end9.critedge_crit_edge

if.end.i.if.end9.critedge_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.critedge

lor.lhs.false13.i:                                ; preds = %if.end.i
  %10 = ptrtoint ptr %fw_lesm_param_offset.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fw_lesm_param_offset.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %11, label %if.end22.i [
    i16 0, label %lor.lhs.false13.i.if.end9.critedge_crit_edge
    i16 -1, label %lor.lhs.false13.i.if.end9.critedge_crit_edge9
  ]

lor.lhs.false13.i.if.end9.critedge_crit_edge9:    ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.critedge

lor.lhs.false13.i.if.end9.critedge_crit_edge:     ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.critedge

if.end22.i:                                       ; preds = %lor.lhs.false13.i
  %13 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i, align 4
  %add27.i = add nuw i16 %11, 1
  %call29.i = call i32 %14(ptr noundef %hw, i16 noundef zeroext %add27.i, ptr noundef nonnull %fw_lesm_state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i, label %if.end22.i.if.end9.critedge_crit_edge

if.end22.i.if.end9.critedge_crit_edge:            ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.critedge

land.lhs.true.i:                                  ; preds = %if.end22.i
  %15 = ptrtoint ptr %fw_lesm_state.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fw_lesm_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %tobool32.not.i = icmp sgt i16 %16, -1
  br i1 %tobool32.not.i, label %land.lhs.true.i.if.end9.critedge_crit_edge, label %if.then

land.lhs.true.i.if.end9.critedge_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.critedge

if.then:                                          ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %acquire_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 18
  %17 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %acquire_swfw_sync, align 4
  %call1 = call i32 %18(ptr noundef %hw, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then6.critedge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4.c = call fastcc i32 @ixgbe_reset_pipeline_82599(ptr noundef %hw)
  %release_swfw_sync = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 2, i32 0, i32 19
  %19 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release_swfw_sync, align 4
  call void %20(ptr noundef %hw, i32 noundef 8) #7
  br label %if.end9

if.end9.critedge:                                 ; preds = %land.lhs.true.i.if.end9.critedge_crit_edge, %if.end22.i.if.end9.critedge_crit_edge, %lor.lhs.false13.i.if.end9.critedge_crit_edge, %lor.lhs.false13.i.if.end9.critedge_crit_edge9, %if.end.i.if.end9.critedge_crit_edge, %lor.lhs.false.i.if.end9.critedge_crit_edge, %lor.lhs.false.i.if.end9.critedge_crit_edge8, %entry.if.end9.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_state.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_lesm_param_offset.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_offset.i) #7
  %call4.c1 = call fastcc i32 @ixgbe_reset_pipeline_82599(ptr noundef %hw)
  br label %if.end9

if.end9:                                          ; preds = %if.end9.critedge, %if.then6.critedge
  br i1 %autoneg_wait_to_complete, label %if.then11, label %if.end9.if.end40_crit_edge

if.end9.if.end40_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17056) #7
  %21 = trunc i32 %call12 to i16
  %trunc = and i16 %21, -8192
  %22 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %trunc, label %if.then11.if.end40_crit_edge [
    i16 -32768, label %if.then11.for.body.preheader_crit_edge
    i16 -16384, label %if.then11.for.body.preheader_crit_edge10
    i16 -8192, label %if.then11.for.body.preheader_crit_edge11
  ]

if.then11.for.body.preheader_crit_edge11:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then11.for.body.preheader_crit_edge10:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then11.for.body.preheader_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then11.if.end40_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

for.body.preheader:                               ; preds = %if.then11.for.body.preheader_crit_edge, %if.then11.for.body.preheader_crit_edge10, %if.then11.for.body.preheader_crit_edge11
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.preheader
  %i.07 = phi i32 [ %inc, %if.end24.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call20 = call i32 @ixgbe_read_reg(ptr noundef %hw, i32 noundef 17060) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %tobool22.not = icmp sgt i32 %call20, -1
  br i1 %tobool22.not, label %if.end24, label %for.body.if.end40_crit_edge

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end24:                                         ; preds = %for.body
  call void @msleep(i32 noundef 100) #7
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 45
  br i1 %exitcond.not, label %if.then27, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbe_start_mac_link_82599.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbe_start_mac_link_82599, %if.then34)) #7
          to label %if.end40 [label %if.then34], !srcloc !100

if.then34:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %back = getelementptr inbounds %struct.ixgbe_hw, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %back, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbe_start_mac_link_82599.__UNIQUE_ID_ddebug358, ptr noundef %26, ptr noundef nonnull @.str.21) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.then27, %for.body.if.end40_crit_edge, %if.then11.if.end40_crit_edge, %if.end9.if.end40_crit_edge
  call void @msleep(i32 noundef 50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !83, !84, !86, !87, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1118, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ixgbe_reinit_fdir_tables_82599.__UNIQUE_ID_ddebug363, !1, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1157, i32 3}
!8 = !{ptr @ixgbe_reinit_fdir_tables_82599.__UNIQUE_ID_ddebug364, !7, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1389, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ixgbe_fdir_add_signature_filter_82599.__UNIQUE_ID_ddebug366, !10, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1409, i32 2}
!15 = !{ptr @ixgbe_fdir_add_signature_filter_82599.__UNIQUE_ID_ddebug367, !14, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1538, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug368, !17, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1548, i32 3}
!22 = !{ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug369, !21, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1557, i32 4}
!25 = !{ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug370, !24, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1564, i32 3}
!28 = !{ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug371, !27, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1585, i32 3}
!31 = !{ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug372, !30, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1597, i32 3}
!34 = !{ptr @ixgbe_fdir_set_input_mask_82599.__UNIQUE_ID_ddebug373, !33, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1687, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ixgbe_fdir_write_perfect_filter_82599.__UNIQUE_ID_ddebug374, !36, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1715, i32 3}
!41 = !{ptr @ixgbe_fdir_erase_perfect_filter_82599.__UNIQUE_ID_ddebug375, !40, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!42 = !{ptr @ixgbe_82599_info, !43, !"ixgbe_82599_info", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 2249, i32 25}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1207, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ixgbe_fdir_enable_82599.__UNIQUE_ID_ddebug365, !45, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 866, i32 6}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ixgbe_setup_mac_link_82599.__UNIQUE_ID_ddebug361, !49, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 644, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ixgbe_set_hard_rate_select_speed.__UNIQUE_ID_ddebug359, !53, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 758, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ixgbe_setup_mac_link_smartspeed.__UNIQUE_ID_ddebug360, !57, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!60 = !{ptr @mac_ops_82599, !61, !"mac_ops_82599", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 2163, i32 42}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 978, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ixgbe_reset_hw_82599.__UNIQUE_ID_ddebug362, !63, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 1907, i32 2}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 146, i32 4}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ixgbe_setup_sfp_modules_82599.__UNIQUE_ID_ddebug357, !69, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 2040, i32 3}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ixgbe_reset_pipeline_82599.__UNIQUE_ID_ddebug376, !73, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!76 = !{ptr @eeprom_ops_82599, !77, !"eeprom_ops_82599", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 2221, i32 45}
!78 = !{ptr @phy_ops_82599, !79, !"phy_ops_82599", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 2232, i32 42}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 2089, i32 4}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ixgbe_read_i2c_byte_82599.__UNIQUE_ID_ddebug377, !81, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 2143, i32 4}
!86 = !{ptr @ixgbe_write_i2c_byte_82599.__UNIQUE_ID_ddebug378, !85, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c", i32 545, i32 5}
!89 = !{ptr @ixgbe_start_mac_link_82599.__UNIQUE_ID_ddebug358, !88, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
!100 = !{i64 2148551885, i64 2148551890, i64 2148551903, i64 2148551947, i64 2148551981, i64 2148552002}
!101 = !{i64 2157322609}
!102 = !{i64 5046482}
!103 = !{i64 2157323169}
!104 = !{i64 2157323564}
!105 = !{i8 0, i8 2}
